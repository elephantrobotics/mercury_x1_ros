
"use strict";

let SetKeyword = require('./SetKeyword.js')
let YAMLImport = require('./YAMLImport.js')
let SaveMap = require('./SaveMap.js')
let RenameMap = require('./RenameMap.js')
let PublishMap = require('./PublishMap.js')
let YAMLExport = require('./YAMLExport.js')
let DeleteAnnotations = require('./DeleteAnnotations.js')
let EditAnnotationsData = require('./EditAnnotationsData.js')
let GetAnnotationsData = require('./GetAnnotationsData.js')
let PubAnnotationsData = require('./PubAnnotationsData.js')
let SaveAnnotationsData = require('./SaveAnnotationsData.js')
let ListWorlds = require('./ListWorlds.js')
let GetAnnotations = require('./GetAnnotations.js')
let ResetDatabase = require('./ResetDatabase.js')
let ListMaps = require('./ListMaps.js')
let DeleteMap = require('./DeleteMap.js')
let SetRelationship = require('./SetRelationship.js')

module.exports = {
  SetKeyword: SetKeyword,
  YAMLImport: YAMLImport,
  SaveMap: SaveMap,
  RenameMap: RenameMap,
  PublishMap: PublishMap,
  YAMLExport: YAMLExport,
  DeleteAnnotations: DeleteAnnotations,
  EditAnnotationsData: EditAnnotationsData,
  GetAnnotationsData: GetAnnotationsData,
  PubAnnotationsData: PubAnnotationsData,
  SaveAnnotationsData: SaveAnnotationsData,
  ListWorlds: ListWorlds,
  GetAnnotations: GetAnnotations,
  ResetDatabase: ResetDatabase,
  ListMaps: ListMaps,
  DeleteMap: DeleteMap,
  SetRelationship: SetRelationship,
};
