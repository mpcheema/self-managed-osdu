# coding: utf-8

# flake8: noqa
"""
    self-managed-osdu

    Rest API Documentation for Self Managed OSDU  # noqa: E501

    OpenAPI spec version: 0.11.0
    
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""


from __future__ import absolute_import

# import models into model package
from swagger_client.models.entitlement_group_properties import EntitlementGroupProperties
from swagger_client.models.entitlement_group_response import EntitlementGroupResponse
from swagger_client.models.entitlement_member_dto import EntitlementMemberDto
from swagger_client.models.file_acl import FileAcl
from swagger_client.models.file_application_error import FileApplicationError
from swagger_client.models.file_date_time import FileDateTime
from swagger_client.models.file_download_response import FileDownloadResponse
from swagger_client.models.file_driver import FileDriver
from swagger_client.models.file_error import FileError
from swagger_client.models.file_error_model import FileErrorModel
from swagger_client.models.file_extension_properties import FileExtensionProperties
from swagger_client.models.file_id import FileID
from swagger_client.models.file_legal import FileLegal
from swagger_client.models.file_link_list import FileLinkList
from swagger_client.models.file_meta_item import FileMetaItem
from swagger_client.models.file_metadata_response import FileMetadataResponse
from swagger_client.models.legal_tag_dto import LegalTagDto
from swagger_client.models.legal_tag_dtos import LegalTagDtos
from swagger_client.models.legal_tag_invalid_response import LegalTagInvalidResponse
from swagger_client.models.legal_tag_invalid_response_list import LegalTagInvalidResponseList
from swagger_client.models.legal_tag_properties import LegalTagProperties
from swagger_client.models.legal_tag_property_values import LegalTagPropertyValues
from swagger_client.models.legal_tag_request import LegalTagRequest
from swagger_client.models.legal_tag_update_dto import LegalTagUpdateDto
from swagger_client.models.partition_dto import PartitionDto
from swagger_client.models.partition_property import PartitionProperty
from swagger_client.models.schema_error import SchemaError
from swagger_client.models.schema_error_model import SchemaErrorModel
from swagger_client.models.schema_error_response_format import SchemaErrorResponseFormat
from swagger_client.models.schema_identity import SchemaIdentity
from swagger_client.models.schema_info import SchemaInfo
from swagger_client.models.schema_info_response import SchemaInfoResponse
from swagger_client.models.schema_request import SchemaRequest
from swagger_client.models.search_app_error import SearchAppError
from swagger_client.models.search_by_bounding_box import SearchByBoundingBox
from swagger_client.models.search_by_distance import SearchByDistance
from swagger_client.models.search_by_geo_polygon import SearchByGeoPolygon
from swagger_client.models.search_cursor_query_request import SearchCursorQueryRequest
from swagger_client.models.search_cursor_query_response import SearchCursorQueryResponse
from swagger_client.models.search_point import SearchPoint
from swagger_client.models.search_query_request import SearchQueryRequest
from swagger_client.models.search_query_response import SearchQueryResponse
from swagger_client.models.search_spatial_filter import SearchSpatialFilter
from swagger_client.models.storage_acl import StorageAcl
from swagger_client.models.storage_bulk_update_records_response import StorageBulkUpdateRecordsResponse
from swagger_client.models.storage_delete_record_error import StorageDeleteRecordError
from swagger_client.models.storage_error_response import StorageErrorResponse
from swagger_client.models.storage_legal import StorageLegal
from swagger_client.models.storage_multi_record_ids import StorageMultiRecordIds
from swagger_client.models.storage_patch_operation import StoragePatchOperation
from swagger_client.models.storage_query_response import StorageQueryResponse
from swagger_client.models.storage_record import StorageRecord
from swagger_client.models.storage_record_bulk_update_param import StorageRecordBulkUpdateParam
from swagger_client.models.storage_record_data import StorageRecordData
from swagger_client.models.storage_record_history import StorageRecordHistory
from swagger_client.models.storage_record_query import StorageRecordQuery
from swagger_client.models.storage_record_versions import StorageRecordVersions
