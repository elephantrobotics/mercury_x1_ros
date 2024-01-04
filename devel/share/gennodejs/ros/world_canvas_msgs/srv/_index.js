
"use strict";

let SetKeyword = require('./SetKeyword.js')
let ResetDatabase = require('./ResetDatabase.js')
let RenameMap = require('./RenameMap.js')
let EditAnnotationsData = require('./EditAnnotationsData.js')
let SaveAnnotationsData = require('./SaveAnnotationsData.js')
let ListWorlds = require('./ListWorlds.js')
let DeleteAnnotations = require('./DeleteAnnotations.js')
let PublishMap = require('./PublishMap.js')
let YAMLImport = require('./YAMLImport.js')
let YAMLExport = require('./YAMLExport.js')
let GetAnnotationsData = require('./GetAnnotationsData.js')
let PubAnnotationsData = require('./PubAnnotationsData.js')
let DeleteMap = require('./DeleteMap.js')
let SaveMap = require('./SaveMap.js')
let SetRelationship = require('./SetRelationship.js')
let ListMaps = require('./ListMaps.js')
let GetAnnotations = require('./GetAnnotations.js')

module.exports = {
  SetKeyword: SetKeyword,
  ResetDatabase: ResetDatabase,
  RenameMap: RenameMap,
  EditAnnotationsData: EditAnnotationsData,
  SaveAnnotationsData: SaveAnnotationsData,
  ListWorlds: ListWorlds,
  DeleteAnnotations: DeleteAnnotations,
  PublishMap: PublishMap,
  YAMLImport: YAMLImport,
  YAMLExport: YAMLExport,
  GetAnnotationsData: GetAnnotationsData,
  PubAnnotationsData: PubAnnotationsData,
  DeleteMap: DeleteMap,
  SaveMap: SaveMap,
  SetRelationship: SetRelationship,
  ListMaps: ListMaps,
  GetAnnotations: GetAnnotations,
};
