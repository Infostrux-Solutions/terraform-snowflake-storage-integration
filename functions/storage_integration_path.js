function get_storage_allowed_location_path(storage_provider,storage_allowed_location) {
  cloud_path_location = null
  storage_provider = storage_provider.toLowerCase()
  storage_allowed_location = storage_allowed_location

  if(storage_provider === "s3" ){
    
    if( !storage_allowed_location.includes("s3://") )  cloud_path_location = `s3://${storage_allowed_location}/`;
      
  }
  else if ( storage_provider === "azure" ){

    if( !storage_allowed_location.includes("azure://") ) cloud_path_location = `azure://${storage_allowed_location}.blob.core.windows.net/`;
    
  }

  if (cloud_path_location === null) cloud_path_location = storage_allowed_location
  

  return cloud_path_location
}