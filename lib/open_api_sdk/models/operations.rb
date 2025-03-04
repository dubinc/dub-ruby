# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

module OpenApiSDK
  module Operations
    autoload :CreateLinkRequestBody, 'open_api_sdk/models/operations/createlink_requestbody.rb'
    autoload :CreateLinkResponse, 'open_api_sdk/models/operations/createlink_response.rb'
    autoload :SortBy, 'open_api_sdk/models/operations/sortby.rb'
    autoload :SortOrder, 'open_api_sdk/models/operations/sortorder.rb'
    autoload :Sort, 'open_api_sdk/models/operations/sort.rb'
    autoload :GetLinksRequest, 'open_api_sdk/models/operations/getlinks_request.rb'
    autoload :GetLinksResponse, 'open_api_sdk/models/operations/getlinks_response.rb'
    autoload :GetLinksCountRequest, 'open_api_sdk/models/operations/getlinkscount_request.rb'
    autoload :GetLinksCountResponse, 'open_api_sdk/models/operations/getlinkscount_response.rb'
    autoload :GetLinkInfoRequest, 'open_api_sdk/models/operations/getlinkinfo_request.rb'
    autoload :GetLinkInfoResponse, 'open_api_sdk/models/operations/getlinkinfo_response.rb'
    autoload :UpdateLinkRequestBody, 'open_api_sdk/models/operations/updatelink_requestbody.rb'
    autoload :UpdateLinkRequest, 'open_api_sdk/models/operations/updatelink_request.rb'
    autoload :UpdateLinkResponse, 'open_api_sdk/models/operations/updatelink_response.rb'
    autoload :DeleteLinkRequest, 'open_api_sdk/models/operations/deletelink_request.rb'
    autoload :DeleteLinkResponseBody, 'open_api_sdk/models/operations/deletelink_responsebody.rb'
    autoload :DeleteLinkResponse, 'open_api_sdk/models/operations/deletelink_response.rb'
    autoload :RequestBody, 'open_api_sdk/models/operations/requestbody.rb'
    autoload :BulkCreateLinksResponse, 'open_api_sdk/models/operations/bulkcreatelinks_response.rb'
    autoload :Data, 'open_api_sdk/models/operations/data.rb'
    autoload :BulkUpdateLinksRequestBody, 'open_api_sdk/models/operations/bulkupdatelinks_requestbody.rb'
    autoload :BulkUpdateLinksResponse, 'open_api_sdk/models/operations/bulkupdatelinks_response.rb'
    autoload :BulkDeleteLinksRequest, 'open_api_sdk/models/operations/bulkdeletelinks_request.rb'
    autoload :BulkDeleteLinksResponseBody, 'open_api_sdk/models/operations/bulkdeletelinks_responsebody.rb'
    autoload :BulkDeleteLinksResponse, 'open_api_sdk/models/operations/bulkdeletelinks_response.rb'
    autoload :UpsertLinkRequestBody, 'open_api_sdk/models/operations/upsertlink_requestbody.rb'
    autoload :UpsertLinkResponse, 'open_api_sdk/models/operations/upsertlink_response.rb'
    autoload :Event, 'open_api_sdk/models/operations/event.rb'
    autoload :GroupBy, 'open_api_sdk/models/operations/groupby.rb'
    autoload :Interval, 'open_api_sdk/models/operations/interval.rb'
    autoload :Trigger, 'open_api_sdk/models/operations/trigger.rb'
    autoload :RetrieveAnalyticsRequest, 'open_api_sdk/models/operations/retrieveanalytics_request.rb'
    autoload :RetrieveAnalyticsResponse, 'open_api_sdk/models/operations/retrieveanalytics_response.rb'
    autoload :QueryParamEvent, 'open_api_sdk/models/operations/queryparam_event.rb'
    autoload :QueryParamInterval, 'open_api_sdk/models/operations/queryparam_interval.rb'
    autoload :QueryParamTrigger, 'open_api_sdk/models/operations/queryparam_trigger.rb'
    autoload :QueryParamSortOrder, 'open_api_sdk/models/operations/queryparam_sortorder.rb'
    autoload :QueryParamSortBy, 'open_api_sdk/models/operations/queryparam_sortby.rb'
    autoload :Order, 'open_api_sdk/models/operations/order.rb'
    autoload :ListEventsRequest, 'open_api_sdk/models/operations/listevents_request.rb'
    autoload :ListEventsResponse, 'open_api_sdk/models/operations/listevents_response.rb'
    autoload :Color, 'open_api_sdk/models/operations/color.rb'
    autoload :CreateTagRequestBody, 'open_api_sdk/models/operations/createtag_requestbody.rb'
    autoload :CreateTagResponse, 'open_api_sdk/models/operations/createtag_response.rb'
    autoload :GetTagsQueryParamSortBy, 'open_api_sdk/models/operations/gettags_queryparam_sortby.rb'
    autoload :GetTagsQueryParamSortOrder, 'open_api_sdk/models/operations/gettags_queryparam_sortorder.rb'
    autoload :GetTagsRequest, 'open_api_sdk/models/operations/gettags_request.rb'
    autoload :GetTagsResponse, 'open_api_sdk/models/operations/gettags_response.rb'
    autoload :UpdateTagColor, 'open_api_sdk/models/operations/updatetag_color.rb'
    autoload :UpdateTagRequestBody, 'open_api_sdk/models/operations/updatetag_requestbody.rb'
    autoload :UpdateTagRequest, 'open_api_sdk/models/operations/updatetag_request.rb'
    autoload :UpdateTagResponse, 'open_api_sdk/models/operations/updatetag_response.rb'
    autoload :DeleteTagRequest, 'open_api_sdk/models/operations/deletetag_request.rb'
    autoload :DeleteTagResponseBody, 'open_api_sdk/models/operations/deletetag_responsebody.rb'
    autoload :DeleteTagResponse, 'open_api_sdk/models/operations/deletetag_response.rb'
    autoload :AccessLevel, 'open_api_sdk/models/operations/accesslevel.rb'
    autoload :CreateFolderRequestBody, 'open_api_sdk/models/operations/createfolder_requestbody.rb'
    autoload :CreateFolderResponse, 'open_api_sdk/models/operations/createfolder_response.rb'
    autoload :ListFoldersRequest, 'open_api_sdk/models/operations/listfolders_request.rb'
    autoload :ListFoldersResponse, 'open_api_sdk/models/operations/listfolders_response.rb'
    autoload :UpdateFolderAccessLevel, 'open_api_sdk/models/operations/updatefolder_accesslevel.rb'
    autoload :UpdateFolderRequestBody, 'open_api_sdk/models/operations/updatefolder_requestbody.rb'
    autoload :UpdateFolderRequest, 'open_api_sdk/models/operations/updatefolder_request.rb'
    autoload :UpdateFolderResponse, 'open_api_sdk/models/operations/updatefolder_response.rb'
    autoload :DeleteFolderRequest, 'open_api_sdk/models/operations/deletefolder_request.rb'
    autoload :DeleteFolderResponseBody, 'open_api_sdk/models/operations/deletefolder_responsebody.rb'
    autoload :DeleteFolderResponse, 'open_api_sdk/models/operations/deletefolder_response.rb'
    autoload :CreateDomainRequestBody, 'open_api_sdk/models/operations/createdomain_requestbody.rb'
    autoload :CreateDomainResponse, 'open_api_sdk/models/operations/createdomain_response.rb'
    autoload :ListDomainsRequest, 'open_api_sdk/models/operations/listdomains_request.rb'
    autoload :ListDomainsResponse, 'open_api_sdk/models/operations/listdomains_response.rb'
    autoload :UpdateDomainRequestBody, 'open_api_sdk/models/operations/updatedomain_requestbody.rb'
    autoload :UpdateDomainRequest, 'open_api_sdk/models/operations/updatedomain_request.rb'
    autoload :UpdateDomainResponse, 'open_api_sdk/models/operations/updatedomain_response.rb'
    autoload :DeleteDomainRequest, 'open_api_sdk/models/operations/deletedomain_request.rb'
    autoload :DeleteDomainResponseBody, 'open_api_sdk/models/operations/deletedomain_responsebody.rb'
    autoload :DeleteDomainResponse, 'open_api_sdk/models/operations/deletedomain_response.rb'
    autoload :Mode, 'open_api_sdk/models/operations/mode.rb'
    autoload :TrackLeadRequestBody, 'open_api_sdk/models/operations/tracklead_requestbody.rb'
    autoload :Click, 'open_api_sdk/models/operations/click.rb'
    autoload :Customer, 'open_api_sdk/models/operations/customer.rb'
    autoload :TrackLeadResponseBody, 'open_api_sdk/models/operations/tracklead_responsebody.rb'
    autoload :TrackLeadResponse, 'open_api_sdk/models/operations/tracklead_response.rb'
    autoload :PaymentProcessor, 'open_api_sdk/models/operations/paymentprocessor.rb'
    autoload :TrackSaleRequestBody, 'open_api_sdk/models/operations/tracksale_requestbody.rb'
    autoload :TrackSaleCustomer, 'open_api_sdk/models/operations/tracksale_customer.rb'
    autoload :Sale, 'open_api_sdk/models/operations/sale.rb'
    autoload :TrackSaleResponseBody, 'open_api_sdk/models/operations/tracksale_responsebody.rb'
    autoload :TrackSaleResponse, 'open_api_sdk/models/operations/tracksale_response.rb'
    autoload :GetCustomersRequest, 'open_api_sdk/models/operations/getcustomers_request.rb'
    autoload :Link, 'open_api_sdk/models/operations/link.rb'
    autoload :Partner, 'open_api_sdk/models/operations/partner.rb'
    autoload :Type, 'open_api_sdk/models/operations/type.rb'
    autoload :GetCustomersInterval, 'open_api_sdk/models/operations/getcustomers_interval.rb'
    autoload :Discount, 'open_api_sdk/models/operations/discount.rb'
    autoload :ResponseBody, 'open_api_sdk/models/operations/responsebody.rb'
    autoload :GetCustomersResponse, 'open_api_sdk/models/operations/getcustomers_response.rb'
    autoload :CreateCustomerRequestBody, 'open_api_sdk/models/operations/createcustomer_requestbody.rb'
    autoload :CreateCustomerLink, 'open_api_sdk/models/operations/createcustomer_link.rb'
    autoload :CreateCustomerPartner, 'open_api_sdk/models/operations/createcustomer_partner.rb'
    autoload :CreateCustomerType, 'open_api_sdk/models/operations/createcustomer_type.rb'
    autoload :CreateCustomerInterval, 'open_api_sdk/models/operations/createcustomer_interval.rb'
    autoload :CreateCustomerDiscount, 'open_api_sdk/models/operations/createcustomer_discount.rb'
    autoload :CreateCustomerResponseBody, 'open_api_sdk/models/operations/createcustomer_responsebody.rb'
    autoload :CreateCustomerResponse, 'open_api_sdk/models/operations/createcustomer_response.rb'
    autoload :GetCustomerRequest, 'open_api_sdk/models/operations/getcustomer_request.rb'
    autoload :GetCustomerLink, 'open_api_sdk/models/operations/getcustomer_link.rb'
    autoload :GetCustomerPartner, 'open_api_sdk/models/operations/getcustomer_partner.rb'
    autoload :GetCustomerType, 'open_api_sdk/models/operations/getcustomer_type.rb'
    autoload :GetCustomerInterval, 'open_api_sdk/models/operations/getcustomer_interval.rb'
    autoload :GetCustomerDiscount, 'open_api_sdk/models/operations/getcustomer_discount.rb'
    autoload :GetCustomerResponseBody, 'open_api_sdk/models/operations/getcustomer_responsebody.rb'
    autoload :GetCustomerResponse, 'open_api_sdk/models/operations/getcustomer_response.rb'
    autoload :UpdateCustomerRequestBody, 'open_api_sdk/models/operations/updatecustomer_requestbody.rb'
    autoload :UpdateCustomerRequest, 'open_api_sdk/models/operations/updatecustomer_request.rb'
    autoload :UpdateCustomerLink, 'open_api_sdk/models/operations/updatecustomer_link.rb'
    autoload :UpdateCustomerPartner, 'open_api_sdk/models/operations/updatecustomer_partner.rb'
    autoload :UpdateCustomerType, 'open_api_sdk/models/operations/updatecustomer_type.rb'
    autoload :UpdateCustomerInterval, 'open_api_sdk/models/operations/updatecustomer_interval.rb'
    autoload :UpdateCustomerDiscount, 'open_api_sdk/models/operations/updatecustomer_discount.rb'
    autoload :UpdateCustomerResponseBody, 'open_api_sdk/models/operations/updatecustomer_responsebody.rb'
    autoload :UpdateCustomerResponse, 'open_api_sdk/models/operations/updatecustomer_response.rb'
    autoload :DeleteCustomerRequest, 'open_api_sdk/models/operations/deletecustomer_request.rb'
    autoload :DeleteCustomerResponseBody, 'open_api_sdk/models/operations/deletecustomer_responsebody.rb'
    autoload :DeleteCustomerResponse, 'open_api_sdk/models/operations/deletecustomer_response.rb'
    autoload :Country, 'open_api_sdk/models/operations/country.rb'
    autoload :LinkProps, 'open_api_sdk/models/operations/linkprops.rb'
    autoload :CreatePartnerRequestBody, 'open_api_sdk/models/operations/createpartner_requestbody.rb'
    autoload :Status, 'open_api_sdk/models/operations/status.rb'
    autoload :Links, 'open_api_sdk/models/operations/links.rb'
    autoload :CreatePartnerResponseBody, 'open_api_sdk/models/operations/createpartner_responsebody.rb'
    autoload :CreatePartnerResponse, 'open_api_sdk/models/operations/createpartner_response.rb'
    autoload :CreatePartnerLinkLinkProps, 'open_api_sdk/models/operations/createpartnerlink_linkprops.rb'
    autoload :CreatePartnerLinkRequestBody, 'open_api_sdk/models/operations/createpartnerlink_requestbody.rb'
    autoload :CreatePartnerLinkResponse, 'open_api_sdk/models/operations/createpartnerlink_response.rb'
    autoload :UpsertPartnerLinkLinkProps, 'open_api_sdk/models/operations/upsertpartnerlink_linkprops.rb'
    autoload :UpsertPartnerLinkRequestBody, 'open_api_sdk/models/operations/upsertpartnerlink_requestbody.rb'
    autoload :UpsertPartnerLinkResponse, 'open_api_sdk/models/operations/upsertpartnerlink_response.rb'
    autoload :RetrievePartnerAnalyticsQueryParamInterval, 'open_api_sdk/models/operations/retrievepartneranalytics_queryparam_interval.rb'
    autoload :QueryParamGroupBy, 'open_api_sdk/models/operations/queryparam_groupby.rb'
    autoload :RetrievePartnerAnalyticsRequest, 'open_api_sdk/models/operations/retrievepartneranalytics_request.rb'
    autoload :RetrievePartnerAnalyticsResponse, 'open_api_sdk/models/operations/retrievepartneranalytics_response.rb'
    autoload :UpdatePartnerSaleRequestBody, 'open_api_sdk/models/operations/updatepartnersale_requestbody.rb'
    autoload :UpdatePartnerSaleStatus, 'open_api_sdk/models/operations/updatepartnersale_status.rb'
    autoload :UpdatePartnerSaleResponseBody, 'open_api_sdk/models/operations/updatepartnersale_responsebody.rb'
    autoload :UpdatePartnerSaleResponse, 'open_api_sdk/models/operations/updatepartnersale_response.rb'
    autoload :GetWorkspaceRequest, 'open_api_sdk/models/operations/getworkspace_request.rb'
    autoload :GetWorkspaceResponse, 'open_api_sdk/models/operations/getworkspace_response.rb'
    autoload :UpdateWorkspaceRequestBody, 'open_api_sdk/models/operations/updateworkspace_requestbody.rb'
    autoload :UpdateWorkspaceRequest, 'open_api_sdk/models/operations/updateworkspace_request.rb'
    autoload :UpdateWorkspaceResponse, 'open_api_sdk/models/operations/updateworkspace_response.rb'
    autoload :CreateEmbedTokenRequestBody, 'open_api_sdk/models/operations/createembedtoken_requestbody.rb'
    autoload :CreateEmbedTokenResponseBody, 'open_api_sdk/models/operations/createembedtoken_responsebody.rb'
    autoload :CreateEmbedTokenResponse, 'open_api_sdk/models/operations/createembedtoken_response.rb'
    autoload :Level, 'open_api_sdk/models/operations/level.rb'
    autoload :GetQRCodeRequest, 'open_api_sdk/models/operations/getqrcode_request.rb'
    autoload :GetQRCodeResponse, 'open_api_sdk/models/operations/getqrcode_response.rb'
    autoload :GetMetatagsRequest, 'open_api_sdk/models/operations/getmetatags_request.rb'
    autoload :GetMetatagsResponseBody, 'open_api_sdk/models/operations/getmetatags_responsebody.rb'
    autoload :GetMetatagsResponse, 'open_api_sdk/models/operations/getmetatags_response.rb'
  end
end
