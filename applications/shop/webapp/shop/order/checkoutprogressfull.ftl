<#--
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.
-->
<@section>
<#if checkoutMode == "registered">
    <@nav type="steps" activeElem=(activeStep!"cart")>
        <@step name="cart" icon="fa fa-cart-arrow-down">Cart</@step>
        <@step name="shippingAddress" icon="fa fa-building">Shipping Address</@step>
        <@step name="shippingOptions" icon="fa fa-truck">Shipping Options</@step>
        <@step name="billing" icon="fa fa-credit-card">Billing</@step>
        <@step name="orderReview" icon="fa fa-info">Confirm Order</@step>
    </@nav>
<#else>
    <#-- Cato: Migrated from anonymousCheckoutLinks.ftl -->
    <@nav type="steps" activeElem=(activeStep!"cart")>
        <@step name="cart" icon="fa fa-cart-arrow-down">Cart</@step>
        <@step name="customer" icon="fa fa-cart-arrow-down">Personal Information</@step>
        <@step name="shippingAddress" icon="fa fa-building">Shipping Address</@step>
        <@step name="shippingOptions" icon="fa fa-truck">Shipping Options</@step>
        <@step name="billing" icon="fa fa-credit-card">Billing</@step>
        <#-- Cato: TODO? Merge with billing? -->
        <@step name="billingInfo" icon="fa fa-credit-card">Billing Information</@step>
        <@step name="orderReview" icon="fa fa-info">Confirm Order</@step>
    </@nav>
</#if>
</@section>