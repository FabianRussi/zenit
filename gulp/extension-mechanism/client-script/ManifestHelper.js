'use strict';

var FileServiceClient = require('./FileServiceClient')
,	Utils = null //dependency not used
,	_ = require('underscore');

var ManifestHelper = (function(){
	
	var paths = {};

	var file_service_client = FileServiceClient.getInstance();
	
	var getFilePath = function getFilePath(manifest, resource, file)
	{
		var folder = !_.isEmpty(manifest[resource].folder) ? manifest[resource].folder + '/' : '';
		if(!_.isNaN(parseInt(file)))
		{
			return file;
		}
		else if (!_.isUndefined(folder) && file)
		{
			return (manifest.path ? manifest.path + '/' : '') + folder + file;
		}
		else
		{
			throw new Error('Invalid file path format:\npath ' + manifest.path + '\nfolder: ' + folder + '\nfile: ' + file);
		}
	};

	var manifest_helper = {

		getResourceFiles: function getResourceFiles(manifests, resource_type)
		{
			var files_to_download = {};

			try
			{
				switch(resource_type)
				{
					case 'javascript':
					case 'templates':

						_.each(manifests, function(manifest)
						{
							var resource = manifest[resource_type];
							if(resource && resource.application)
							{
								_.each(resource.application, function(data, application)
								{
									files_to_download[application] = files_to_download[application] || [];
									var	entry_files = _.map(
											data.files
										,	function(file)
											{
												return getFilePath(manifest, resource_type, file);
											});

									files_to_download[application] = files_to_download[application].concat(entry_files);
								});
							}
						});
						break;

					case 'skins':

						files_to_download.files = _.reduce(
								manifests
							,	function(files, manifest)
								{
									var skin_files = _.pluck(manifest.skins, 'file');
									if(!manifest.skins || !_.isArray(manifest.skins))
									{
										return files;
									}

									var	entry_files = _.map(
											skin_files
										,	function(file)
											{
												return getFilePath(manifest, 'skins', file);
											});

									return _.union(files, entry_files);
								}
							,	[]
						);
					break;

					default:
						files_to_download.files = _.reduce(
								manifests
							,	function(files, manifest)
								{
									var resource = manifest[resource_type];
									if(!manifest[resource_type] || !_.isArray(manifest[resource_type].files))
									{
										return files;
									}

									var	entry_files = _.map(
                                        resource.files
                                    ,	function(file)
                                        {
                                            return getFilePath(manifest, resource_type, file);
                                        }
                                    );

									return _.union(files, entry_files);
								}
							,	[]
							);
						break;
				}

				if(files_to_download.files)
				{
					return file_service_client.getFiles(files_to_download.files);
				}
				else
				{
					var promises = [];
					_.each(files_to_download, function(files, application)
					{
						var promise = file_service_client.getFiles(files)
                        .then(
                            function getFilesSspAppDone(files)
                            {
                                return {
                                    application: application
                                ,	files: files
                                };
                            }
                        );

						promises.push(promise);
					});

					return promises;
				}
			}
			catch(error)
			{
				return Promise.reject(error);
			}	
		}

	};

	return {
		getInstance: function ()
		{
			this.instance = this.instance || manifest_helper;
			return this.instance;
		}
	};

})();

module.exports = ManifestHelper;
