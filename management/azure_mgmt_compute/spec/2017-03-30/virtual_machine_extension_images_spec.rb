# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative 'spec_helper'

include MsRestAzure
include Azure::Compute::Mgmt::V2017_03_30

describe VirtualMachineExtensionImages do
  before(:each) do
    @resource_helper = ResourceHelper.new
    @location = 'westus'
    @publisher_name = 'Microsoft.WindowsAzure.Compute'
    @type = 'AzureLogCollector'
    @version = '1.0.0.7'
    @client = @resource_helper.compute_client.virtual_machine_extension_images
  end

  it 'should list virtual machine extension image types' do
    result = @client.list_types_async(@location, @publisher_name).value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
    expect(result.body).to be_a Array
  end

  it 'should list virtual machine extension image versions' do
    result = @client.list_versions_async(@location, @publisher_name, @type).value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
    expect(result.body).to be_a Array
  end

  it 'should list virtual machine extension image versions with filters and top' do
    filter = "startswith(name,'1.1')"
    orderby = 'name'
    result = @client.list_versions_async(@location, @publisher_name, @type, filter:filter, top:1, orderby:orderby).value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
    expect(result.body).to be_a Array
  end

  it 'should get virtual machine extension image' do
    result = @client.get_async(@location, @publisher_name, @type, @version).value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
  end
end