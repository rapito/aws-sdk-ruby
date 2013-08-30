# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

require 'spec_helper'

module Aws
  module Json
    describe Parser do

      let(:rules) {{
        'type' => 'structure',
        'members' => {},
      }}

      def parse(json)
        shape = Seahorse::Model::Shapes::Shape.from_hash(rules)
        Parser.to_hash(shape, json)
      end

      it 'returns an empty hash when given an empty string' do
        expect(parse('')).to eq({})
      end

      it 'returns an empty hash when the JSON is {}' do
        expect(parse('{}')).to eq({})
      end

      describe 'structures' do

        it 'symbolizes structure members' do
          rules['members'] = {
            'name' => { 'type' => 'string' },
          }
          json = '{"name":"John Doe"}'
          expect(parse(json)).to eq(name: 'John Doe')
        end

        it 'parses members using their serialized name' do
          rules['members'] = {
            'first' => { 'type' => 'string', 'serialized_name' => 'FirstName' },
            'last' => { 'type' => 'string', 'serialized_name' => 'LastName' }
          }
          json = '{"FirstName":"John", "LastName":"Doe"}'
          expect(parse(json)).to eq(first: 'John', last: 'Doe')
        end

        it 'ignores non-described values' do
          rules['members'] = {
            'foo' => { 'type' => 'string' },
          }
          json = '{"foo":"bar", "abc":"xyz"}'
          expect(parse(json)).to eq(foo: 'bar')
        end

      end

      describe 'lists' do

        it 'parses lists' do
          rules['members'] = {
            'items' => {
              'type' => 'list',
              'members' => { 'type' => 'string' }
            }
          }
          json = '{"items":["abc", "mno", "xyz"]}'
          expect(parse(json)).to eq(items: %w(abc mno xyz))
        end

        it 'parses lists of complex members' do
          rules['members'] = {
            'items' => {
              'type' => 'list',
              'members' => {
                'type' => 'structure',
                'members' => {
                  'name' => { 'type' => 'string' }
                }
              }
            }
          }
          json = '{"items":[{"name":"abc"},{"name":"xyz"}]}'
          expect(parse(json)).to eq(items: [{name:'abc'}, {name:'xyz'}])
        end

      end

      describe 'maps' do

        it 'parses maps as hashes (without symbolizing keys' do
          rules['members'] = {
            'attributes' => {
              'type' => 'map',
              'keys' => { 'type' => 'string' },
              'members' => { 'type' => 'string' }
            }
          }
          json = '{"attributes":{"Size":"large","Color":"red"}}'
          expect(parse(json)).to eq(attributes: {
            'Size' => 'large',
            'Color' => 'red'
          })
        end

      end

      describe 'booleans' do

        it 'converts true/false booleans' do
          rules['members'] = {
            'hot' => { 'type' => 'boolean' },
            'cold' => { 'type' => 'boolean' },
          }
          json = '{"hot":true,"cold":false}'
          expect(parse(json)).to eq(hot: true, cold: false)
        end

      end

      describe 'timestamps' do

        before(:each) do
          rules['members'] = {
            'created_at' => {
              'type' => 'timestamp',
              'serialized_name' => 'CreatedAt',
            }
          }
        end

        it 'can parse unix timestamps' do
          timestamp = 1349908100
          time = Time.at(timestamp)
          json = "{\"CreatedAt\":#{timestamp}}"
          data = parse(json)
          expect(data[:created_at]).to be_a(Time)
          expect(data[:created_at]).to eq(time)
        end

        it 'can parse iso8601 strings' do
          timestamp = '2012-09-10T15:47:10.001Z'
          time = Time.parse(timestamp).to_time.utc
          json = "{\"CreatedAt\":\"#{timestamp}\"}"
          data = parse(json)
          expect(data[:created_at]).to be_a(Time)
          expect(data[:created_at]).to eq(time)
        end

        it 'can parse rfc822 strings' do
          timestamp = 'Wed, 10 Oct 2012 15:59:55 UTC'
          time = Time.parse(timestamp).to_time.utc
          json = "{\"CreatedAt\":\"#{timestamp}\"}"
          data = parse(json)
          expect(data[:created_at]).to be_a(Time)
          expect(data[:created_at]).to eq(time)
        end

      end

      describe 'integers' do

        it 'parses integers' do
          rules['members'] = { 'count' => { 'type' => 'integer' } }
          json = '{"count":123}'
          expect(parse(json)).to eq(count: 123)
        end

      end

      describe 'floats' do

        it 'parses floats' do
          rules['members'] = { 'value' => { 'type' => 'float' } }
          json = '{"value":12.34}'
          expect(parse(json)).to eq(value: 12.34)
        end

      end

      describe 'blobs' do

        it 'base64 decodes blobs' do
          rules['members'] = {
            'data' => { 'type' => 'blob' }
          }
          json = '{"data":"aGVsbG8="}'
          expect(parse(json)).to eq(data: 'hello')
        end

      end

      describe 'parsing errors' do

        it 'does not trap xml parsing errors'

      end
    end
  end
end
