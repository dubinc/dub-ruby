# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

module OpenApiSDK
  module Operations
    autoload :Sort, 'open_api_sdk/models/operations/sort.rb'
    autoload :GetLinksRequest, 'open_api_sdk/models/operations/getlinks_request.rb'
    autoload :GetLinksResponse, 'open_api_sdk/models/operations/getlinks_response.rb'
    autoload :CreateLinkRequestBody, 'open_api_sdk/models/operations/createlink_requestbody.rb'
    autoload :CreateLinkResponse, 'open_api_sdk/models/operations/createlink_response.rb'
    autoload :GetLinksCountRequest, 'open_api_sdk/models/operations/getlinkscount_request.rb'
    autoload :GetLinksCountResponse, 'open_api_sdk/models/operations/getlinkscount_response.rb'
    autoload :GetLinkInfoRequest, 'open_api_sdk/models/operations/getlinkinfo_request.rb'
    autoload :GetLinkInfoResponse, 'open_api_sdk/models/operations/getlinkinfo_response.rb'
    autoload :DeleteLinkRequest, 'open_api_sdk/models/operations/deletelink_request.rb'
    autoload :DeleteLinkResponseBody, 'open_api_sdk/models/operations/deletelink_responsebody.rb'
    autoload :DeleteLinkResponse, 'open_api_sdk/models/operations/deletelink_response.rb'
    autoload :UpdateLinkRequestBody, 'open_api_sdk/models/operations/updatelink_requestbody.rb'
    autoload :UpdateLinkRequest, 'open_api_sdk/models/operations/updatelink_request.rb'
    autoload :UpdateLinkResponse, 'open_api_sdk/models/operations/updatelink_response.rb'
    autoload :RequestBody, 'open_api_sdk/models/operations/requestbody.rb'
    autoload :BulkCreateLinksResponse, 'open_api_sdk/models/operations/bulkcreatelinks_response.rb'
    autoload :Data, 'open_api_sdk/models/operations/data.rb'
    autoload :BulkUpdateLinksRequestBody, 'open_api_sdk/models/operations/bulkupdatelinks_requestbody.rb'
    autoload :BulkUpdateLinksResponse, 'open_api_sdk/models/operations/bulkupdatelinks_response.rb'
    autoload :UpsertLinkRequestBody, 'open_api_sdk/models/operations/upsertlink_requestbody.rb'
    autoload :UpsertLinkResponse, 'open_api_sdk/models/operations/upsertlink_response.rb'
    autoload :Level, 'open_api_sdk/models/operations/level.rb'
    autoload :GetQRCodeRequest, 'open_api_sdk/models/operations/getqrcode_request.rb'
    autoload :GetQRCodeResponse, 'open_api_sdk/models/operations/getqrcode_response.rb'
    autoload :Event, 'open_api_sdk/models/operations/event.rb'
    autoload :GroupBy, 'open_api_sdk/models/operations/groupby.rb'
    autoload :Interval, 'open_api_sdk/models/operations/interval.rb'
    autoload :RetrieveAnalyticsRequest, 'open_api_sdk/models/operations/retrieveanalytics_request.rb'
    autoload :RetrieveAnalyticsResponse, 'open_api_sdk/models/operations/retrieveanalytics_response.rb'
    autoload :QueryParamEvent, 'open_api_sdk/models/operations/queryparam_event.rb'
    autoload :QueryParamInterval, 'open_api_sdk/models/operations/queryparam_interval.rb'
    autoload :Order, 'open_api_sdk/models/operations/order.rb'
    autoload :SortBy, 'open_api_sdk/models/operations/sortby.rb'
    autoload :ListEventsRequest, 'open_api_sdk/models/operations/listevents_request.rb'
    autoload :ListEventsResponse, 'open_api_sdk/models/operations/listevents_response.rb'
    autoload :GetWorkspaceRequest, 'open_api_sdk/models/operations/getworkspace_request.rb'
    autoload :GetWorkspaceResponse, 'open_api_sdk/models/operations/getworkspace_response.rb'
    autoload :UpdateWorkspaceRequestBody, 'open_api_sdk/models/operations/updateworkspace_requestbody.rb'
    autoload :UpdateWorkspaceRequest, 'open_api_sdk/models/operations/updateworkspace_request.rb'
    autoload :UpdateWorkspaceResponse, 'open_api_sdk/models/operations/updateworkspace_response.rb'
    autoload :GetTagsResponse, 'open_api_sdk/models/operations/gettags_response.rb'
    autoload :Color, 'open_api_sdk/models/operations/color.rb'
    autoload :CreateTagRequestBody, 'open_api_sdk/models/operations/createtag_requestbody.rb'
    autoload :CreateTagResponse, 'open_api_sdk/models/operations/createtag_response.rb'
    autoload :UpdateTagColor, 'open_api_sdk/models/operations/updatetag_color.rb'
    autoload :UpdateTagRequestBody, 'open_api_sdk/models/operations/updatetag_requestbody.rb'
    autoload :UpdateTagRequest, 'open_api_sdk/models/operations/updatetag_request.rb'
    autoload :UpdateTagResponse, 'open_api_sdk/models/operations/updatetag_response.rb'
    autoload :ListDomainsRequest, 'open_api_sdk/models/operations/listdomains_request.rb'
    autoload :ListDomainsResponse, 'open_api_sdk/models/operations/listdomains_response.rb'
    autoload :CreateDomainRequestBody, 'open_api_sdk/models/operations/createdomain_requestbody.rb'
    autoload :CreateDomainResponse, 'open_api_sdk/models/operations/createdomain_response.rb'
    autoload :DeleteDomainRequest, 'open_api_sdk/models/operations/deletedomain_request.rb'
    autoload :DeleteDomainResponseBody, 'open_api_sdk/models/operations/deletedomain_responsebody.rb'
    autoload :DeleteDomainResponse, 'open_api_sdk/models/operations/deletedomain_response.rb'
    autoload :UpdateDomainRequestBody, 'open_api_sdk/models/operations/updatedomain_requestbody.rb'
    autoload :UpdateDomainRequest, 'open_api_sdk/models/operations/updatedomain_request.rb'
    autoload :UpdateDomainResponse, 'open_api_sdk/models/operations/updatedomain_response.rb'
    autoload :TrackLeadRequestBody, 'open_api_sdk/models/operations/tracklead_requestbody.rb'
    autoload :Customer, 'open_api_sdk/models/operations/customer.rb'
    autoload :Click, 'open_api_sdk/models/operations/click.rb'
    autoload :Geo, 'open_api_sdk/models/operations/geo.rb'
    autoload :Link, 'open_api_sdk/models/operations/link.rb'
    autoload :TrackLeadResponseBody, 'open_api_sdk/models/operations/tracklead_responsebody.rb'
    autoload :TrackLeadResponse, 'open_api_sdk/models/operations/tracklead_response.rb'
    autoload :PaymentProcessor, 'open_api_sdk/models/operations/paymentprocessor.rb'
    autoload :TrackSaleRequestBody, 'open_api_sdk/models/operations/tracksale_requestbody.rb'
    autoload :TrackSaleCustomer, 'open_api_sdk/models/operations/tracksale_customer.rb'
    autoload :Sale, 'open_api_sdk/models/operations/sale.rb'
    autoload :TrackSaleClick, 'open_api_sdk/models/operations/tracksale_click.rb'
    autoload :TrackSaleGeo, 'open_api_sdk/models/operations/tracksale_geo.rb'
    autoload :TrackSaleLink, 'open_api_sdk/models/operations/tracksale_link.rb'
    autoload :TrackSaleResponseBody, 'open_api_sdk/models/operations/tracksale_responsebody.rb'
    autoload :TrackSaleResponse, 'open_api_sdk/models/operations/tracksale_response.rb'
    autoload :TrackCustomerRequestBody, 'open_api_sdk/models/operations/trackcustomer_requestbody.rb'
    autoload :TrackCustomerResponseBody, 'open_api_sdk/models/operations/trackcustomer_responsebody.rb'
    autoload :TrackCustomerResponse, 'open_api_sdk/models/operations/trackcustomer_response.rb'
    autoload :GetMetatagsRequest, 'open_api_sdk/models/operations/getmetatags_request.rb'
    autoload :GetMetatagsResponseBody, 'open_api_sdk/models/operations/getmetatags_responsebody.rb'
    autoload :GetMetatagsResponse, 'open_api_sdk/models/operations/getmetatags_response.rb'
  end
end
