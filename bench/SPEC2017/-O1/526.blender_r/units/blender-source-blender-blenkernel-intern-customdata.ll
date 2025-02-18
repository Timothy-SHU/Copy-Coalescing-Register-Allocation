; ModuleID = 'blender/source/blender/blenkernel/intern/customdata.c'
source_filename = "blender/source/blender/blenkernel/intern/customdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMAllocTemplate = type { i32, i32, i32, i32 }
%struct.LayerTypeInfo = type { i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.MTFace = type { [4 x [2 x float]], ptr, i8, i8, i16, i16, i16 }
%struct.OrigSpaceFace = type { [4 x [2 x float]] }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.CustomDataLayer = type { i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], ptr }
%struct.anon = type { ptr, i32, i32 }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.anon.2 = type { ptr, i32, i32 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Library = type { %struct.ID, ptr, ptr, [1024 x i8], [1024 x i8], ptr, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.MDeformWeight = type { i32, float }
%struct.MDeformWeight_Link = type { ptr, %struct.MDeformWeight }
%struct.anon.0 = type { float, float, float, float }
%struct.MCol = type { i8, i8, i8, i8 }
%struct.MLoopCol = type { i8, i8, i8, i8 }
%struct.MDisps = type { i32, i32, ptr, ptr }
%struct.GridPaintMask = type { ptr, i32, i32 }
%struct.MVertSkin = type { [3 x float], i32 }

@CD_MASK_BAREMESH = dso_local local_unnamed_addr constant i64 637534233, align 8
@CD_MASK_MESH = dso_local local_unnamed_addr constant i64 532694146175, align 8
@CD_MASK_EDITMESH = dso_local local_unnamed_addr constant i64 120679275622, align 8
@CD_MASK_DERIVEDMESH = dso_local local_unnamed_addr constant i64 487773961446, align 8
@CD_MASK_BMESH = dso_local local_unnamed_addr constant i64 534606748678, align 8
@CD_MASK_FACECORNERS = dso_local local_unnamed_addr constant i64 549756043616, align 8
@CD_MASK_EVERYTHING = dso_local local_unnamed_addr constant i64 2199016963583, align 8
@.str = private unnamed_addr constant [13 x i8] c"mask=0x%lx:\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"CD duplicate ref layer\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"CustomData_interp sources\00", align 1
@bm_mesh_chunksize_default = external local_unnamed_addr constant %struct.BMAllocTemplate, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to read %s layer from %s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Failed to open %s for writing.\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Failed to write data to %s.\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"CustomDataExternal\00", align 1
@LAYERTYPENAMES = internal unnamed_addr constant [41 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], align 16
@.str.8 = private unnamed_addr constant [8 x i8] c"CDMVert\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"CDMSticky\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"CDMDeformVert\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"CDMEdge\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"CDMFace\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"CDMTFace\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"CDMCol\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"CDOrigIndex\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"CDNormal\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"CDFlags\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"CDMFloatProperty\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"CDMIntProperty\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"CDMStringProperty\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"CDOrigSpace\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"CDOrco\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"CDMTexPoly\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"CDMLoopUV\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"CDMloopCol\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"CDTangent\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"CDMDisps\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"CDPreviewMCol\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"CDIDMCol\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"CDTextureMCol\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"CDClothOrco\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"CDMRecast\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"CDMPoly\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"CDMLoop\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"CDShapeKeyIndex\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"CDShapeKey\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"CDBevelWeight\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"CDSubSurfCrease\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"CDOrigSpaceLoop\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"CDPreviewLoopCol\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"CDBMElemPyPtr\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"CDPaintMask\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"CDGridPaintMask\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"CDMVertSkin\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"CDFreestyleEdge\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"CDFreestyleFace\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"CDMLoopTangent\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"CDTessLoopNormal\00", align 1
@LAYERTYPEINFO = internal unnamed_addr constant [41 x %struct.LayerTypeInfo] [%struct.LayerTypeInfo { i32 20, ptr @.str.49, i32 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 8, ptr @.str.50, i32 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 16, ptr @.str.51, i32 1, ptr null, ptr @layerCopy_mdeformvert, ptr @layerFree_mdeformvert, ptr @layerInterp_mdeformvert, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 12, ptr @.str.52, i32 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 20, ptr @.str.53, i32 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 48, ptr @.str.54, i32 1, ptr @.str.55, ptr @layerCopy_tface, ptr null, ptr @layerInterp_tface, ptr @layerSwap_tface, ptr @layerDefault_tface, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @layerMaxNum_tface }, %struct.LayerTypeInfo { i32 16, ptr @.str.56, i32 4, ptr @.str.57, ptr null, ptr null, ptr @layerInterp_mcol, ptr @layerSwap_mcol, ptr @layerDefault_mcol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @layerMaxNum_mloopcol }, %struct.LayerTypeInfo { i32 4, ptr @.str.50, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @layerDefault_origindex, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 12, ptr @.str.58, i32 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 4, ptr @.str.50, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 4, ptr @.str.59, i32 1, ptr @.str.60, ptr @layerCopy_propFloat, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 4, ptr @.str.61, i32 1, ptr @.str.62, ptr @layerCopy_propInt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 256, ptr @.str.63, i32 1, ptr @.str.64, ptr @layerCopy_propString, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 32, ptr @.str.65, i32 1, ptr @.str.55, ptr @layerCopy_origspace_face, ptr null, ptr @layerInterp_origspace_face, ptr @layerSwap_origspace_face, ptr @layerDefault_origspace_face, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 12, ptr @.str.50, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 16, ptr @.str.66, i32 1, ptr @.str.55, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @layerMaxNum_tface }, %struct.LayerTypeInfo { i32 12, ptr @.str.67, i32 1, ptr @.str.55, ptr null, ptr null, ptr @layerInterp_mloopuv, ptr null, ptr null, ptr @layerEqual_mloopuv, ptr @layerMultiply_mloopuv, ptr @layerInitMinMax_mloopuv, ptr @layerAdd_mloopuv, ptr @layerDoMinMax_mloopuv, ptr @layerCopyValue_mloopuv, ptr null, ptr null, ptr null, ptr @layerMaxNum_tface }, %struct.LayerTypeInfo { i32 4, ptr @.str.68, i32 1, ptr @.str.57, ptr null, ptr null, ptr @layerInterp_mloopcol, ptr null, ptr @layerDefault_mloopcol, ptr @layerEqual_mloopcol, ptr @layerMultiply_mloopcol, ptr @layerInitMinMax_mloopcol, ptr @layerAdd_mloopcol, ptr @layerDoMinMax_mloopcol, ptr @layerCopyValue_mloopcol, ptr null, ptr null, ptr null, ptr @layerMaxNum_mloopcol }, %struct.LayerTypeInfo { i32 64, ptr @.str.50, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 24, ptr @.str.69, i32 1, ptr null, ptr @layerCopy_mdisps, ptr @layerFree_mdisps, ptr null, ptr @layerSwap_mdisps, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @layerRead_mdisps, ptr @layerWrite_mdisps, ptr @layerFilesize_mdisps, ptr null }, %struct.LayerTypeInfo { i32 16, ptr @.str.56, i32 4, ptr @.str.70, ptr null, ptr null, ptr @layerInterp_mcol, ptr @layerSwap_mcol, ptr @layerDefault_mcol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 16, ptr @.str.56, i32 4, ptr @.str.71, ptr null, ptr null, ptr @layerInterp_mcol, ptr @layerSwap_mcol, ptr @layerDefault_mcol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 16, ptr @.str.56, i32 4, ptr @.str.72, ptr null, ptr null, ptr @layerInterp_mcol, ptr @layerSwap_mcol, ptr @layerDefault_mcol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 12, ptr @.str.50, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 4, ptr @.str.73, i32 1, ptr @.str.74, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 12, ptr @.str.75, i32 1, ptr @.str.76, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 8, ptr @.str.77, i32 1, ptr @.str.78, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 4, ptr @.str.50, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 12, ptr @.str.50, i32 0, ptr @.str.79, ptr null, ptr null, ptr @layerInterp_shapekey, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 4, ptr @.str.50, i32 0, ptr @.str.80, ptr null, ptr null, ptr @layerInterp_bweight, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 4, ptr @.str.50, i32 0, ptr @.str.81, ptr null, ptr null, ptr @layerInterp_bweight, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 8, ptr @.str.82, i32 1, ptr @.str.83, ptr null, ptr null, ptr @layerInterp_mloop_origspace, ptr null, ptr null, ptr @layerEqual_mloop_origspace, ptr @layerMultiply_mloop_origspace, ptr @layerInitMinMax_mloop_origspace, ptr @layerAdd_mloop_origspace, ptr @layerDoMinMax_mloop_origspace, ptr @layerCopyValue_mloop_origspace, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 4, ptr @.str.68, i32 1, ptr @.str.84, ptr null, ptr null, ptr @layerInterp_mloopcol, ptr null, ptr @layerDefault_mloopcol, ptr @layerEqual_mloopcol, ptr @layerMultiply_mloopcol, ptr @layerInitMinMax_mloopcol, ptr @layerAdd_mloopcol, ptr @layerDoMinMax_mloopcol, ptr @layerCopyValue_mloopcol, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 8, ptr @.str.50, i32 1, ptr null, ptr @layerCopy_bmesh_elem_py_ptr, ptr @layerFree_bmesh_elem_py_ptr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 4, ptr @.str.50, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 16, ptr @.str.85, i32 1, ptr null, ptr @layerCopy_grid_paint_mask, ptr @layerFree_grid_paint_mask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 16, ptr @.str.86, i32 1, ptr null, ptr null, ptr null, ptr @layerInterp_mvert_skin, ptr null, ptr @layerDefault_mvert_skin, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 4, ptr @.str.87, i32 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 4, ptr @.str.88, i32 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 16, ptr @.str.50, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 24, ptr @.str.50, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @layerSwap_flnor, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }], align 16
@.str.49 = private unnamed_addr constant [6 x i8] c"MVert\00", align 1
@.str.50 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"MDeformVert\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"MEdge\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"MFace\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"MTFace\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"UVMap\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"MCol\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"Col\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"vec3f\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"MFloatProperty\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"Float\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"MIntProperty\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"Int\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"MStringProperty\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"String\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"OrigSpaceFace\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"MTexPoly\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"MLoopUV\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"MLoopCol\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"MDisps\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"PreviewCol\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"IDCol\00", align 1
@.str.72 = private unnamed_addr constant [12 x i8] c"TexturedCol\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"MRecast\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"Recast\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"MPoly\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"NGon Face\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"MLoop\00", align 1
@.str.78 = private unnamed_addr constant [17 x i8] c"NGon Face-Vertex\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"ShapeKey\00", align 1
@.str.80 = private unnamed_addr constant [12 x i8] c"BevelWeight\00", align 1
@.str.81 = private unnamed_addr constant [14 x i8] c"SubSurfCrease\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"OrigSpaceLoop\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"OS Loop\00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c"PreviewLoopCol\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"GridPaintMask\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"MVertSkin\00", align 1
@.str.87 = private unnamed_addr constant [14 x i8] c"FreestyleEdge\00", align 1
@.str.88 = private unnamed_addr constant [14 x i8] c"FreestyleFace\00", align 1
@.str.89 = private unnamed_addr constant [25 x i8] c"layerCopy_mdeformvert dw\00", align 1
@__func__.layerInterp_mdeformvert = private unnamed_addr constant [24 x i8] c"layerInterp_mdeformvert\00", align 1
@layerSwap_tface.pin_flags = internal unnamed_addr constant [4 x i16] [i16 16, i16 32, i16 64, i16 128], align 2
@layerSwap_tface.sel_flags = internal unnamed_addr constant [4 x i8] c"\04\08\10 ", align 1
@layerDefault_tface.default_tf = internal unnamed_addr constant %struct.MTFace { [4 x [2 x float]] [[2 x float] zeroinitializer, [2 x float] [float 1.000000e+00, float 0.000000e+00], [2 x float] [float 1.000000e+00, float 1.000000e+00], [2 x float] [float 0.000000e+00, float 1.000000e+00]], ptr null, i8 0, i8 0, i16 33, i16 0, i16 0 }, align 8
@layerDefault_origspace_face.default_osf = internal unnamed_addr constant %struct.OrigSpaceFace { [4 x [2 x float]] [[2 x float] zeroinitializer, [2 x float] [float 1.000000e+00, float 0.000000e+00], [2 x float] [float 1.000000e+00, float 1.000000e+00], [2 x float] [float 0.000000e+00, float 1.000000e+00]] }, align 4
@.str.90 = private unnamed_addr constant [11 x i8] c"mdisp swap\00", align 1
@.str.91 = private unnamed_addr constant [12 x i8] c"mdisps swap\00", align 1
@.str.92 = private unnamed_addr constant [12 x i8] c"mdisps read\00", align 1
@.str.93 = private unnamed_addr constant [47 x i8] c"failed to read multires displacement %d/%d %d\0A\00", align 1
@.str.94 = private unnamed_addr constant [48 x i8] c"failed to write multires displacement %d/%d %d\0A\00", align 1
@.str.95 = private unnamed_addr constant [19 x i8] c"CustomData->layers\00", align 1
@.str.96 = private unnamed_addr constant [57 x i8] c"%s: warning null data for %s type (%p --> %p), skipping\0A\00", align 1
@__func__.CustomData_copy_data_layer = private unnamed_addr constant [27 x i8] c"CustomData_copy_data_layer\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @bpy_bm_generic_invalidate(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @customData_mask_layers__print(i64 noundef %0) local_unnamed_addr #1 {
  %2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i64 noundef %0)
  br label %3

3:                                                ; preds = %1, %12
  %4 = phi i64 [ 0, %1 ], [ %13, %12 ]
  %5 = shl nuw nsw i64 1, %4
  %6 = and i64 %5, %0
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds [41 x ptr], ptr @LAYERTYPENAMES, i64 0, i64 %4
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %10)
  br label %12

12:                                               ; preds = %3, %8
  %13 = add nuw nsw i64 %4, 1
  %14 = icmp eq i64 %13, 41
  br i1 %14, label %15, label %3, !llvm.loop !38

15:                                               ; preds = %12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @CustomData_update_typemap(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(164) %2, i8 -1, i64 164, i1 false), !tbaa !41
  %3 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !43
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !45
  br label %8

8:                                                ; preds = %6, %18
  %9 = phi i64 [ 0, %6 ], [ %20, %18 ]
  %10 = phi i32 [ -1, %6 ], [ %19, %18 ]
  %11 = getelementptr inbounds %struct.CustomDataLayer, ptr %7, i64 %9
  %12 = load i32, ptr %11, align 8, !tbaa !46
  %13 = icmp eq i32 %12, %10
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %15
  %17 = trunc i64 %9 to i32
  store i32 %17, ptr %16, align 4, !tbaa !41
  br label %18

18:                                               ; preds = %14, %8
  %19 = load i32, ptr %11, align 8, !tbaa !46
  %20 = add nuw nsw i64 %9, 1
  %21 = load i32, ptr %3, align 4, !tbaa !43
  %22 = sext i32 %21 to i64
  %23 = icmp slt i64 %20, %22
  br i1 %23, label %8, label %24, !llvm.loop !48

24:                                               ; preds = %18, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @CustomData_merge(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 {
  %6 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !43
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 2
  %11 = icmp ne i32 %3, 0
  br label %18

12:                                               ; preds = %137, %5
  %13 = phi i8 [ 0, %5 ], [ %138, %137 ]
  %14 = getelementptr i8, ptr %1, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(164) %14, i8 -1, i64 164, i1 false), !tbaa !41
  %15 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !43
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %143, label %161

18:                                               ; preds = %9, %137
  %19 = phi i64 [ 0, %9 ], [ %139, %137 ]
  %20 = phi i8 [ 0, %9 ], [ %138, %137 ]
  %21 = phi i32 [ -1, %9 ], [ %69, %137 ]
  %22 = phi i32 [ 0, %9 ], [ %68, %137 ]
  %23 = phi i32 [ 0, %9 ], [ %67, %137 ]
  %24 = phi i32 [ 0, %9 ], [ %66, %137 ]
  %25 = phi i32 [ 0, %9 ], [ %65, %137 ]
  %26 = phi i32 [ 0, %9 ], [ %64, %137 ]
  %27 = phi i32 [ 0, %9 ], [ %63, %137 ]
  %28 = phi i32 [ -1, %9 ], [ %62, %137 ]
  %29 = load ptr, ptr %0, align 8, !tbaa !45
  %30 = getelementptr inbounds %struct.CustomDataLayer, ptr %29, i64 %19
  %31 = load i32, ptr %30, align 8, !tbaa !46
  %32 = icmp eq i32 %31, %28
  br i1 %32, label %59, label %33

33:                                               ; preds = %18
  %34 = icmp ugt i32 %31, 40
  %35 = zext nneg i32 %31 to i64
  %36 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %35
  %37 = select i1 %34, ptr null, ptr %36
  %38 = getelementptr inbounds %struct.LayerTypeInfo, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !49
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.LayerTypeInfo, ptr %37, i64 0, i32 18
  %43 = load ptr, ptr %42, align 8, !tbaa !51
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = tail call i32 %43() #25
  br label %47

47:                                               ; preds = %33, %41, %45
  %48 = phi i32 [ %46, %45 ], [ 1, %33 ], [ -1, %41 ]
  %49 = getelementptr inbounds %struct.CustomDataLayer, ptr %29, i64 %19, i32 3
  %50 = load i32, ptr %49, align 4, !tbaa !52
  %51 = getelementptr inbounds %struct.CustomDataLayer, ptr %29, i64 %19, i32 4
  %52 = load i32, ptr %51, align 8, !tbaa !53
  %53 = getelementptr inbounds %struct.CustomDataLayer, ptr %29, i64 %19, i32 5
  %54 = load i32, ptr %53, align 4, !tbaa !54
  %55 = getelementptr inbounds %struct.CustomDataLayer, ptr %29, i64 %19, i32 6
  %56 = load i32, ptr %55, align 8, !tbaa !55
  %57 = getelementptr inbounds %struct.CustomDataLayer, ptr %29, i64 %19, i32 2
  %58 = load i32, ptr %57, align 8, !tbaa !56
  br label %61

59:                                               ; preds = %18
  %60 = add nsw i32 %22, 1
  br label %61

61:                                               ; preds = %59, %47
  %62 = phi i32 [ %31, %47 ], [ %28, %59 ]
  %63 = phi i32 [ %50, %47 ], [ %27, %59 ]
  %64 = phi i32 [ %52, %47 ], [ %26, %59 ]
  %65 = phi i32 [ %54, %47 ], [ %25, %59 ]
  %66 = phi i32 [ %56, %47 ], [ %24, %59 ]
  %67 = phi i32 [ %58, %47 ], [ %23, %59 ]
  %68 = phi i32 [ 0, %47 ], [ %60, %59 ]
  %69 = phi i32 [ %48, %47 ], [ %21, %59 ]
  %70 = and i32 %67, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %137

72:                                               ; preds = %61
  %73 = zext nneg i32 %31 to i64
  %74 = shl nuw i64 1, %73
  %75 = and i64 %74, %2
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %137, label %77

77:                                               ; preds = %72
  %78 = icmp eq i32 %69, -1
  %79 = icmp slt i32 %68, %69
  %80 = select i1 %78, i1 true, i1 %79
  br i1 %80, label %81, label %137

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.CustomDataLayer, ptr %29, i64 %19, i32 8
  %83 = load i32, ptr %10, align 4, !tbaa !43
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %81
  %86 = load ptr, ptr %1, align 8, !tbaa !45
  %87 = zext nneg i32 %83 to i64
  br label %88

88:                                               ; preds = %97, %85
  %89 = phi i64 [ 0, %85 ], [ %98, %97 ]
  %90 = getelementptr inbounds %struct.CustomDataLayer, ptr %86, i64 %89
  %91 = load i32, ptr %90, align 8, !tbaa !46
  %92 = icmp eq i32 %91, %31
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.CustomDataLayer, ptr %86, i64 %89, i32 8
  %95 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %94, ptr noundef nonnull dereferenceable(1) %82) #26
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %93, %88
  %98 = add nuw nsw i64 %89, 1
  %99 = icmp eq i64 %98, %87
  br i1 %99, label %102, label %88, !llvm.loop !57

100:                                              ; preds = %93
  %101 = trunc i64 %89 to i32
  br label %102

102:                                              ; preds = %97, %100, %81
  %103 = phi i32 [ -1, %81 ], [ %101, %100 ], [ -1, %97 ]
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %110, label %105

105:                                              ; preds = %102
  %106 = load ptr, ptr %1, align 8, !tbaa !45
  %107 = sext i32 %103 to i64
  %108 = getelementptr inbounds %struct.CustomDataLayer, ptr %106, i64 %107, i32 9
  %109 = load ptr, ptr %108, align 8, !tbaa !58
  br label %110

110:                                              ; preds = %102, %105
  %111 = phi ptr [ %109, %105 ], [ null, %102 ]
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %137

113:                                              ; preds = %110
  switch i32 %3, label %117 [
    i32 0, label %114
    i32 3, label %114
    i32 4, label %114
  ]

114:                                              ; preds = %113, %113, %113
  %115 = getelementptr inbounds %struct.CustomDataLayer, ptr %29, i64 %19, i32 9
  %116 = load ptr, ptr %115, align 8, !tbaa !58
  br label %117

117:                                              ; preds = %113, %114
  %118 = phi ptr [ %116, %114 ], [ null, %113 ]
  %119 = and i32 %67, 2
  %120 = icmp eq i32 %119, 0
  %121 = or i1 %11, %120
  %122 = select i1 %121, i32 %3, i32 3
  %123 = tail call fastcc ptr @customData_add_layer__internal(ptr noundef %1, i32 noundef %31, i32 noundef %122, ptr noundef %118, i32 noundef %4, ptr noundef nonnull %82)
  %124 = icmp eq ptr %123, null
  br i1 %124, label %137, label %125

125:                                              ; preds = %117
  %126 = getelementptr inbounds %struct.CustomDataLayer, ptr %29, i64 %19, i32 7
  %127 = load i32, ptr %126, align 4, !tbaa !59
  %128 = getelementptr inbounds %struct.CustomDataLayer, ptr %123, i64 0, i32 7
  store i32 %127, ptr %128, align 4, !tbaa !59
  %129 = getelementptr inbounds %struct.CustomDataLayer, ptr %123, i64 0, i32 3
  store i32 %63, ptr %129, align 4, !tbaa !52
  %130 = getelementptr inbounds %struct.CustomDataLayer, ptr %123, i64 0, i32 4
  store i32 %64, ptr %130, align 8, !tbaa !53
  %131 = getelementptr inbounds %struct.CustomDataLayer, ptr %123, i64 0, i32 5
  store i32 %65, ptr %131, align 4, !tbaa !54
  %132 = getelementptr inbounds %struct.CustomDataLayer, ptr %123, i64 0, i32 6
  store i32 %66, ptr %132, align 8, !tbaa !55
  %133 = and i32 %67, 24
  %134 = getelementptr inbounds %struct.CustomDataLayer, ptr %123, i64 0, i32 2
  %135 = load i32, ptr %134, align 8, !tbaa !56
  %136 = or i32 %135, %133
  store i32 %136, ptr %134, align 8, !tbaa !56
  br label %137

137:                                              ; preds = %77, %117, %125, %110, %72, %61
  %138 = phi i8 [ %20, %61 ], [ %20, %110 ], [ 1, %125 ], [ %20, %117 ], [ %20, %72 ], [ %20, %77 ]
  %139 = add nuw nsw i64 %19, 1
  %140 = load i32, ptr %6, align 4, !tbaa !43
  %141 = sext i32 %140 to i64
  %142 = icmp slt i64 %139, %141
  br i1 %142, label %18, label %12, !llvm.loop !60

143:                                              ; preds = %12
  %144 = load ptr, ptr %1, align 8, !tbaa !45
  br label %145

145:                                              ; preds = %143, %155
  %146 = phi i64 [ 0, %143 ], [ %157, %155 ]
  %147 = phi i32 [ -1, %143 ], [ %156, %155 ]
  %148 = getelementptr inbounds %struct.CustomDataLayer, ptr %144, i64 %146
  %149 = load i32, ptr %148, align 8, !tbaa !46
  %150 = icmp eq i32 %149, %147
  br i1 %150, label %155, label %151

151:                                              ; preds = %145
  %152 = sext i32 %149 to i64
  %153 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 1, i64 %152
  %154 = trunc i64 %146 to i32
  store i32 %154, ptr %153, align 4, !tbaa !41
  br label %155

155:                                              ; preds = %151, %145
  %156 = load i32, ptr %148, align 8, !tbaa !46
  %157 = add nuw nsw i64 %146, 1
  %158 = load i32, ptr %15, align 4, !tbaa !43
  %159 = sext i32 %158 to i64
  %160 = icmp slt i64 %157, %159
  br i1 %160, label %145, label %161, !llvm.loop !48

161:                                              ; preds = %155, %12
  ret i8 %13
}

; Function Attrs: nounwind uwtable
define dso_local i32 @CustomData_layertype_layers_max(i32 noundef %0) local_unnamed_addr #5 {
  %2 = icmp ugt i32 %0, 40
  %3 = zext nneg i32 %0 to i64
  %4 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %3
  %5 = select i1 %2, ptr null, ptr %4
  %6 = getelementptr inbounds %struct.LayerTypeInfo, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.LayerTypeInfo, ptr %5, i64 0, i32 18
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 %11() #25
  br label %15

15:                                               ; preds = %9, %1, %13
  %16 = phi i32 [ %14, %13 ], [ 1, %1 ], [ -1, %9 ]
  ret i32 %16
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @CustomData_get_layer_named(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !43
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !45
  %9 = zext nneg i32 %5 to i64
  br label %10

10:                                               ; preds = %7, %19
  %11 = phi i64 [ 0, %7 ], [ %20, %19 ]
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11
  %13 = load i32, ptr %12, align 8, !tbaa !46
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11, i32 8
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) %2) #26
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15, %10
  %20 = add nuw nsw i64 %11, 1
  %21 = icmp eq i64 %20, %9
  br i1 %21, label %24, label %10, !llvm.loop !57

22:                                               ; preds = %15
  %23 = trunc i64 %11 to i32
  br label %24

24:                                               ; preds = %22, %19, %3
  %25 = phi i32 [ -1, %3 ], [ %23, %22 ], [ -1, %19 ]
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %0, align 8, !tbaa !45
  %29 = sext i32 %25 to i64
  %30 = getelementptr inbounds %struct.CustomDataLayer, ptr %28, i64 %29, i32 9
  %31 = load ptr, ptr %30, align 8, !tbaa !58
  br label %32

32:                                               ; preds = %24, %27
  %33 = phi ptr [ %31, %27 ], [ null, %24 ]
  ret ptr %33
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @customData_add_layer__internal(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #5 {
  %7 = alloca %struct.anon, align 8
  %8 = icmp ugt i32 %1, 40
  %9 = zext nneg i32 %1 to i64
  %10 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %9
  %11 = select i1 %8, ptr null, ptr %10
  %12 = load i32, ptr %11, align 8, !tbaa !61
  %13 = mul nsw i32 %12, %4
  %14 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !43
  %16 = getelementptr inbounds %struct.LayerTypeInfo, ptr %11, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !49
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %6
  %20 = sext i32 %1 to i64
  %21 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !41
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %0, align 8, !tbaa !45
  %26 = sext i32 %22 to i64
  %27 = getelementptr inbounds %struct.CustomDataLayer, ptr %25, i64 %26
  br label %216

28:                                               ; preds = %19, %6
  switch i32 %2, label %29 [
    i32 3, label %41
    i32 0, label %41
  ]

29:                                               ; preds = %28
  %30 = icmp sgt i32 %13, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %29
  %32 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %33 = zext nneg i32 %13 to i64
  br i1 %8, label %37, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds [41 x ptr], ptr @LAYERTYPENAMES, i64 0, i64 %9
  %36 = load ptr, ptr %35, align 8, !tbaa !34
  br label %37

37:                                               ; preds = %31, %34
  %38 = phi ptr [ %36, %34 ], [ null, %31 ]
  %39 = tail call ptr %32(i64 noundef %33, ptr noundef %38) #25
  %40 = icmp eq ptr %39, null
  br i1 %40, label %216, label %41

41:                                               ; preds = %28, %28, %29, %37
  %42 = phi ptr [ %39, %37 ], [ null, %29 ], [ %3, %28 ], [ %3, %28 ]
  %43 = icmp eq i32 %2, 4
  %44 = icmp ne ptr %3, null
  %45 = and i1 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.LayerTypeInfo, ptr %11, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !62
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  tail call void %48(ptr noundef nonnull %3, ptr noundef %42, i32 noundef %4) #25
  br label %60

51:                                               ; preds = %46
  %52 = sext i32 %13 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %42, ptr nonnull align 1 %3, i64 %52, i1 false)
  br label %60

53:                                               ; preds = %41
  switch i32 %2, label %60 [
    i32 2, label %54
    i32 3, label %59
  ]

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.LayerTypeInfo, ptr %11, i64 0, i32 8
  %56 = load ptr, ptr %55, align 8, !tbaa !63
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  tail call void %56(ptr noundef %42, i32 noundef %4) #25
  br label %60

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %53, %58, %54, %59, %50, %51
  %61 = phi i32 [ 0, %50 ], [ 0, %51 ], [ 0, %58 ], [ 0, %54 ], [ 2, %59 ], [ 0, %53 ]
  %62 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 3
  %63 = load i32, ptr %62, align 8, !tbaa !64
  %64 = icmp slt i32 %15, %63
  br i1 %64, label %88, label %65

65:                                               ; preds = %60
  %66 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %67 = add nsw i32 %63, 5
  %68 = sext i32 %67 to i64
  %69 = mul nsw i64 %68, 104
  %70 = tail call ptr %66(i64 noundef %69, ptr noundef nonnull @.str.95) #25
  %71 = icmp eq ptr %70, null
  br i1 %71, label %84, label %72

72:                                               ; preds = %65
  %73 = load i32, ptr %62, align 8, !tbaa !64
  %74 = add nsw i32 %73, 5
  store i32 %74, ptr %62, align 8, !tbaa !64
  %75 = load ptr, ptr %0, align 8, !tbaa !45
  %76 = icmp eq ptr %75, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %72
  %78 = load i32, ptr %14, align 4, !tbaa !43
  %79 = sext i32 %78 to i64
  %80 = mul nsw i64 %79, 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %70, ptr nonnull align 8 %75, i64 %80, i1 false)
  %81 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %82 = load ptr, ptr %0, align 8, !tbaa !45
  tail call void %81(ptr noundef %82) #25
  br label %83

83:                                               ; preds = %77, %72
  store ptr %70, ptr %0, align 8, !tbaa !45
  br i1 %71, label %84, label %88

84:                                               ; preds = %65, %83
  %85 = icmp eq ptr %42, %3
  br i1 %85, label %216, label %86

86:                                               ; preds = %84
  %87 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %87(ptr noundef %42) #25
  br label %216

88:                                               ; preds = %83, %60
  %89 = load i32, ptr %14, align 4, !tbaa !43
  %90 = add nsw i32 %89, 1
  store i32 %90, ptr %14, align 4, !tbaa !43
  %91 = icmp sgt i32 %15, 0
  br i1 %91, label %92, label %112

92:                                               ; preds = %88
  %93 = load ptr, ptr %0, align 8, !tbaa !45
  %94 = zext nneg i32 %15 to i64
  %95 = getelementptr %struct.CustomDataLayer, ptr %93, i64 %94
  %96 = getelementptr %struct.CustomDataLayer, ptr %95, i64 -1
  %97 = load i32, ptr %96, align 8, !tbaa !46
  %98 = icmp sgt i32 %97, %1
  br i1 %98, label %107, label %112

99:                                               ; preds = %107
  %100 = add nsw i32 %110, -1
  %101 = load ptr, ptr %0, align 8, !tbaa !45
  %102 = zext nneg i32 %100 to i64
  %103 = getelementptr %struct.CustomDataLayer, ptr %101, i64 %102
  %104 = getelementptr %struct.CustomDataLayer, ptr %103, i64 -1
  %105 = load i32, ptr %104, align 8, !tbaa !46
  %106 = icmp sgt i32 %105, %1
  br i1 %106, label %107, label %112, !llvm.loop !65

107:                                              ; preds = %92, %99
  %108 = phi ptr [ %104, %99 ], [ %96, %92 ]
  %109 = phi ptr [ %103, %99 ], [ %95, %92 ]
  %110 = phi i32 [ %100, %99 ], [ %15, %92 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %109, ptr noundef nonnull align 8 dereferenceable(104) %108, i64 104, i1 false), !tbaa.struct !66
  %111 = icmp sgt i32 %110, 1
  br i1 %111, label %99, label %112, !llvm.loop !65

112:                                              ; preds = %107, %99, %92, %88
  %113 = phi i32 [ %15, %88 ], [ %15, %92 ], [ %100, %99 ], [ 0, %107 ]
  %114 = phi i1 [ %91, %88 ], [ %91, %92 ], [ %111, %99 ], [ %111, %107 ]
  %115 = load ptr, ptr %0, align 8, !tbaa !45
  %116 = sext i32 %113 to i64
  %117 = getelementptr inbounds %struct.CustomDataLayer, ptr %115, i64 %116
  store i32 %1, ptr %117, align 8, !tbaa !46
  %118 = getelementptr inbounds %struct.CustomDataLayer, ptr %115, i64 %116, i32 2
  store i32 %61, ptr %118, align 8, !tbaa !56
  %119 = getelementptr inbounds %struct.CustomDataLayer, ptr %115, i64 %116, i32 9
  store ptr %42, ptr %119, align 8, !tbaa !58
  %120 = icmp eq ptr %5, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %112
  %122 = load ptr, ptr %16, align 8, !tbaa !49
  %123 = icmp eq ptr %122, null
  br i1 %123, label %145, label %124

124:                                              ; preds = %121, %112
  %125 = phi ptr [ %5, %112 ], [ %122, %121 ]
  %126 = getelementptr inbounds %struct.CustomDataLayer, ptr %115, i64 %116, i32 8
  %127 = tail call ptr @BLI_strncpy(ptr noundef nonnull %126, ptr noundef nonnull %125, i64 noundef 64) #25
  %128 = load ptr, ptr %0, align 8, !tbaa !45
  %129 = getelementptr inbounds %struct.CustomDataLayer, ptr %128, i64 %116
  %130 = load i32, ptr %129, align 8, !tbaa !46
  %131 = icmp ugt i32 %130, 40
  %132 = zext nneg i32 %130 to i64
  %133 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %132
  %134 = select i1 %131, ptr null, ptr %133
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #25
  store ptr %0, ptr %7, align 8, !tbaa !68
  %135 = load i32, ptr %129, align 8, !tbaa !46
  %136 = getelementptr inbounds %struct.anon, ptr %7, i64 0, i32 1
  store i32 %135, ptr %136, align 8, !tbaa !70
  %137 = getelementptr inbounds %struct.anon, ptr %7, i64 0, i32 2
  store i32 %113, ptr %137, align 4, !tbaa !71
  %138 = getelementptr inbounds %struct.LayerTypeInfo, ptr %134, i64 0, i32 3
  %139 = load ptr, ptr %138, align 8, !tbaa !49
  %140 = icmp eq ptr %139, null
  br i1 %140, label %144, label %141

141:                                              ; preds = %124
  %142 = getelementptr inbounds %struct.CustomDataLayer, ptr %128, i64 %116, i32 8
  %143 = call zeroext i8 @BLI_uniquename_cb(ptr noundef nonnull @customdata_unique_check, ptr noundef nonnull %7, ptr noundef nonnull %139, i8 noundef zeroext 46, ptr noundef nonnull %142, i32 noundef 64) #25
  br label %144

144:                                              ; preds = %124, %141
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #25
  br label %147

145:                                              ; preds = %121
  %146 = getelementptr inbounds %struct.CustomDataLayer, ptr %115, i64 %116, i32 8
  store i8 0, ptr %146, align 8, !tbaa !67
  br label %147

147:                                              ; preds = %145, %144
  br i1 %114, label %148, label %168

148:                                              ; preds = %147
  %149 = load ptr, ptr %0, align 8, !tbaa !45
  %150 = add nsw i32 %113, -1
  %151 = zext nneg i32 %150 to i64
  %152 = getelementptr inbounds %struct.CustomDataLayer, ptr %149, i64 %151
  %153 = load i32, ptr %152, align 8, !tbaa !46
  %154 = icmp eq i32 %153, %1
  br i1 %154, label %155, label %168

155:                                              ; preds = %148
  %156 = getelementptr inbounds %struct.CustomDataLayer, ptr %149, i64 %151, i32 3
  %157 = load i32, ptr %156, align 4, !tbaa !52
  %158 = getelementptr inbounds %struct.CustomDataLayer, ptr %149, i64 %116, i32 3
  store i32 %157, ptr %158, align 4, !tbaa !52
  %159 = getelementptr inbounds %struct.CustomDataLayer, ptr %149, i64 %151, i32 4
  %160 = load i32, ptr %159, align 8, !tbaa !53
  %161 = getelementptr inbounds %struct.CustomDataLayer, ptr %149, i64 %116, i32 4
  store i32 %160, ptr %161, align 8, !tbaa !53
  %162 = getelementptr inbounds %struct.CustomDataLayer, ptr %149, i64 %151, i32 5
  %163 = load i32, ptr %162, align 4, !tbaa !54
  %164 = getelementptr inbounds %struct.CustomDataLayer, ptr %149, i64 %116, i32 5
  store i32 %163, ptr %164, align 4, !tbaa !54
  %165 = getelementptr inbounds %struct.CustomDataLayer, ptr %149, i64 %151, i32 6
  %166 = load i32, ptr %165, align 8, !tbaa !55
  %167 = getelementptr inbounds %struct.CustomDataLayer, ptr %149, i64 %116, i32 6
  store i32 %166, ptr %167, align 8, !tbaa !55
  br label %171

168:                                              ; preds = %148, %147
  %169 = load ptr, ptr %0, align 8, !tbaa !45
  %170 = getelementptr inbounds %struct.CustomDataLayer, ptr %169, i64 %116, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %170, i8 0, i64 16, i1 false)
  br label %171

171:                                              ; preds = %168, %155
  %172 = load i32, ptr %14, align 4, !tbaa !43
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %210

174:                                              ; preds = %171
  %175 = load ptr, ptr %0, align 8, !tbaa !45
  %176 = zext nneg i32 %172 to i64
  br label %177

177:                                              ; preds = %177, %174
  %178 = phi i64 [ 0, %174 ], [ %187, %177 ]
  %179 = phi i32 [ 0, %174 ], [ %186, %177 ]
  %180 = getelementptr inbounds %struct.CustomDataLayer, ptr %175, i64 %178
  %181 = load i32, ptr %180, align 8, !tbaa !46
  %182 = zext nneg i32 %181 to i64
  %183 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %182
  %184 = getelementptr inbounds %struct.CustomDataLayer, ptr %175, i64 %178, i32 1
  store i32 %179, ptr %184, align 4, !tbaa !72
  %185 = load i32, ptr %183, align 8, !tbaa !61
  %186 = add nsw i32 %185, %179
  %187 = add nuw nsw i64 %178, 1
  %188 = icmp eq i64 %187, %176
  br i1 %188, label %189, label %177, !llvm.loop !73

189:                                              ; preds = %177
  %190 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 4
  store i32 %186, ptr %190, align 4, !tbaa !74
  %191 = getelementptr i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(164) %191, i8 -1, i64 164, i1 false), !tbaa !41
  br i1 %173, label %192, label %213

192:                                              ; preds = %189
  %193 = load ptr, ptr %0, align 8, !tbaa !45
  br label %194

194:                                              ; preds = %204, %192
  %195 = phi i64 [ 0, %192 ], [ %206, %204 ]
  %196 = phi i32 [ -1, %192 ], [ %205, %204 ]
  %197 = getelementptr inbounds %struct.CustomDataLayer, ptr %193, i64 %195
  %198 = load i32, ptr %197, align 8, !tbaa !46
  %199 = icmp eq i32 %198, %196
  br i1 %199, label %204, label %200

200:                                              ; preds = %194
  %201 = sext i32 %198 to i64
  %202 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %201
  %203 = trunc i64 %195 to i32
  store i32 %203, ptr %202, align 4, !tbaa !41
  br label %204

204:                                              ; preds = %200, %194
  %205 = load i32, ptr %197, align 8, !tbaa !46
  %206 = add nuw nsw i64 %195, 1
  %207 = load i32, ptr %14, align 4, !tbaa !43
  %208 = sext i32 %207 to i64
  %209 = icmp slt i64 %206, %208
  br i1 %209, label %194, label %213, !llvm.loop !48

210:                                              ; preds = %171
  %211 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 4
  store i32 0, ptr %211, align 4, !tbaa !74
  %212 = getelementptr i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(164) %212, i8 -1, i64 164, i1 false), !tbaa !41
  br label %213

213:                                              ; preds = %204, %210, %189
  %214 = load ptr, ptr %0, align 8, !tbaa !45
  %215 = getelementptr inbounds %struct.CustomDataLayer, ptr %214, i64 %116
  br label %216

216:                                              ; preds = %84, %86, %37, %213, %24
  %217 = phi ptr [ %215, %213 ], [ %27, %24 ], [ null, %37 ], [ null, %86 ], [ null, %84 ]
  ret ptr %217
}

; Function Attrs: nounwind uwtable
define dso_local void @CustomData_copy(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %1, i8 0, i64 200, i1 false)
  %6 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 1
  tail call void @fill_vn_i(ptr noundef nonnull %6, i32 noundef 41, i32 noundef -1) #25
  %7 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %12 = tail call ptr %11(ptr noundef nonnull %8) #25
  %13 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 6
  store ptr %12, ptr %13, align 8, !tbaa !75
  br label %14

14:                                               ; preds = %10, %5
  %15 = tail call zeroext i8 @CustomData_merge(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4), !range !76
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CustomData_reset(ptr noundef %0) local_unnamed_addr #5 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, i8 0, i64 200, i1 false)
  %2 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1
  tail call void @fill_vn_i(ptr noundef nonnull %2, i32 noundef 41, i32 noundef -1) #25
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

declare void @fill_vn_i(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @CustomData_free(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !43
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %39

6:                                                ; preds = %2, %34
  %7 = phi i64 [ %35, %34 ], [ 0, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %7
  %10 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %7, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !56
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %7, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !58
  %17 = icmp eq ptr %16, null
  br i1 %17, label %34, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr %9, align 8, !tbaa !46
  %20 = icmp ugt i32 %19, 40
  %21 = zext nneg i32 %19 to i64
  %22 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %21
  %23 = select i1 %20, ptr null, ptr %22
  %24 = getelementptr inbounds %struct.LayerTypeInfo, ptr %23, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !77
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %18
  %28 = load i32, ptr %23, align 8, !tbaa !61
  tail call void %25(ptr noundef nonnull %16, i32 noundef %1, i32 noundef %28) #25
  br label %29

29:                                               ; preds = %27, %18
  %30 = load ptr, ptr %15, align 8, !tbaa !58
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %33(ptr noundef nonnull %30) #25
  br label %34

34:                                               ; preds = %6, %14, %29, %32
  %35 = add nuw nsw i64 %7, 1
  %36 = load i32, ptr %3, align 4, !tbaa !43
  %37 = sext i32 %36 to i64
  %38 = icmp slt i64 %35, %37
  br i1 %38, label %6, label %39, !llvm.loop !78

39:                                               ; preds = %34, %2
  %40 = load ptr, ptr %0, align 8, !tbaa !45
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %43(ptr noundef nonnull %40) #25
  br label %44

44:                                               ; preds = %42, %39
  %45 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !75
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %49(ptr noundef nonnull %46) #25
  store ptr null, ptr %45, align 8, !tbaa !75
  br label %50

50:                                               ; preds = %44, %48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, i8 0, i64 200, i1 false)
  %51 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1
  tail call void @fill_vn_i(ptr noundef nonnull %51, i32 noundef 41, i32 noundef -1) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @CustomData_get_layer_index(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !41
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CustomData_get_layer_index_n(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !41
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8, !tbaa !45
  %10 = add nsw i32 %6, %2
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %9, i64 %11
  %13 = load i32, ptr %12, align 8, !tbaa !46
  %14 = icmp eq i32 %13, %1
  %15 = select i1 %14, i32 %10, i32 -1
  br label %16

16:                                               ; preds = %8, %3
  %17 = phi i32 [ %15, %8 ], [ -1, %3 ]
  ret i32 %17
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CustomData_get_named_layer_index(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !43
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !45
  %9 = zext nneg i32 %5 to i64
  br label %10

10:                                               ; preds = %7, %19
  %11 = phi i64 [ 0, %7 ], [ %20, %19 ]
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11
  %13 = load i32, ptr %12, align 8, !tbaa !46
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11, i32 8
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) %2) #26
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %10, %15
  %20 = add nuw nsw i64 %11, 1
  %21 = icmp eq i64 %20, %9
  br i1 %21, label %24, label %10, !llvm.loop !57

22:                                               ; preds = %15
  %23 = trunc i64 %11 to i32
  br label %24

24:                                               ; preds = %22, %19, %3
  %25 = phi i32 [ -1, %3 ], [ %23, %22 ], [ -1, %19 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CustomData_get_active_layer_index(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !41
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !45
  %9 = sext i32 %5 to i64
  %10 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %9, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !52
  %12 = add nsw i32 %11, %5
  br label %13

13:                                               ; preds = %2, %7
  %14 = phi i32 [ %12, %7 ], [ -1, %2 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CustomData_get_render_layer_index(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !41
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !45
  %9 = sext i32 %5 to i64
  %10 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %9, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !53
  %12 = add nsw i32 %11, %5
  br label %13

13:                                               ; preds = %2, %7
  %14 = phi i32 [ %12, %7 ], [ -1, %2 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CustomData_get_clone_layer_index(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !41
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !45
  %9 = sext i32 %5 to i64
  %10 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %9, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !54
  %12 = add nsw i32 %11, %5
  br label %13

13:                                               ; preds = %2, %7
  %14 = phi i32 [ %12, %7 ], [ -1, %2 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CustomData_get_stencil_layer_index(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !41
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !45
  %9 = sext i32 %5 to i64
  %10 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %9, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !55
  %12 = add nsw i32 %11, %5
  br label %13

13:                                               ; preds = %2, %7
  %14 = phi i32 [ %12, %7 ], [ -1, %2 ]
  ret i32 %14
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CustomData_get_named_layer(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !43
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !45
  %9 = zext nneg i32 %5 to i64
  br label %10

10:                                               ; preds = %7, %19
  %11 = phi i64 [ 0, %7 ], [ %20, %19 ]
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11
  %13 = load i32, ptr %12, align 8, !tbaa !46
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11, i32 8
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) %2) #26
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15, %10
  %20 = add nuw nsw i64 %11, 1
  %21 = icmp eq i64 %20, %9
  br i1 %21, label %24, label %10, !llvm.loop !57

22:                                               ; preds = %15
  %23 = trunc i64 %11 to i32
  br label %24

24:                                               ; preds = %22, %19, %3
  %25 = phi i32 [ -1, %3 ], [ %23, %22 ], [ -1, %19 ]
  %26 = sext i32 %1 to i64
  %27 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !41
  %29 = icmp eq i32 %25, -1
  %30 = sub nsw i32 %25, %28
  %31 = select i1 %29, i32 -1, i32 %30
  ret i32 %31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CustomData_get_active_layer(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !41
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !45
  %9 = sext i32 %5 to i64
  %10 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %9, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !52
  br label %12

12:                                               ; preds = %2, %7
  %13 = phi i32 [ %11, %7 ], [ -1, %2 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CustomData_get_render_layer(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !41
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !45
  %9 = sext i32 %5 to i64
  %10 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %9, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !53
  br label %12

12:                                               ; preds = %2, %7
  %13 = phi i32 [ %11, %7 ], [ -1, %2 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CustomData_get_clone_layer(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !41
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !45
  %9 = sext i32 %5 to i64
  %10 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %9, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !54
  br label %12

12:                                               ; preds = %2, %7
  %13 = phi i32 [ %11, %7 ], [ -1, %2 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CustomData_get_stencil_layer(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !41
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !45
  %9 = sext i32 %5 to i64
  %10 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %9, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !55
  br label %12

12:                                               ; preds = %2, %7
  %13 = phi i32 [ %11, %7 ], [ -1, %2 ]
  ret i32 %13
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CustomData_set_layer_active(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !43
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !45
  %9 = zext nneg i32 %5 to i64
  br label %10

10:                                               ; preds = %7, %17
  %11 = phi i64 [ 0, %7 ], [ %18, %17 ]
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11
  %13 = load i32, ptr %12, align 8, !tbaa !46
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11, i32 3
  store i32 %2, ptr %16, align 4, !tbaa !52
  br label %17

17:                                               ; preds = %10, %15
  %18 = add nuw nsw i64 %11, 1
  %19 = icmp eq i64 %18, %9
  br i1 %19, label %20, label %10, !llvm.loop !79

20:                                               ; preds = %17, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CustomData_set_layer_render(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !43
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !45
  %9 = zext nneg i32 %5 to i64
  br label %10

10:                                               ; preds = %7, %17
  %11 = phi i64 [ 0, %7 ], [ %18, %17 ]
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11
  %13 = load i32, ptr %12, align 8, !tbaa !46
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11, i32 4
  store i32 %2, ptr %16, align 8, !tbaa !53
  br label %17

17:                                               ; preds = %10, %15
  %18 = add nuw nsw i64 %11, 1
  %19 = icmp eq i64 %18, %9
  br i1 %19, label %20, label %10, !llvm.loop !80

20:                                               ; preds = %17, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CustomData_set_layer_clone(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !43
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !45
  %9 = zext nneg i32 %5 to i64
  br label %10

10:                                               ; preds = %7, %17
  %11 = phi i64 [ 0, %7 ], [ %18, %17 ]
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11
  %13 = load i32, ptr %12, align 8, !tbaa !46
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11, i32 5
  store i32 %2, ptr %16, align 4, !tbaa !54
  br label %17

17:                                               ; preds = %10, %15
  %18 = add nuw nsw i64 %11, 1
  %19 = icmp eq i64 %18, %9
  br i1 %19, label %20, label %10, !llvm.loop !81

20:                                               ; preds = %17, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CustomData_set_layer_stencil(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !43
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !45
  %9 = zext nneg i32 %5 to i64
  br label %10

10:                                               ; preds = %7, %17
  %11 = phi i64 [ 0, %7 ], [ %18, %17 ]
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11
  %13 = load i32, ptr %12, align 8, !tbaa !46
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11, i32 6
  store i32 %2, ptr %16, align 8, !tbaa !55
  br label %17

17:                                               ; preds = %10, %15
  %18 = add nuw nsw i64 %11, 1
  %19 = icmp eq i64 %18, %9
  br i1 %19, label %20, label %10, !llvm.loop !82

20:                                               ; preds = %17, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CustomData_set_layer_active_index(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !43
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !45
  %9 = zext nneg i32 %5 to i64
  br label %10

10:                                               ; preds = %7, %19
  %11 = phi i64 [ 0, %7 ], [ %20, %19 ]
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11
  %13 = load i32, ptr %12, align 8, !tbaa !46
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11, i32 3
  %17 = trunc i64 %11 to i32
  %18 = sub i32 %2, %17
  store i32 %18, ptr %16, align 4, !tbaa !52
  br label %19

19:                                               ; preds = %10, %15
  %20 = add nuw nsw i64 %11, 1
  %21 = icmp eq i64 %20, %9
  br i1 %21, label %22, label %10, !llvm.loop !83

22:                                               ; preds = %19, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CustomData_set_layer_render_index(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !43
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !45
  %9 = zext nneg i32 %5 to i64
  br label %10

10:                                               ; preds = %7, %19
  %11 = phi i64 [ 0, %7 ], [ %20, %19 ]
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11
  %13 = load i32, ptr %12, align 8, !tbaa !46
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11, i32 4
  %17 = trunc i64 %11 to i32
  %18 = sub i32 %2, %17
  store i32 %18, ptr %16, align 8, !tbaa !53
  br label %19

19:                                               ; preds = %10, %15
  %20 = add nuw nsw i64 %11, 1
  %21 = icmp eq i64 %20, %9
  br i1 %21, label %22, label %10, !llvm.loop !84

22:                                               ; preds = %19, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CustomData_set_layer_clone_index(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !43
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !45
  %9 = zext nneg i32 %5 to i64
  br label %10

10:                                               ; preds = %7, %19
  %11 = phi i64 [ 0, %7 ], [ %20, %19 ]
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11
  %13 = load i32, ptr %12, align 8, !tbaa !46
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11, i32 5
  %17 = trunc i64 %11 to i32
  %18 = sub i32 %2, %17
  store i32 %18, ptr %16, align 4, !tbaa !54
  br label %19

19:                                               ; preds = %10, %15
  %20 = add nuw nsw i64 %11, 1
  %21 = icmp eq i64 %20, %9
  br i1 %21, label %22, label %10, !llvm.loop !85

22:                                               ; preds = %19, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CustomData_set_layer_stencil_index(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !43
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !45
  %9 = zext nneg i32 %5 to i64
  br label %10

10:                                               ; preds = %7, %19
  %11 = phi i64 [ 0, %7 ], [ %20, %19 ]
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11
  %13 = load i32, ptr %12, align 8, !tbaa !46
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11, i32 6
  %17 = trunc i64 %11 to i32
  %18 = sub i32 %2, %17
  store i32 %18, ptr %16, align 8, !tbaa !55
  br label %19

19:                                               ; preds = %10, %15
  %20 = add nuw nsw i64 %11, 1
  %21 = icmp eq i64 %20, %9
  br i1 %21, label %22, label %10, !llvm.loop !86

22:                                               ; preds = %19, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CustomData_set_layer_flag(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !43
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !45
  %9 = zext nneg i32 %5 to i64
  br label %10

10:                                               ; preds = %7, %19
  %11 = phi i64 [ 0, %7 ], [ %20, %19 ]
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11
  %13 = load i32, ptr %12, align 8, !tbaa !46
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !56
  %18 = or i32 %17, %2
  store i32 %18, ptr %16, align 8, !tbaa !56
  br label %19

19:                                               ; preds = %10, %15
  %20 = add nuw nsw i64 %11, 1
  %21 = icmp eq i64 %20, %9
  br i1 %21, label %22, label %10, !llvm.loop !87

22:                                               ; preds = %19, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CustomData_add_layer(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #5 {
  %6 = icmp ugt i32 %1, 40
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %7
  %9 = select i1 %6, ptr null, ptr %8
  %10 = getelementptr inbounds %struct.LayerTypeInfo, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = tail call fastcc ptr @customData_add_layer__internal(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %11)
  %13 = getelementptr i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(164) %13, i8 -1, i64 164, i1 false), !tbaa !41
  %14 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !43
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %5
  %18 = load ptr, ptr %0, align 8, !tbaa !45
  br label %19

19:                                               ; preds = %17, %29
  %20 = phi i64 [ 0, %17 ], [ %31, %29 ]
  %21 = phi i32 [ -1, %17 ], [ %30, %29 ]
  %22 = getelementptr inbounds %struct.CustomDataLayer, ptr %18, i64 %20
  %23 = load i32, ptr %22, align 8, !tbaa !46
  %24 = icmp eq i32 %23, %21
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = sext i32 %23 to i64
  %27 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %26
  %28 = trunc i64 %20 to i32
  store i32 %28, ptr %27, align 4, !tbaa !41
  br label %29

29:                                               ; preds = %25, %19
  %30 = load i32, ptr %22, align 8, !tbaa !46
  %31 = add nuw nsw i64 %20, 1
  %32 = load i32, ptr %14, align 4, !tbaa !43
  %33 = sext i32 %32 to i64
  %34 = icmp slt i64 %31, %33
  br i1 %34, label %19, label %35, !llvm.loop !48

35:                                               ; preds = %29, %5
  %36 = icmp eq ptr %12, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.CustomDataLayer, ptr %12, i64 0, i32 9
  %39 = load ptr, ptr %38, align 8, !tbaa !58
  br label %40

40:                                               ; preds = %35, %37
  %41 = phi ptr [ %39, %37 ], [ null, %35 ]
  ret ptr %41
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CustomData_add_layer_named(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #5 {
  %7 = tail call fastcc ptr @customData_add_layer__internal(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5)
  %8 = getelementptr i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(164) %8, i8 -1, i64 164, i1 false), !tbaa !41
  %9 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !43
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %6
  %13 = load ptr, ptr %0, align 8, !tbaa !45
  br label %14

14:                                               ; preds = %12, %24
  %15 = phi i64 [ 0, %12 ], [ %26, %24 ]
  %16 = phi i32 [ -1, %12 ], [ %25, %24 ]
  %17 = getelementptr inbounds %struct.CustomDataLayer, ptr %13, i64 %15
  %18 = load i32, ptr %17, align 8, !tbaa !46
  %19 = icmp eq i32 %18, %16
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = sext i32 %18 to i64
  %22 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %21
  %23 = trunc i64 %15 to i32
  store i32 %23, ptr %22, align 4, !tbaa !41
  br label %24

24:                                               ; preds = %20, %14
  %25 = load i32, ptr %17, align 8, !tbaa !46
  %26 = add nuw nsw i64 %15, 1
  %27 = load i32, ptr %9, align 4, !tbaa !43
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %14, label %30, !llvm.loop !48

30:                                               ; preds = %24, %6
  %31 = icmp eq ptr %7, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.CustomDataLayer, ptr %7, i64 0, i32 9
  %34 = load ptr, ptr %33, align 8, !tbaa !58
  br label %35

35:                                               ; preds = %30, %32
  %36 = phi ptr [ %34, %32 ], [ null, %30 ]
  ret ptr %36
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @CustomData_free_layer(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !41
  %8 = sub nsw i32 %3, %7
  %9 = icmp slt i32 %3, 0
  br i1 %9, label %184, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr %0, align 8, !tbaa !45
  %12 = zext nneg i32 %3 to i64
  %13 = getelementptr inbounds %struct.CustomDataLayer, ptr %11, i64 %12
  %14 = getelementptr inbounds %struct.CustomDataLayer, ptr %11, i64 %12, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !56
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.CustomDataLayer, ptr %11, i64 %12, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !58
  %21 = icmp eq ptr %20, null
  br i1 %21, label %38, label %22

22:                                               ; preds = %18
  %23 = load i32, ptr %13, align 8, !tbaa !46
  %24 = icmp ugt i32 %23, 40
  %25 = zext nneg i32 %23 to i64
  %26 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %25
  %27 = select i1 %24, ptr null, ptr %26
  %28 = getelementptr inbounds %struct.LayerTypeInfo, ptr %27, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !77
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %22
  %32 = load i32, ptr %27, align 8, !tbaa !61
  tail call void %29(ptr noundef nonnull %20, i32 noundef %2, i32 noundef %32) #25
  br label %33

33:                                               ; preds = %31, %22
  %34 = load ptr, ptr %19, align 8, !tbaa !58
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %37(ptr noundef nonnull %34) #25
  br label %38

38:                                               ; preds = %10, %18, %33, %36
  %39 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %40 = add nuw nsw i32 %3, 1
  %41 = load i32, ptr %39, align 4, !tbaa !43
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %38
  %44 = zext nneg i32 %40 to i64
  br label %45

45:                                               ; preds = %43, %45
  %46 = phi i64 [ %44, %43 ], [ %52, %45 ]
  %47 = phi i32 [ %3, %43 ], [ %56, %45 ]
  %48 = load ptr, ptr %0, align 8, !tbaa !45
  %49 = zext nneg i32 %47 to i64
  %50 = getelementptr inbounds %struct.CustomDataLayer, ptr %48, i64 %49
  %51 = getelementptr inbounds %struct.CustomDataLayer, ptr %48, i64 %46
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %50, ptr noundef nonnull align 8 dereferenceable(104) %51, i64 104, i1 false), !tbaa.struct !66
  %52 = add nuw nsw i64 %46, 1
  %53 = load i32, ptr %39, align 4, !tbaa !43
  %54 = trunc i64 %52 to i32
  %55 = icmp sgt i32 %53, %54
  %56 = trunc i64 %46 to i32
  br i1 %55, label %45, label %57, !llvm.loop !88

57:                                               ; preds = %45, %38
  %58 = phi i32 [ %41, %38 ], [ %53, %45 ]
  %59 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %60 = add i32 %58, -1
  store i32 %60, ptr %59, align 4, !tbaa !43
  %61 = icmp sgt i32 %58, 1
  br i1 %61, label %62, label %75

62:                                               ; preds = %57
  %63 = load ptr, ptr %0, align 8, !tbaa !45
  %64 = zext i32 %60 to i64
  br label %65

65:                                               ; preds = %62, %70
  %66 = phi i64 [ 0, %62 ], [ %71, %70 ]
  %67 = getelementptr inbounds %struct.CustomDataLayer, ptr %63, i64 %66
  %68 = load i32, ptr %67, align 8, !tbaa !46
  %69 = icmp eq i32 %68, %1
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = add nuw nsw i64 %66, 1
  %72 = icmp eq i64 %71, %64
  br i1 %72, label %75, label %65, !llvm.loop !89

73:                                               ; preds = %65
  %74 = trunc i64 %66 to i32
  br label %75

75:                                               ; preds = %73, %70, %57
  %76 = phi i32 [ -1, %57 ], [ %74, %73 ], [ -1, %70 ]
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %119, label %78

78:                                               ; preds = %75
  %79 = icmp eq i32 %7, %3
  %80 = select i1 %79, i32 1, i32 %8
  %81 = icmp slt i32 %76, %60
  br i1 %81, label %82, label %119

82:                                               ; preds = %78
  %83 = load ptr, ptr %0, align 8, !tbaa !45
  %84 = sext i32 %76 to i64
  %85 = getelementptr inbounds %struct.CustomDataLayer, ptr %83, i64 %84
  br label %86

86:                                               ; preds = %82, %115
  %87 = phi ptr [ %117, %115 ], [ %85, %82 ]
  %88 = phi i32 [ %116, %115 ], [ %76, %82 ]
  %89 = load i32, ptr %87, align 8, !tbaa !46
  %90 = icmp eq i32 %89, %1
  br i1 %90, label %91, label %119

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.CustomDataLayer, ptr %87, i64 0, i32 3
  %93 = load i32, ptr %92, align 4, !tbaa !52
  %94 = icmp slt i32 %93, %80
  br i1 %94, label %97, label %95

95:                                               ; preds = %91
  %96 = add nsw i32 %93, -1
  store i32 %96, ptr %92, align 4, !tbaa !52
  br label %97

97:                                               ; preds = %95, %91
  %98 = getelementptr inbounds %struct.CustomDataLayer, ptr %87, i64 0, i32 4
  %99 = load i32, ptr %98, align 8, !tbaa !53
  %100 = icmp slt i32 %99, %80
  br i1 %100, label %103, label %101

101:                                              ; preds = %97
  %102 = add nsw i32 %99, -1
  store i32 %102, ptr %98, align 8, !tbaa !53
  br label %103

103:                                              ; preds = %101, %97
  %104 = getelementptr inbounds %struct.CustomDataLayer, ptr %87, i64 0, i32 5
  %105 = load i32, ptr %104, align 4, !tbaa !54
  %106 = icmp slt i32 %105, %80
  br i1 %106, label %109, label %107

107:                                              ; preds = %103
  %108 = add nsw i32 %105, -1
  store i32 %108, ptr %104, align 4, !tbaa !54
  br label %109

109:                                              ; preds = %107, %103
  %110 = getelementptr inbounds %struct.CustomDataLayer, ptr %87, i64 0, i32 6
  %111 = load i32, ptr %110, align 8, !tbaa !55
  %112 = icmp slt i32 %111, %80
  br i1 %112, label %115, label %113

113:                                              ; preds = %109
  %114 = add nsw i32 %111, -1
  store i32 %114, ptr %110, align 8, !tbaa !55
  br label %115

115:                                              ; preds = %109, %113
  %116 = add nuw i32 %88, 1
  %117 = getelementptr inbounds %struct.CustomDataLayer, ptr %87, i64 1
  %118 = icmp eq i32 %116, %60
  br i1 %118, label %119, label %86, !llvm.loop !90

119:                                              ; preds = %115, %86, %78, %75
  %120 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 3
  %121 = load i32, ptr %120, align 8, !tbaa !64
  %122 = add nsw i32 %121, -5
  %123 = icmp sgt i32 %60, %122
  br i1 %123, label %142, label %124

124:                                              ; preds = %119
  %125 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %126 = sext i32 %122 to i64
  %127 = mul nsw i64 %126, 104
  %128 = tail call ptr %125(i64 noundef %127, ptr noundef nonnull @.str.95) #25
  %129 = icmp eq ptr %128, null
  br i1 %129, label %142, label %130

130:                                              ; preds = %124
  %131 = load i32, ptr %120, align 8, !tbaa !64
  %132 = add nsw i32 %131, -5
  store i32 %132, ptr %120, align 8, !tbaa !64
  %133 = load ptr, ptr %0, align 8, !tbaa !45
  %134 = icmp eq ptr %133, null
  br i1 %134, label %141, label %135

135:                                              ; preds = %130
  %136 = load i32, ptr %59, align 4, !tbaa !43
  %137 = sext i32 %136 to i64
  %138 = mul nsw i64 %137, 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %128, ptr nonnull align 8 %133, i64 %138, i1 false)
  %139 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %140 = load ptr, ptr %0, align 8, !tbaa !45
  tail call void %139(ptr noundef %140) #25
  br label %141

141:                                              ; preds = %135, %130
  store ptr %128, ptr %0, align 8, !tbaa !45
  br label %142

142:                                              ; preds = %141, %124, %119
  %143 = load i32, ptr %59, align 4, !tbaa !43
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %181

145:                                              ; preds = %142
  %146 = load ptr, ptr %0, align 8, !tbaa !45
  %147 = zext nneg i32 %143 to i64
  br label %148

148:                                              ; preds = %148, %145
  %149 = phi i64 [ 0, %145 ], [ %158, %148 ]
  %150 = phi i32 [ 0, %145 ], [ %157, %148 ]
  %151 = getelementptr inbounds %struct.CustomDataLayer, ptr %146, i64 %149
  %152 = load i32, ptr %151, align 8, !tbaa !46
  %153 = zext nneg i32 %152 to i64
  %154 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %153
  %155 = getelementptr inbounds %struct.CustomDataLayer, ptr %146, i64 %149, i32 1
  store i32 %150, ptr %155, align 4, !tbaa !72
  %156 = load i32, ptr %154, align 8, !tbaa !61
  %157 = add nsw i32 %156, %150
  %158 = add nuw nsw i64 %149, 1
  %159 = icmp eq i64 %158, %147
  br i1 %159, label %160, label %148, !llvm.loop !73

160:                                              ; preds = %148
  %161 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 4
  store i32 %157, ptr %161, align 4, !tbaa !74
  %162 = getelementptr i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(164) %162, i8 -1, i64 164, i1 false), !tbaa !41
  br i1 %144, label %163, label %184

163:                                              ; preds = %160
  %164 = load ptr, ptr %0, align 8, !tbaa !45
  br label %165

165:                                              ; preds = %175, %163
  %166 = phi i64 [ 0, %163 ], [ %177, %175 ]
  %167 = phi i32 [ -1, %163 ], [ %176, %175 ]
  %168 = getelementptr inbounds %struct.CustomDataLayer, ptr %164, i64 %166
  %169 = load i32, ptr %168, align 8, !tbaa !46
  %170 = icmp eq i32 %169, %167
  br i1 %170, label %175, label %171

171:                                              ; preds = %165
  %172 = sext i32 %169 to i64
  %173 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %172
  %174 = trunc i64 %166 to i32
  store i32 %174, ptr %173, align 4, !tbaa !41
  br label %175

175:                                              ; preds = %171, %165
  %176 = load i32, ptr %168, align 8, !tbaa !46
  %177 = add nuw nsw i64 %166, 1
  %178 = load i32, ptr %59, align 4, !tbaa !43
  %179 = sext i32 %178 to i64
  %180 = icmp slt i64 %177, %179
  br i1 %180, label %165, label %184, !llvm.loop !48

181:                                              ; preds = %142
  %182 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 4
  store i32 0, ptr %182, align 4, !tbaa !74
  %183 = getelementptr i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(164) %183, i8 -1, i64 164, i1 false), !tbaa !41
  br label %184

184:                                              ; preds = %175, %160, %181, %4
  %185 = phi i8 [ 0, %4 ], [ 1, %181 ], [ 1, %160 ], [ 1, %175 ]
  ret i8 %185
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @CustomData_free_layer_active(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !41
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8, !tbaa !45
  %10 = sext i32 %6 to i64
  %11 = getelementptr inbounds %struct.CustomDataLayer, ptr %9, i64 %10, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !52
  %13 = add nsw i32 %12, %6
  br label %14

14:                                               ; preds = %3, %8
  %15 = phi i32 [ %13, %8 ], [ -1, %3 ]
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = tail call zeroext i8 @CustomData_free_layer(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %15), !range !76
  br label %19

19:                                               ; preds = %14, %17
  %20 = phi i8 [ %18, %17 ], [ 0, %14 ]
  ret i8 %20
}

; Function Attrs: nounwind uwtable
define dso_local void @CustomData_free_layers(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !41
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %21, label %8

8:                                                ; preds = %3, %18
  %9 = phi i32 [ %19, %18 ], [ %6, %3 ]
  %10 = load ptr, ptr %0, align 8, !tbaa !45
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %10, i64 %11, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !52
  %14 = add nsw i32 %13, %9
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %18, label %16

16:                                               ; preds = %8
  %17 = tail call zeroext i8 @CustomData_free_layer(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %14), !range !76
  br label %18

18:                                               ; preds = %8, %16
  %19 = load i32, ptr %5, align 4, !tbaa !41
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %8, !llvm.loop !91

21:                                               ; preds = %18, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @CustomData_has_layer(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !41
  %6 = icmp ne i32 %5, -1
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CustomData_number_of_layers(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !43
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !45
  %8 = zext nneg i32 %4 to i64
  br label %9

9:                                                ; preds = %6, %9
  %10 = phi i64 [ 0, %6 ], [ %17, %9 ]
  %11 = phi i32 [ 0, %6 ], [ %16, %9 ]
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %7, i64 %10
  %13 = load i32, ptr %12, align 8, !tbaa !46
  %14 = icmp eq i32 %13, %1
  %15 = zext i1 %14 to i32
  %16 = add nuw nsw i32 %11, %15
  %17 = add nuw nsw i64 %10, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %19, label %9, !llvm.loop !92

19:                                               ; preds = %9, %2
  %20 = phi i32 [ 0, %2 ], [ %16, %9 ]
  ret i32 %20
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CustomData_number_of_layers_typemask(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !43
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !45
  %8 = zext nneg i32 %4 to i64
  br label %9

9:                                                ; preds = %6, %9
  %10 = phi i64 [ 0, %6 ], [ %20, %9 ]
  %11 = phi i32 [ 0, %6 ], [ %19, %9 ]
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %7, i64 %10
  %13 = load i32, ptr %12, align 8, !tbaa !46
  %14 = zext nneg i32 %13 to i64
  %15 = shl nuw i64 1, %14
  %16 = and i64 %15, %1
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = add nuw nsw i32 %11, %18
  %20 = add nuw nsw i64 %10, 1
  %21 = icmp eq i64 %20, %8
  br i1 %21, label %22, label %9, !llvm.loop !93

22:                                               ; preds = %9, %2
  %23 = phi i32 [ 0, %2 ], [ %19, %9 ]
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CustomData_duplicate_referenced_layer(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !41
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8, !tbaa !45
  %10 = sext i32 %6 to i64
  %11 = getelementptr inbounds %struct.CustomDataLayer, ptr %9, i64 %10, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !52
  %13 = add nsw i32 %12, %6
  br label %14

14:                                               ; preds = %3, %8
  %15 = phi i32 [ %13, %8 ], [ -1, %3 ]
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %54, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %0, align 8, !tbaa !45
  %19 = sext i32 %15 to i64
  %20 = getelementptr inbounds %struct.CustomDataLayer, ptr %18, i64 %19, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !56
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %51, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.CustomDataLayer, ptr %18, i64 %19
  %26 = load i32, ptr %25, align 8, !tbaa !46
  %27 = icmp ugt i32 %26, 40
  %28 = zext nneg i32 %26 to i64
  %29 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %28
  %30 = select i1 %27, ptr null, ptr %29
  %31 = getelementptr inbounds %struct.LayerTypeInfo, ptr %30, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !62
  %33 = icmp eq ptr %32, null
  br i1 %33, label %43, label %34

34:                                               ; preds = %24
  %35 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %36 = load i32, ptr %30, align 8, !tbaa !61
  %37 = mul nsw i32 %36, %2
  %38 = sext i32 %37 to i64
  %39 = tail call ptr %35(i64 noundef %38, ptr noundef nonnull @.str.2) #25
  %40 = load ptr, ptr %31, align 8, !tbaa !62
  %41 = getelementptr inbounds %struct.CustomDataLayer, ptr %18, i64 %19, i32 9
  %42 = load ptr, ptr %41, align 8, !tbaa !58
  tail call void %40(ptr noundef %42, ptr noundef %39, i32 noundef %2) #25
  store ptr %39, ptr %41, align 8, !tbaa !58
  br label %48

43:                                               ; preds = %24
  %44 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %45 = getelementptr inbounds %struct.CustomDataLayer, ptr %18, i64 %19, i32 9
  %46 = load ptr, ptr %45, align 8, !tbaa !58
  %47 = tail call ptr %44(ptr noundef %46) #25
  store ptr %47, ptr %45, align 8, !tbaa !58
  br label %48

48:                                               ; preds = %43, %34
  %49 = load i32, ptr %20, align 8, !tbaa !56
  %50 = and i32 %49, -3
  store i32 %50, ptr %20, align 8, !tbaa !56
  br label %51

51:                                               ; preds = %48, %17
  %52 = getelementptr inbounds %struct.CustomDataLayer, ptr %18, i64 %19, i32 9
  %53 = load ptr, ptr %52, align 8, !tbaa !58
  br label %54

54:                                               ; preds = %14, %51
  %55 = phi ptr [ %53, %51 ], [ null, %14 ]
  ret ptr %55
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CustomData_duplicate_referenced_layer_named(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !43
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8, !tbaa !45
  %10 = zext nneg i32 %6 to i64
  br label %11

11:                                               ; preds = %8, %20
  %12 = phi i64 [ 0, %8 ], [ %21, %20 ]
  %13 = getelementptr inbounds %struct.CustomDataLayer, ptr %9, i64 %12
  %14 = load i32, ptr %13, align 8, !tbaa !46
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.CustomDataLayer, ptr %9, i64 %12, i32 8
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) %2) #26
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16, %11
  %21 = add nuw nsw i64 %12, 1
  %22 = icmp eq i64 %21, %10
  br i1 %22, label %25, label %11, !llvm.loop !57

23:                                               ; preds = %16
  %24 = trunc i64 %12 to i32
  br label %25

25:                                               ; preds = %23, %20, %4
  %26 = phi i32 [ -1, %4 ], [ %24, %23 ], [ -1, %20 ]
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %65, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %0, align 8, !tbaa !45
  %30 = sext i32 %26 to i64
  %31 = getelementptr inbounds %struct.CustomDataLayer, ptr %29, i64 %30, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !56
  %33 = and i32 %32, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %62, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.CustomDataLayer, ptr %29, i64 %30
  %37 = load i32, ptr %36, align 8, !tbaa !46
  %38 = icmp ugt i32 %37, 40
  %39 = zext nneg i32 %37 to i64
  %40 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %39
  %41 = select i1 %38, ptr null, ptr %40
  %42 = getelementptr inbounds %struct.LayerTypeInfo, ptr %41, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !62
  %44 = icmp eq ptr %43, null
  br i1 %44, label %54, label %45

45:                                               ; preds = %35
  %46 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %47 = load i32, ptr %41, align 8, !tbaa !61
  %48 = mul nsw i32 %47, %3
  %49 = sext i32 %48 to i64
  %50 = tail call ptr %46(i64 noundef %49, ptr noundef nonnull @.str.2) #25
  %51 = load ptr, ptr %42, align 8, !tbaa !62
  %52 = getelementptr inbounds %struct.CustomDataLayer, ptr %29, i64 %30, i32 9
  %53 = load ptr, ptr %52, align 8, !tbaa !58
  tail call void %51(ptr noundef %53, ptr noundef %50, i32 noundef %3) #25
  store ptr %50, ptr %52, align 8, !tbaa !58
  br label %59

54:                                               ; preds = %35
  %55 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %56 = getelementptr inbounds %struct.CustomDataLayer, ptr %29, i64 %30, i32 9
  %57 = load ptr, ptr %56, align 8, !tbaa !58
  %58 = tail call ptr %55(ptr noundef %57) #25
  store ptr %58, ptr %56, align 8, !tbaa !58
  br label %59

59:                                               ; preds = %54, %45
  %60 = load i32, ptr %31, align 8, !tbaa !56
  %61 = and i32 %60, -3
  store i32 %61, ptr %31, align 8, !tbaa !56
  br label %62

62:                                               ; preds = %59, %28
  %63 = getelementptr inbounds %struct.CustomDataLayer, ptr %29, i64 %30, i32 9
  %64 = load ptr, ptr %63, align 8, !tbaa !58
  br label %65

65:                                               ; preds = %25, %62
  %66 = phi ptr [ %64, %62 ], [ null, %25 ]
  ret ptr %66
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @CustomData_is_referenced_layer(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !41
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !45
  %9 = sext i32 %5 to i64
  %10 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %9, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !52
  %12 = add nsw i32 %11, %5
  br label %13

13:                                               ; preds = %2, %7
  %14 = phi i32 [ %12, %7 ], [ -1, %2 ]
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %24, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %0, align 8, !tbaa !45
  %18 = sext i32 %14 to i64
  %19 = getelementptr inbounds %struct.CustomDataLayer, ptr %17, i64 %18, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !56
  %21 = trunc i32 %20 to i8
  %22 = lshr i8 %21, 1
  %23 = and i8 %22, 1
  br label %24

24:                                               ; preds = %13, %16
  %25 = phi i8 [ %23, %16 ], [ 0, %13 ]
  ret i8 %25
}

; Function Attrs: nounwind uwtable
define dso_local void @CustomData_free_temporary(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !43
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %56

6:                                                ; preds = %2, %49
  %7 = phi i64 [ %52, %49 ], [ 0, %2 ]
  %8 = phi i8 [ %51, %49 ], [ 0, %2 ]
  %9 = phi i32 [ %50, %49 ], [ 0, %2 ]
  %10 = load ptr, ptr %0, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.CustomDataLayer, ptr %10, i64 %7
  %12 = zext i32 %9 to i64
  %13 = icmp eq i64 %7, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %6
  %15 = sext i32 %9 to i64
  %16 = getelementptr inbounds %struct.CustomDataLayer, ptr %10, i64 %15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %16, ptr noundef nonnull align 8 dereferenceable(104) %11, i64 104, i1 false), !tbaa.struct !66
  br label %17

17:                                               ; preds = %14, %6
  %18 = getelementptr inbounds %struct.CustomDataLayer, ptr %10, i64 %7, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !56
  %20 = and i32 %19, 5
  %21 = icmp eq i32 %20, 5
  br i1 %21, label %22, label %47

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.CustomDataLayer, ptr %10, i64 %7, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !56
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.CustomDataLayer, ptr %10, i64 %7, i32 9
  %29 = load ptr, ptr %28, align 8, !tbaa !58
  %30 = icmp eq ptr %29, null
  br i1 %30, label %49, label %31

31:                                               ; preds = %27
  %32 = load i32, ptr %11, align 8, !tbaa !46
  %33 = icmp ugt i32 %32, 40
  %34 = zext nneg i32 %32 to i64
  %35 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %34
  %36 = select i1 %33, ptr null, ptr %35
  %37 = getelementptr inbounds %struct.LayerTypeInfo, ptr %36, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !77
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %31
  %41 = load i32, ptr %36, align 8, !tbaa !61
  tail call void %38(ptr noundef nonnull %29, i32 noundef %1, i32 noundef %41) #25
  br label %42

42:                                               ; preds = %40, %31
  %43 = load ptr, ptr %28, align 8, !tbaa !58
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %46(ptr noundef nonnull %43) #25
  br label %49

47:                                               ; preds = %17
  %48 = add nsw i32 %9, 1
  br label %49

49:                                               ; preds = %45, %42, %27, %22, %47
  %50 = phi i32 [ %48, %47 ], [ %9, %22 ], [ %9, %27 ], [ %9, %42 ], [ %9, %45 ]
  %51 = phi i8 [ %8, %47 ], [ 1, %22 ], [ 1, %27 ], [ 1, %42 ], [ 1, %45 ]
  %52 = add nuw nsw i64 %7, 1
  %53 = load i32, ptr %3, align 4, !tbaa !43
  %54 = sext i32 %53 to i64
  %55 = icmp slt i64 %52, %54
  br i1 %55, label %6, label %56, !llvm.loop !94

56:                                               ; preds = %49, %2
  %57 = phi i32 [ 0, %2 ], [ %50, %49 ]
  %58 = phi i8 [ 0, %2 ], [ %51, %49 ]
  %59 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  store i32 %57, ptr %59, align 4, !tbaa !43
  %60 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 3
  %61 = load i32, ptr %60, align 8, !tbaa !64
  %62 = add nsw i32 %61, -5
  %63 = icmp sgt i32 %57, %62
  br i1 %63, label %82, label %64

64:                                               ; preds = %56
  %65 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %66 = sext i32 %62 to i64
  %67 = mul nsw i64 %66, 104
  %68 = tail call ptr %65(i64 noundef %67, ptr noundef nonnull @.str.95) #25
  %69 = icmp eq ptr %68, null
  br i1 %69, label %82, label %70

70:                                               ; preds = %64
  %71 = load i32, ptr %60, align 8, !tbaa !64
  %72 = add nsw i32 %71, -5
  store i32 %72, ptr %60, align 8, !tbaa !64
  %73 = load ptr, ptr %0, align 8, !tbaa !45
  %74 = icmp eq ptr %73, null
  br i1 %74, label %81, label %75

75:                                               ; preds = %70
  %76 = load i32, ptr %59, align 4, !tbaa !43
  %77 = sext i32 %76 to i64
  %78 = mul nsw i64 %77, 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %68, ptr nonnull align 8 %73, i64 %78, i1 false)
  %79 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %80 = load ptr, ptr %0, align 8, !tbaa !45
  tail call void %79(ptr noundef %80) #25
  br label %81

81:                                               ; preds = %75, %70
  store ptr %68, ptr %0, align 8, !tbaa !45
  br label %82

82:                                               ; preds = %81, %64, %56
  %83 = phi i8 [ %58, %56 ], [ 1, %64 ], [ 1, %81 ]
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %127, label %85

85:                                               ; preds = %82
  %86 = load i32, ptr %59, align 4, !tbaa !43
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %124

88:                                               ; preds = %85
  %89 = load ptr, ptr %0, align 8, !tbaa !45
  %90 = zext nneg i32 %86 to i64
  br label %91

91:                                               ; preds = %91, %88
  %92 = phi i64 [ 0, %88 ], [ %101, %91 ]
  %93 = phi i32 [ 0, %88 ], [ %100, %91 ]
  %94 = getelementptr inbounds %struct.CustomDataLayer, ptr %89, i64 %92
  %95 = load i32, ptr %94, align 8, !tbaa !46
  %96 = zext nneg i32 %95 to i64
  %97 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %96
  %98 = getelementptr inbounds %struct.CustomDataLayer, ptr %89, i64 %92, i32 1
  store i32 %93, ptr %98, align 4, !tbaa !72
  %99 = load i32, ptr %97, align 8, !tbaa !61
  %100 = add nsw i32 %99, %93
  %101 = add nuw nsw i64 %92, 1
  %102 = icmp eq i64 %101, %90
  br i1 %102, label %103, label %91, !llvm.loop !73

103:                                              ; preds = %91
  %104 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 4
  store i32 %100, ptr %104, align 4, !tbaa !74
  %105 = getelementptr i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(164) %105, i8 -1, i64 164, i1 false), !tbaa !41
  br i1 %87, label %106, label %127

106:                                              ; preds = %103
  %107 = load ptr, ptr %0, align 8, !tbaa !45
  br label %108

108:                                              ; preds = %118, %106
  %109 = phi i64 [ 0, %106 ], [ %120, %118 ]
  %110 = phi i32 [ -1, %106 ], [ %119, %118 ]
  %111 = getelementptr inbounds %struct.CustomDataLayer, ptr %107, i64 %109
  %112 = load i32, ptr %111, align 8, !tbaa !46
  %113 = icmp eq i32 %112, %110
  br i1 %113, label %118, label %114

114:                                              ; preds = %108
  %115 = sext i32 %112 to i64
  %116 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %115
  %117 = trunc i64 %109 to i32
  store i32 %117, ptr %116, align 4, !tbaa !41
  br label %118

118:                                              ; preds = %114, %108
  %119 = load i32, ptr %111, align 8, !tbaa !46
  %120 = add nuw nsw i64 %109, 1
  %121 = load i32, ptr %59, align 4, !tbaa !43
  %122 = sext i32 %121 to i64
  %123 = icmp slt i64 %120, %122
  br i1 %123, label %108, label %127, !llvm.loop !48

124:                                              ; preds = %85
  %125 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 4
  store i32 0, ptr %125, align 4, !tbaa !74
  %126 = getelementptr i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(164) %126, i8 -1, i64 164, i1 false), !tbaa !41
  br label %127

127:                                              ; preds = %118, %103, %124, %82
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CustomData_set_only_copy(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !43
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !45
  %8 = zext nneg i32 %4 to i64
  br label %9

9:                                                ; preds = %6, %21
  %10 = phi i64 [ 0, %6 ], [ %22, %21 ]
  %11 = getelementptr inbounds %struct.CustomDataLayer, ptr %7, i64 %10
  %12 = load i32, ptr %11, align 8, !tbaa !46
  %13 = zext nneg i32 %12 to i64
  %14 = shl nuw i64 1, %13
  %15 = and i64 %14, %1
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.CustomDataLayer, ptr %7, i64 %10, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !56
  %20 = or i32 %19, 1
  store i32 %20, ptr %18, align 8, !tbaa !56
  br label %21

21:                                               ; preds = %9, %17
  %22 = add nuw nsw i64 %10, 1
  %23 = icmp eq i64 %22, %8
  br i1 %23, label %24, label %9, !llvm.loop !95

24:                                               ; preds = %21, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CustomData_copy_elements(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = icmp ugt i32 %0, 40
  %6 = zext nneg i32 %0 to i64
  %7 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %6
  %8 = select i1 %5, ptr null, ptr %7
  %9 = getelementptr inbounds %struct.LayerTypeInfo, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !62
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  tail call void %10(ptr noundef %1, ptr noundef %2, i32 noundef %3) #25
  br label %17

13:                                               ; preds = %4
  %14 = load i32, ptr %8, align 8, !tbaa !61
  %15 = mul nsw i32 %14, %3
  %16 = sext i32 %15 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %1, i64 %16, i1 false)
  br label %17

17:                                               ; preds = %13, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CustomData_copy_data_named(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 {
  %6 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !43
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %90

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 2
  br label %11

11:                                               ; preds = %9, %85
  %12 = phi i64 [ 0, %9 ], [ %86, %85 ]
  %13 = load ptr, ptr %0, align 8, !tbaa !45
  %14 = getelementptr inbounds %struct.CustomDataLayer, ptr %13, i64 %12
  %15 = load i32, ptr %14, align 8, !tbaa !46
  %16 = getelementptr inbounds %struct.CustomDataLayer, ptr %13, i64 %12, i32 8
  %17 = load i32, ptr %10, align 4, !tbaa !43
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %11
  %20 = load ptr, ptr %1, align 8, !tbaa !45
  %21 = zext nneg i32 %17 to i64
  br label %22

22:                                               ; preds = %19, %31
  %23 = phi i64 [ 0, %19 ], [ %32, %31 ]
  %24 = getelementptr inbounds %struct.CustomDataLayer, ptr %20, i64 %23
  %25 = load i32, ptr %24, align 8, !tbaa !46
  %26 = icmp eq i32 %25, %15
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.CustomDataLayer, ptr %20, i64 %23, i32 8
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(1) %16) #26
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27, %22
  %32 = add nuw nsw i64 %23, 1
  %33 = icmp eq i64 %32, %21
  br i1 %33, label %36, label %22, !llvm.loop !57

34:                                               ; preds = %27
  %35 = trunc i64 %23 to i32
  br label %36

36:                                               ; preds = %34, %31, %11
  %37 = phi i32 [ -1, %11 ], [ %35, %34 ], [ -1, %31 ]
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %85, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.CustomDataLayer, ptr %13, i64 %12
  %41 = getelementptr inbounds %struct.CustomDataLayer, ptr %13, i64 %12, i32 9
  %42 = load ptr, ptr %41, align 8, !tbaa !58
  %43 = load ptr, ptr %1, align 8, !tbaa !45
  %44 = sext i32 %37 to i64
  %45 = getelementptr inbounds %struct.CustomDataLayer, ptr %43, i64 %44, i32 9
  %46 = load ptr, ptr %45, align 8, !tbaa !58
  %47 = load i32, ptr %40, align 8, !tbaa !46
  %48 = icmp ugt i32 %47, 40
  %49 = zext nneg i32 %47 to i64
  %50 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %49
  %51 = select i1 %48, ptr null, ptr %50
  %52 = load i32, ptr %51, align 8, !tbaa !61
  %53 = mul nsw i32 %52, %2
  %54 = mul nsw i32 %52, %3
  %55 = icmp ne ptr %42, null
  %56 = icmp ne ptr %46, null
  %57 = select i1 %55, i1 %56, i1 false
  br i1 %57, label %69, label %58

58:                                               ; preds = %39
  %59 = icmp eq ptr %42, null
  %60 = icmp eq ptr %46, null
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %85, label %62

62:                                               ; preds = %58
  br i1 %48, label %66, label %63

63:                                               ; preds = %62
  %64 = getelementptr inbounds [41 x ptr], ptr @LAYERTYPENAMES, i64 0, i64 %49
  %65 = load ptr, ptr %64, align 8, !tbaa !34
  br label %66

66:                                               ; preds = %63, %62
  %67 = phi ptr [ %65, %63 ], [ null, %62 ]
  %68 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.96, ptr noundef nonnull @__func__.CustomData_copy_data_layer, ptr noundef %67, ptr noundef %42, ptr noundef %46)
  br label %85

69:                                               ; preds = %39
  %70 = getelementptr inbounds %struct.LayerTypeInfo, ptr %51, i64 0, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !62
  %72 = icmp eq ptr %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %69
  %74 = sext i32 %53 to i64
  %75 = getelementptr inbounds i8, ptr %42, i64 %74
  %76 = sext i32 %54 to i64
  %77 = getelementptr inbounds i8, ptr %46, i64 %76
  tail call void %71(ptr noundef nonnull %75, ptr noundef nonnull %77, i32 noundef %4) #25
  br label %85

78:                                               ; preds = %69
  %79 = sext i32 %54 to i64
  %80 = getelementptr inbounds i8, ptr %46, i64 %79
  %81 = sext i32 %53 to i64
  %82 = getelementptr inbounds i8, ptr %42, i64 %81
  %83 = mul nsw i32 %52, %4
  %84 = sext i32 %83 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %80, ptr nonnull align 1 %82, i64 %84, i1 false)
  br label %85

85:                                               ; preds = %78, %73, %66, %58, %36
  %86 = add nuw nsw i64 %12, 1
  %87 = load i32, ptr %6, align 4, !tbaa !43
  %88 = sext i32 %87 to i64
  %89 = icmp slt i64 %86, %88
  br i1 %89, label %11, label %90, !llvm.loop !96

90:                                               ; preds = %85, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CustomData_copy_data(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 {
  %6 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !43
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %103

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 2
  br label %11

11:                                               ; preds = %9, %97
  %12 = phi i64 [ 0, %9 ], [ %99, %97 ]
  %13 = phi i32 [ 0, %9 ], [ %98, %97 ]
  %14 = load i32, ptr %10, align 4, !tbaa !43
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %103

16:                                               ; preds = %11
  %17 = load ptr, ptr %1, align 8, !tbaa !45
  %18 = load ptr, ptr %0, align 8, !tbaa !45
  %19 = getelementptr inbounds %struct.CustomDataLayer, ptr %18, i64 %12
  %20 = load i32, ptr %19, align 8, !tbaa !46
  %21 = sext i32 %13 to i64
  %22 = sext i32 %14 to i64
  %23 = getelementptr inbounds %struct.CustomDataLayer, ptr %17, i64 %21
  %24 = load i32, ptr %23, align 8, !tbaa !46
  %25 = icmp slt i32 %24, %20
  br i1 %25, label %30, label %37

26:                                               ; preds = %30
  %27 = getelementptr inbounds %struct.CustomDataLayer, ptr %17, i64 %32
  %28 = load i32, ptr %27, align 8, !tbaa !46
  %29 = icmp slt i32 %28, %20
  br i1 %29, label %30, label %35, !llvm.loop !97

30:                                               ; preds = %16, %26
  %31 = phi i64 [ %32, %26 ], [ %21, %16 ]
  %32 = add nsw i64 %31, 1
  %33 = trunc i64 %32 to i32
  %34 = icmp eq i32 %14, %33
  br i1 %34, label %103, label %26, !llvm.loop !97

35:                                               ; preds = %26
  %36 = icmp slt i64 %32, %22
  br label %37

37:                                               ; preds = %35, %16
  %38 = phi i64 [ %32, %35 ], [ %21, %16 ]
  %39 = phi i1 [ %36, %35 ], [ %15, %16 ]
  %40 = trunc i64 %38 to i32
  br i1 %39, label %41, label %103

41:                                               ; preds = %37
  %42 = load ptr, ptr %1, align 8, !tbaa !45
  %43 = shl i64 %38, 32
  %44 = ashr exact i64 %43, 32
  %45 = getelementptr inbounds %struct.CustomDataLayer, ptr %42, i64 %44
  %46 = load i32, ptr %45, align 8, !tbaa !46
  %47 = load ptr, ptr %0, align 8, !tbaa !45
  %48 = getelementptr inbounds %struct.CustomDataLayer, ptr %47, i64 %12
  %49 = load i32, ptr %48, align 8, !tbaa !46
  %50 = icmp eq i32 %46, %49
  br i1 %50, label %51, label %97

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.CustomDataLayer, ptr %47, i64 %12
  %53 = getelementptr inbounds %struct.CustomDataLayer, ptr %47, i64 %12, i32 9
  %54 = load ptr, ptr %53, align 8, !tbaa !58
  %55 = getelementptr inbounds %struct.CustomDataLayer, ptr %42, i64 %44, i32 9
  %56 = load ptr, ptr %55, align 8, !tbaa !58
  %57 = load i32, ptr %52, align 8, !tbaa !46
  %58 = icmp ugt i32 %57, 40
  %59 = zext nneg i32 %57 to i64
  %60 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %59
  %61 = select i1 %58, ptr null, ptr %60
  %62 = load i32, ptr %61, align 8, !tbaa !61
  %63 = mul nsw i32 %62, %2
  %64 = mul nsw i32 %62, %3
  %65 = icmp ne ptr %54, null
  %66 = icmp ne ptr %56, null
  %67 = select i1 %65, i1 %66, i1 false
  br i1 %67, label %79, label %68

68:                                               ; preds = %51
  %69 = icmp eq ptr %54, null
  %70 = icmp eq ptr %56, null
  %71 = select i1 %69, i1 %70, i1 false
  br i1 %71, label %95, label %72

72:                                               ; preds = %68
  br i1 %58, label %76, label %73

73:                                               ; preds = %72
  %74 = getelementptr inbounds [41 x ptr], ptr @LAYERTYPENAMES, i64 0, i64 %59
  %75 = load ptr, ptr %74, align 8, !tbaa !34
  br label %76

76:                                               ; preds = %73, %72
  %77 = phi ptr [ %75, %73 ], [ null, %72 ]
  %78 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.96, ptr noundef nonnull @__func__.CustomData_copy_data_layer, ptr noundef %77, ptr noundef %54, ptr noundef %56)
  br label %95

79:                                               ; preds = %51
  %80 = getelementptr inbounds %struct.LayerTypeInfo, ptr %61, i64 0, i32 4
  %81 = load ptr, ptr %80, align 8, !tbaa !62
  %82 = icmp eq ptr %81, null
  br i1 %82, label %88, label %83

83:                                               ; preds = %79
  %84 = sext i32 %63 to i64
  %85 = getelementptr inbounds i8, ptr %54, i64 %84
  %86 = sext i32 %64 to i64
  %87 = getelementptr inbounds i8, ptr %56, i64 %86
  tail call void %81(ptr noundef nonnull %85, ptr noundef nonnull %87, i32 noundef %4) #25
  br label %95

88:                                               ; preds = %79
  %89 = sext i32 %64 to i64
  %90 = getelementptr inbounds i8, ptr %56, i64 %89
  %91 = sext i32 %63 to i64
  %92 = getelementptr inbounds i8, ptr %54, i64 %91
  %93 = mul nsw i32 %62, %4
  %94 = sext i32 %93 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %90, ptr nonnull align 1 %92, i64 %94, i1 false)
  br label %95

95:                                               ; preds = %68, %76, %83, %88
  %96 = add nsw i32 %40, 1
  br label %97

97:                                               ; preds = %41, %95
  %98 = phi i32 [ %96, %95 ], [ %40, %41 ]
  %99 = add nuw nsw i64 %12, 1
  %100 = load i32, ptr %6, align 4, !tbaa !43
  %101 = sext i32 %100 to i64
  %102 = icmp slt i64 %99, %101
  br i1 %102, label %11, label %103, !llvm.loop !98

103:                                              ; preds = %37, %97, %11, %30, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CustomData_free_elem(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !43
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %36

7:                                                ; preds = %3, %31
  %8 = phi i64 [ %32, %31 ], [ 0, %3 ]
  %9 = load ptr, ptr %0, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct.CustomDataLayer, ptr %9, i64 %8, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !56
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.CustomDataLayer, ptr %9, i64 %8
  %16 = load i32, ptr %15, align 8, !tbaa !46
  %17 = icmp ugt i32 %16, 40
  %18 = zext nneg i32 %16 to i64
  %19 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %18
  %20 = select i1 %17, ptr null, ptr %19
  %21 = getelementptr inbounds %struct.LayerTypeInfo, ptr %20, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !77
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %14
  %25 = load i32, ptr %20, align 8, !tbaa !61
  %26 = mul nsw i32 %25, %1
  %27 = getelementptr inbounds %struct.CustomDataLayer, ptr %9, i64 %8, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !58
  %29 = sext i32 %26 to i64
  %30 = getelementptr inbounds i8, ptr %28, i64 %29
  tail call void %22(ptr noundef %30, i32 noundef %2, i32 noundef %25) #25
  br label %31

31:                                               ; preds = %7, %24, %14
  %32 = add nuw nsw i64 %8, 1
  %33 = load i32, ptr %4, align 4, !tbaa !43
  %34 = sext i32 %33 to i64
  %35 = icmp slt i64 %32, %34
  br i1 %35, label %7, label %36, !llvm.loop !99

36:                                               ; preds = %31, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CustomData_interp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #5 {
  %8 = alloca [100 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %8) #25
  %9 = icmp sgt i32 %5, 100
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %12 = zext nneg i32 %5 to i64
  %13 = shl nuw nsw i64 %12, 3
  %14 = tail call ptr %11(i64 noundef %13, ptr noundef nonnull @.str.3) #25
  br label %15

15:                                               ; preds = %10, %7
  %16 = phi ptr [ %14, %10 ], [ %8, %7 ]
  %17 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !43
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %104

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 2
  %22 = icmp sgt i32 %5, 0
  %23 = zext nneg i32 %5 to i64
  br label %29

24:                                               ; preds = %101
  %25 = add nuw nsw i64 %30, 1
  %26 = load i32, ptr %17, align 4, !tbaa !43
  %27 = sext i32 %26 to i64
  %28 = icmp slt i64 %25, %27
  br i1 %28, label %29, label %104, !llvm.loop !100

29:                                               ; preds = %20, %24
  %30 = phi i64 [ 0, %20 ], [ %25, %24 ]
  %31 = phi i32 [ 0, %20 ], [ %102, %24 ]
  %32 = load ptr, ptr %0, align 8, !tbaa !45
  %33 = getelementptr inbounds %struct.CustomDataLayer, ptr %32, i64 %30
  %34 = load i32, ptr %33, align 8, !tbaa !46
  %35 = icmp ugt i32 %34, 40
  %36 = zext nneg i32 %34 to i64
  %37 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %36
  %38 = select i1 %35, ptr null, ptr %37
  %39 = getelementptr inbounds %struct.LayerTypeInfo, ptr %38, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !101
  %41 = icmp eq ptr %40, null
  br i1 %41, label %101, label %42

42:                                               ; preds = %29
  %43 = load i32, ptr %21, align 4, !tbaa !43
  %44 = icmp slt i32 %31, %43
  br i1 %44, label %45, label %101

45:                                               ; preds = %42
  %46 = load ptr, ptr %1, align 8, !tbaa !45
  %47 = sext i32 %31 to i64
  %48 = sext i32 %43 to i64
  %49 = sext i32 %43 to i64
  %50 = getelementptr inbounds %struct.CustomDataLayer, ptr %46, i64 %47
  %51 = load i32, ptr %50, align 8, !tbaa !46
  %52 = icmp slt i32 %51, %34
  br i1 %52, label %57, label %63

53:                                               ; preds = %57
  %54 = getelementptr inbounds %struct.CustomDataLayer, ptr %46, i64 %59
  %55 = load i32, ptr %54, align 8, !tbaa !46
  %56 = icmp slt i32 %55, %34
  br i1 %56, label %57, label %61, !llvm.loop !102

57:                                               ; preds = %45, %53
  %58 = phi i64 [ %59, %53 ], [ %47, %45 ]
  %59 = add nsw i64 %58, 1
  %60 = icmp eq i64 %59, %49
  br i1 %60, label %99, label %53, !llvm.loop !102

61:                                               ; preds = %53
  %62 = icmp slt i64 %59, %48
  br label %63

63:                                               ; preds = %61, %45
  %64 = phi i64 [ %59, %61 ], [ %47, %45 ]
  %65 = phi i1 [ %62, %61 ], [ %44, %45 ]
  %66 = trunc i64 %64 to i32
  br i1 %65, label %67, label %101

67:                                               ; preds = %63
  %68 = load ptr, ptr %1, align 8, !tbaa !45
  %69 = shl i64 %64, 32
  %70 = ashr exact i64 %69, 32
  %71 = getelementptr inbounds %struct.CustomDataLayer, ptr %68, i64 %70
  %72 = load i32, ptr %71, align 8, !tbaa !46
  %73 = icmp eq i32 %72, %34
  br i1 %73, label %74, label %101

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.CustomDataLayer, ptr %32, i64 %30, i32 9
  %76 = load ptr, ptr %75, align 8, !tbaa !58
  br i1 %22, label %77, label %89

77:                                               ; preds = %74
  %78 = load i32, ptr %38, align 8, !tbaa !61
  br label %79

79:                                               ; preds = %77, %79
  %80 = phi i64 [ 0, %77 ], [ %87, %79 ]
  %81 = getelementptr inbounds i32, ptr %2, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !41
  %83 = mul nsw i32 %82, %78
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, ptr %76, i64 %84
  %86 = getelementptr inbounds ptr, ptr %16, i64 %80
  store ptr %85, ptr %86, align 8, !tbaa !34
  %87 = add nuw nsw i64 %80, 1
  %88 = icmp eq i64 %87, %23
  br i1 %88, label %89, label %79, !llvm.loop !103

89:                                               ; preds = %79, %74
  %90 = load i32, ptr %38, align 8, !tbaa !61
  %91 = mul nsw i32 %90, %6
  %92 = load ptr, ptr %39, align 8, !tbaa !101
  %93 = load ptr, ptr %1, align 8, !tbaa !45
  %94 = getelementptr inbounds %struct.CustomDataLayer, ptr %93, i64 %70, i32 9
  %95 = load ptr, ptr %94, align 8, !tbaa !58
  %96 = sext i32 %91 to i64
  %97 = getelementptr inbounds i8, ptr %95, i64 %96
  call void %92(ptr noundef %16, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %97) #25
  %98 = add nsw i32 %66, 1
  br label %101

99:                                               ; preds = %57
  %100 = trunc i64 %59 to i32
  br label %101

101:                                              ; preds = %99, %42, %67, %89, %63, %29
  %102 = phi i32 [ %31, %29 ], [ %66, %63 ], [ %98, %89 ], [ %66, %67 ], [ %31, %42 ], [ %100, %99 ]
  %103 = phi i1 [ false, %29 ], [ true, %63 ], [ false, %89 ], [ false, %67 ], [ true, %42 ], [ true, %99 ]
  br i1 %103, label %104, label %24

104:                                              ; preds = %24, %101, %15
  br i1 %9, label %105, label %107

105:                                              ; preds = %104
  %106 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %106(ptr noundef %16) #25
  br label %107

107:                                              ; preds = %105, %104
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %8) #25
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CustomData_swap(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !43
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %31

7:                                                ; preds = %3, %26
  %8 = phi i64 [ %27, %26 ], [ 0, %3 ]
  %9 = load ptr, ptr %0, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct.CustomDataLayer, ptr %9, i64 %8
  %11 = load i32, ptr %10, align 8, !tbaa !46
  %12 = icmp ugt i32 %11, 40
  %13 = zext nneg i32 %11 to i64
  %14 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %13
  %15 = select i1 %12, ptr null, ptr %14
  %16 = getelementptr inbounds %struct.LayerTypeInfo, ptr %15, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !104
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %7
  %20 = load i32, ptr %15, align 8, !tbaa !61
  %21 = mul nsw i32 %20, %1
  %22 = getelementptr inbounds %struct.CustomDataLayer, ptr %9, i64 %8, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !58
  %24 = sext i32 %21 to i64
  %25 = getelementptr inbounds i8, ptr %23, i64 %24
  tail call void %17(ptr noundef %25, ptr noundef %2) #25
  br label %26

26:                                               ; preds = %7, %19
  %27 = add nuw nsw i64 %8, 1
  %28 = load i32, ptr %4, align 4, !tbaa !43
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 %27, %29
  br i1 %30, label %7, label %31, !llvm.loop !105

31:                                               ; preds = %26, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @CustomData_get(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !41
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8, !tbaa !45
  %10 = sext i32 %6 to i64
  %11 = getelementptr inbounds %struct.CustomDataLayer, ptr %9, i64 %10, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !52
  %13 = add nsw i32 %12, %6
  br label %14

14:                                               ; preds = %3, %8
  %15 = phi i32 [ %13, %8 ], [ -1, %3 ]
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %28, label %17

17:                                               ; preds = %14
  %18 = zext nneg i32 %2 to i64
  %19 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %18
  %20 = load i32, ptr %19, align 8, !tbaa !61
  %21 = mul nsw i32 %20, %1
  %22 = load ptr, ptr %0, align 8, !tbaa !45
  %23 = sext i32 %15 to i64
  %24 = getelementptr inbounds %struct.CustomDataLayer, ptr %22, i64 %23, i32 9
  %25 = load ptr, ptr %24, align 8, !tbaa !58
  %26 = sext i32 %21 to i64
  %27 = getelementptr inbounds i8, ptr %25, i64 %26
  br label %28

28:                                               ; preds = %14, %17
  %29 = phi ptr [ %27, %17 ], [ null, %14 ]
  ret ptr %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @CustomData_get_n(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #10 {
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !41
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %21, label %9

9:                                                ; preds = %4
  %10 = zext nneg i32 %1 to i64
  %11 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %10
  %12 = load i32, ptr %11, align 8, !tbaa !61
  %13 = mul nsw i32 %12, %2
  %14 = load ptr, ptr %0, align 8, !tbaa !45
  %15 = add nsw i32 %7, %3
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.CustomDataLayer, ptr %14, i64 %16, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !58
  %19 = sext i32 %13 to i64
  %20 = getelementptr inbounds i8, ptr %18, i64 %19
  br label %21

21:                                               ; preds = %4, %9
  %22 = phi ptr [ %20, %9 ], [ null, %4 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @CustomData_get_layer(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !41
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !45
  %9 = sext i32 %5 to i64
  %10 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %9, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !52
  %12 = add nsw i32 %11, %5
  br label %13

13:                                               ; preds = %2, %7
  %14 = phi i32 [ %12, %7 ], [ -1, %2 ]
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %0, align 8, !tbaa !45
  %18 = sext i32 %14 to i64
  %19 = getelementptr inbounds %struct.CustomDataLayer, ptr %17, i64 %18, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !58
  br label %21

21:                                               ; preds = %13, %16
  %22 = phi ptr [ %20, %16 ], [ null, %13 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @CustomData_get_layer_n(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !41
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8, !tbaa !45
  %10 = add nsw i32 %6, %2
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %9, i64 %11
  %13 = load i32, ptr %12, align 8, !tbaa !46
  %14 = icmp eq i32 %13, %1
  %15 = select i1 %14, i32 %10, i32 -1
  br label %16

16:                                               ; preds = %3, %8
  %17 = phi i32 [ %15, %8 ], [ -1, %3 ]
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %0, align 8, !tbaa !45
  %21 = sext i32 %17 to i64
  %22 = getelementptr inbounds %struct.CustomDataLayer, ptr %20, i64 %21, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !58
  br label %24

24:                                               ; preds = %16, %19
  %25 = phi ptr [ %23, %19 ], [ null, %16 ]
  ret ptr %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CustomData_get_offset(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !41
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !45
  %9 = sext i32 %5 to i64
  %10 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %9, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !52
  %12 = add nsw i32 %11, %5
  br label %13

13:                                               ; preds = %2, %7
  %14 = phi i32 [ %12, %7 ], [ -1, %2 ]
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %0, align 8, !tbaa !45
  %18 = sext i32 %14 to i64
  %19 = getelementptr inbounds %struct.CustomDataLayer, ptr %17, i64 %18, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !72
  br label %21

21:                                               ; preds = %13, %16
  %22 = phi i32 [ %20, %16 ], [ -1, %13 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CustomData_get_n_offset(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !41
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8, !tbaa !45
  %10 = add nsw i32 %6, %2
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %9, i64 %11
  %13 = load i32, ptr %12, align 8, !tbaa !46
  %14 = icmp eq i32 %13, %1
  %15 = select i1 %14, i32 %10, i32 -1
  br label %16

16:                                               ; preds = %3, %8
  %17 = phi i32 [ %15, %8 ], [ -1, %3 ]
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %0, align 8, !tbaa !45
  %21 = sext i32 %17 to i64
  %22 = getelementptr inbounds %struct.CustomDataLayer, ptr %20, i64 %21, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !72
  br label %24

24:                                               ; preds = %16, %19
  %25 = phi i32 [ %23, %19 ], [ -1, %16 ]
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @CustomData_set_layer_name(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #5 {
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !41
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 8, !tbaa !45
  %11 = add nsw i32 %7, %2
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.CustomDataLayer, ptr %10, i64 %12
  %14 = load i32, ptr %13, align 8, !tbaa !46
  %15 = icmp eq i32 %14, %1
  %16 = select i1 %15, i32 %11, i32 -1
  br label %17

17:                                               ; preds = %4, %9
  %18 = phi i32 [ %16, %9 ], [ -1, %4 ]
  %19 = icmp eq i32 %18, -1
  %20 = icmp eq ptr %3, null
  %21 = or i1 %20, %19
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %0, align 8, !tbaa !45
  %24 = sext i32 %18 to i64
  %25 = getelementptr inbounds %struct.CustomDataLayer, ptr %23, i64 %24, i32 8
  %26 = tail call ptr @BLI_strncpy(ptr noundef nonnull %25, ptr noundef nonnull %3, i64 noundef 64) #25
  br label %27

27:                                               ; preds = %17, %22
  %28 = phi i8 [ 1, %22 ], [ 0, %17 ]
  ret i8 %28
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @CustomData_set_layer(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #15 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !41
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8, !tbaa !45
  %10 = sext i32 %6 to i64
  %11 = getelementptr inbounds %struct.CustomDataLayer, ptr %9, i64 %10, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !52
  %13 = add nsw i32 %12, %6
  br label %14

14:                                               ; preds = %3, %8
  %15 = phi i32 [ %13, %8 ], [ -1, %3 ]
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %0, align 8, !tbaa !45
  %19 = sext i32 %15 to i64
  %20 = getelementptr inbounds %struct.CustomDataLayer, ptr %18, i64 %19, i32 9
  store ptr %2, ptr %20, align 8, !tbaa !58
  br label %21

21:                                               ; preds = %14, %17
  %22 = phi ptr [ %2, %17 ], [ null, %14 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @CustomData_set_layer_n(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #15 {
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !41
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 8, !tbaa !45
  %11 = add nsw i32 %7, %2
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.CustomDataLayer, ptr %10, i64 %12
  %14 = load i32, ptr %13, align 8, !tbaa !46
  %15 = icmp eq i32 %14, %1
  %16 = select i1 %15, i32 %11, i32 -1
  br label %17

17:                                               ; preds = %4, %9
  %18 = phi i32 [ %16, %9 ], [ -1, %4 ]
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %0, align 8, !tbaa !45
  %22 = sext i32 %18 to i64
  %23 = getelementptr inbounds %struct.CustomDataLayer, ptr %21, i64 %22, i32 9
  store ptr %3, ptr %23, align 8, !tbaa !58
  br label %24

24:                                               ; preds = %17, %20
  %25 = phi ptr [ %3, %20 ], [ null, %17 ]
  ret ptr %25
}

; Function Attrs: nounwind uwtable
define dso_local void @CustomData_set(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #5 {
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !41
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %15, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 8, !tbaa !45
  %11 = sext i32 %7 to i64
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %10, i64 %11, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !52
  %14 = add nsw i32 %13, %7
  br label %15

15:                                               ; preds = %9, %4
  %16 = phi i32 [ %14, %9 ], [ -1, %4 ]
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %29, label %18

18:                                               ; preds = %15
  %19 = zext nneg i32 %2 to i64
  %20 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %19
  %21 = load i32, ptr %20, align 8, !tbaa !61
  %22 = mul nsw i32 %21, %1
  %23 = load ptr, ptr %0, align 8, !tbaa !45
  %24 = sext i32 %16 to i64
  %25 = getelementptr inbounds %struct.CustomDataLayer, ptr %23, i64 %24, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !58
  %27 = sext i32 %22 to i64
  %28 = getelementptr inbounds i8, ptr %26, i64 %27
  br label %29

29:                                               ; preds = %15, %18
  %30 = phi ptr [ %28, %18 ], [ null, %15 ]
  %31 = icmp ugt i32 %2, 40
  %32 = zext nneg i32 %2 to i64
  %33 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %32
  %34 = select i1 %31, ptr null, ptr %33
  %35 = icmp eq ptr %30, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.LayerTypeInfo, ptr %34, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !62
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void %38(ptr noundef %3, ptr noundef nonnull %30, i32 noundef 1) #25
  br label %44

41:                                               ; preds = %36
  %42 = load i32, ptr %34, align 8, !tbaa !61
  %43 = sext i32 %42 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %30, ptr align 1 %3, i64 %43, i1 false)
  br label %44

44:                                               ; preds = %40, %41, %29
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CustomData_to_bmeshpoly(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 {
  %6 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !43
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %146

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %2, i64 8
  %11 = getelementptr inbounds %struct.CustomData, ptr %2, i64 0, i32 2
  %12 = getelementptr i8, ptr %2, i64 8
  %13 = getelementptr inbounds %struct.CustomData, ptr %2, i64 0, i32 2
  %14 = getelementptr i8, ptr %2, i64 8
  %15 = getelementptr inbounds %struct.CustomData, ptr %2, i64 0, i32 2
  %16 = getelementptr i8, ptr %1, i64 8
  %17 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 2
  %18 = getelementptr i8, ptr %2, i64 8
  %19 = getelementptr inbounds %struct.CustomData, ptr %2, i64 0, i32 2
  br label %20

20:                                               ; preds = %9, %141
  %21 = phi i64 [ 0, %9 ], [ %142, %141 ]
  %22 = load ptr, ptr %0, align 8, !tbaa !45
  %23 = getelementptr inbounds %struct.CustomDataLayer, ptr %22, i64 %21
  %24 = load i32, ptr %23, align 8, !tbaa !46
  switch i32 %24, label %141 [
    i32 5, label %25
    i32 6, label %72
    i32 19, label %95
    i32 40, label %118
  ]

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.CustomDataLayer, ptr %22, i64 %21, i32 8
  %27 = tail call fastcc ptr @customData_add_layer__internal(ptr noundef %1, i32 noundef 15, i32 noundef 1, ptr noundef null, i32 noundef %4, ptr noundef nonnull %26)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(164) %16, i8 -1, i64 164, i1 false), !tbaa !41
  %28 = load i32, ptr %17, align 4, !tbaa !43
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %25
  %31 = load ptr, ptr %1, align 8, !tbaa !45
  br label %32

32:                                               ; preds = %42, %30
  %33 = phi i64 [ 0, %30 ], [ %44, %42 ]
  %34 = phi i32 [ -1, %30 ], [ %43, %42 ]
  %35 = getelementptr inbounds %struct.CustomDataLayer, ptr %31, i64 %33
  %36 = load i32, ptr %35, align 8, !tbaa !46
  %37 = icmp eq i32 %36, %34
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = sext i32 %36 to i64
  %40 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 1, i64 %39
  %41 = trunc i64 %33 to i32
  store i32 %41, ptr %40, align 4, !tbaa !41
  br label %42

42:                                               ; preds = %38, %32
  %43 = load i32, ptr %35, align 8, !tbaa !46
  %44 = add nuw nsw i64 %33, 1
  %45 = load i32, ptr %17, align 4, !tbaa !43
  %46 = sext i32 %45 to i64
  %47 = icmp slt i64 %44, %46
  br i1 %47, label %32, label %48, !llvm.loop !48

48:                                               ; preds = %42, %25
  %49 = load ptr, ptr %0, align 8, !tbaa !45
  %50 = getelementptr inbounds %struct.CustomDataLayer, ptr %49, i64 %21, i32 8
  %51 = tail call fastcc ptr @customData_add_layer__internal(ptr noundef %2, i32 noundef 16, i32 noundef 1, ptr noundef null, i32 noundef %3, ptr noundef nonnull %50)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(164) %18, i8 -1, i64 164, i1 false), !tbaa !41
  %52 = load i32, ptr %19, align 4, !tbaa !43
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %141

54:                                               ; preds = %48
  %55 = load ptr, ptr %2, align 8, !tbaa !45
  br label %56

56:                                               ; preds = %66, %54
  %57 = phi i64 [ 0, %54 ], [ %68, %66 ]
  %58 = phi i32 [ -1, %54 ], [ %67, %66 ]
  %59 = getelementptr inbounds %struct.CustomDataLayer, ptr %55, i64 %57
  %60 = load i32, ptr %59, align 8, !tbaa !46
  %61 = icmp eq i32 %60, %58
  br i1 %61, label %66, label %62

62:                                               ; preds = %56
  %63 = sext i32 %60 to i64
  %64 = getelementptr inbounds %struct.CustomData, ptr %2, i64 0, i32 1, i64 %63
  %65 = trunc i64 %57 to i32
  store i32 %65, ptr %64, align 4, !tbaa !41
  br label %66

66:                                               ; preds = %62, %56
  %67 = load i32, ptr %59, align 8, !tbaa !46
  %68 = add nuw nsw i64 %57, 1
  %69 = load i32, ptr %19, align 4, !tbaa !43
  %70 = sext i32 %69 to i64
  %71 = icmp slt i64 %68, %70
  br i1 %71, label %56, label %141, !llvm.loop !48

72:                                               ; preds = %20
  %73 = getelementptr inbounds %struct.CustomDataLayer, ptr %22, i64 %21, i32 8
  %74 = tail call fastcc ptr @customData_add_layer__internal(ptr noundef %2, i32 noundef 17, i32 noundef 1, ptr noundef null, i32 noundef %3, ptr noundef nonnull %73)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(164) %14, i8 -1, i64 164, i1 false), !tbaa !41
  %75 = load i32, ptr %15, align 4, !tbaa !43
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %141

77:                                               ; preds = %72
  %78 = load ptr, ptr %2, align 8, !tbaa !45
  br label %79

79:                                               ; preds = %89, %77
  %80 = phi i64 [ 0, %77 ], [ %91, %89 ]
  %81 = phi i32 [ -1, %77 ], [ %90, %89 ]
  %82 = getelementptr inbounds %struct.CustomDataLayer, ptr %78, i64 %80
  %83 = load i32, ptr %82, align 8, !tbaa !46
  %84 = icmp eq i32 %83, %81
  br i1 %84, label %89, label %85

85:                                               ; preds = %79
  %86 = sext i32 %83 to i64
  %87 = getelementptr inbounds %struct.CustomData, ptr %2, i64 0, i32 1, i64 %86
  %88 = trunc i64 %80 to i32
  store i32 %88, ptr %87, align 4, !tbaa !41
  br label %89

89:                                               ; preds = %85, %79
  %90 = load i32, ptr %82, align 8, !tbaa !46
  %91 = add nuw nsw i64 %80, 1
  %92 = load i32, ptr %15, align 4, !tbaa !43
  %93 = sext i32 %92 to i64
  %94 = icmp slt i64 %91, %93
  br i1 %94, label %79, label %141, !llvm.loop !48

95:                                               ; preds = %20
  %96 = getelementptr inbounds %struct.CustomDataLayer, ptr %22, i64 %21, i32 8
  %97 = tail call fastcc ptr @customData_add_layer__internal(ptr noundef %2, i32 noundef 19, i32 noundef 1, ptr noundef null, i32 noundef %3, ptr noundef nonnull %96)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(164) %12, i8 -1, i64 164, i1 false), !tbaa !41
  %98 = load i32, ptr %13, align 4, !tbaa !43
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %141

100:                                              ; preds = %95
  %101 = load ptr, ptr %2, align 8, !tbaa !45
  br label %102

102:                                              ; preds = %112, %100
  %103 = phi i64 [ 0, %100 ], [ %114, %112 ]
  %104 = phi i32 [ -1, %100 ], [ %113, %112 ]
  %105 = getelementptr inbounds %struct.CustomDataLayer, ptr %101, i64 %103
  %106 = load i32, ptr %105, align 8, !tbaa !46
  %107 = icmp eq i32 %106, %104
  br i1 %107, label %112, label %108

108:                                              ; preds = %102
  %109 = sext i32 %106 to i64
  %110 = getelementptr inbounds %struct.CustomData, ptr %2, i64 0, i32 1, i64 %109
  %111 = trunc i64 %103 to i32
  store i32 %111, ptr %110, align 4, !tbaa !41
  br label %112

112:                                              ; preds = %108, %102
  %113 = load i32, ptr %105, align 8, !tbaa !46
  %114 = add nuw nsw i64 %103, 1
  %115 = load i32, ptr %13, align 4, !tbaa !43
  %116 = sext i32 %115 to i64
  %117 = icmp slt i64 %114, %116
  br i1 %117, label %102, label %141, !llvm.loop !48

118:                                              ; preds = %20
  %119 = getelementptr inbounds %struct.CustomDataLayer, ptr %22, i64 %21, i32 8
  %120 = tail call fastcc ptr @customData_add_layer__internal(ptr noundef %2, i32 noundef 8, i32 noundef 1, ptr noundef null, i32 noundef %3, ptr noundef nonnull %119)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(164) %10, i8 -1, i64 164, i1 false), !tbaa !41
  %121 = load i32, ptr %11, align 4, !tbaa !43
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %141

123:                                              ; preds = %118
  %124 = load ptr, ptr %2, align 8, !tbaa !45
  br label %125

125:                                              ; preds = %135, %123
  %126 = phi i64 [ 0, %123 ], [ %137, %135 ]
  %127 = phi i32 [ -1, %123 ], [ %136, %135 ]
  %128 = getelementptr inbounds %struct.CustomDataLayer, ptr %124, i64 %126
  %129 = load i32, ptr %128, align 8, !tbaa !46
  %130 = icmp eq i32 %129, %127
  br i1 %130, label %135, label %131

131:                                              ; preds = %125
  %132 = sext i32 %129 to i64
  %133 = getelementptr inbounds %struct.CustomData, ptr %2, i64 0, i32 1, i64 %132
  %134 = trunc i64 %126 to i32
  store i32 %134, ptr %133, align 4, !tbaa !41
  br label %135

135:                                              ; preds = %131, %125
  %136 = load i32, ptr %128, align 8, !tbaa !46
  %137 = add nuw nsw i64 %126, 1
  %138 = load i32, ptr %11, align 4, !tbaa !43
  %139 = sext i32 %138 to i64
  %140 = icmp slt i64 %137, %139
  br i1 %140, label %125, label %141, !llvm.loop !48

141:                                              ; preds = %135, %112, %89, %66, %118, %95, %72, %48, %20
  %142 = add nuw nsw i64 %21, 1
  %143 = load i32, ptr %6, align 4, !tbaa !43
  %144 = sext i32 %143 to i64
  %145 = icmp slt i64 %142, %144
  br i1 %145, label %20, label %146, !llvm.loop !106

146:                                              ; preds = %141, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CustomData_from_bmeshpoly(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !43
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %0, i64 8
  %10 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  br label %24

11:                                               ; preds = %53, %4
  %12 = getelementptr inbounds %struct.CustomData, ptr %2, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !43
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %160

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %0, i64 8
  %17 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %18 = getelementptr i8, ptr %0, i64 8
  %19 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %20 = getelementptr i8, ptr %0, i64 8
  %21 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %22 = getelementptr i8, ptr %0, i64 8
  %23 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  br label %58

24:                                               ; preds = %8, %53
  %25 = phi i64 [ 0, %8 ], [ %54, %53 ]
  %26 = load ptr, ptr %1, align 8, !tbaa !45
  %27 = getelementptr inbounds %struct.CustomDataLayer, ptr %26, i64 %25
  %28 = load i32, ptr %27, align 8, !tbaa !46
  %29 = icmp eq i32 %28, 15
  br i1 %29, label %30, label %53

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.CustomDataLayer, ptr %26, i64 %25, i32 8
  %32 = tail call fastcc ptr @customData_add_layer__internal(ptr noundef %0, i32 noundef 5, i32 noundef 1, ptr noundef null, i32 noundef %3, ptr noundef nonnull %31)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(164) %9, i8 -1, i64 164, i1 false), !tbaa !41
  %33 = load i32, ptr %10, align 4, !tbaa !43
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %30
  %36 = load ptr, ptr %0, align 8, !tbaa !45
  br label %37

37:                                               ; preds = %47, %35
  %38 = phi i64 [ 0, %35 ], [ %49, %47 ]
  %39 = phi i32 [ -1, %35 ], [ %48, %47 ]
  %40 = getelementptr inbounds %struct.CustomDataLayer, ptr %36, i64 %38
  %41 = load i32, ptr %40, align 8, !tbaa !46
  %42 = icmp eq i32 %41, %39
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = sext i32 %41 to i64
  %45 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %44
  %46 = trunc i64 %38 to i32
  store i32 %46, ptr %45, align 4, !tbaa !41
  br label %47

47:                                               ; preds = %43, %37
  %48 = load i32, ptr %40, align 8, !tbaa !46
  %49 = add nuw nsw i64 %38, 1
  %50 = load i32, ptr %10, align 4, !tbaa !43
  %51 = sext i32 %50 to i64
  %52 = icmp slt i64 %49, %51
  br i1 %52, label %37, label %53, !llvm.loop !48

53:                                               ; preds = %47, %30, %24
  %54 = add nuw nsw i64 %25, 1
  %55 = load i32, ptr %5, align 4, !tbaa !43
  %56 = sext i32 %55 to i64
  %57 = icmp slt i64 %54, %56
  br i1 %57, label %24, label %11, !llvm.loop !107

58:                                               ; preds = %15, %155
  %59 = phi i64 [ 0, %15 ], [ %156, %155 ]
  %60 = load ptr, ptr %2, align 8, !tbaa !45
  %61 = getelementptr inbounds %struct.CustomDataLayer, ptr %60, i64 %59
  %62 = load i32, ptr %61, align 8, !tbaa !46
  switch i32 %62, label %155 [
    i32 17, label %63
    i32 32, label %86
    i32 31, label %109
    i32 8, label %132
  ]

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.CustomDataLayer, ptr %60, i64 %59, i32 8
  %65 = tail call fastcc ptr @customData_add_layer__internal(ptr noundef %0, i32 noundef 6, i32 noundef 1, ptr noundef null, i32 noundef %3, ptr noundef nonnull %64)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(164) %22, i8 -1, i64 164, i1 false), !tbaa !41
  %66 = load i32, ptr %23, align 4, !tbaa !43
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %155

68:                                               ; preds = %63
  %69 = load ptr, ptr %0, align 8, !tbaa !45
  br label %70

70:                                               ; preds = %80, %68
  %71 = phi i64 [ 0, %68 ], [ %82, %80 ]
  %72 = phi i32 [ -1, %68 ], [ %81, %80 ]
  %73 = getelementptr inbounds %struct.CustomDataLayer, ptr %69, i64 %71
  %74 = load i32, ptr %73, align 8, !tbaa !46
  %75 = icmp eq i32 %74, %72
  br i1 %75, label %80, label %76

76:                                               ; preds = %70
  %77 = sext i32 %74 to i64
  %78 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %77
  %79 = trunc i64 %71 to i32
  store i32 %79, ptr %78, align 4, !tbaa !41
  br label %80

80:                                               ; preds = %76, %70
  %81 = load i32, ptr %73, align 8, !tbaa !46
  %82 = add nuw nsw i64 %71, 1
  %83 = load i32, ptr %23, align 4, !tbaa !43
  %84 = sext i32 %83 to i64
  %85 = icmp slt i64 %82, %84
  br i1 %85, label %70, label %155, !llvm.loop !48

86:                                               ; preds = %58
  %87 = getelementptr inbounds %struct.CustomDataLayer, ptr %60, i64 %59, i32 8
  %88 = tail call fastcc ptr @customData_add_layer__internal(ptr noundef %0, i32 noundef 20, i32 noundef 1, ptr noundef null, i32 noundef %3, ptr noundef nonnull %87)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(164) %20, i8 -1, i64 164, i1 false), !tbaa !41
  %89 = load i32, ptr %21, align 4, !tbaa !43
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %155

91:                                               ; preds = %86
  %92 = load ptr, ptr %0, align 8, !tbaa !45
  br label %93

93:                                               ; preds = %103, %91
  %94 = phi i64 [ 0, %91 ], [ %105, %103 ]
  %95 = phi i32 [ -1, %91 ], [ %104, %103 ]
  %96 = getelementptr inbounds %struct.CustomDataLayer, ptr %92, i64 %94
  %97 = load i32, ptr %96, align 8, !tbaa !46
  %98 = icmp eq i32 %97, %95
  br i1 %98, label %103, label %99

99:                                               ; preds = %93
  %100 = sext i32 %97 to i64
  %101 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %100
  %102 = trunc i64 %94 to i32
  store i32 %102, ptr %101, align 4, !tbaa !41
  br label %103

103:                                              ; preds = %99, %93
  %104 = load i32, ptr %96, align 8, !tbaa !46
  %105 = add nuw nsw i64 %94, 1
  %106 = load i32, ptr %21, align 4, !tbaa !43
  %107 = sext i32 %106 to i64
  %108 = icmp slt i64 %105, %107
  br i1 %108, label %93, label %155, !llvm.loop !48

109:                                              ; preds = %58
  %110 = getelementptr inbounds %struct.CustomDataLayer, ptr %60, i64 %59, i32 8
  %111 = tail call fastcc ptr @customData_add_layer__internal(ptr noundef %0, i32 noundef 13, i32 noundef 1, ptr noundef null, i32 noundef %3, ptr noundef nonnull %110)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(164) %18, i8 -1, i64 164, i1 false), !tbaa !41
  %112 = load i32, ptr %19, align 4, !tbaa !43
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %155

114:                                              ; preds = %109
  %115 = load ptr, ptr %0, align 8, !tbaa !45
  br label %116

116:                                              ; preds = %126, %114
  %117 = phi i64 [ 0, %114 ], [ %128, %126 ]
  %118 = phi i32 [ -1, %114 ], [ %127, %126 ]
  %119 = getelementptr inbounds %struct.CustomDataLayer, ptr %115, i64 %117
  %120 = load i32, ptr %119, align 8, !tbaa !46
  %121 = icmp eq i32 %120, %118
  br i1 %121, label %126, label %122

122:                                              ; preds = %116
  %123 = sext i32 %120 to i64
  %124 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %123
  %125 = trunc i64 %117 to i32
  store i32 %125, ptr %124, align 4, !tbaa !41
  br label %126

126:                                              ; preds = %122, %116
  %127 = load i32, ptr %119, align 8, !tbaa !46
  %128 = add nuw nsw i64 %117, 1
  %129 = load i32, ptr %19, align 4, !tbaa !43
  %130 = sext i32 %129 to i64
  %131 = icmp slt i64 %128, %130
  br i1 %131, label %116, label %155, !llvm.loop !48

132:                                              ; preds = %58
  %133 = getelementptr inbounds %struct.CustomDataLayer, ptr %60, i64 %59, i32 8
  %134 = tail call fastcc ptr @customData_add_layer__internal(ptr noundef %0, i32 noundef 40, i32 noundef 1, ptr noundef null, i32 noundef %3, ptr noundef nonnull %133)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(164) %16, i8 -1, i64 164, i1 false), !tbaa !41
  %135 = load i32, ptr %17, align 4, !tbaa !43
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %155

137:                                              ; preds = %132
  %138 = load ptr, ptr %0, align 8, !tbaa !45
  br label %139

139:                                              ; preds = %149, %137
  %140 = phi i64 [ 0, %137 ], [ %151, %149 ]
  %141 = phi i32 [ -1, %137 ], [ %150, %149 ]
  %142 = getelementptr inbounds %struct.CustomDataLayer, ptr %138, i64 %140
  %143 = load i32, ptr %142, align 8, !tbaa !46
  %144 = icmp eq i32 %143, %141
  br i1 %144, label %149, label %145

145:                                              ; preds = %139
  %146 = sext i32 %143 to i64
  %147 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %146
  %148 = trunc i64 %140 to i32
  store i32 %148, ptr %147, align 4, !tbaa !41
  br label %149

149:                                              ; preds = %145, %139
  %150 = load i32, ptr %142, align 8, !tbaa !46
  %151 = add nuw nsw i64 %140, 1
  %152 = load i32, ptr %17, align 4, !tbaa !43
  %153 = sext i32 %152 to i64
  %154 = icmp slt i64 %151, %153
  br i1 %154, label %139, label %155, !llvm.loop !48

155:                                              ; preds = %149, %126, %103, %80, %132, %109, %86, %63, %58
  %156 = add nuw nsw i64 %59, 1
  %157 = load i32, ptr %12, align 4, !tbaa !43
  %158 = sext i32 %157 to i64
  %159 = icmp slt i64 %156, %158
  br i1 %159, label %58, label %160, !llvm.loop !108

160:                                              ; preds = %155, %11
  tail call void @CustomData_bmesh_update_active_layers(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CustomData_bmesh_update_active_layers(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 1, i64 15
  %5 = load i32, ptr %4, align 4, !tbaa !41
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %162, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %1, align 8, !tbaa !45
  %9 = sext i32 %5 to i64
  %10 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %9, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !52
  %12 = getelementptr inbounds %struct.CustomData, ptr %2, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !43
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %7
  %16 = load ptr, ptr %2, align 8, !tbaa !45
  %17 = zext nneg i32 %13 to i64
  br label %25

18:                                               ; preds = %32, %7
  %19 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !43
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %18
  %23 = load ptr, ptr %0, align 8, !tbaa !45
  %24 = zext nneg i32 %20 to i64
  br label %35

25:                                               ; preds = %15, %32
  %26 = phi i64 [ 0, %15 ], [ %33, %32 ]
  %27 = getelementptr inbounds %struct.CustomDataLayer, ptr %16, i64 %26
  %28 = load i32, ptr %27, align 8, !tbaa !46
  %29 = icmp eq i32 %28, 16
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.CustomDataLayer, ptr %16, i64 %26, i32 3
  store i32 %11, ptr %31, align 4, !tbaa !52
  br label %32

32:                                               ; preds = %30, %25
  %33 = add nuw nsw i64 %26, 1
  %34 = icmp eq i64 %33, %17
  br i1 %34, label %18, label %25, !llvm.loop !79

35:                                               ; preds = %22, %42
  %36 = phi i64 [ 0, %22 ], [ %43, %42 ]
  %37 = getelementptr inbounds %struct.CustomDataLayer, ptr %23, i64 %36
  %38 = load i32, ptr %37, align 8, !tbaa !46
  %39 = icmp eq i32 %38, 5
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.CustomDataLayer, ptr %23, i64 %36, i32 3
  store i32 %11, ptr %41, align 4, !tbaa !52
  br label %42

42:                                               ; preds = %40, %35
  %43 = add nuw nsw i64 %36, 1
  %44 = icmp eq i64 %43, %24
  br i1 %44, label %45, label %35, !llvm.loop !79

45:                                               ; preds = %42, %18
  %46 = load i32, ptr %4, align 4, !tbaa !41
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr %1, align 8, !tbaa !45
  %50 = sext i32 %46 to i64
  %51 = getelementptr inbounds %struct.CustomDataLayer, ptr %49, i64 %50, i32 4
  %52 = load i32, ptr %51, align 8, !tbaa !53
  br label %53

53:                                               ; preds = %45, %48
  %54 = phi i32 [ %52, %48 ], [ -1, %45 ]
  %55 = icmp sgt i32 %13, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load ptr, ptr %2, align 8, !tbaa !45
  %58 = zext nneg i32 %13 to i64
  br label %64

59:                                               ; preds = %71, %53
  %60 = icmp sgt i32 %20, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %59
  %62 = load ptr, ptr %0, align 8, !tbaa !45
  %63 = zext nneg i32 %20 to i64
  br label %74

64:                                               ; preds = %56, %71
  %65 = phi i64 [ 0, %56 ], [ %72, %71 ]
  %66 = getelementptr inbounds %struct.CustomDataLayer, ptr %57, i64 %65
  %67 = load i32, ptr %66, align 8, !tbaa !46
  %68 = icmp eq i32 %67, 16
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.CustomDataLayer, ptr %57, i64 %65, i32 4
  store i32 %54, ptr %70, align 8, !tbaa !53
  br label %71

71:                                               ; preds = %69, %64
  %72 = add nuw nsw i64 %65, 1
  %73 = icmp eq i64 %72, %58
  br i1 %73, label %59, label %64, !llvm.loop !80

74:                                               ; preds = %61, %81
  %75 = phi i64 [ 0, %61 ], [ %82, %81 ]
  %76 = getelementptr inbounds %struct.CustomDataLayer, ptr %62, i64 %75
  %77 = load i32, ptr %76, align 8, !tbaa !46
  %78 = icmp eq i32 %77, 5
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.CustomDataLayer, ptr %62, i64 %75, i32 4
  store i32 %54, ptr %80, align 8, !tbaa !53
  br label %81

81:                                               ; preds = %79, %74
  %82 = add nuw nsw i64 %75, 1
  %83 = icmp eq i64 %82, %63
  br i1 %83, label %84, label %74, !llvm.loop !80

84:                                               ; preds = %81, %59
  %85 = load i32, ptr %4, align 4, !tbaa !41
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %92, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr %1, align 8, !tbaa !45
  %89 = sext i32 %85 to i64
  %90 = getelementptr inbounds %struct.CustomDataLayer, ptr %88, i64 %89, i32 5
  %91 = load i32, ptr %90, align 4, !tbaa !54
  br label %92

92:                                               ; preds = %84, %87
  %93 = phi i32 [ %91, %87 ], [ -1, %84 ]
  %94 = icmp sgt i32 %13, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load ptr, ptr %2, align 8, !tbaa !45
  %97 = zext nneg i32 %13 to i64
  br label %103

98:                                               ; preds = %110, %92
  %99 = icmp sgt i32 %20, 0
  br i1 %99, label %100, label %123

100:                                              ; preds = %98
  %101 = load ptr, ptr %0, align 8, !tbaa !45
  %102 = zext nneg i32 %20 to i64
  br label %113

103:                                              ; preds = %95, %110
  %104 = phi i64 [ 0, %95 ], [ %111, %110 ]
  %105 = getelementptr inbounds %struct.CustomDataLayer, ptr %96, i64 %104
  %106 = load i32, ptr %105, align 8, !tbaa !46
  %107 = icmp eq i32 %106, 16
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.CustomDataLayer, ptr %96, i64 %104, i32 5
  store i32 %93, ptr %109, align 4, !tbaa !54
  br label %110

110:                                              ; preds = %108, %103
  %111 = add nuw nsw i64 %104, 1
  %112 = icmp eq i64 %111, %97
  br i1 %112, label %98, label %103, !llvm.loop !81

113:                                              ; preds = %100, %120
  %114 = phi i64 [ 0, %100 ], [ %121, %120 ]
  %115 = getelementptr inbounds %struct.CustomDataLayer, ptr %101, i64 %114
  %116 = load i32, ptr %115, align 8, !tbaa !46
  %117 = icmp eq i32 %116, 5
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.CustomDataLayer, ptr %101, i64 %114, i32 5
  store i32 %93, ptr %119, align 4, !tbaa !54
  br label %120

120:                                              ; preds = %118, %113
  %121 = add nuw nsw i64 %114, 1
  %122 = icmp eq i64 %121, %102
  br i1 %122, label %123, label %113, !llvm.loop !81

123:                                              ; preds = %120, %98
  %124 = load i32, ptr %4, align 4, !tbaa !41
  %125 = icmp eq i32 %124, -1
  br i1 %125, label %131, label %126

126:                                              ; preds = %123
  %127 = load ptr, ptr %1, align 8, !tbaa !45
  %128 = sext i32 %124 to i64
  %129 = getelementptr inbounds %struct.CustomDataLayer, ptr %127, i64 %128, i32 6
  %130 = load i32, ptr %129, align 8, !tbaa !55
  br label %131

131:                                              ; preds = %123, %126
  %132 = phi i32 [ %130, %126 ], [ -1, %123 ]
  %133 = icmp sgt i32 %13, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load ptr, ptr %2, align 8, !tbaa !45
  %136 = zext nneg i32 %13 to i64
  br label %142

137:                                              ; preds = %149, %131
  %138 = icmp sgt i32 %20, 0
  br i1 %138, label %139, label %162

139:                                              ; preds = %137
  %140 = load ptr, ptr %0, align 8, !tbaa !45
  %141 = zext nneg i32 %20 to i64
  br label %152

142:                                              ; preds = %134, %149
  %143 = phi i64 [ 0, %134 ], [ %150, %149 ]
  %144 = getelementptr inbounds %struct.CustomDataLayer, ptr %135, i64 %143
  %145 = load i32, ptr %144, align 8, !tbaa !46
  %146 = icmp eq i32 %145, 16
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.CustomDataLayer, ptr %135, i64 %143, i32 6
  store i32 %132, ptr %148, align 8, !tbaa !55
  br label %149

149:                                              ; preds = %147, %142
  %150 = add nuw nsw i64 %143, 1
  %151 = icmp eq i64 %150, %136
  br i1 %151, label %137, label %142, !llvm.loop !82

152:                                              ; preds = %139, %159
  %153 = phi i64 [ 0, %139 ], [ %160, %159 ]
  %154 = getelementptr inbounds %struct.CustomDataLayer, ptr %140, i64 %153
  %155 = load i32, ptr %154, align 8, !tbaa !46
  %156 = icmp eq i32 %155, 5
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.CustomDataLayer, ptr %140, i64 %153, i32 6
  store i32 %132, ptr %158, align 8, !tbaa !55
  br label %159

159:                                              ; preds = %157, %152
  %160 = add nuw nsw i64 %153, 1
  %161 = icmp eq i64 %160, %141
  br i1 %161, label %162, label %152, !llvm.loop !82

162:                                              ; preds = %159, %137, %3
  %163 = getelementptr inbounds %struct.CustomData, ptr %2, i64 0, i32 1, i64 17
  %164 = load i32, ptr %163, align 4, !tbaa !41
  %165 = icmp eq i32 %164, -1
  br i1 %165, label %259, label %166

166:                                              ; preds = %162
  %167 = load ptr, ptr %2, align 8, !tbaa !45
  %168 = sext i32 %164 to i64
  %169 = getelementptr inbounds %struct.CustomDataLayer, ptr %167, i64 %168, i32 3
  %170 = load i32, ptr %169, align 4, !tbaa !52
  %171 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %172 = load i32, ptr %171, align 4, !tbaa !43
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %187

174:                                              ; preds = %166
  %175 = load ptr, ptr %0, align 8, !tbaa !45
  %176 = zext nneg i32 %172 to i64
  br label %177

177:                                              ; preds = %174, %184
  %178 = phi i64 [ 0, %174 ], [ %185, %184 ]
  %179 = getelementptr inbounds %struct.CustomDataLayer, ptr %175, i64 %178
  %180 = load i32, ptr %179, align 8, !tbaa !46
  %181 = icmp eq i32 %180, 6
  br i1 %181, label %182, label %184

182:                                              ; preds = %177
  %183 = getelementptr inbounds %struct.CustomDataLayer, ptr %175, i64 %178, i32 3
  store i32 %170, ptr %183, align 4, !tbaa !52
  br label %184

184:                                              ; preds = %182, %177
  %185 = add nuw nsw i64 %178, 1
  %186 = icmp eq i64 %185, %176
  br i1 %186, label %187, label %177, !llvm.loop !79

187:                                              ; preds = %184, %166
  %188 = load i32, ptr %163, align 4, !tbaa !41
  %189 = icmp eq i32 %188, -1
  br i1 %189, label %195, label %190

190:                                              ; preds = %187
  %191 = load ptr, ptr %2, align 8, !tbaa !45
  %192 = sext i32 %188 to i64
  %193 = getelementptr inbounds %struct.CustomDataLayer, ptr %191, i64 %192, i32 4
  %194 = load i32, ptr %193, align 8, !tbaa !53
  br label %195

195:                                              ; preds = %187, %190
  %196 = phi i32 [ %194, %190 ], [ -1, %187 ]
  %197 = icmp sgt i32 %172, 0
  br i1 %197, label %198, label %211

198:                                              ; preds = %195
  %199 = load ptr, ptr %0, align 8, !tbaa !45
  %200 = zext nneg i32 %172 to i64
  br label %201

201:                                              ; preds = %198, %208
  %202 = phi i64 [ 0, %198 ], [ %209, %208 ]
  %203 = getelementptr inbounds %struct.CustomDataLayer, ptr %199, i64 %202
  %204 = load i32, ptr %203, align 8, !tbaa !46
  %205 = icmp eq i32 %204, 6
  br i1 %205, label %206, label %208

206:                                              ; preds = %201
  %207 = getelementptr inbounds %struct.CustomDataLayer, ptr %199, i64 %202, i32 4
  store i32 %196, ptr %207, align 8, !tbaa !53
  br label %208

208:                                              ; preds = %206, %201
  %209 = add nuw nsw i64 %202, 1
  %210 = icmp eq i64 %209, %200
  br i1 %210, label %211, label %201, !llvm.loop !80

211:                                              ; preds = %208, %195
  %212 = load i32, ptr %163, align 4, !tbaa !41
  %213 = icmp eq i32 %212, -1
  br i1 %213, label %219, label %214

214:                                              ; preds = %211
  %215 = load ptr, ptr %2, align 8, !tbaa !45
  %216 = sext i32 %212 to i64
  %217 = getelementptr inbounds %struct.CustomDataLayer, ptr %215, i64 %216, i32 5
  %218 = load i32, ptr %217, align 4, !tbaa !54
  br label %219

219:                                              ; preds = %211, %214
  %220 = phi i32 [ %218, %214 ], [ -1, %211 ]
  %221 = icmp sgt i32 %172, 0
  br i1 %221, label %222, label %235

222:                                              ; preds = %219
  %223 = load ptr, ptr %0, align 8, !tbaa !45
  %224 = zext nneg i32 %172 to i64
  br label %225

225:                                              ; preds = %222, %232
  %226 = phi i64 [ 0, %222 ], [ %233, %232 ]
  %227 = getelementptr inbounds %struct.CustomDataLayer, ptr %223, i64 %226
  %228 = load i32, ptr %227, align 8, !tbaa !46
  %229 = icmp eq i32 %228, 6
  br i1 %229, label %230, label %232

230:                                              ; preds = %225
  %231 = getelementptr inbounds %struct.CustomDataLayer, ptr %223, i64 %226, i32 5
  store i32 %220, ptr %231, align 4, !tbaa !54
  br label %232

232:                                              ; preds = %230, %225
  %233 = add nuw nsw i64 %226, 1
  %234 = icmp eq i64 %233, %224
  br i1 %234, label %235, label %225, !llvm.loop !81

235:                                              ; preds = %232, %219
  %236 = load i32, ptr %163, align 4, !tbaa !41
  %237 = icmp eq i32 %236, -1
  br i1 %237, label %243, label %238

238:                                              ; preds = %235
  %239 = load ptr, ptr %2, align 8, !tbaa !45
  %240 = sext i32 %236 to i64
  %241 = getelementptr inbounds %struct.CustomDataLayer, ptr %239, i64 %240, i32 6
  %242 = load i32, ptr %241, align 8, !tbaa !55
  br label %243

243:                                              ; preds = %235, %238
  %244 = phi i32 [ %242, %238 ], [ -1, %235 ]
  %245 = icmp sgt i32 %172, 0
  br i1 %245, label %246, label %259

246:                                              ; preds = %243
  %247 = load ptr, ptr %0, align 8, !tbaa !45
  %248 = zext nneg i32 %172 to i64
  br label %249

249:                                              ; preds = %246, %256
  %250 = phi i64 [ 0, %246 ], [ %257, %256 ]
  %251 = getelementptr inbounds %struct.CustomDataLayer, ptr %247, i64 %250
  %252 = load i32, ptr %251, align 8, !tbaa !46
  %253 = icmp eq i32 %252, 6
  br i1 %253, label %254, label %256

254:                                              ; preds = %249
  %255 = getelementptr inbounds %struct.CustomDataLayer, ptr %247, i64 %250, i32 6
  store i32 %244, ptr %255, align 8, !tbaa !55
  br label %256

256:                                              ; preds = %254, %249
  %257 = add nuw nsw i64 %250, 1
  %258 = icmp eq i64 %257, %248
  br i1 %258, label %259, label %249, !llvm.loop !82

259:                                              ; preds = %256, %243, %162
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CustomData_bmesh_do_versions_update_active_layers(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 5
  %5 = load i32, ptr %4, align 4, !tbaa !41
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %162, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !45
  %9 = sext i32 %5 to i64
  %10 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %9, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !52
  %12 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !43
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %7
  %16 = load ptr, ptr %1, align 8, !tbaa !45
  %17 = zext nneg i32 %13 to i64
  br label %25

18:                                               ; preds = %32, %7
  %19 = getelementptr inbounds %struct.CustomData, ptr %2, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !43
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %18
  %23 = load ptr, ptr %2, align 8, !tbaa !45
  %24 = zext nneg i32 %20 to i64
  br label %35

25:                                               ; preds = %15, %32
  %26 = phi i64 [ 0, %15 ], [ %33, %32 ]
  %27 = getelementptr inbounds %struct.CustomDataLayer, ptr %16, i64 %26
  %28 = load i32, ptr %27, align 8, !tbaa !46
  %29 = icmp eq i32 %28, 15
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.CustomDataLayer, ptr %16, i64 %26, i32 3
  store i32 %11, ptr %31, align 4, !tbaa !52
  br label %32

32:                                               ; preds = %30, %25
  %33 = add nuw nsw i64 %26, 1
  %34 = icmp eq i64 %33, %17
  br i1 %34, label %18, label %25, !llvm.loop !79

35:                                               ; preds = %22, %42
  %36 = phi i64 [ 0, %22 ], [ %43, %42 ]
  %37 = getelementptr inbounds %struct.CustomDataLayer, ptr %23, i64 %36
  %38 = load i32, ptr %37, align 8, !tbaa !46
  %39 = icmp eq i32 %38, 16
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.CustomDataLayer, ptr %23, i64 %36, i32 3
  store i32 %11, ptr %41, align 4, !tbaa !52
  br label %42

42:                                               ; preds = %40, %35
  %43 = add nuw nsw i64 %36, 1
  %44 = icmp eq i64 %43, %24
  br i1 %44, label %45, label %35, !llvm.loop !79

45:                                               ; preds = %42, %18
  %46 = load i32, ptr %4, align 4, !tbaa !41
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr %0, align 8, !tbaa !45
  %50 = sext i32 %46 to i64
  %51 = getelementptr inbounds %struct.CustomDataLayer, ptr %49, i64 %50, i32 4
  %52 = load i32, ptr %51, align 8, !tbaa !53
  br label %53

53:                                               ; preds = %45, %48
  %54 = phi i32 [ %52, %48 ], [ -1, %45 ]
  %55 = icmp sgt i32 %13, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load ptr, ptr %1, align 8, !tbaa !45
  %58 = zext nneg i32 %13 to i64
  br label %64

59:                                               ; preds = %71, %53
  %60 = icmp sgt i32 %20, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %59
  %62 = load ptr, ptr %2, align 8, !tbaa !45
  %63 = zext nneg i32 %20 to i64
  br label %74

64:                                               ; preds = %56, %71
  %65 = phi i64 [ 0, %56 ], [ %72, %71 ]
  %66 = getelementptr inbounds %struct.CustomDataLayer, ptr %57, i64 %65
  %67 = load i32, ptr %66, align 8, !tbaa !46
  %68 = icmp eq i32 %67, 15
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.CustomDataLayer, ptr %57, i64 %65, i32 4
  store i32 %54, ptr %70, align 8, !tbaa !53
  br label %71

71:                                               ; preds = %69, %64
  %72 = add nuw nsw i64 %65, 1
  %73 = icmp eq i64 %72, %58
  br i1 %73, label %59, label %64, !llvm.loop !80

74:                                               ; preds = %61, %81
  %75 = phi i64 [ 0, %61 ], [ %82, %81 ]
  %76 = getelementptr inbounds %struct.CustomDataLayer, ptr %62, i64 %75
  %77 = load i32, ptr %76, align 8, !tbaa !46
  %78 = icmp eq i32 %77, 16
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.CustomDataLayer, ptr %62, i64 %75, i32 4
  store i32 %54, ptr %80, align 8, !tbaa !53
  br label %81

81:                                               ; preds = %79, %74
  %82 = add nuw nsw i64 %75, 1
  %83 = icmp eq i64 %82, %63
  br i1 %83, label %84, label %74, !llvm.loop !80

84:                                               ; preds = %81, %59
  %85 = load i32, ptr %4, align 4, !tbaa !41
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %92, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr %0, align 8, !tbaa !45
  %89 = sext i32 %85 to i64
  %90 = getelementptr inbounds %struct.CustomDataLayer, ptr %88, i64 %89, i32 5
  %91 = load i32, ptr %90, align 4, !tbaa !54
  br label %92

92:                                               ; preds = %84, %87
  %93 = phi i32 [ %91, %87 ], [ -1, %84 ]
  %94 = icmp sgt i32 %13, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load ptr, ptr %1, align 8, !tbaa !45
  %97 = zext nneg i32 %13 to i64
  br label %103

98:                                               ; preds = %110, %92
  %99 = icmp sgt i32 %20, 0
  br i1 %99, label %100, label %123

100:                                              ; preds = %98
  %101 = load ptr, ptr %2, align 8, !tbaa !45
  %102 = zext nneg i32 %20 to i64
  br label %113

103:                                              ; preds = %95, %110
  %104 = phi i64 [ 0, %95 ], [ %111, %110 ]
  %105 = getelementptr inbounds %struct.CustomDataLayer, ptr %96, i64 %104
  %106 = load i32, ptr %105, align 8, !tbaa !46
  %107 = icmp eq i32 %106, 15
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.CustomDataLayer, ptr %96, i64 %104, i32 5
  store i32 %93, ptr %109, align 4, !tbaa !54
  br label %110

110:                                              ; preds = %108, %103
  %111 = add nuw nsw i64 %104, 1
  %112 = icmp eq i64 %111, %97
  br i1 %112, label %98, label %103, !llvm.loop !81

113:                                              ; preds = %100, %120
  %114 = phi i64 [ 0, %100 ], [ %121, %120 ]
  %115 = getelementptr inbounds %struct.CustomDataLayer, ptr %101, i64 %114
  %116 = load i32, ptr %115, align 8, !tbaa !46
  %117 = icmp eq i32 %116, 16
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.CustomDataLayer, ptr %101, i64 %114, i32 5
  store i32 %93, ptr %119, align 4, !tbaa !54
  br label %120

120:                                              ; preds = %118, %113
  %121 = add nuw nsw i64 %114, 1
  %122 = icmp eq i64 %121, %102
  br i1 %122, label %123, label %113, !llvm.loop !81

123:                                              ; preds = %120, %98
  %124 = load i32, ptr %4, align 4, !tbaa !41
  %125 = icmp eq i32 %124, -1
  br i1 %125, label %131, label %126

126:                                              ; preds = %123
  %127 = load ptr, ptr %0, align 8, !tbaa !45
  %128 = sext i32 %124 to i64
  %129 = getelementptr inbounds %struct.CustomDataLayer, ptr %127, i64 %128, i32 6
  %130 = load i32, ptr %129, align 8, !tbaa !55
  br label %131

131:                                              ; preds = %123, %126
  %132 = phi i32 [ %130, %126 ], [ -1, %123 ]
  %133 = icmp sgt i32 %13, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load ptr, ptr %1, align 8, !tbaa !45
  %136 = zext nneg i32 %13 to i64
  br label %142

137:                                              ; preds = %149, %131
  %138 = icmp sgt i32 %20, 0
  br i1 %138, label %139, label %162

139:                                              ; preds = %137
  %140 = load ptr, ptr %2, align 8, !tbaa !45
  %141 = zext nneg i32 %20 to i64
  br label %152

142:                                              ; preds = %134, %149
  %143 = phi i64 [ 0, %134 ], [ %150, %149 ]
  %144 = getelementptr inbounds %struct.CustomDataLayer, ptr %135, i64 %143
  %145 = load i32, ptr %144, align 8, !tbaa !46
  %146 = icmp eq i32 %145, 15
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.CustomDataLayer, ptr %135, i64 %143, i32 6
  store i32 %132, ptr %148, align 8, !tbaa !55
  br label %149

149:                                              ; preds = %147, %142
  %150 = add nuw nsw i64 %143, 1
  %151 = icmp eq i64 %150, %136
  br i1 %151, label %137, label %142, !llvm.loop !82

152:                                              ; preds = %139, %159
  %153 = phi i64 [ 0, %139 ], [ %160, %159 ]
  %154 = getelementptr inbounds %struct.CustomDataLayer, ptr %140, i64 %153
  %155 = load i32, ptr %154, align 8, !tbaa !46
  %156 = icmp eq i32 %155, 16
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.CustomDataLayer, ptr %140, i64 %153, i32 6
  store i32 %132, ptr %158, align 8, !tbaa !55
  br label %159

159:                                              ; preds = %157, %152
  %160 = add nuw nsw i64 %153, 1
  %161 = icmp eq i64 %160, %141
  br i1 %161, label %162, label %152, !llvm.loop !82

162:                                              ; preds = %159, %137, %3
  %163 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 6
  %164 = load i32, ptr %163, align 4, !tbaa !41
  %165 = icmp eq i32 %164, -1
  br i1 %165, label %259, label %166

166:                                              ; preds = %162
  %167 = load ptr, ptr %0, align 8, !tbaa !45
  %168 = sext i32 %164 to i64
  %169 = getelementptr inbounds %struct.CustomDataLayer, ptr %167, i64 %168, i32 3
  %170 = load i32, ptr %169, align 4, !tbaa !52
  %171 = getelementptr inbounds %struct.CustomData, ptr %2, i64 0, i32 2
  %172 = load i32, ptr %171, align 4, !tbaa !43
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %187

174:                                              ; preds = %166
  %175 = load ptr, ptr %2, align 8, !tbaa !45
  %176 = zext nneg i32 %172 to i64
  br label %177

177:                                              ; preds = %174, %184
  %178 = phi i64 [ 0, %174 ], [ %185, %184 ]
  %179 = getelementptr inbounds %struct.CustomDataLayer, ptr %175, i64 %178
  %180 = load i32, ptr %179, align 8, !tbaa !46
  %181 = icmp eq i32 %180, 17
  br i1 %181, label %182, label %184

182:                                              ; preds = %177
  %183 = getelementptr inbounds %struct.CustomDataLayer, ptr %175, i64 %178, i32 3
  store i32 %170, ptr %183, align 4, !tbaa !52
  br label %184

184:                                              ; preds = %182, %177
  %185 = add nuw nsw i64 %178, 1
  %186 = icmp eq i64 %185, %176
  br i1 %186, label %187, label %177, !llvm.loop !79

187:                                              ; preds = %184, %166
  %188 = load i32, ptr %163, align 4, !tbaa !41
  %189 = icmp eq i32 %188, -1
  br i1 %189, label %195, label %190

190:                                              ; preds = %187
  %191 = load ptr, ptr %0, align 8, !tbaa !45
  %192 = sext i32 %188 to i64
  %193 = getelementptr inbounds %struct.CustomDataLayer, ptr %191, i64 %192, i32 4
  %194 = load i32, ptr %193, align 8, !tbaa !53
  br label %195

195:                                              ; preds = %187, %190
  %196 = phi i32 [ %194, %190 ], [ -1, %187 ]
  %197 = icmp sgt i32 %172, 0
  br i1 %197, label %198, label %211

198:                                              ; preds = %195
  %199 = load ptr, ptr %2, align 8, !tbaa !45
  %200 = zext nneg i32 %172 to i64
  br label %201

201:                                              ; preds = %198, %208
  %202 = phi i64 [ 0, %198 ], [ %209, %208 ]
  %203 = getelementptr inbounds %struct.CustomDataLayer, ptr %199, i64 %202
  %204 = load i32, ptr %203, align 8, !tbaa !46
  %205 = icmp eq i32 %204, 17
  br i1 %205, label %206, label %208

206:                                              ; preds = %201
  %207 = getelementptr inbounds %struct.CustomDataLayer, ptr %199, i64 %202, i32 4
  store i32 %196, ptr %207, align 8, !tbaa !53
  br label %208

208:                                              ; preds = %206, %201
  %209 = add nuw nsw i64 %202, 1
  %210 = icmp eq i64 %209, %200
  br i1 %210, label %211, label %201, !llvm.loop !80

211:                                              ; preds = %208, %195
  %212 = load i32, ptr %163, align 4, !tbaa !41
  %213 = icmp eq i32 %212, -1
  br i1 %213, label %219, label %214

214:                                              ; preds = %211
  %215 = load ptr, ptr %0, align 8, !tbaa !45
  %216 = sext i32 %212 to i64
  %217 = getelementptr inbounds %struct.CustomDataLayer, ptr %215, i64 %216, i32 5
  %218 = load i32, ptr %217, align 4, !tbaa !54
  br label %219

219:                                              ; preds = %211, %214
  %220 = phi i32 [ %218, %214 ], [ -1, %211 ]
  %221 = icmp sgt i32 %172, 0
  br i1 %221, label %222, label %235

222:                                              ; preds = %219
  %223 = load ptr, ptr %2, align 8, !tbaa !45
  %224 = zext nneg i32 %172 to i64
  br label %225

225:                                              ; preds = %222, %232
  %226 = phi i64 [ 0, %222 ], [ %233, %232 ]
  %227 = getelementptr inbounds %struct.CustomDataLayer, ptr %223, i64 %226
  %228 = load i32, ptr %227, align 8, !tbaa !46
  %229 = icmp eq i32 %228, 17
  br i1 %229, label %230, label %232

230:                                              ; preds = %225
  %231 = getelementptr inbounds %struct.CustomDataLayer, ptr %223, i64 %226, i32 5
  store i32 %220, ptr %231, align 4, !tbaa !54
  br label %232

232:                                              ; preds = %230, %225
  %233 = add nuw nsw i64 %226, 1
  %234 = icmp eq i64 %233, %224
  br i1 %234, label %235, label %225, !llvm.loop !81

235:                                              ; preds = %232, %219
  %236 = load i32, ptr %163, align 4, !tbaa !41
  %237 = icmp eq i32 %236, -1
  br i1 %237, label %243, label %238

238:                                              ; preds = %235
  %239 = load ptr, ptr %0, align 8, !tbaa !45
  %240 = sext i32 %236 to i64
  %241 = getelementptr inbounds %struct.CustomDataLayer, ptr %239, i64 %240, i32 6
  %242 = load i32, ptr %241, align 8, !tbaa !55
  br label %243

243:                                              ; preds = %235, %238
  %244 = phi i32 [ %242, %238 ], [ -1, %235 ]
  %245 = icmp sgt i32 %172, 0
  br i1 %245, label %246, label %259

246:                                              ; preds = %243
  %247 = load ptr, ptr %2, align 8, !tbaa !45
  %248 = zext nneg i32 %172 to i64
  br label %249

249:                                              ; preds = %246, %256
  %250 = phi i64 [ 0, %246 ], [ %257, %256 ]
  %251 = getelementptr inbounds %struct.CustomDataLayer, ptr %247, i64 %250
  %252 = load i32, ptr %251, align 8, !tbaa !46
  %253 = icmp eq i32 %252, 17
  br i1 %253, label %254, label %256

254:                                              ; preds = %249
  %255 = getelementptr inbounds %struct.CustomDataLayer, ptr %247, i64 %250, i32 6
  store i32 %244, ptr %255, align 8, !tbaa !55
  br label %256

256:                                              ; preds = %254, %249
  %257 = add nuw nsw i64 %250, 1
  %258 = icmp eq i64 %257, %248
  br i1 %258, label %259, label %249, !llvm.loop !82

259:                                              ; preds = %256, %243, %162
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CustomData_bmesh_init_pool(ptr nocapture noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #5 {
  switch i8 %2, label %12 [
    i8 1, label %4
    i8 2, label %6
    i8 4, label %8
    i8 8, label %10
  ]

4:                                                ; preds = %3
  %5 = load i32, ptr @bm_mesh_chunksize_default, align 4, !tbaa !109
  br label %12

6:                                                ; preds = %3
  %7 = load i32, ptr getelementptr inbounds (%struct.BMAllocTemplate, ptr @bm_mesh_chunksize_default, i64 0, i32 1), align 4, !tbaa !111
  br label %12

8:                                                ; preds = %3
  %9 = load i32, ptr getelementptr inbounds (%struct.BMAllocTemplate, ptr @bm_mesh_chunksize_default, i64 0, i32 2), align 4, !tbaa !112
  br label %12

10:                                               ; preds = %3
  %11 = load i32, ptr getelementptr inbounds (%struct.BMAllocTemplate, ptr @bm_mesh_chunksize_default, i64 0, i32 3), align 4, !tbaa !113
  br label %12

12:                                               ; preds = %3, %10, %8, %6, %4
  %13 = phi i32 [ %11, %10 ], [ %9, %8 ], [ %7, %6 ], [ %5, %4 ], [ 512, %3 ]
  %14 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !43
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 4
  %19 = load i32, ptr %18, align 4, !tbaa !74
  %20 = tail call ptr @BLI_mempool_create(i32 noundef %19, i32 noundef %1, i32 noundef %13, i32 noundef 0) #25
  %21 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 5
  store ptr %20, ptr %21, align 8, !tbaa !114
  br label %22

22:                                               ; preds = %17, %12
  ret void
}

declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @CustomData_bmesh_merge(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i8 noundef zeroext %5) local_unnamed_addr #5 {
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca %struct.CustomData, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #25
  %11 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !43
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %6
  %15 = load ptr, ptr %0, align 8, !tbaa !45
  %16 = zext nneg i32 %12 to i64
  br label %17

17:                                               ; preds = %14, %17
  %18 = phi i64 [ 0, %14 ], [ %28, %17 ]
  %19 = phi i32 [ 0, %14 ], [ %27, %17 ]
  %20 = getelementptr inbounds %struct.CustomDataLayer, ptr %15, i64 %18
  %21 = load i32, ptr %20, align 8, !tbaa !46
  %22 = zext nneg i32 %21 to i64
  %23 = shl nuw i64 1, %22
  %24 = and i64 %23, %2
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = add nuw nsw i32 %19, %26
  %28 = add nuw nsw i64 %18, 1
  %29 = icmp eq i64 %28, %16
  br i1 %29, label %30, label %17, !llvm.loop !93

30:                                               ; preds = %17, %6
  %31 = phi i32 [ 0, %6 ], [ %27, %17 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %239, label %33

33:                                               ; preds = %30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %8, ptr noundef nonnull align 8 dereferenceable(200) %1, i64 200, i1 false), !tbaa.struct !115
  %34 = load ptr, ptr %8, align 8, !tbaa !45
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %38 = tail call ptr %37(ptr noundef nonnull %34) #25
  store ptr %38, ptr %8, align 8, !tbaa !45
  br label %39

39:                                               ; preds = %36, %33
  %40 = tail call zeroext i8 @CustomData_merge(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef 0), !range !76
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load ptr, ptr %8, align 8, !tbaa !45
  %44 = icmp eq ptr %43, null
  br i1 %44, label %239, label %235

45:                                               ; preds = %39
  switch i8 %5, label %52 [
    i8 8, label %50
    i8 2, label %46
    i8 4, label %48
  ]

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 1
  br label %52

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 2
  br label %52

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 3
  br label %52

52:                                               ; preds = %45, %50, %48, %46
  %53 = phi i1 [ false, %50 ], [ true, %48 ], [ false, %46 ], [ false, %45 ]
  %54 = phi i8 [ 3, %50 ], [ 11, %48 ], [ 2, %46 ], [ 1, %45 ]
  %55 = phi ptr [ %51, %50 ], [ %49, %48 ], [ %47, %46 ], [ %4, %45 ]
  %56 = load i32, ptr %55, align 4, !tbaa !41
  %57 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 5
  store ptr null, ptr %57, align 8, !tbaa !114
  switch i8 %5, label %66 [
    i8 1, label %58
    i8 2, label %60
    i8 4, label %62
    i8 8, label %64
  ]

58:                                               ; preds = %52
  %59 = load i32, ptr @bm_mesh_chunksize_default, align 4, !tbaa !109
  br label %66

60:                                               ; preds = %52
  %61 = load i32, ptr getelementptr inbounds (%struct.BMAllocTemplate, ptr @bm_mesh_chunksize_default, i64 0, i32 1), align 4, !tbaa !111
  br label %66

62:                                               ; preds = %52
  %63 = load i32, ptr getelementptr inbounds (%struct.BMAllocTemplate, ptr @bm_mesh_chunksize_default, i64 0, i32 2), align 4, !tbaa !112
  br label %66

64:                                               ; preds = %52
  %65 = load i32, ptr getelementptr inbounds (%struct.BMAllocTemplate, ptr @bm_mesh_chunksize_default, i64 0, i32 3), align 4, !tbaa !113
  br label %66

66:                                               ; preds = %64, %62, %60, %58, %52
  %67 = phi i32 [ %65, %64 ], [ %63, %62 ], [ %61, %60 ], [ %59, %58 ], [ 512, %52 ]
  %68 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 2
  %69 = load i32, ptr %68, align 4, !tbaa !43
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 4
  %73 = load i32, ptr %72, align 4, !tbaa !74
  %74 = tail call ptr @BLI_mempool_create(i32 noundef %73, i32 noundef %56, i32 noundef %67, i32 noundef 0) #25
  store ptr %74, ptr %57, align 8, !tbaa !114
  br label %75

75:                                               ; preds = %66, %71
  br i1 %53, label %153, label %76

76:                                               ; preds = %75
  %77 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  store i8 %54, ptr %77, align 4, !tbaa !116
  %78 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %79 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  switch i8 %54, label %93 [
    i8 1, label %80
    i8 2, label %83
    i8 3, label %86
    i8 11, label %92
    i8 10, label %91
    i8 9, label %90
    i8 8, label %89
  ]

80:                                               ; preds = %76
  store ptr @bmiter__elem_of_mesh_begin, ptr %78, align 8, !tbaa !118
  store ptr @bmiter__elem_of_mesh_step, ptr %79, align 8, !tbaa !119
  %81 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 9
  %82 = load ptr, ptr %81, align 8, !tbaa !120
  store ptr %82, ptr %7, align 8, !tbaa !67
  br label %94

83:                                               ; preds = %76
  store ptr @bmiter__elem_of_mesh_begin, ptr %78, align 8, !tbaa !118
  store ptr @bmiter__elem_of_mesh_step, ptr %79, align 8, !tbaa !119
  %84 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 10
  %85 = load ptr, ptr %84, align 8, !tbaa !124
  store ptr %85, ptr %7, align 8, !tbaa !67
  br label %94

86:                                               ; preds = %76
  store ptr @bmiter__elem_of_mesh_begin, ptr %78, align 8, !tbaa !118
  store ptr @bmiter__elem_of_mesh_step, ptr %79, align 8, !tbaa !119
  %87 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 12
  %88 = load ptr, ptr %87, align 8, !tbaa !125
  store ptr %88, ptr %7, align 8, !tbaa !67
  br label %94

89:                                               ; preds = %76
  store ptr @bmiter__face_of_edge_begin, ptr %78, align 8, !tbaa !118
  store ptr @bmiter__face_of_edge_step, ptr %79, align 8, !tbaa !119
  store ptr null, ptr %7, align 8, !tbaa !67
  br label %94

90:                                               ; preds = %76
  store ptr @bmiter__vert_of_face_begin, ptr %78, align 8, !tbaa !118
  store ptr @bmiter__vert_of_face_step, ptr %79, align 8, !tbaa !119
  store ptr null, ptr %7, align 8, !tbaa !67
  br label %94

91:                                               ; preds = %76
  store ptr @bmiter__edge_of_face_begin, ptr %78, align 8, !tbaa !118
  store ptr @bmiter__edge_of_face_step, ptr %79, align 8, !tbaa !119
  store ptr null, ptr %7, align 8, !tbaa !67
  br label %94

92:                                               ; preds = %76
  store ptr @bmiter__loop_of_face_begin, ptr %78, align 8, !tbaa !118
  store ptr @bmiter__loop_of_face_step, ptr %79, align 8, !tbaa !119
  store ptr null, ptr %7, align 8, !tbaa !67
  br label %94

93:                                               ; preds = %76
  unreachable

94:                                               ; preds = %80, %83, %86, %89, %90, %91, %92
  %95 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !118
  call void %96(ptr noundef nonnull %7) #25
  %97 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !119
  %99 = call ptr %98(ptr noundef nonnull %7) #25
  %100 = icmp eq ptr %99, null
  br i1 %100, label %227, label %101

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.CustomData, ptr %8, i64 0, i32 2
  %103 = load i32, ptr %102, align 4
  %104 = icmp sgt i32 %103, 0
  %105 = load ptr, ptr %8, align 8
  %106 = zext i32 %103 to i64
  %107 = getelementptr inbounds %struct.CustomData, ptr %8, i64 0, i32 4
  %108 = load i32, ptr %107, align 4
  %109 = icmp eq i32 %108, 0
  %110 = getelementptr inbounds %struct.CustomData, ptr %8, i64 0, i32 5
  %111 = load ptr, ptr %110, align 8
  br label %112

112:                                              ; preds = %101, %148
  %113 = phi ptr [ %99, %101 ], [ %151, %148 ]
  store ptr null, ptr %9, align 8, !tbaa !34
  %114 = load ptr, ptr %113, align 8, !tbaa !126
  call void @CustomData_bmesh_copy_data(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %114, ptr noundef nonnull %9)
  %115 = load ptr, ptr %113, align 8, !tbaa !34
  %116 = icmp eq ptr %115, null
  br i1 %116, label %148, label %117

117:                                              ; preds = %112
  br i1 %104, label %118, label %144

118:                                              ; preds = %117, %141
  %119 = phi i64 [ %142, %141 ], [ 0, %117 ]
  %120 = getelementptr inbounds %struct.CustomDataLayer, ptr %105, i64 %119, i32 2
  %121 = load i32, ptr %120, align 8, !tbaa !56
  %122 = and i32 %121, 2
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %141

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.CustomDataLayer, ptr %105, i64 %119
  %126 = load i32, ptr %125, align 8, !tbaa !46
  %127 = icmp ugt i32 %126, 40
  %128 = zext nneg i32 %126 to i64
  %129 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %128
  %130 = select i1 %127, ptr null, ptr %129
  %131 = getelementptr inbounds %struct.LayerTypeInfo, ptr %130, i64 0, i32 5
  %132 = load ptr, ptr %131, align 8, !tbaa !77
  %133 = icmp eq ptr %132, null
  br i1 %133, label %141, label %134

134:                                              ; preds = %124
  %135 = getelementptr inbounds %struct.CustomDataLayer, ptr %105, i64 %119, i32 1
  %136 = load i32, ptr %135, align 4, !tbaa !72
  %137 = load ptr, ptr %113, align 8, !tbaa !34
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i8, ptr %137, i64 %138
  %140 = load i32, ptr %130, align 8, !tbaa !61
  call void %132(ptr noundef %139, i32 noundef 1, i32 noundef %140) #25
  br label %141

141:                                              ; preds = %134, %124, %118
  %142 = add nuw nsw i64 %119, 1
  %143 = icmp eq i64 %142, %106
  br i1 %143, label %144, label %118, !llvm.loop !128

144:                                              ; preds = %141, %117
  br i1 %109, label %147, label %145

145:                                              ; preds = %144
  %146 = load ptr, ptr %113, align 8, !tbaa !34
  call void @BLI_mempool_free(ptr noundef %111, ptr noundef %146) #25
  br label %147

147:                                              ; preds = %145, %144
  store ptr null, ptr %113, align 8, !tbaa !34
  br label %148

148:                                              ; preds = %112, %147
  %149 = load ptr, ptr %9, align 8, !tbaa !34
  store ptr %149, ptr %113, align 8, !tbaa !126
  %150 = load ptr, ptr %97, align 8, !tbaa !119
  %151 = call ptr %150(ptr noundef nonnull %7) #25
  %152 = icmp eq ptr %151, null
  br i1 %152, label %227, label %112, !llvm.loop !129

153:                                              ; preds = %75
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #25
  %154 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  store i8 3, ptr %154, align 4, !tbaa !116
  %155 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %155, align 8, !tbaa !118
  %156 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %156, align 8, !tbaa !119
  %157 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 12
  %158 = load ptr, ptr %157, align 8, !tbaa !125
  store ptr %158, ptr %7, align 8, !tbaa !67
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %7) #25
  %159 = load ptr, ptr %156, align 8, !tbaa !119
  %160 = call ptr %159(ptr noundef nonnull %7) #25
  %161 = icmp eq ptr %160, null
  br i1 %161, label %226, label %162

162:                                              ; preds = %153
  %163 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 4
  %164 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 1
  %165 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 2
  %166 = getelementptr inbounds %struct.CustomData, ptr %8, i64 0, i32 2
  %167 = load i32, ptr %166, align 4
  %168 = icmp sgt i32 %167, 0
  %169 = load ptr, ptr %8, align 8
  %170 = zext i32 %167 to i64
  %171 = getelementptr inbounds %struct.CustomData, ptr %8, i64 0, i32 4
  %172 = load i32, ptr %171, align 4
  %173 = icmp eq i32 %172, 0
  %174 = getelementptr inbounds %struct.CustomData, ptr %8, i64 0, i32 5
  %175 = load ptr, ptr %174, align 8
  br label %176

176:                                              ; preds = %162, %222
  %177 = phi ptr [ %160, %162 ], [ %224, %222 ]
  store i8 11, ptr %163, align 4, !tbaa !116
  store ptr @bmiter__loop_of_face_begin, ptr %164, align 8, !tbaa !118
  store ptr @bmiter__loop_of_face_step, ptr %165, align 8, !tbaa !119
  store ptr %177, ptr %10, align 8, !tbaa !67
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %10) #25
  %178 = load ptr, ptr %165, align 8, !tbaa !119
  %179 = call ptr %178(ptr noundef nonnull %10) #25
  %180 = icmp eq ptr %179, null
  br i1 %180, label %222, label %181

181:                                              ; preds = %176, %217
  %182 = phi ptr [ %220, %217 ], [ %179, %176 ]
  store ptr null, ptr %9, align 8, !tbaa !34
  %183 = load ptr, ptr %182, align 8, !tbaa !130
  call void @CustomData_bmesh_copy_data(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %183, ptr noundef nonnull %9)
  %184 = load ptr, ptr %182, align 8, !tbaa !34
  %185 = icmp eq ptr %184, null
  br i1 %185, label %217, label %186

186:                                              ; preds = %181
  br i1 %168, label %187, label %213

187:                                              ; preds = %186, %210
  %188 = phi i64 [ %211, %210 ], [ 0, %186 ]
  %189 = getelementptr inbounds %struct.CustomDataLayer, ptr %169, i64 %188, i32 2
  %190 = load i32, ptr %189, align 8, !tbaa !56
  %191 = and i32 %190, 2
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %210

193:                                              ; preds = %187
  %194 = getelementptr inbounds %struct.CustomDataLayer, ptr %169, i64 %188
  %195 = load i32, ptr %194, align 8, !tbaa !46
  %196 = icmp ugt i32 %195, 40
  %197 = zext nneg i32 %195 to i64
  %198 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %197
  %199 = select i1 %196, ptr null, ptr %198
  %200 = getelementptr inbounds %struct.LayerTypeInfo, ptr %199, i64 0, i32 5
  %201 = load ptr, ptr %200, align 8, !tbaa !77
  %202 = icmp eq ptr %201, null
  br i1 %202, label %210, label %203

203:                                              ; preds = %193
  %204 = getelementptr inbounds %struct.CustomDataLayer, ptr %169, i64 %188, i32 1
  %205 = load i32, ptr %204, align 4, !tbaa !72
  %206 = load ptr, ptr %182, align 8, !tbaa !34
  %207 = sext i32 %205 to i64
  %208 = getelementptr inbounds i8, ptr %206, i64 %207
  %209 = load i32, ptr %199, align 8, !tbaa !61
  call void %201(ptr noundef %208, i32 noundef 1, i32 noundef %209) #25
  br label %210

210:                                              ; preds = %203, %193, %187
  %211 = add nuw nsw i64 %188, 1
  %212 = icmp eq i64 %211, %170
  br i1 %212, label %213, label %187, !llvm.loop !128

213:                                              ; preds = %210, %186
  br i1 %173, label %216, label %214

214:                                              ; preds = %213
  %215 = load ptr, ptr %182, align 8, !tbaa !34
  call void @BLI_mempool_free(ptr noundef %175, ptr noundef %215) #25
  br label %216

216:                                              ; preds = %214, %213
  store ptr null, ptr %182, align 8, !tbaa !34
  br label %217

217:                                              ; preds = %181, %216
  %218 = load ptr, ptr %9, align 8, !tbaa !34
  store ptr %218, ptr %182, align 8, !tbaa !130
  %219 = load ptr, ptr %165, align 8, !tbaa !119
  %220 = call ptr %219(ptr noundef nonnull %10) #25
  %221 = icmp eq ptr %220, null
  br i1 %221, label %222, label %181, !llvm.loop !132

222:                                              ; preds = %217, %176
  %223 = load ptr, ptr %156, align 8, !tbaa !119
  %224 = call ptr %223(ptr noundef nonnull %7) #25
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %176, !llvm.loop !133

226:                                              ; preds = %222, %153
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #25
  br label %227

227:                                              ; preds = %148, %94, %226
  %228 = getelementptr inbounds %struct.CustomData, ptr %8, i64 0, i32 5
  %229 = load ptr, ptr %228, align 8, !tbaa !114
  %230 = icmp eq ptr %229, null
  br i1 %230, label %232, label %231

231:                                              ; preds = %227
  call void @BLI_mempool_destroy(ptr noundef nonnull %229) #25
  br label %232

232:                                              ; preds = %231, %227
  %233 = load ptr, ptr %8, align 8, !tbaa !45
  %234 = icmp eq ptr %233, null
  br i1 %234, label %239, label %235

235:                                              ; preds = %232, %42
  %236 = phi ptr [ %43, %42 ], [ %233, %232 ]
  %237 = phi i8 [ 0, %42 ], [ 1, %232 ]
  %238 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %238(ptr noundef nonnull %236) #25
  br label %239

239:                                              ; preds = %235, %232, %42, %30
  %240 = phi i8 [ 0, %30 ], [ 0, %42 ], [ 1, %232 ], [ %237, %235 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #25
  ret i8 %240
}

; Function Attrs: nounwind uwtable
define dso_local void @CustomData_bmesh_copy_data(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef %3) local_unnamed_addr #5 {
  %5 = load ptr, ptr %3, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %21

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !74
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !114
  %14 = tail call ptr @BLI_mempool_alloc(ptr noundef %13) #25
  br label %15

15:                                               ; preds = %7, %11
  %16 = phi ptr [ %14, %11 ], [ null, %7 ]
  store ptr %16, ptr %3, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, ptr %8, align 4, !tbaa !74
  %20 = sext i32 %19 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %16, i8 0, i64 %20, i1 false)
  br label %21

21:                                               ; preds = %15, %18, %4
  %22 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !43
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %101

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 2
  br label %27

27:                                               ; preds = %25, %95
  %28 = phi i64 [ 0, %25 ], [ %97, %95 ]
  %29 = phi i32 [ 0, %25 ], [ %96, %95 ]
  %30 = load i32, ptr %26, align 4, !tbaa !43
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %101

32:                                               ; preds = %27
  %33 = load ptr, ptr %1, align 8, !tbaa !45
  %34 = load ptr, ptr %0, align 8, !tbaa !45
  %35 = getelementptr inbounds %struct.CustomDataLayer, ptr %34, i64 %28
  %36 = load i32, ptr %35, align 8, !tbaa !46
  %37 = sext i32 %29 to i64
  %38 = sext i32 %30 to i64
  %39 = getelementptr inbounds %struct.CustomDataLayer, ptr %33, i64 %37
  %40 = load i32, ptr %39, align 8, !tbaa !46
  %41 = icmp slt i32 %40, %36
  br i1 %41, label %46, label %53

42:                                               ; preds = %46
  %43 = getelementptr inbounds %struct.CustomDataLayer, ptr %33, i64 %48
  %44 = load i32, ptr %43, align 8, !tbaa !46
  %45 = icmp slt i32 %44, %36
  br i1 %45, label %46, label %51, !llvm.loop !134

46:                                               ; preds = %32, %42
  %47 = phi i64 [ %48, %42 ], [ %37, %32 ]
  %48 = add nsw i64 %47, 1
  %49 = trunc i64 %48 to i32
  %50 = icmp eq i32 %30, %49
  br i1 %50, label %101, label %42, !llvm.loop !134

51:                                               ; preds = %42
  %52 = icmp slt i64 %48, %38
  br label %53

53:                                               ; preds = %51, %32
  %54 = phi i64 [ %48, %51 ], [ %37, %32 ]
  %55 = phi i1 [ %52, %51 ], [ %31, %32 ]
  %56 = trunc i64 %54 to i32
  br i1 %55, label %57, label %101

57:                                               ; preds = %53
  %58 = load ptr, ptr %1, align 8, !tbaa !45
  %59 = shl i64 %54, 32
  %60 = ashr exact i64 %59, 32
  %61 = getelementptr inbounds %struct.CustomDataLayer, ptr %58, i64 %60
  %62 = load i32, ptr %61, align 8, !tbaa !46
  %63 = load ptr, ptr %0, align 8, !tbaa !45
  %64 = getelementptr inbounds %struct.CustomDataLayer, ptr %63, i64 %28
  %65 = load i32, ptr %64, align 8, !tbaa !46
  %66 = icmp eq i32 %62, %65
  br i1 %66, label %67, label %95

67:                                               ; preds = %57
  %68 = getelementptr inbounds %struct.CustomDataLayer, ptr %58, i64 %60, i32 8
  %69 = getelementptr inbounds %struct.CustomDataLayer, ptr %63, i64 %28, i32 8
  %70 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %68, ptr noundef nonnull dereferenceable(1) %69) #26
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %95

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.CustomDataLayer, ptr %63, i64 %28, i32 1
  %74 = load i32, ptr %73, align 4, !tbaa !72
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, ptr %2, i64 %75
  %77 = load ptr, ptr %3, align 8, !tbaa !34
  %78 = getelementptr inbounds %struct.CustomDataLayer, ptr %58, i64 %60, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !72
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, ptr %77, i64 %80
  %82 = icmp ugt i32 %65, 40
  %83 = zext nneg i32 %65 to i64
  %84 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %83
  %85 = select i1 %82, ptr null, ptr %84
  %86 = getelementptr inbounds %struct.LayerTypeInfo, ptr %85, i64 0, i32 4
  %87 = load ptr, ptr %86, align 8, !tbaa !62
  %88 = icmp eq ptr %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %72
  tail call void %87(ptr noundef %76, ptr noundef %81, i32 noundef 1) #25
  br label %93

90:                                               ; preds = %72
  %91 = load i32, ptr %85, align 8, !tbaa !61
  %92 = sext i32 %91 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %81, ptr align 1 %76, i64 %92, i1 false)
  br label %93

93:                                               ; preds = %90, %89
  %94 = add nsw i32 %56, 1
  br label %95

95:                                               ; preds = %57, %67, %93
  %96 = phi i32 [ %94, %93 ], [ %56, %67 ], [ %56, %57 ]
  %97 = add nuw nsw i64 %28, 1
  %98 = load i32, ptr %22, align 4, !tbaa !43
  %99 = sext i32 %98 to i64
  %100 = icmp slt i64 %97, %99
  br i1 %100, label %27, label %101, !llvm.loop !135

101:                                              ; preds = %53, %95, %27, %46, %21
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CustomData_bmesh_free_block(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #5 {
  %3 = load ptr, ptr %1, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %47, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !43
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %38

9:                                                ; preds = %5, %33
  %10 = phi i64 [ %34, %33 ], [ 0, %5 ]
  %11 = load ptr, ptr %0, align 8, !tbaa !45
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %11, i64 %10, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !56
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.CustomDataLayer, ptr %11, i64 %10
  %18 = load i32, ptr %17, align 8, !tbaa !46
  %19 = icmp ugt i32 %18, 40
  %20 = zext nneg i32 %18 to i64
  %21 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %20
  %22 = select i1 %19, ptr null, ptr %21
  %23 = getelementptr inbounds %struct.LayerTypeInfo, ptr %22, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !77
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.CustomDataLayer, ptr %11, i64 %10, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !72
  %29 = load ptr, ptr %1, align 8, !tbaa !34
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, ptr %29, i64 %30
  %32 = load i32, ptr %22, align 8, !tbaa !61
  tail call void %24(ptr noundef %31, i32 noundef 1, i32 noundef %32) #25
  br label %33

33:                                               ; preds = %9, %26, %16
  %34 = add nuw nsw i64 %10, 1
  %35 = load i32, ptr %6, align 4, !tbaa !43
  %36 = sext i32 %35 to i64
  %37 = icmp slt i64 %34, %36
  br i1 %37, label %9, label %38, !llvm.loop !128

38:                                               ; preds = %33, %5
  %39 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 4
  %40 = load i32, ptr %39, align 4, !tbaa !74
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !114
  %45 = load ptr, ptr %1, align 8, !tbaa !34
  tail call void @BLI_mempool_free(ptr noundef %44, ptr noundef %45) #25
  br label %46

46:                                               ; preds = %42, %38
  store ptr null, ptr %1, align 8, !tbaa !34
  br label %47

47:                                               ; preds = %2, %46
  ret void
}

declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #8

declare void @BLI_mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @CustomData_bmesh_free_block_data(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %42, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !43
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %36

8:                                                ; preds = %4, %31
  %9 = phi i64 [ %32, %31 ], [ 0, %4 ]
  %10 = load ptr, ptr %0, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.CustomDataLayer, ptr %10, i64 %9, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !56
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.CustomDataLayer, ptr %10, i64 %9
  %17 = load i32, ptr %16, align 8, !tbaa !46
  %18 = icmp ugt i32 %17, 40
  %19 = zext nneg i32 %17 to i64
  %20 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %19
  %21 = select i1 %18, ptr null, ptr %20
  %22 = getelementptr inbounds %struct.LayerTypeInfo, ptr %21, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !77
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.CustomDataLayer, ptr %10, i64 %9, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !72
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %1, i64 %28
  %30 = load i32, ptr %21, align 8, !tbaa !61
  tail call void %23(ptr noundef nonnull %29, i32 noundef 1, i32 noundef %30) #25
  br label %31

31:                                               ; preds = %8, %25, %15
  %32 = add nuw nsw i64 %9, 1
  %33 = load i32, ptr %5, align 4, !tbaa !43
  %34 = sext i32 %33 to i64
  %35 = icmp slt i64 %32, %34
  br i1 %35, label %8, label %36, !llvm.loop !136

36:                                               ; preds = %31, %4
  %37 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 4
  %38 = load i32, ptr %37, align 4, !tbaa !74
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = sext i32 %38 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 0, i64 %41, i1 false)
  br label %42

42:                                               ; preds = %36, %40, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @CustomData_bmesh_get(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) local_unnamed_addr #10 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !41
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8, !tbaa !45
  %10 = sext i32 %6 to i64
  %11 = getelementptr inbounds %struct.CustomDataLayer, ptr %9, i64 %10, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !52
  %13 = add nsw i32 %12, %6
  br label %14

14:                                               ; preds = %3, %8
  %15 = phi i32 [ %13, %8 ], [ -1, %3 ]
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %0, align 8, !tbaa !45
  %19 = sext i32 %15 to i64
  %20 = getelementptr inbounds %struct.CustomDataLayer, ptr %18, i64 %19, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !72
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, ptr %1, i64 %22
  br label %24

24:                                               ; preds = %14, %17
  %25 = phi ptr [ %23, %17 ], [ null, %14 ]
  ret ptr %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @CustomData_bmesh_get_n(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #10 {
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !41
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 8, !tbaa !45
  %11 = add nsw i32 %7, %3
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.CustomDataLayer, ptr %10, i64 %12, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !72
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %1, i64 %15
  br label %17

17:                                               ; preds = %4, %9
  %18 = phi ptr [ %16, %9 ], [ null, %4 ]
  ret ptr %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @CustomData_bmesh_get_layer_n(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) local_unnamed_addr #10 {
  %4 = icmp slt i32 %2, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !43
  %8 = icmp sgt i32 %7, %2
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !45
  %11 = zext nneg i32 %2 to i64
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %10, i64 %11, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !72
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %1, i64 %14
  br label %16

16:                                               ; preds = %3, %5, %9
  %17 = phi ptr [ %15, %9 ], [ null, %5 ], [ null, %3 ]
  ret ptr %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @CustomData_layer_has_math(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = load ptr, ptr %0, align 8, !tbaa !45
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.CustomDataLayer, ptr %3, i64 %4
  %6 = load i32, ptr %5, align 8, !tbaa !46
  %7 = icmp ugt i32 %6, 40
  %8 = zext nneg i32 %6 to i64
  %9 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %8
  %10 = select i1 %7, ptr null, ptr %9
  %11 = getelementptr inbounds %struct.LayerTypeInfo, ptr %10, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !137
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.LayerTypeInfo, ptr %10, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !138
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.LayerTypeInfo, ptr %10, i64 0, i32 10
  %20 = load ptr, ptr %19, align 8, !tbaa !139
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.LayerTypeInfo, ptr %10, i64 0, i32 11
  %24 = load ptr, ptr %23, align 8, !tbaa !140
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.LayerTypeInfo, ptr %10, i64 0, i32 13
  %28 = load ptr, ptr %27, align 8, !tbaa !141
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %22, %18, %14, %2
  br label %31

31:                                               ; preds = %26, %30
  %32 = phi i8 [ 0, %30 ], [ 1, %26 ]
  ret i8 %32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @CustomData_layer_has_interp(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = load ptr, ptr %0, align 8, !tbaa !45
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.CustomDataLayer, ptr %3, i64 %4
  %6 = load i32, ptr %5, align 8, !tbaa !46
  %7 = icmp ugt i32 %6, 40
  %8 = zext nneg i32 %6 to i64
  %9 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %8
  %10 = select i1 %7, ptr null, ptr %9
  %11 = getelementptr inbounds %struct.LayerTypeInfo, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !101
  %13 = icmp ne ptr %12, null
  %14 = zext i1 %13 to i8
  ret i8 %14
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @CustomData_has_math(ptr nocapture noundef readonly %0) local_unnamed_addr #14 {
  %2 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !43
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %38

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !45
  %7 = zext nneg i32 %3 to i64
  br label %8

8:                                                ; preds = %5, %35
  %9 = phi i64 [ 0, %5 ], [ %36, %35 ]
  %10 = getelementptr inbounds %struct.CustomDataLayer, ptr %6, i64 %9
  %11 = load i32, ptr %10, align 8, !tbaa !46
  %12 = icmp ugt i32 %11, 40
  %13 = zext nneg i32 %11 to i64
  %14 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %13
  %15 = select i1 %12, ptr null, ptr %14
  %16 = getelementptr inbounds %struct.LayerTypeInfo, ptr %15, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !137
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.LayerTypeInfo, ptr %15, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !138
  %22 = icmp eq ptr %21, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.LayerTypeInfo, ptr %15, i64 0, i32 10
  %25 = load ptr, ptr %24, align 8, !tbaa !139
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.LayerTypeInfo, ptr %15, i64 0, i32 11
  %29 = load ptr, ptr %28, align 8, !tbaa !140
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.LayerTypeInfo, ptr %15, i64 0, i32 13
  %33 = load ptr, ptr %32, align 8, !tbaa !141
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %27, %23, %19, %8
  %36 = add nuw nsw i64 %9, 1
  %37 = icmp eq i64 %36, %7
  br i1 %37, label %38, label %8, !llvm.loop !142

38:                                               ; preds = %35, %31, %1
  %39 = phi i8 [ 0, %1 ], [ 0, %35 ], [ 1, %31 ]
  ret i8 %39
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @CustomData_bmesh_has_free(ptr nocapture noundef readonly %0) local_unnamed_addr #14 {
  %2 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !43
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %27

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !45
  %7 = zext nneg i32 %3 to i64
  br label %8

8:                                                ; preds = %5, %24
  %9 = phi i64 [ 0, %5 ], [ %25, %24 ]
  %10 = getelementptr inbounds %struct.CustomDataLayer, ptr %6, i64 %9, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !56
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.CustomDataLayer, ptr %6, i64 %9
  %16 = load i32, ptr %15, align 8, !tbaa !46
  %17 = icmp ugt i32 %16, 40
  %18 = zext nneg i32 %16 to i64
  %19 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %18
  %20 = select i1 %17, ptr null, ptr %19
  %21 = getelementptr inbounds %struct.LayerTypeInfo, ptr %20, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !77
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %8, %14
  %25 = add nuw nsw i64 %9, 1
  %26 = icmp eq i64 %25, %7
  br i1 %26, label %27, label %8, !llvm.loop !143

27:                                               ; preds = %14, %24, %1
  %28 = phi i8 [ 0, %1 ], [ 1, %14 ], [ 0, %24 ]
  ret i8 %28
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @CustomData_has_interp(ptr nocapture noundef readonly %0) local_unnamed_addr #14 {
  %2 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !43
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %22

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !45
  %7 = zext nneg i32 %3 to i64
  br label %11

8:                                                ; preds = %11
  %9 = add nuw nsw i64 %12, 1
  %10 = icmp eq i64 %9, %7
  br i1 %10, label %22, label %11, !llvm.loop !144

11:                                               ; preds = %5, %8
  %12 = phi i64 [ 0, %5 ], [ %9, %8 ]
  %13 = getelementptr inbounds %struct.CustomDataLayer, ptr %6, i64 %12
  %14 = load i32, ptr %13, align 8, !tbaa !46
  %15 = icmp ugt i32 %14, 40
  %16 = zext nneg i32 %14 to i64
  %17 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %16
  %18 = select i1 %15, ptr null, ptr %17
  %19 = getelementptr inbounds %struct.LayerTypeInfo, ptr %18, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !101
  %21 = icmp eq ptr %20, null
  br i1 %21, label %8, label %22

22:                                               ; preds = %11, %8, %1
  %23 = phi i8 [ 0, %1 ], [ 1, %11 ], [ 0, %8 ]
  ret i8 %23
}

; Function Attrs: nounwind uwtable
define dso_local void @CustomData_data_copy_value(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 {
  %4 = icmp ugt i32 %0, 40
  %5 = zext nneg i32 %0 to i64
  %6 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %5
  %7 = select i1 %4, ptr null, ptr %6
  %8 = icmp eq ptr %2, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.LayerTypeInfo, ptr %7, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !145
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void %11(ptr noundef %1, ptr noundef nonnull %2) #25
  br label %17

14:                                               ; preds = %9
  %15 = load i32, ptr %7, align 8, !tbaa !61
  %16 = sext i32 %15 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2, ptr align 1 %1, i64 %16, i1 false)
  br label %17

17:                                               ; preds = %13, %14, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @CustomData_data_equals(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 {
  %4 = icmp ugt i32 %0, 40
  %5 = zext nneg i32 %0 to i64
  %6 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %5
  %7 = select i1 %4, ptr null, ptr %6
  %8 = getelementptr inbounds %struct.LayerTypeInfo, ptr %7, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !137
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = tail call zeroext i8 %9(ptr noundef %1, ptr noundef %2) #25
  br label %19

13:                                               ; preds = %3
  %14 = load i32, ptr %7, align 8, !tbaa !61
  %15 = sext i32 %14 to i64
  %16 = tail call i32 @bcmp(ptr %1, ptr %2, i64 %15)
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %13, %11
  %20 = phi i8 [ %12, %11 ], [ %18, %13 ]
  ret i8 %20
}

; Function Attrs: nounwind uwtable
define dso_local void @CustomData_data_initminmax(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 {
  %4 = icmp ugt i32 %0, 40
  %5 = zext nneg i32 %0 to i64
  %6 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %5
  %7 = select i1 %4, ptr null, ptr %6
  %8 = getelementptr inbounds %struct.LayerTypeInfo, ptr %7, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !140
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  tail call void %9(ptr noundef %1, ptr noundef %2) #25
  br label %12

12:                                               ; preds = %11, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CustomData_data_dominmax(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 {
  %5 = icmp ugt i32 %0, 40
  %6 = zext nneg i32 %0 to i64
  %7 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %6
  %8 = select i1 %5, ptr null, ptr %7
  %9 = getelementptr inbounds %struct.LayerTypeInfo, ptr %8, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !141
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  tail call void %10(ptr noundef %1, ptr noundef %2, ptr noundef %3) #25
  br label %13

13:                                               ; preds = %12, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CustomData_data_multiply(i32 noundef %0, ptr noundef %1, float noundef %2) local_unnamed_addr #5 {
  %4 = icmp ugt i32 %0, 40
  %5 = zext nneg i32 %0 to i64
  %6 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %5
  %7 = select i1 %4, ptr null, ptr %6
  %8 = getelementptr inbounds %struct.LayerTypeInfo, ptr %7, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !139
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  tail call void %9(ptr noundef %1, float noundef %2) #25
  br label %12

12:                                               ; preds = %11, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CustomData_data_add(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 {
  %4 = icmp ugt i32 %0, 40
  %5 = zext nneg i32 %0 to i64
  %6 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %5
  %7 = select i1 %4, ptr null, ptr %6
  %8 = getelementptr inbounds %struct.LayerTypeInfo, ptr %7, i64 0, i32 12
  %9 = load ptr, ptr %8, align 8, !tbaa !138
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  tail call void %9(ptr noundef %1, ptr noundef %2) #25
  br label %12

12:                                               ; preds = %11, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CustomData_bmesh_set(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #5 {
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !41
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %15, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 8, !tbaa !45
  %11 = sext i32 %7 to i64
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %10, i64 %11, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !52
  %14 = add nsw i32 %13, %7
  br label %15

15:                                               ; preds = %9, %4
  %16 = phi i32 [ %14, %9 ], [ -1, %4 ]
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %0, align 8, !tbaa !45
  %20 = sext i32 %16 to i64
  %21 = getelementptr inbounds %struct.CustomDataLayer, ptr %19, i64 %20, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !72
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %1, i64 %23
  br label %25

25:                                               ; preds = %15, %18
  %26 = phi ptr [ %24, %18 ], [ null, %15 ]
  %27 = icmp ugt i32 %2, 40
  %28 = zext nneg i32 %2 to i64
  %29 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %28
  %30 = select i1 %27, ptr null, ptr %29
  %31 = icmp eq ptr %26, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.LayerTypeInfo, ptr %30, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !62
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void %34(ptr noundef %3, ptr noundef nonnull %26, i32 noundef 1) #25
  br label %40

37:                                               ; preds = %32
  %38 = load i32, ptr %30, align 8, !tbaa !61
  %39 = sext i32 %38 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %26, ptr align 1 %3, i64 %39, i1 false)
  br label %40

40:                                               ; preds = %36, %37, %25
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CustomData_bmesh_set_n(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #5 {
  %6 = sext i32 %2 to i64
  %7 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !41
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %0, align 8, !tbaa !45
  %12 = add nsw i32 %8, %3
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.CustomDataLayer, ptr %11, i64 %13, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !72
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %1, i64 %16
  br label %18

18:                                               ; preds = %5, %10
  %19 = phi ptr [ %17, %10 ], [ null, %5 ]
  %20 = icmp ugt i32 %2, 40
  %21 = zext nneg i32 %2 to i64
  %22 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %21
  %23 = select i1 %20, ptr null, ptr %22
  %24 = icmp eq ptr %19, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.LayerTypeInfo, ptr %23, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !62
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void %27(ptr noundef %4, ptr noundef nonnull %19, i32 noundef 1) #25
  br label %33

30:                                               ; preds = %25
  %31 = load i32, ptr %23, align 8, !tbaa !61
  %32 = sext i32 %31 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %19, ptr align 1 %4, i64 %32, i1 false)
  br label %33

33:                                               ; preds = %29, %30, %18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CustomData_bmesh_set_layer_n(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #5 {
  %5 = icmp slt i32 %2, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !43
  %9 = icmp sgt i32 %8, %2
  br i1 %9, label %10, label %17

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !45
  %12 = zext nneg i32 %2 to i64
  %13 = getelementptr inbounds %struct.CustomDataLayer, ptr %11, i64 %12, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !72
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %1, i64 %15
  br label %17

17:                                               ; preds = %4, %6, %10
  %18 = phi ptr [ %16, %10 ], [ null, %6 ], [ null, %4 ]
  %19 = load ptr, ptr %0, align 8, !tbaa !45
  %20 = sext i32 %2 to i64
  %21 = getelementptr inbounds %struct.CustomDataLayer, ptr %19, i64 %20
  %22 = load i32, ptr %21, align 8, !tbaa !46
  %23 = icmp ugt i32 %22, 40
  %24 = zext nneg i32 %22 to i64
  %25 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %24
  %26 = select i1 %23, ptr null, ptr %25
  %27 = icmp eq ptr %18, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.LayerTypeInfo, ptr %26, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !62
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void %30(ptr noundef %3, ptr noundef nonnull %18, i32 noundef 1) #25
  br label %36

33:                                               ; preds = %28
  %34 = load i32, ptr %26, align 8, !tbaa !61
  %35 = sext i32 %34 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %18, ptr align 1 %3, i64 %35, i1 false)
  br label %36

36:                                               ; preds = %32, %33, %17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CustomData_bmesh_interp_n(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #5 {
  %8 = load ptr, ptr %0, align 8, !tbaa !45
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 8, !tbaa !46
  %12 = icmp ugt i32 %11, 40
  %13 = zext nneg i32 %11 to i64
  %14 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %13
  %15 = select i1 %12, ptr null, ptr %14
  %16 = getelementptr inbounds %struct.LayerTypeInfo, ptr %15, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !101
  %18 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %9, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !72
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %5, i64 %20
  tail call void %17(ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %21) #25
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CustomData_bmesh_interp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #5 {
  %7 = alloca [100 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %7) #25
  %8 = icmp sgt i32 %4, 100
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %11 = zext nneg i32 %4 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = tail call ptr %10(i64 noundef %12, ptr noundef nonnull @.str.3) #25
  br label %14

14:                                               ; preds = %9, %6
  %15 = phi ptr [ %13, %9 ], [ %7, %6 ]
  %16 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !43
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %66

19:                                               ; preds = %14
  %20 = icmp sgt i32 %4, 0
  %21 = zext nneg i32 %4 to i64
  br label %22

22:                                               ; preds = %19, %61
  %23 = phi i64 [ 0, %19 ], [ %62, %61 ]
  %24 = load ptr, ptr %0, align 8, !tbaa !45
  %25 = getelementptr inbounds %struct.CustomDataLayer, ptr %24, i64 %23
  %26 = load i32, ptr %25, align 8, !tbaa !46
  %27 = icmp ugt i32 %26, 40
  %28 = zext nneg i32 %26 to i64
  %29 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %28
  %30 = select i1 %27, ptr null, ptr %29
  %31 = getelementptr inbounds %struct.LayerTypeInfo, ptr %30, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !101
  %33 = icmp eq ptr %32, null
  br i1 %33, label %61, label %34

34:                                               ; preds = %22
  br i1 %20, label %35, label %47

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.CustomDataLayer, ptr %24, i64 %23, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !72
  %38 = sext i32 %37 to i64
  br label %39

39:                                               ; preds = %35, %39
  %40 = phi i64 [ 0, %35 ], [ %45, %39 ]
  %41 = getelementptr inbounds ptr, ptr %1, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !34
  %43 = getelementptr inbounds i8, ptr %42, i64 %38
  %44 = getelementptr inbounds ptr, ptr %15, i64 %40
  store ptr %43, ptr %44, align 8, !tbaa !34
  %45 = add nuw nsw i64 %40, 1
  %46 = icmp eq i64 %45, %21
  br i1 %46, label %47, label %39, !llvm.loop !146

47:                                               ; preds = %39, %34
  %48 = load ptr, ptr %0, align 8, !tbaa !45
  %49 = getelementptr inbounds %struct.CustomDataLayer, ptr %48, i64 %23
  %50 = load i32, ptr %49, align 8, !tbaa !46
  %51 = icmp ugt i32 %50, 40
  %52 = zext nneg i32 %50 to i64
  %53 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %52
  %54 = select i1 %51, ptr null, ptr %53
  %55 = getelementptr inbounds %struct.LayerTypeInfo, ptr %54, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !101
  %57 = getelementptr inbounds %struct.CustomDataLayer, ptr %48, i64 %23, i32 1
  %58 = load i32, ptr %57, align 4, !tbaa !72
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, ptr %5, i64 %59
  call void %56(ptr noundef %15, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %60) #25
  br label %61

61:                                               ; preds = %47, %22
  %62 = add nuw nsw i64 %23, 1
  %63 = load i32, ptr %16, align 4, !tbaa !43
  %64 = sext i32 %63 to i64
  %65 = icmp slt i64 %62, %64
  br i1 %65, label %22, label %66, !llvm.loop !147

66:                                               ; preds = %61, %14
  br i1 %8, label %67, label %69

67:                                               ; preds = %66
  %68 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %68(ptr noundef %15) #25
  br label %69

69:                                               ; preds = %67, %66
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %7) #25
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CustomData_bmesh_set_default(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #5 {
  %3 = load ptr, ptr %1, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %15

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !74
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !114
  %12 = tail call ptr @BLI_mempool_alloc(ptr noundef %11) #25
  br label %13

13:                                               ; preds = %5, %9
  %14 = phi ptr [ %12, %9 ], [ null, %5 ]
  store ptr %14, ptr %1, align 8, !tbaa !34
  br label %15

15:                                               ; preds = %13, %2
  %16 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !43
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %15, %40
  %20 = phi i64 [ %41, %40 ], [ 0, %15 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !45
  %22 = getelementptr inbounds %struct.CustomDataLayer, ptr %21, i64 %20
  %23 = getelementptr inbounds %struct.CustomDataLayer, ptr %21, i64 %20, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !72
  %25 = load i32, ptr %22, align 8, !tbaa !46
  %26 = icmp ugt i32 %25, 40
  %27 = zext nneg i32 %25 to i64
  %28 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %27
  %29 = select i1 %26, ptr null, ptr %28
  %30 = getelementptr inbounds %struct.LayerTypeInfo, ptr %29, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !63
  %32 = icmp eq ptr %31, null
  %33 = load ptr, ptr %1, align 8, !tbaa !34
  %34 = sext i32 %24 to i64
  %35 = getelementptr inbounds i8, ptr %33, i64 %34
  br i1 %32, label %37, label %36

36:                                               ; preds = %19
  tail call void %31(ptr noundef %35, i32 noundef 1) #25
  br label %40

37:                                               ; preds = %19
  %38 = load i32, ptr %29, align 8, !tbaa !61
  %39 = sext i32 %38 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %35, i8 0, i64 %39, i1 false)
  br label %40

40:                                               ; preds = %36, %37
  %41 = add nuw nsw i64 %20, 1
  %42 = load i32, ptr %16, align 4, !tbaa !43
  %43 = sext i32 %42 to i64
  %44 = icmp slt i64 %41, %43
  br i1 %44, label %19, label %45, !llvm.loop !148

45:                                               ; preds = %40, %15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CustomData_to_bmesh_block(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3, i8 noundef zeroext %4) local_unnamed_addr #5 {
  %6 = load ptr, ptr %3, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !74
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !114
  %15 = tail call ptr @BLI_mempool_alloc(ptr noundef %14) #25
  br label %16

16:                                               ; preds = %8, %12
  %17 = phi ptr [ %15, %12 ], [ null, %8 ]
  store ptr %17, ptr %3, align 8, !tbaa !34
  br label %18

18:                                               ; preds = %16, %5
  %19 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !43
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %119

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 2
  %24 = icmp eq i8 %4, 0
  br label %25

25:                                               ; preds = %22, %111
  %26 = phi i64 [ 0, %22 ], [ %113, %111 ]
  %27 = phi i32 [ 0, %22 ], [ %112, %111 ]
  %28 = load i32, ptr %23, align 4, !tbaa !43
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %119

30:                                               ; preds = %25
  %31 = sext i32 %27 to i64
  %32 = load ptr, ptr %1, align 8, !tbaa !45
  %33 = getelementptr inbounds %struct.CustomDataLayer, ptr %32, i64 %31
  %34 = load i32, ptr %33, align 8, !tbaa !46
  %35 = load ptr, ptr %0, align 8, !tbaa !45
  %36 = getelementptr inbounds %struct.CustomDataLayer, ptr %35, i64 %26
  %37 = load i32, ptr %36, align 8, !tbaa !46
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %47, label %73

39:                                               ; preds = %68
  %40 = load ptr, ptr %1, align 8, !tbaa !45
  %41 = getelementptr inbounds %struct.CustomDataLayer, ptr %40, i64 %69
  %42 = load i32, ptr %41, align 8, !tbaa !46
  %43 = load ptr, ptr %0, align 8, !tbaa !45
  %44 = getelementptr inbounds %struct.CustomDataLayer, ptr %43, i64 %26
  %45 = load i32, ptr %44, align 8, !tbaa !46
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %73, !llvm.loop !149

47:                                               ; preds = %30, %39
  %48 = phi i32 [ %42, %39 ], [ %34, %30 ]
  %49 = phi ptr [ %40, %39 ], [ %32, %30 ]
  %50 = phi i64 [ %69, %39 ], [ %31, %30 ]
  br i1 %24, label %68, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.CustomDataLayer, ptr %49, i64 %50, i32 1
  %53 = load i32, ptr %52, align 4, !tbaa !72
  %54 = icmp ugt i32 %48, 40
  %55 = zext nneg i32 %48 to i64
  %56 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %55
  %57 = select i1 %54, ptr null, ptr %56
  %58 = getelementptr inbounds %struct.LayerTypeInfo, ptr %57, i64 0, i32 8
  %59 = load ptr, ptr %58, align 8, !tbaa !63
  %60 = icmp eq ptr %59, null
  %61 = load ptr, ptr %3, align 8, !tbaa !34
  %62 = sext i32 %53 to i64
  %63 = getelementptr inbounds i8, ptr %61, i64 %62
  br i1 %60, label %65, label %64

64:                                               ; preds = %51
  tail call void %59(ptr noundef %63, i32 noundef 1) #25
  br label %68

65:                                               ; preds = %51
  %66 = load i32, ptr %57, align 8, !tbaa !61
  %67 = sext i32 %66 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %63, i8 0, i64 %67, i1 false)
  br label %68

68:                                               ; preds = %65, %64, %47
  %69 = add nsw i64 %50, 1
  %70 = load i32, ptr %23, align 4, !tbaa !43
  %71 = sext i32 %70 to i64
  %72 = icmp slt i64 %69, %71
  br i1 %72, label %39, label %117, !llvm.loop !149

73:                                               ; preds = %39, %30
  %74 = phi i64 [ %31, %30 ], [ %69, %39 ]
  %75 = phi i1 [ %29, %30 ], [ %72, %39 ]
  %76 = trunc i64 %74 to i32
  br i1 %75, label %77, label %119

77:                                               ; preds = %73
  %78 = load ptr, ptr %1, align 8, !tbaa !45
  %79 = shl i64 %74, 32
  %80 = ashr exact i64 %79, 32
  %81 = getelementptr inbounds %struct.CustomDataLayer, ptr %78, i64 %80
  %82 = load i32, ptr %81, align 8, !tbaa !46
  %83 = load ptr, ptr %0, align 8, !tbaa !45
  %84 = getelementptr inbounds %struct.CustomDataLayer, ptr %83, i64 %26
  %85 = load i32, ptr %84, align 8, !tbaa !46
  %86 = icmp eq i32 %82, %85
  br i1 %86, label %87, label %111

87:                                               ; preds = %77
  %88 = getelementptr inbounds %struct.CustomDataLayer, ptr %78, i64 %80, i32 1
  %89 = load i32, ptr %88, align 4, !tbaa !72
  %90 = getelementptr inbounds %struct.CustomDataLayer, ptr %83, i64 %26, i32 9
  %91 = load ptr, ptr %90, align 8, !tbaa !58
  %92 = load ptr, ptr %3, align 8, !tbaa !34
  %93 = sext i32 %89 to i64
  %94 = getelementptr inbounds i8, ptr %92, i64 %93
  %95 = icmp ugt i32 %82, 40
  %96 = zext nneg i32 %82 to i64
  %97 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %96
  %98 = select i1 %95, ptr null, ptr %97
  %99 = load i32, ptr %98, align 8, !tbaa !61
  %100 = mul nsw i32 %99, %2
  %101 = getelementptr inbounds %struct.LayerTypeInfo, ptr %98, i64 0, i32 4
  %102 = load ptr, ptr %101, align 8, !tbaa !62
  %103 = icmp eq ptr %102, null
  %104 = sext i32 %100 to i64
  %105 = getelementptr inbounds i8, ptr %91, i64 %104
  br i1 %103, label %107, label %106

106:                                              ; preds = %87
  tail call void %102(ptr noundef %105, ptr noundef %94, i32 noundef 1) #25
  br label %109

107:                                              ; preds = %87
  %108 = sext i32 %99 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %94, ptr align 1 %105, i64 %108, i1 false)
  br label %109

109:                                              ; preds = %107, %106
  %110 = add nsw i32 %76, 1
  br label %111

111:                                              ; preds = %77, %109
  %112 = phi i32 [ %110, %109 ], [ %76, %77 ]
  %113 = add nuw nsw i64 %26, 1
  %114 = load i32, ptr %19, align 4, !tbaa !43
  %115 = sext i32 %114 to i64
  %116 = icmp slt i64 %113, %115
  br i1 %116, label %25, label %119, !llvm.loop !150

117:                                              ; preds = %68
  %118 = trunc i64 %69 to i32
  br label %119

119:                                              ; preds = %111, %73, %25, %117, %18
  %120 = phi i32 [ 0, %18 ], [ %118, %117 ], [ %76, %73 ], [ %112, %111 ], [ %27, %25 ]
  %121 = icmp eq i8 %4, 0
  br i1 %121, label %154, label %122

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 2
  %124 = load i32, ptr %123, align 4, !tbaa !43
  %125 = icmp slt i32 %120, %124
  br i1 %125, label %126, label %154

126:                                              ; preds = %122
  %127 = sext i32 %120 to i64
  br label %128

128:                                              ; preds = %126, %149
  %129 = phi i64 [ %127, %126 ], [ %150, %149 ]
  %130 = load ptr, ptr %1, align 8, !tbaa !45
  %131 = getelementptr inbounds %struct.CustomDataLayer, ptr %130, i64 %129
  %132 = getelementptr inbounds %struct.CustomDataLayer, ptr %130, i64 %129, i32 1
  %133 = load i32, ptr %132, align 4, !tbaa !72
  %134 = load i32, ptr %131, align 8, !tbaa !46
  %135 = icmp ugt i32 %134, 40
  %136 = zext nneg i32 %134 to i64
  %137 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %136
  %138 = select i1 %135, ptr null, ptr %137
  %139 = getelementptr inbounds %struct.LayerTypeInfo, ptr %138, i64 0, i32 8
  %140 = load ptr, ptr %139, align 8, !tbaa !63
  %141 = icmp eq ptr %140, null
  %142 = load ptr, ptr %3, align 8, !tbaa !34
  %143 = sext i32 %133 to i64
  %144 = getelementptr inbounds i8, ptr %142, i64 %143
  br i1 %141, label %146, label %145

145:                                              ; preds = %128
  tail call void %140(ptr noundef %144, i32 noundef 1) #25
  br label %149

146:                                              ; preds = %128
  %147 = load i32, ptr %138, align 8, !tbaa !61
  %148 = sext i32 %147 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %144, i8 0, i64 %148, i1 false)
  br label %149

149:                                              ; preds = %145, %146
  %150 = add nsw i64 %129, 1
  %151 = load i32, ptr %123, align 4, !tbaa !43
  %152 = sext i32 %151 to i64
  %153 = icmp slt i64 %150, %152
  br i1 %153, label %128, label %154, !llvm.loop !151

154:                                              ; preds = %149, %122, %119
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CustomData_from_bmesh_block(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !43
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %79

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 2
  br label %10

10:                                               ; preds = %8, %73
  %11 = phi i64 [ 0, %8 ], [ %75, %73 ]
  %12 = phi i32 [ 0, %8 ], [ %74, %73 ]
  %13 = load i32, ptr %9, align 4, !tbaa !43
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %79

15:                                               ; preds = %10
  %16 = load ptr, ptr %1, align 8, !tbaa !45
  %17 = load ptr, ptr %0, align 8, !tbaa !45
  %18 = getelementptr inbounds %struct.CustomDataLayer, ptr %17, i64 %11
  %19 = load i32, ptr %18, align 8, !tbaa !46
  %20 = sext i32 %12 to i64
  %21 = sext i32 %13 to i64
  %22 = getelementptr inbounds %struct.CustomDataLayer, ptr %16, i64 %20
  %23 = load i32, ptr %22, align 8, !tbaa !46
  %24 = icmp slt i32 %23, %19
  br i1 %24, label %29, label %36

25:                                               ; preds = %29
  %26 = getelementptr inbounds %struct.CustomDataLayer, ptr %16, i64 %31
  %27 = load i32, ptr %26, align 8, !tbaa !46
  %28 = icmp slt i32 %27, %19
  br i1 %28, label %29, label %34, !llvm.loop !152

29:                                               ; preds = %15, %25
  %30 = phi i64 [ %31, %25 ], [ %20, %15 ]
  %31 = add nsw i64 %30, 1
  %32 = trunc i64 %31 to i32
  %33 = icmp eq i32 %13, %32
  br i1 %33, label %79, label %25, !llvm.loop !152

34:                                               ; preds = %25
  %35 = icmp slt i64 %31, %21
  br label %36

36:                                               ; preds = %34, %15
  %37 = phi i64 [ %31, %34 ], [ %20, %15 ]
  %38 = phi i1 [ %35, %34 ], [ %14, %15 ]
  %39 = trunc i64 %37 to i32
  br i1 %38, label %40, label %79

40:                                               ; preds = %36
  %41 = load ptr, ptr %1, align 8, !tbaa !45
  %42 = shl i64 %37, 32
  %43 = ashr exact i64 %42, 32
  %44 = getelementptr inbounds %struct.CustomDataLayer, ptr %41, i64 %43
  %45 = load i32, ptr %44, align 8, !tbaa !46
  %46 = load ptr, ptr %0, align 8, !tbaa !45
  %47 = getelementptr inbounds %struct.CustomDataLayer, ptr %46, i64 %11
  %48 = load i32, ptr %47, align 8, !tbaa !46
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %50, label %73

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.CustomDataLayer, ptr %46, i64 %11, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !72
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, ptr %2, i64 %53
  %55 = getelementptr inbounds %struct.CustomDataLayer, ptr %41, i64 %43, i32 9
  %56 = load ptr, ptr %55, align 8, !tbaa !58
  %57 = icmp ugt i32 %45, 40
  %58 = zext nneg i32 %45 to i64
  %59 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %58
  %60 = select i1 %57, ptr null, ptr %59
  %61 = load i32, ptr %60, align 8, !tbaa !61
  %62 = mul nsw i32 %61, %3
  %63 = getelementptr inbounds %struct.LayerTypeInfo, ptr %60, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !62
  %65 = icmp eq ptr %64, null
  %66 = sext i32 %62 to i64
  %67 = getelementptr inbounds i8, ptr %56, i64 %66
  br i1 %65, label %69, label %68

68:                                               ; preds = %50
  tail call void %64(ptr noundef %54, ptr noundef %67, i32 noundef 1) #25
  br label %71

69:                                               ; preds = %50
  %70 = sext i32 %61 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %67, ptr align 1 %54, i64 %70, i1 false)
  br label %71

71:                                               ; preds = %69, %68
  %72 = add nsw i32 %39, 1
  br label %73

73:                                               ; preds = %40, %71
  %74 = phi i32 [ %72, %71 ], [ %39, %40 ]
  %75 = add nuw nsw i64 %11, 1
  %76 = load i32, ptr %5, align 4, !tbaa !43
  %77 = sext i32 %76 to i64
  %78 = icmp slt i64 %75, %77
  br i1 %78, label %10, label %79, !llvm.loop !153

79:                                               ; preds = %36, %73, %10, %29, %4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @CustomData_file_write_info(i32 noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #16 {
  %4 = icmp ugt i32 %0, 40
  %5 = zext nneg i32 %0 to i64
  %6 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %5
  %7 = select i1 %4, ptr null, ptr %6
  %8 = getelementptr inbounds %struct.LayerTypeInfo, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !154
  store ptr %9, ptr %1, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.LayerTypeInfo, ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !155
  store i32 %11, ptr %2, align 4, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @CustomData_sizeof(i32 noundef %0) local_unnamed_addr #0 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %2
  %4 = load i32, ptr %3, align 8, !tbaa !61
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local ptr @CustomData_layertype_name(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ugt i32 %0, 40
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [41 x ptr], ptr @LAYERTYPENAMES, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi ptr [ %6, %3 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @CustomData_layertype_is_singleton(i32 noundef %0) local_unnamed_addr #10 {
  %2 = icmp ugt i32 %0, 40
  %3 = zext nneg i32 %0 to i64
  %4 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %3
  %5 = select i1 %2, ptr null, ptr %4
  %6 = getelementptr inbounds %struct.LayerTypeInfo, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = icmp eq ptr %7, null
  %9 = zext i1 %8 to i8
  ret i8 %9
}

; Function Attrs: nounwind uwtable
define dso_local void @CustomData_set_layer_unique_name(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = alloca %struct.anon, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !45
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.CustomDataLayer, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 8, !tbaa !46
  %8 = icmp ugt i32 %7, 40
  %9 = zext nneg i32 %7 to i64
  %10 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %9
  %11 = select i1 %8, ptr null, ptr %10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #25
  store ptr %0, ptr %3, align 8, !tbaa !68
  %12 = load i32, ptr %6, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.anon, ptr %3, i64 0, i32 1
  store i32 %12, ptr %13, align 8, !tbaa !70
  %14 = getelementptr inbounds %struct.anon, ptr %3, i64 0, i32 2
  store i32 %1, ptr %14, align 4, !tbaa !71
  %15 = getelementptr inbounds %struct.LayerTypeInfo, ptr %11, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.CustomDataLayer, ptr %4, i64 %5, i32 8
  %20 = call zeroext i8 @BLI_uniquename_cb(ptr noundef nonnull @customdata_unique_check, ptr noundef nonnull %3, ptr noundef nonnull %16, i8 noundef zeroext 46, ptr noundef nonnull %19, i32 noundef 64) #25
  br label %21

21:                                               ; preds = %2, %18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #25
  ret void
}

declare zeroext i8 @BLI_uniquename_cb(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define internal noundef zeroext i8 @customdata_unique_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = load ptr, ptr %0, align 8, !tbaa !68
  %4 = getelementptr inbounds %struct.anon.2, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !70
  %6 = getelementptr inbounds %struct.CustomData, ptr %3, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !43
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %39

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.anon.2, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !71
  %12 = add i32 %5, -13
  %13 = icmp ult i32 %12, -3
  %14 = zext i32 %11 to i64
  %15 = zext nneg i32 %7 to i64
  br label %16

16:                                               ; preds = %9, %36
  %17 = phi i64 [ 0, %9 ], [ %37, %36 ]
  %18 = icmp eq i64 %17, %14
  br i1 %18, label %36, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %3, align 8, !tbaa !45
  %21 = getelementptr inbounds %struct.CustomDataLayer, ptr %20, i64 %17
  %22 = load i32, ptr %21, align 8, !tbaa !46
  br i1 %13, label %30, label %23

23:                                               ; preds = %19
  %24 = add i32 %22, -13
  %25 = icmp ult i32 %24, -3
  br i1 %25, label %36, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.CustomDataLayer, ptr %20, i64 %17, i32 8
  %28 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(1) %1) #26
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %39, label %36

30:                                               ; preds = %19
  %31 = icmp eq i32 %22, %5
  br i1 %31, label %32, label %36

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.CustomDataLayer, ptr %20, i64 %17, i32 8
  %34 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %33, ptr noundef nonnull dereferenceable(1) %1) #26
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32, %30, %26, %23, %16
  %37 = add nuw nsw i64 %17, 1
  %38 = icmp eq i64 %37, %15
  br i1 %38, label %39, label %16, !llvm.loop !156

39:                                               ; preds = %32, %26, %36, %2
  %40 = phi i8 [ 0, %2 ], [ 1, %32 ], [ 1, %26 ], [ 0, %36 ]
  ret i8 %40
}

; Function Attrs: nounwind uwtable
define dso_local void @CustomData_validate_layer_name(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 {
  %5 = load i8, ptr %2, align 1, !tbaa !67
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %30, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !43
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 8, !tbaa !45
  %13 = zext nneg i32 %9 to i64
  %14 = zext nneg i32 %9 to i64
  br label %15

15:                                               ; preds = %11, %25
  %16 = phi i64 [ 0, %11 ], [ %26, %25 ]
  %17 = phi i1 [ %10, %11 ], [ %27, %25 ]
  %18 = getelementptr inbounds %struct.CustomDataLayer, ptr %12, i64 %16
  %19 = load i32, ptr %18, align 8, !tbaa !46
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.CustomDataLayer, ptr %12, i64 %16, i32 8
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) %2) #26
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21, %15
  %26 = add nuw nsw i64 %16, 1
  %27 = icmp ult i64 %26, %13
  %28 = icmp eq i64 %26, %14
  br i1 %28, label %30, label %15, !llvm.loop !57

29:                                               ; preds = %21
  br i1 %17, label %46, label %30

30:                                               ; preds = %25, %7, %4, %29
  %31 = sext i32 %1 to i64
  %32 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !41
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %0, align 8, !tbaa !45
  %37 = sext i32 %33 to i64
  %38 = getelementptr inbounds %struct.CustomDataLayer, ptr %36, i64 %37, i32 3
  %39 = load i32, ptr %38, align 4, !tbaa !52
  %40 = add nsw i32 %39, %33
  %41 = sext i32 %40 to i64
  br label %42

42:                                               ; preds = %30, %35
  %43 = phi i64 [ %41, %35 ], [ -1, %30 ]
  %44 = load ptr, ptr %0, align 8, !tbaa !45
  %45 = getelementptr inbounds %struct.CustomDataLayer, ptr %44, i64 %43, i32 8
  br label %46

46:                                               ; preds = %29, %42
  %47 = phi ptr [ %45, %42 ], [ %2, %29 ]
  %48 = tail call ptr @BLI_strncpy(ptr noundef %3, ptr noundef nonnull %47, i64 noundef 64) #25
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @CustomData_verify_versions(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #12 {
  %3 = load ptr, ptr %0, align 8, !tbaa !45
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.CustomDataLayer, ptr %3, i64 %4
  %6 = load i32, ptr %5, align 8, !tbaa !46
  %7 = icmp sgt i32 %6, 40
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  %9 = icmp ugt i32 %6, 40
  %10 = zext nneg i32 %6 to i64
  %11 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %10
  %12 = select i1 %9, ptr null, ptr %11
  %13 = getelementptr inbounds %struct.LayerTypeInfo, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  %15 = icmp eq ptr %14, null
  %16 = icmp sgt i32 %1, 0
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %24

18:                                               ; preds = %8
  %19 = getelementptr %struct.CustomDataLayer, ptr %5, i64 -1
  %20 = load i32, ptr %19, align 8, !tbaa !46
  %21 = icmp eq i32 %20, %6
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i8
  br label %24

24:                                               ; preds = %18, %2, %8
  %25 = phi i1 [ false, %8 ], [ true, %2 ], [ %21, %18 ]
  %26 = phi i8 [ 1, %8 ], [ 0, %2 ], [ %23, %18 ]
  br i1 %25, label %27, label %50

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %29 = add nsw i32 %1, 1
  %30 = load i32, ptr %28, align 4, !tbaa !43
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = sext i32 %29 to i64
  br label %34

34:                                               ; preds = %32, %34
  %35 = phi i64 [ %33, %32 ], [ %41, %34 ]
  %36 = phi i32 [ %1, %32 ], [ %45, %34 ]
  %37 = load ptr, ptr %0, align 8, !tbaa !45
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds %struct.CustomDataLayer, ptr %37, i64 %38
  %40 = getelementptr inbounds %struct.CustomDataLayer, ptr %37, i64 %35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %39, ptr noundef nonnull align 8 dereferenceable(104) %40, i64 104, i1 false), !tbaa.struct !66
  %41 = add nsw i64 %35, 1
  %42 = load i32, ptr %28, align 4, !tbaa !43
  %43 = sext i32 %42 to i64
  %44 = icmp slt i64 %41, %43
  %45 = trunc i64 %35 to i32
  br i1 %44, label %34, label %46, !llvm.loop !157

46:                                               ; preds = %34, %27
  %47 = phi i32 [ %30, %27 ], [ %42, %34 ]
  %48 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %49 = add nsw i32 %47, -1
  store i32 %49, ptr %48, align 4, !tbaa !43
  br label %50

50:                                               ; preds = %46, %24
  ret i8 %26
}

; Function Attrs: nounwind uwtable
define dso_local void @CustomData_external_reload(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !43
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %41

8:                                                ; preds = %4, %36
  %9 = phi i64 [ %37, %36 ], [ 0, %4 ]
  %10 = load ptr, ptr %0, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.CustomDataLayer, ptr %10, i64 %9
  %12 = load i32, ptr %11, align 8, !tbaa !46
  %13 = icmp ugt i32 %12, 40
  %14 = zext nneg i32 %12 to i64
  %15 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %14
  %16 = select i1 %13, ptr null, ptr %15
  %17 = shl nuw i64 1, %14
  %18 = and i64 %17, %2
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.CustomDataLayer, ptr %10, i64 %9, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !56
  %23 = and i32 %22, 24
  %24 = icmp eq i32 %23, 24
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.LayerTypeInfo, ptr %16, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !77
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.CustomDataLayer, ptr %10, i64 %9, i32 9
  %31 = load ptr, ptr %30, align 8, !tbaa !58
  %32 = load i32, ptr %16, align 8, !tbaa !61
  tail call void %27(ptr noundef %31, i32 noundef %3, i32 noundef %32) #25
  br label %33

33:                                               ; preds = %29, %25
  %34 = load i32, ptr %21, align 8, !tbaa !56
  %35 = and i32 %34, -17
  store i32 %35, ptr %21, align 8, !tbaa !56
  br label %36

36:                                               ; preds = %8, %33, %20
  %37 = add nuw nsw i64 %9, 1
  %38 = load i32, ptr %5, align 4, !tbaa !43
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %8, label %41, !llvm.loop !158

41:                                               ; preds = %36, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CustomData_external_read(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = alloca [1024 x i8], align 16
  %6 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #25
  %8 = icmp eq ptr %7, null
  br i1 %8, label %122, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !43
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %48

13:                                               ; preds = %9
  %14 = load ptr, ptr %0, align 8, !tbaa !45
  %15 = add nsw i32 %11, -1
  %16 = zext i32 %15 to i64
  %17 = mul nuw nsw i64 %16, 104
  %18 = zext nneg i32 %11 to i64
  br label %19

19:                                               ; preds = %13, %41
  %20 = phi i64 [ 0, %13 ], [ %43, %41 ]
  %21 = phi i32 [ 0, %13 ], [ %42, %41 ]
  %22 = getelementptr inbounds %struct.CustomDataLayer, ptr %14, i64 %20
  %23 = load i32, ptr %22, align 8, !tbaa !46
  %24 = icmp ugt i32 %23, 40
  %25 = zext nneg i32 %23 to i64
  %26 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %25
  %27 = select i1 %24, ptr null, ptr %26
  %28 = shl nuw i64 1, %25
  %29 = and i64 %28, %2
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct.CustomDataLayer, ptr %14, i64 %20, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !56
  %34 = and i32 %33, 24
  %35 = icmp eq i32 %34, 8
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.LayerTypeInfo, ptr %27, i64 0, i32 15
  %38 = load ptr, ptr %37, align 8, !tbaa !159
  %39 = icmp eq ptr %38, null
  %40 = select i1 %39, i32 %21, i32 1
  br label %41

41:                                               ; preds = %36, %19, %31
  %42 = phi i32 [ %21, %31 ], [ %21, %19 ], [ %40, %36 ]
  %43 = add nuw nsw i64 %20, 1
  %44 = icmp eq i64 %43, %18
  br i1 %44, label %45, label %19, !llvm.loop !160

45:                                               ; preds = %41
  %46 = getelementptr i8, ptr %14, i64 %17
  %47 = icmp eq i32 %42, 0
  br label %48

48:                                               ; preds = %45, %9
  %49 = phi ptr [ undef, %9 ], [ %46, %45 ]
  %50 = phi i1 [ true, %9 ], [ %47, %45 ]
  %51 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  br i1 %50, label %122, label %52

52:                                               ; preds = %48
  %53 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %7, i64 noundef 1024) #25
  %54 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !161
  %56 = icmp eq ptr %55, null
  %57 = getelementptr inbounds %struct.Library, ptr %55, i64 0, i32 4
  %58 = load ptr, ptr @G, align 8
  %59 = getelementptr inbounds %struct.Main, ptr %58, i64 0, i32 2
  %60 = select i1 %56, ptr %59, ptr %57
  %61 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %5, ptr noundef nonnull %60) #25
  %62 = call ptr @cdf_create(i32 noundef 1) #25
  %63 = call i32 @cdf_read_open(ptr noundef %62, ptr noundef nonnull %5) #25
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %52
  %66 = load i32, ptr %51, align 4, !tbaa !43
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %79, label %121

68:                                               ; preds = %52
  %69 = load ptr, ptr @stderr, align 8, !tbaa !34
  %70 = load i32, ptr %49, align 8, !tbaa !46
  %71 = icmp ugt i32 %70, 40
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = zext nneg i32 %70 to i64
  %74 = getelementptr inbounds [41 x ptr], ptr @LAYERTYPENAMES, i64 0, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !34
  br label %76

76:                                               ; preds = %68, %72
  %77 = phi ptr [ %75, %72 ], [ null, %68 ]
  %78 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef nonnull @.str.4, ptr noundef %77, ptr noundef nonnull %5) #27
  br label %122

79:                                               ; preds = %65, %116
  %80 = phi i64 [ %117, %116 ], [ 0, %65 ]
  %81 = load ptr, ptr %0, align 8, !tbaa !45
  %82 = getelementptr inbounds %struct.CustomDataLayer, ptr %81, i64 %80
  %83 = load i32, ptr %82, align 8, !tbaa !46
  %84 = icmp ugt i32 %83, 40
  %85 = zext nneg i32 %83 to i64
  %86 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %85
  %87 = select i1 %84, ptr null, ptr %86
  %88 = shl nuw i64 1, %85
  %89 = and i64 %88, %2
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %116, label %91

91:                                               ; preds = %79
  %92 = getelementptr inbounds %struct.CustomDataLayer, ptr %81, i64 %80, i32 2
  %93 = load i32, ptr %92, align 8, !tbaa !56
  %94 = and i32 %93, 24
  %95 = icmp eq i32 %94, 8
  br i1 %95, label %96, label %116

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.LayerTypeInfo, ptr %87, i64 0, i32 15
  %98 = load ptr, ptr %97, align 8, !tbaa !159
  %99 = icmp eq ptr %98, null
  br i1 %99, label %116, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.CustomDataLayer, ptr %81, i64 %80, i32 8
  %102 = call ptr @cdf_layer_find(ptr noundef %62, i32 noundef %83, ptr noundef nonnull %101) #25
  %103 = icmp eq ptr %102, null
  br i1 %103, label %116, label %104

104:                                              ; preds = %100
  %105 = call i32 @cdf_read_layer(ptr noundef %62, ptr noundef nonnull %102) #25
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %121, label %107

107:                                              ; preds = %104
  %108 = load ptr, ptr %97, align 8, !tbaa !159
  %109 = getelementptr inbounds %struct.CustomDataLayer, ptr %81, i64 %80, i32 9
  %110 = load ptr, ptr %109, align 8, !tbaa !58
  %111 = call i32 %108(ptr noundef %62, ptr noundef %110, i32 noundef %3) #25
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %107
  %114 = load i32, ptr %92, align 8, !tbaa !56
  %115 = or i32 %114, 16
  store i32 %115, ptr %92, align 8, !tbaa !56
  br label %116

116:                                              ; preds = %79, %96, %113, %100, %91
  %117 = add nuw nsw i64 %80, 1
  %118 = load i32, ptr %51, align 4, !tbaa !43
  %119 = sext i32 %118 to i64
  %120 = icmp slt i64 %117, %119
  br i1 %120, label %79, label %121, !llvm.loop !163

121:                                              ; preds = %116, %107, %104, %65
  call void @cdf_read_close(ptr noundef %62) #25
  call void @cdf_free(ptr noundef %62) #25
  br label %122

122:                                              ; preds = %48, %4, %121, %76
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #25
  ret void
}

declare ptr @cdf_create(i32 noundef) local_unnamed_addr #8

declare i32 @cdf_read_open(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare ptr @cdf_layer_find(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

declare i32 @cdf_read_layer(ptr noundef, ptr noundef) local_unnamed_addr #8

declare void @cdf_read_close(ptr noundef) local_unnamed_addr #8

declare void @cdf_free(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @CustomData_external_write(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 {
  %6 = alloca [1024 x i8], align 16
  %7 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #25
  %9 = icmp eq ptr %8, null
  br i1 %9, label %185, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !43
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %10
  %15 = load ptr, ptr %0, align 8, !tbaa !45
  %16 = zext nneg i32 %12 to i64
  br label %17

17:                                               ; preds = %14, %39
  %18 = phi i64 [ 0, %14 ], [ %41, %39 ]
  %19 = phi i32 [ 0, %14 ], [ %40, %39 ]
  %20 = getelementptr inbounds %struct.CustomDataLayer, ptr %15, i64 %18
  %21 = load i32, ptr %20, align 8, !tbaa !46
  %22 = icmp ugt i32 %21, 40
  %23 = zext nneg i32 %21 to i64
  %24 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %23
  %25 = select i1 %22, ptr null, ptr %24
  %26 = shl nuw i64 1, %23
  %27 = and i64 %26, %2
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.CustomDataLayer, ptr %15, i64 %18, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !56
  %32 = and i32 %31, 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.LayerTypeInfo, ptr %25, i64 0, i32 16
  %36 = load ptr, ptr %35, align 8, !tbaa !164
  %37 = icmp eq ptr %36, null
  %38 = select i1 %37, i32 %19, i32 1
  br label %39

39:                                               ; preds = %34, %17, %29
  %40 = phi i32 [ %19, %29 ], [ %19, %17 ], [ %38, %34 ]
  %41 = add nuw nsw i64 %18, 1
  %42 = icmp eq i64 %41, %16
  br i1 %42, label %43, label %17, !llvm.loop !165

43:                                               ; preds = %39
  %44 = icmp eq i32 %40, 0
  br label %45

45:                                               ; preds = %43, %10
  %46 = phi i1 [ true, %10 ], [ %44, %43 ]
  %47 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  br i1 %46, label %185, label %48

48:                                               ; preds = %45
  tail call void @CustomData_external_read(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3)
  %49 = call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef nonnull %8, i64 noundef 1024) #25
  %50 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !161
  %52 = icmp eq ptr %51, null
  %53 = getelementptr inbounds %struct.Library, ptr %51, i64 0, i32 4
  %54 = load ptr, ptr @G, align 8
  %55 = getelementptr inbounds %struct.Main, ptr %54, i64 0, i32 2
  %56 = select i1 %52, ptr %55, ptr %53
  %57 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %6, ptr noundef nonnull %56) #25
  %58 = call ptr @cdf_create(i32 noundef 1) #25
  %59 = load i32, ptr %47, align 4, !tbaa !43
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %93

61:                                               ; preds = %48, %88
  %62 = phi i64 [ %89, %88 ], [ 0, %48 ]
  %63 = load ptr, ptr %0, align 8, !tbaa !45
  %64 = getelementptr inbounds %struct.CustomDataLayer, ptr %63, i64 %62
  %65 = load i32, ptr %64, align 8, !tbaa !46
  %66 = getelementptr inbounds %struct.CustomDataLayer, ptr %63, i64 %62, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !56
  %68 = and i32 %67, 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %88, label %70

70:                                               ; preds = %61
  %71 = icmp ugt i32 %65, 40
  %72 = zext nneg i32 %65 to i64
  %73 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %72
  %74 = select i1 %71, ptr null, ptr %73
  %75 = getelementptr inbounds %struct.LayerTypeInfo, ptr %74, i64 0, i32 17
  %76 = load ptr, ptr %75, align 8, !tbaa !166
  %77 = icmp eq ptr %76, null
  br i1 %77, label %88, label %78

78:                                               ; preds = %70
  %79 = and i32 %67, 16
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.CustomDataLayer, ptr %63, i64 %62, i32 8
  %83 = getelementptr inbounds %struct.CustomDataLayer, ptr %63, i64 %62, i32 9
  %84 = load ptr, ptr %83, align 8, !tbaa !58
  %85 = call i64 %76(ptr noundef %58, ptr noundef %84, i32 noundef %3) #25
  %86 = call ptr @cdf_layer_add(ptr noundef %58, i32 noundef %65, ptr noundef nonnull %82, i64 noundef %85) #25
  br label %88

87:                                               ; preds = %78
  call void @cdf_free(ptr noundef %58) #25
  br label %185

88:                                               ; preds = %61, %70, %81
  %89 = add nuw nsw i64 %62, 1
  %90 = load i32, ptr %47, align 4, !tbaa !43
  %91 = sext i32 %90 to i64
  %92 = icmp slt i64 %89, %91
  br i1 %92, label %61, label %93, !llvm.loop !167

93:                                               ; preds = %88, %48
  %94 = call i32 @cdf_write_open(ptr noundef %58, ptr noundef nonnull %6) #25
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i32, ptr %47, align 4, !tbaa !43
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %102, label %138

99:                                               ; preds = %93
  %100 = load ptr, ptr @stderr, align 8, !tbaa !34
  %101 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %100, ptr noundef nonnull @.str.5, ptr noundef nonnull %6) #27
  br label %185

102:                                              ; preds = %96, %130
  %103 = phi i64 [ %131, %130 ], [ 0, %96 ]
  %104 = load ptr, ptr %0, align 8, !tbaa !45
  %105 = getelementptr inbounds %struct.CustomDataLayer, ptr %104, i64 %103
  %106 = load i32, ptr %105, align 8, !tbaa !46
  %107 = getelementptr inbounds %struct.CustomDataLayer, ptr %104, i64 %103, i32 2
  %108 = load i32, ptr %107, align 8, !tbaa !56
  %109 = and i32 %108, 8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %130, label %111

111:                                              ; preds = %102
  %112 = icmp ugt i32 %106, 40
  %113 = zext nneg i32 %106 to i64
  %114 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %113
  %115 = select i1 %112, ptr null, ptr %114
  %116 = getelementptr inbounds %struct.LayerTypeInfo, ptr %115, i64 0, i32 16
  %117 = load ptr, ptr %116, align 8, !tbaa !164
  %118 = icmp eq ptr %117, null
  br i1 %118, label %130, label %119

119:                                              ; preds = %111
  %120 = getelementptr inbounds %struct.CustomDataLayer, ptr %104, i64 %103, i32 8
  %121 = call ptr @cdf_layer_find(ptr noundef %58, i32 noundef %106, ptr noundef nonnull %120) #25
  %122 = call i32 @cdf_write_layer(ptr noundef %58, ptr noundef %121) #25
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %135, label %124

124:                                              ; preds = %119
  %125 = load ptr, ptr %116, align 8, !tbaa !164
  %126 = getelementptr inbounds %struct.CustomDataLayer, ptr %104, i64 %103, i32 9
  %127 = load ptr, ptr %126, align 8, !tbaa !58
  %128 = call i32 %125(ptr noundef %58, ptr noundef %127, i32 noundef %3) #25
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %102, %111, %124
  %131 = add nuw nsw i64 %103, 1
  %132 = load i32, ptr %47, align 4, !tbaa !43
  %133 = sext i32 %132 to i64
  %134 = icmp slt i64 %131, %133
  br i1 %134, label %102, label %135, !llvm.loop !168

135:                                              ; preds = %119, %124, %130
  %136 = phi i64 [ %131, %130 ], [ %103, %124 ], [ %103, %119 ]
  %137 = trunc i64 %136 to i32
  br label %138

138:                                              ; preds = %135, %96
  %139 = phi i32 [ 0, %96 ], [ %137, %135 ]
  %140 = load i32, ptr %47, align 4, !tbaa !43
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %138
  %143 = load i32, ptr %47, align 4, !tbaa !43
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %184

145:                                              ; preds = %142
  %146 = icmp ne i32 %4, 0
  br label %150

147:                                              ; preds = %138
  %148 = load ptr, ptr @stderr, align 8, !tbaa !34
  %149 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %148, ptr noundef nonnull @.str.6, ptr noundef nonnull %6) #27
  call void @cdf_free(ptr noundef %58) #25
  br label %185

150:                                              ; preds = %145, %179
  %151 = phi i64 [ 0, %145 ], [ %180, %179 ]
  %152 = load ptr, ptr %0, align 8, !tbaa !45
  %153 = getelementptr inbounds %struct.CustomDataLayer, ptr %152, i64 %151
  %154 = load i32, ptr %153, align 8, !tbaa !46
  %155 = icmp ugt i32 %154, 40
  %156 = zext nneg i32 %154 to i64
  %157 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %156
  %158 = select i1 %155, ptr null, ptr %157
  %159 = getelementptr inbounds %struct.CustomDataLayer, ptr %152, i64 %151, i32 2
  %160 = load i32, ptr %159, align 8, !tbaa !56
  %161 = and i32 %160, 8
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %179, label %163

163:                                              ; preds = %150
  %164 = getelementptr inbounds %struct.LayerTypeInfo, ptr %158, i64 0, i32 16
  %165 = load ptr, ptr %164, align 8, !tbaa !164
  %166 = icmp ne ptr %165, null
  %167 = and i1 %146, %166
  br i1 %167, label %168, label %179

168:                                              ; preds = %163
  %169 = getelementptr inbounds %struct.LayerTypeInfo, ptr %158, i64 0, i32 5
  %170 = load ptr, ptr %169, align 8, !tbaa !77
  %171 = icmp eq ptr %170, null
  br i1 %171, label %176, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.CustomDataLayer, ptr %152, i64 %151, i32 9
  %174 = load ptr, ptr %173, align 8, !tbaa !58
  %175 = load i32, ptr %158, align 8, !tbaa !61
  call void %170(ptr noundef %174, i32 noundef %3, i32 noundef %175) #25
  br label %176

176:                                              ; preds = %172, %168
  %177 = load i32, ptr %159, align 8, !tbaa !56
  %178 = and i32 %177, -17
  store i32 %178, ptr %159, align 8, !tbaa !56
  br label %179

179:                                              ; preds = %150, %163, %176
  %180 = add nuw nsw i64 %151, 1
  %181 = load i32, ptr %47, align 4, !tbaa !43
  %182 = sext i32 %181 to i64
  %183 = icmp slt i64 %180, %182
  br i1 %183, label %150, label %184, !llvm.loop !169

184:                                              ; preds = %179, %142
  call void @cdf_write_close(ptr noundef %58) #25
  call void @cdf_free(ptr noundef %58) #25
  br label %185

185:                                              ; preds = %45, %5, %184, %147, %99, %87
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #25
  ret void
}

declare ptr @cdf_layer_add(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

declare i32 @cdf_write_open(ptr noundef, ptr noundef) local_unnamed_addr #8

declare i32 @cdf_write_layer(ptr noundef, ptr noundef) local_unnamed_addr #8

declare void @cdf_write_close(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @CustomData_external_add(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #5 {
  %6 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !41
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %18, label %12

12:                                               ; preds = %5
  %13 = load ptr, ptr %0, align 8, !tbaa !45
  %14 = sext i32 %10 to i64
  %15 = getelementptr inbounds %struct.CustomDataLayer, ptr %13, i64 %14, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !52
  %17 = add nsw i32 %16, %10
  br label %18

18:                                               ; preds = %5, %12
  %19 = phi i32 [ %17, %12 ], [ -1, %5 ]
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %38, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %0, align 8, !tbaa !45
  %23 = sext i32 %19 to i64
  %24 = getelementptr inbounds %struct.CustomDataLayer, ptr %22, i64 %23, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !56
  %26 = and i32 %25, 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %21
  %29 = icmp eq ptr %7, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %32 = tail call ptr %31(i64 noundef 1024, ptr noundef nonnull @.str.7) #25
  store ptr %32, ptr %6, align 8, !tbaa !75
  br label %33

33:                                               ; preds = %30, %28
  %34 = phi ptr [ %7, %28 ], [ %32, %30 ]
  %35 = tail call ptr @BLI_strncpy(ptr noundef %34, ptr noundef %4, i64 noundef 1024) #25
  %36 = load i32, ptr %24, align 8, !tbaa !56
  %37 = or i32 %36, 24
  store i32 %37, ptr %24, align 8, !tbaa !56
  br label %38

38:                                               ; preds = %21, %18, %33
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CustomData_external_remove(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !41
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %17, label %11

11:                                               ; preds = %4
  %12 = load ptr, ptr %0, align 8, !tbaa !45
  %13 = sext i32 %9 to i64
  %14 = getelementptr inbounds %struct.CustomDataLayer, ptr %12, i64 %13, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !52
  %16 = add nsw i32 %15, %9
  br label %17

17:                                               ; preds = %4, %11
  %18 = phi i32 [ %16, %11 ], [ -1, %4 ]
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %40, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %0, align 8, !tbaa !45
  %22 = sext i32 %18 to i64
  %23 = getelementptr inbounds %struct.CustomDataLayer, ptr %21, i64 %22
  %24 = icmp eq ptr %6, null
  br i1 %24, label %40, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.CustomDataLayer, ptr %21, i64 %22, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !56
  %28 = and i32 %27, 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %25
  %31 = and i32 %27, 16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, ptr %23, align 8, !tbaa !46
  %35 = zext nneg i32 %34 to i64
  %36 = shl nuw i64 1, %35
  tail call void @CustomData_external_read(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %36, i32 noundef %3)
  br label %37

37:                                               ; preds = %33, %30
  %38 = load i32, ptr %26, align 8, !tbaa !56
  %39 = and i32 %38, -9
  store i32 %39, ptr %26, align 8, !tbaa !56
  br label %40

40:                                               ; preds = %25, %37, %20, %17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @CustomData_external_test(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !41
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !45
  %9 = sext i32 %5 to i64
  %10 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %9, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !52
  %12 = add nsw i32 %11, %5
  br label %13

13:                                               ; preds = %2, %7
  %14 = phi i32 [ %12, %7 ], [ -1, %2 ]
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %24, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %0, align 8, !tbaa !45
  %18 = sext i32 %14 to i64
  %19 = getelementptr inbounds %struct.CustomDataLayer, ptr %17, i64 %18, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !56
  %21 = trunc i32 %20 to i8
  %22 = lshr i8 %21, 3
  %23 = and i8 %22, 1
  br label %24

24:                                               ; preds = %13, %16
  %25 = phi i8 [ %23, %16 ], [ 0, %13 ]
  ret i8 %25
}

; Function Attrs: nounwind uwtable
define internal void @layerCopy_mdeformvert(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) #5 {
  %4 = shl nsw i32 %2, 4
  %5 = sext i32 %4 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %0, i64 %5, i1 false)
  %6 = icmp sgt i32 %2, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %3
  %8 = zext nneg i32 %2 to i64
  br label %9

9:                                                ; preds = %7, %25
  %10 = phi i64 [ 0, %7 ], [ %27, %25 ]
  %11 = shl nsw i64 %10, 4
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  %13 = getelementptr inbounds %struct.MDeformVert, ptr %12, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !170
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %9
  %17 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %18 = sext i32 %14 to i64
  %19 = shl nsw i64 %18, 3
  %20 = tail call ptr %17(i64 noundef %19, ptr noundef nonnull @.str.89) #25
  %21 = load ptr, ptr %12, align 8, !tbaa !172
  %22 = load i32, ptr %13, align 8, !tbaa !170
  %23 = sext i32 %22 to i64
  %24 = shl nsw i64 %23, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %20, ptr align 4 %21, i64 %24, i1 false)
  br label %25

25:                                               ; preds = %9, %16
  %26 = phi ptr [ %20, %16 ], [ null, %9 ]
  store ptr %26, ptr %12, align 8, !tbaa !172
  %27 = add nuw nsw i64 %10, 1
  %28 = icmp eq i64 %27, %8
  br i1 %28, label %29, label %9, !llvm.loop !173

29:                                               ; preds = %25, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @layerFree_mdeformvert(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %3
  %6 = sext i32 %2 to i64
  %7 = zext nneg i32 %1 to i64
  br label %8

8:                                                ; preds = %5, %17
  %9 = phi i64 [ 0, %5 ], [ %18, %17 ]
  %10 = mul nsw i64 %9, %6
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !172
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %15(ptr noundef nonnull %12) #25
  store ptr null, ptr %11, align 8, !tbaa !172
  %16 = getelementptr inbounds %struct.MDeformVert, ptr %11, i64 0, i32 1
  store i32 0, ptr %16, align 8, !tbaa !170
  br label %17

17:                                               ; preds = %14, %8
  %18 = add nuw nsw i64 %9, 1
  %19 = icmp eq i64 %18, %7
  br i1 %19, label %20, label %8, !llvm.loop !174

20:                                               ; preds = %17, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @layerInterp_mdeformvert(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture readnone %2, i32 noundef %3, ptr nocapture noundef %4) #5 {
  %6 = icmp slt i32 %3, 1
  br i1 %6, label %101, label %7

7:                                                ; preds = %5
  %8 = icmp eq ptr %1, null
  %9 = zext nneg i32 %3 to i64
  br label %10

10:                                               ; preds = %7, %63
  %11 = phi i64 [ 0, %7 ], [ %66, %63 ]
  %12 = phi ptr [ null, %7 ], [ %65, %63 ]
  %13 = phi i32 [ 0, %7 ], [ %64, %63 ]
  %14 = getelementptr inbounds ptr, ptr %0, i64 %11
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  br i1 %8, label %19, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds float, ptr %1, i64 %11
  %18 = load float, ptr %17, align 4, !tbaa !175
  br label %19

19:                                               ; preds = %10, %16
  %20 = phi float [ %18, %16 ], [ 1.000000e+00, %10 ]
  %21 = getelementptr inbounds %struct.MDeformVert, ptr %15, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !170
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %63

24:                                               ; preds = %19
  %25 = load ptr, ptr %15, align 8, !tbaa !172
  %26 = zext nneg i32 %22 to i64
  br label %27

27:                                               ; preds = %24, %58
  %28 = phi i64 [ 0, %24 ], [ %61, %58 ]
  %29 = phi ptr [ %12, %24 ], [ %60, %58 ]
  %30 = phi i32 [ %13, %24 ], [ %59, %58 ]
  %31 = getelementptr inbounds %struct.MDeformWeight, ptr %25, i64 %28
  %32 = getelementptr inbounds %struct.MDeformWeight, ptr %25, i64 %28, i32 1
  %33 = load float, ptr %32, align 4, !tbaa !177
  %34 = fmul float %20, %33
  %35 = fcmp oeq float %34, 0.000000e+00
  br i1 %35, label %58, label %36

36:                                               ; preds = %27
  %37 = icmp eq ptr %29, null
  br i1 %37, label %52, label %38

38:                                               ; preds = %36
  %39 = load i32, ptr %31, align 4, !tbaa !179
  br label %40

40:                                               ; preds = %38, %49
  %41 = phi ptr [ %29, %38 ], [ %50, %49 ]
  %42 = getelementptr inbounds %struct.MDeformWeight_Link, ptr %41, i64 0, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !179
  %44 = icmp eq i32 %43, %39
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.MDeformWeight_Link, ptr %41, i64 0, i32 1, i32 1
  %47 = load float, ptr %46, align 4, !tbaa !177
  %48 = fadd float %34, %47
  store float %48, ptr %46, align 4, !tbaa !177
  br label %58

49:                                               ; preds = %40
  %50 = load ptr, ptr %41, align 8, !tbaa !180
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %40, !llvm.loop !182

52:                                               ; preds = %49, %36
  %53 = alloca [16 x i8], align 16
  %54 = load i32, ptr %31, align 4, !tbaa !179
  %55 = getelementptr inbounds %struct.MDeformWeight_Link, ptr %53, i64 0, i32 1
  store i32 %54, ptr %55, align 8, !tbaa !183
  %56 = getelementptr inbounds %struct.MDeformWeight_Link, ptr %53, i64 0, i32 1, i32 1
  store float %34, ptr %56, align 4, !tbaa !184
  store ptr %29, ptr %53, align 16, !tbaa !180
  %57 = add nsw i32 %30, 1
  br label %58

58:                                               ; preds = %45, %52, %27
  %59 = phi i32 [ %30, %27 ], [ %57, %52 ], [ %30, %45 ]
  %60 = phi ptr [ %29, %27 ], [ %53, %52 ], [ %29, %45 ]
  %61 = add nuw nsw i64 %28, 1
  %62 = icmp eq i64 %61, %26
  br i1 %62, label %63, label %27, !llvm.loop !185

63:                                               ; preds = %58, %19
  %64 = phi i32 [ %13, %19 ], [ %59, %58 ]
  %65 = phi ptr [ %12, %19 ], [ %60, %58 ]
  %66 = add nuw nsw i64 %11, 1
  %67 = icmp eq i64 %66, %9
  br i1 %67, label %68, label %10, !llvm.loop !186

68:                                               ; preds = %63
  %69 = load ptr, ptr %4, align 8, !tbaa !172
  %70 = icmp eq ptr %69, null
  br i1 %70, label %78, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.MDeformVert, ptr %4, i64 0, i32 1
  %73 = load i32, ptr %72, align 8, !tbaa !170
  %74 = icmp eq i32 %73, %64
  br i1 %74, label %85, label %75

75:                                               ; preds = %71
  br i1 %70, label %78, label %76

76:                                               ; preds = %75
  %77 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %77(ptr noundef nonnull %69) #25
  br label %78

78:                                               ; preds = %68, %76, %75
  %79 = icmp eq i32 %64, 0
  br i1 %79, label %100, label %80

80:                                               ; preds = %78
  %81 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %82 = sext i32 %64 to i64
  %83 = shl nsw i64 %82, 3
  %84 = call ptr %81(i64 noundef %83, ptr noundef nonnull @__func__.layerInterp_mdeformvert) #25
  store ptr %84, ptr %4, align 8, !tbaa !172
  br label %85

85:                                               ; preds = %80, %71
  %86 = icmp eq i32 %64, 0
  br i1 %86, label %100, label %87

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.MDeformVert, ptr %4, i64 0, i32 1
  store i32 %64, ptr %88, align 8, !tbaa !170
  %89 = icmp eq ptr %65, null
  br i1 %89, label %101, label %90

90:                                               ; preds = %87, %90
  %91 = phi i64 [ %98, %90 ], [ 0, %87 ]
  %92 = phi ptr [ %97, %90 ], [ %65, %87 ]
  %93 = load ptr, ptr %4, align 8, !tbaa !172
  %94 = getelementptr inbounds %struct.MDeformWeight, ptr %93, i64 %91
  %95 = getelementptr inbounds %struct.MDeformWeight_Link, ptr %92, i64 0, i32 1
  %96 = load i64, ptr %95, align 8
  store i64 %96, ptr %94, align 4
  %97 = load ptr, ptr %92, align 8, !tbaa !180
  %98 = add nuw i64 %91, 1
  %99 = icmp eq ptr %97, null
  br i1 %99, label %101, label %90, !llvm.loop !187

100:                                              ; preds = %78, %85
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  br label %101

101:                                              ; preds = %90, %87, %100, %5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @layerCopy_tface(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #17 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %11, %7 ]
  %9 = getelementptr inbounds %struct.MTFace, ptr %1, i64 %8
  %10 = getelementptr inbounds %struct.MTFace, ptr %0, i64 %8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %10, i64 48, i1 false), !tbaa.struct !188
  %11 = add nuw nsw i64 %8, 1
  %12 = icmp eq i64 %11, %6
  br i1 %12, label %13, label %7, !llvm.loop !190

13:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @layerInterp_tface(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #12 {
  %6 = alloca [4 x [2 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %7 = icmp slt i32 %3, 1
  br i1 %7, label %65, label %8

8:                                                ; preds = %5
  %9 = icmp eq ptr %1, null
  %10 = icmp eq ptr %2, null
  %11 = zext nneg i32 %3 to i64
  br label %12

12:                                               ; preds = %8, %60
  %13 = phi i64 [ 0, %8 ], [ %61, %60 ]
  %14 = phi ptr [ %2, %8 ], [ %57, %60 ]
  br i1 %9, label %18, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds float, ptr %1, i64 %13
  %17 = load float, ptr %16, align 4, !tbaa !175
  br label %18

18:                                               ; preds = %12, %15
  %19 = phi float [ %17, %15 ], [ 1.000000e+00, %12 ]
  %20 = getelementptr inbounds ptr, ptr %0, i64 %13
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  br label %22

22:                                               ; preds = %18, %56
  %23 = phi i64 [ 0, %18 ], [ %58, %56 ]
  %24 = phi ptr [ %14, %18 ], [ %57, %56 ]
  %25 = getelementptr inbounds [4 x [2 x float]], ptr %6, i64 0, i64 %23
  br i1 %10, label %46, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds float, ptr %25, i64 1
  %28 = load float, ptr %25, align 8, !tbaa !175
  %29 = load float, ptr %27, align 4, !tbaa !175
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi i64 [ 0, %26 ], [ %43, %30 ]
  %32 = phi ptr [ %24, %26 ], [ %44, %30 ]
  %33 = phi float [ %28, %26 ], [ %39, %30 ]
  %34 = phi float [ %29, %26 ], [ %42, %30 ]
  %35 = getelementptr inbounds [4 x [2 x float]], ptr %21, i64 0, i64 %31
  %36 = load float, ptr %32, align 4, !tbaa !175
  %37 = fmul float %19, %36
  %38 = load float, ptr %35, align 4, !tbaa !175
  %39 = tail call float @llvm.fmuladd.f32(float %38, float %37, float %33)
  store float %39, ptr %25, align 8, !tbaa !175
  %40 = getelementptr inbounds float, ptr %35, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !175
  %42 = tail call float @llvm.fmuladd.f32(float %41, float %37, float %34)
  store float %42, ptr %27, align 4, !tbaa !175
  %43 = add nuw nsw i64 %31, 1
  %44 = getelementptr inbounds float, ptr %32, i64 1
  %45 = icmp eq i64 %43, 4
  br i1 %45, label %56, label %30, !llvm.loop !191

46:                                               ; preds = %22
  %47 = getelementptr inbounds [4 x [2 x float]], ptr %21, i64 0, i64 %23
  %48 = load float, ptr %47, align 4, !tbaa !175
  %49 = load float, ptr %25, align 8, !tbaa !175
  %50 = tail call float @llvm.fmuladd.f32(float %48, float %19, float %49)
  store float %50, ptr %25, align 8, !tbaa !175
  %51 = getelementptr inbounds float, ptr %47, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !175
  %53 = getelementptr inbounds float, ptr %25, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !175
  %55 = tail call float @llvm.fmuladd.f32(float %52, float %19, float %54)
  store float %55, ptr %53, align 4, !tbaa !175
  br label %56

56:                                               ; preds = %30, %46
  %57 = phi ptr [ %24, %46 ], [ %44, %30 ]
  %58 = add nuw nsw i64 %23, 1
  %59 = icmp eq i64 %58, 4
  br i1 %59, label %60, label %22, !llvm.loop !192

60:                                               ; preds = %56
  %61 = add nuw nsw i64 %13, 1
  %62 = icmp eq i64 %61, %11
  br i1 %62, label %63, label %12, !llvm.loop !193

63:                                               ; preds = %60
  %64 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %64, i64 48, i1 false), !tbaa.struct !188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 16 dereferenceable(32) %6, i64 32, i1 false)
  br label %65

65:                                               ; preds = %5, %63
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #25
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @layerSwap_tface(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #17 {
  %3 = alloca [4 x [2 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #25
  %4 = getelementptr inbounds %struct.MTFace, ptr %0, i64 0, i32 6
  %5 = load i16, ptr %4, align 2, !tbaa !194
  %6 = and i16 %5, -241
  %7 = getelementptr inbounds %struct.MTFace, ptr %0, i64 0, i32 2
  %8 = load i8, ptr %7, align 8, !tbaa !196
  %9 = and i8 %8, -61
  br label %10

10:                                               ; preds = %2, %41
  %11 = phi i64 [ 0, %2 ], [ %43, %41 ]
  %12 = phi i16 [ %6, %2 ], [ %32, %41 ]
  %13 = phi i8 [ %9, %2 ], [ %42, %41 ]
  %14 = getelementptr inbounds i32, ptr %1, i64 %11
  %15 = load i32, ptr %14, align 4, !tbaa !41
  %16 = getelementptr inbounds [4 x [2 x float]], ptr %3, i64 0, i64 %11
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds [4 x [2 x float]], ptr %0, i64 0, i64 %17
  %19 = load float, ptr %18, align 4, !tbaa !175
  store float %19, ptr %16, align 8, !tbaa !175
  %20 = getelementptr inbounds float, ptr %18, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !175
  %22 = getelementptr inbounds float, ptr %16, i64 1
  store float %21, ptr %22, align 4, !tbaa !175
  %23 = getelementptr inbounds [4 x i16], ptr @layerSwap_tface.pin_flags, i64 0, i64 %17
  %24 = load i16, ptr %23, align 2, !tbaa !189
  %25 = and i16 %24, %5
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %10
  %28 = getelementptr inbounds [4 x i16], ptr @layerSwap_tface.pin_flags, i64 0, i64 %11
  %29 = load i16, ptr %28, align 2, !tbaa !189
  %30 = or i16 %29, %12
  br label %31

31:                                               ; preds = %27, %10
  %32 = phi i16 [ %30, %27 ], [ %12, %10 ]
  %33 = getelementptr inbounds [4 x i8], ptr @layerSwap_tface.sel_flags, i64 0, i64 %17
  %34 = load i8, ptr %33, align 1, !tbaa !67
  %35 = and i8 %34, %8
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds [4 x i8], ptr @layerSwap_tface.sel_flags, i64 0, i64 %11
  %39 = load i8, ptr %38, align 1, !tbaa !67
  %40 = or i8 %39, %13
  br label %41

41:                                               ; preds = %37, %31
  %42 = phi i8 [ %40, %37 ], [ %13, %31 ]
  %43 = add nuw nsw i64 %11, 1
  %44 = icmp eq i64 %43, 4
  br i1 %44, label %45, label %10, !llvm.loop !197

45:                                               ; preds = %41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %3, i64 32, i1 false)
  store i16 %32, ptr %4, align 2, !tbaa !194
  store i8 %42, ptr %7, align 8, !tbaa !196
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #25
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @layerDefault_tface(ptr nocapture noundef writeonly %0, i32 noundef %1) #17 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %9, %6 ]
  %8 = getelementptr inbounds %struct.MTFace, ptr %0, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) @layerDefault_tface.default_tf, i64 48, i1 false), !tbaa.struct !188
  %9 = add nuw nsw i64 %7, 1
  %10 = icmp eq i64 %9, %5
  br i1 %10, label %11, label %6, !llvm.loop !198

11:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @layerMaxNum_tface() #0 {
  ret i32 8
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @layerInterp_mcol(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #4 {
  %6 = alloca [4 x %struct.anon.0], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %6, i8 0, i64 64, i1 false)
  %7 = icmp slt i32 %3, 1
  br i1 %7, label %149, label %8

8:                                                ; preds = %5
  %9 = icmp eq ptr %1, null
  %10 = icmp eq ptr %2, null
  %11 = zext nneg i32 %3 to i64
  br label %12

12:                                               ; preds = %8, %94
  %13 = phi i64 [ 0, %8 ], [ %95, %94 ]
  %14 = phi ptr [ %2, %8 ], [ %91, %94 ]
  br i1 %9, label %18, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds float, ptr %1, i64 %13
  %17 = load float, ptr %16, align 4, !tbaa !175
  br label %18

18:                                               ; preds = %12, %15
  %19 = phi float [ %17, %15 ], [ 1.000000e+00, %12 ]
  %20 = getelementptr inbounds ptr, ptr %0, i64 %13
  %21 = getelementptr inbounds ptr, ptr %0, i64 %13
  br label %22

22:                                               ; preds = %18, %90
  %23 = phi i64 [ 0, %18 ], [ %92, %90 ]
  %24 = phi ptr [ %14, %18 ], [ %91, %90 ]
  br i1 %10, label %64, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %20, align 8, !tbaa !34
  %27 = getelementptr inbounds [4 x %struct.anon.0], ptr %6, i64 0, i64 %23
  %28 = getelementptr inbounds [4 x %struct.anon.0], ptr %6, i64 0, i64 %23, i32 1
  %29 = getelementptr inbounds [4 x %struct.anon.0], ptr %6, i64 0, i64 %23, i32 2
  %30 = getelementptr inbounds [4 x %struct.anon.0], ptr %6, i64 0, i64 %23, i32 3
  %31 = load float, ptr %27, align 16, !tbaa !199
  %32 = load float, ptr %28, align 4, !tbaa !201
  %33 = load float, ptr %29, align 8, !tbaa !202
  %34 = load float, ptr %30, align 4, !tbaa !203
  br label %35

35:                                               ; preds = %25, %35
  %36 = phi ptr [ %26, %25 ], [ %62, %35 ]
  %37 = phi i32 [ 0, %25 ], [ %60, %35 ]
  %38 = phi ptr [ %24, %25 ], [ %61, %35 ]
  %39 = phi float [ %31, %25 ], [ %47, %35 ]
  %40 = phi float [ %32, %25 ], [ %51, %35 ]
  %41 = phi float [ %33, %25 ], [ %55, %35 ]
  %42 = phi float [ %34, %25 ], [ %59, %35 ]
  %43 = load float, ptr %38, align 4, !tbaa !175
  %44 = fmul float %19, %43
  %45 = load i8, ptr %36, align 1, !tbaa !204
  %46 = uitofp i8 %45 to float
  %47 = tail call float @llvm.fmuladd.f32(float %46, float %44, float %39)
  store float %47, ptr %27, align 16, !tbaa !199
  %48 = getelementptr inbounds %struct.MCol, ptr %36, i64 0, i32 1
  %49 = load i8, ptr %48, align 1, !tbaa !206
  %50 = uitofp i8 %49 to float
  %51 = tail call float @llvm.fmuladd.f32(float %50, float %44, float %40)
  store float %51, ptr %28, align 4, !tbaa !201
  %52 = getelementptr inbounds %struct.MCol, ptr %36, i64 0, i32 2
  %53 = load i8, ptr %52, align 1, !tbaa !207
  %54 = uitofp i8 %53 to float
  %55 = tail call float @llvm.fmuladd.f32(float %54, float %44, float %41)
  store float %55, ptr %29, align 8, !tbaa !202
  %56 = getelementptr inbounds %struct.MCol, ptr %36, i64 0, i32 3
  %57 = load i8, ptr %56, align 1, !tbaa !208
  %58 = uitofp i8 %57 to float
  %59 = tail call float @llvm.fmuladd.f32(float %58, float %44, float %42)
  store float %59, ptr %30, align 4, !tbaa !203
  %60 = add nuw nsw i32 %37, 1
  %61 = getelementptr inbounds float, ptr %38, i64 1
  %62 = getelementptr inbounds %struct.MCol, ptr %36, i64 1
  %63 = icmp eq i32 %60, 4
  br i1 %63, label %90, label %35, !llvm.loop !209

64:                                               ; preds = %22
  %65 = load ptr, ptr %21, align 8, !tbaa !34
  %66 = getelementptr inbounds %struct.MCol, ptr %65, i64 %23
  %67 = load i8, ptr %66, align 1, !tbaa !204
  %68 = uitofp i8 %67 to float
  %69 = getelementptr inbounds [4 x %struct.anon.0], ptr %6, i64 0, i64 %23
  %70 = load float, ptr %69, align 16, !tbaa !199
  %71 = tail call float @llvm.fmuladd.f32(float %68, float %19, float %70)
  store float %71, ptr %69, align 16, !tbaa !199
  %72 = getelementptr inbounds %struct.MCol, ptr %65, i64 %23, i32 1
  %73 = load i8, ptr %72, align 1, !tbaa !206
  %74 = uitofp i8 %73 to float
  %75 = getelementptr inbounds [4 x %struct.anon.0], ptr %6, i64 0, i64 %23, i32 1
  %76 = load float, ptr %75, align 4, !tbaa !201
  %77 = tail call float @llvm.fmuladd.f32(float %74, float %19, float %76)
  store float %77, ptr %75, align 4, !tbaa !201
  %78 = getelementptr inbounds %struct.MCol, ptr %65, i64 %23, i32 2
  %79 = load i8, ptr %78, align 1, !tbaa !207
  %80 = uitofp i8 %79 to float
  %81 = getelementptr inbounds [4 x %struct.anon.0], ptr %6, i64 0, i64 %23, i32 2
  %82 = load float, ptr %81, align 8, !tbaa !202
  %83 = tail call float @llvm.fmuladd.f32(float %80, float %19, float %82)
  store float %83, ptr %81, align 8, !tbaa !202
  %84 = getelementptr inbounds %struct.MCol, ptr %65, i64 %23, i32 3
  %85 = load i8, ptr %84, align 1, !tbaa !208
  %86 = uitofp i8 %85 to float
  %87 = getelementptr inbounds [4 x %struct.anon.0], ptr %6, i64 0, i64 %23, i32 3
  %88 = load float, ptr %87, align 4, !tbaa !203
  %89 = tail call float @llvm.fmuladd.f32(float %86, float %19, float %88)
  store float %89, ptr %87, align 4, !tbaa !203
  br label %90

90:                                               ; preds = %35, %64
  %91 = phi ptr [ %24, %64 ], [ %61, %35 ]
  %92 = add nuw nsw i64 %23, 1
  %93 = icmp eq i64 %92, 4
  br i1 %93, label %94, label %22, !llvm.loop !210

94:                                               ; preds = %90
  %95 = add nuw nsw i64 %13, 1
  %96 = icmp eq i64 %95, %11
  br i1 %96, label %97, label %12, !llvm.loop !211

97:                                               ; preds = %94, %130
  %98 = phi i64 [ %147, %130 ], [ 0, %94 ]
  %99 = getelementptr inbounds [4 x %struct.anon.0], ptr %6, i64 0, i64 %98
  %100 = load float, ptr %99, align 16, !tbaa !199
  %101 = fcmp olt float %100, 0.000000e+00
  br i1 %101, label %104, label %102

102:                                              ; preds = %97
  %103 = fcmp ogt float %100, 2.550000e+02
  br i1 %103, label %104, label %106

104:                                              ; preds = %102, %97
  %105 = phi float [ 0.000000e+00, %97 ], [ 2.550000e+02, %102 ]
  store float %105, ptr %99, align 16, !tbaa !199
  br label %106

106:                                              ; preds = %104, %102
  %107 = getelementptr inbounds [4 x %struct.anon.0], ptr %6, i64 0, i64 %98, i32 1
  %108 = load float, ptr %107, align 4, !tbaa !201
  %109 = fcmp olt float %108, 0.000000e+00
  br i1 %109, label %112, label %110

110:                                              ; preds = %106
  %111 = fcmp ogt float %108, 2.550000e+02
  br i1 %111, label %112, label %114

112:                                              ; preds = %110, %106
  %113 = phi float [ 0.000000e+00, %106 ], [ 2.550000e+02, %110 ]
  store float %113, ptr %107, align 4, !tbaa !201
  br label %114

114:                                              ; preds = %112, %110
  %115 = getelementptr inbounds [4 x %struct.anon.0], ptr %6, i64 0, i64 %98, i32 2
  %116 = load float, ptr %115, align 8, !tbaa !202
  %117 = fcmp olt float %116, 0.000000e+00
  br i1 %117, label %120, label %118

118:                                              ; preds = %114
  %119 = fcmp ogt float %116, 2.550000e+02
  br i1 %119, label %120, label %122

120:                                              ; preds = %118, %114
  %121 = phi float [ 0.000000e+00, %114 ], [ 2.550000e+02, %118 ]
  store float %121, ptr %115, align 8, !tbaa !202
  br label %122

122:                                              ; preds = %120, %118
  %123 = getelementptr inbounds [4 x %struct.anon.0], ptr %6, i64 0, i64 %98, i32 3
  %124 = load float, ptr %123, align 4, !tbaa !203
  %125 = fcmp olt float %124, 0.000000e+00
  br i1 %125, label %128, label %126

126:                                              ; preds = %122
  %127 = fcmp ogt float %124, 2.550000e+02
  br i1 %127, label %128, label %130

128:                                              ; preds = %126, %122
  %129 = phi float [ 0.000000e+00, %122 ], [ 2.550000e+02, %126 ]
  store float %129, ptr %123, align 4, !tbaa !203
  br label %130

130:                                              ; preds = %128, %126
  %131 = load float, ptr %99, align 16, !tbaa !199
  %132 = fptosi float %131 to i32
  %133 = trunc i32 %132 to i8
  %134 = getelementptr inbounds %struct.MCol, ptr %4, i64 %98
  store i8 %133, ptr %134, align 1, !tbaa !204
  %135 = load float, ptr %107, align 4, !tbaa !201
  %136 = fptosi float %135 to i32
  %137 = trunc i32 %136 to i8
  %138 = getelementptr inbounds %struct.MCol, ptr %4, i64 %98, i32 1
  store i8 %137, ptr %138, align 1, !tbaa !206
  %139 = load float, ptr %115, align 8, !tbaa !202
  %140 = fptosi float %139 to i32
  %141 = trunc i32 %140 to i8
  %142 = getelementptr inbounds %struct.MCol, ptr %4, i64 %98, i32 2
  store i8 %141, ptr %142, align 1, !tbaa !207
  %143 = load float, ptr %123, align 4, !tbaa !203
  %144 = fptosi float %143 to i32
  %145 = trunc i32 %144 to i8
  %146 = getelementptr inbounds %struct.MCol, ptr %4, i64 %98, i32 3
  store i8 %145, ptr %146, align 1, !tbaa !208
  %147 = add nuw nsw i64 %98, 1
  %148 = icmp eq i64 %147, 4
  br i1 %148, label %149, label %97, !llvm.loop !212

149:                                              ; preds = %130, %5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #25
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @layerSwap_mcol(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #17 {
  %3 = alloca [4 x %struct.MCol], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #25
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %12, %4 ]
  %6 = getelementptr inbounds [4 x %struct.MCol], ptr %3, i64 0, i64 %5
  %7 = getelementptr inbounds i32, ptr %1, i64 %5
  %8 = load i32, ptr %7, align 4, !tbaa !41
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.MCol, ptr %0, i64 %9
  %11 = load i32, ptr %10, align 1
  store i32 %11, ptr %6, align 4
  %12 = add nuw nsw i64 %5, 1
  %13 = icmp eq i64 %12, 4
  br i1 %13, label %14, label %4, !llvm.loop !213

14:                                               ; preds = %4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @layerDefault_mcol(ptr nocapture noundef writeonly %0, i32 noundef %1) #18 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = shl i32 %1, 2
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = zext nneg i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 -1, i64 %8, i1 false)
  br label %9

9:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @layerMaxNum_mloopcol() #0 {
  ret i32 8
}

; Function Attrs: nounwind uwtable
define internal void @layerDefault_origindex(ptr noundef %0, i32 noundef %1) #5 {
  tail call void @fill_vn_i(ptr noundef %0, i32 noundef %1, i32 noundef -1) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @layerCopy_propFloat(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #19 {
  %4 = sext i32 %2 to i64
  %5 = shl nsw i64 %4, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %0, i64 %5, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @layerCopy_propInt(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #19 {
  %4 = sext i32 %2 to i64
  %5 = shl nsw i64 %4, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %0, i64 %5, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @layerCopy_propString(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #19 {
  %4 = sext i32 %2 to i64
  %5 = shl nsw i64 %4, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %0, i64 %5, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @layerCopy_origspace_face(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #17 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %11, %7 ]
  %9 = getelementptr inbounds %struct.OrigSpaceFace, ptr %1, i64 %8
  %10 = getelementptr inbounds %struct.OrigSpaceFace, ptr %0, i64 %8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %9, ptr noundef nonnull align 4 dereferenceable(32) %10, i64 32, i1 false), !tbaa.struct !214
  %11 = add nuw nsw i64 %8, 1
  %12 = icmp eq i64 %11, %6
  br i1 %12, label %13, label %7, !llvm.loop !215

13:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @layerInterp_origspace_face(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #4 {
  %6 = alloca [4 x [2 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %7 = icmp slt i32 %3, 1
  br i1 %7, label %64, label %8

8:                                                ; preds = %5
  %9 = icmp eq ptr %1, null
  %10 = icmp eq ptr %2, null
  %11 = zext nneg i32 %3 to i64
  br label %12

12:                                               ; preds = %8, %60
  %13 = phi i64 [ 0, %8 ], [ %61, %60 ]
  %14 = phi ptr [ %2, %8 ], [ %57, %60 ]
  br i1 %9, label %18, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds float, ptr %1, i64 %13
  %17 = load float, ptr %16, align 4, !tbaa !175
  br label %18

18:                                               ; preds = %12, %15
  %19 = phi float [ %17, %15 ], [ 1.000000e+00, %12 ]
  %20 = getelementptr inbounds ptr, ptr %0, i64 %13
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  br label %22

22:                                               ; preds = %18, %56
  %23 = phi i64 [ 0, %18 ], [ %58, %56 ]
  %24 = phi ptr [ %14, %18 ], [ %57, %56 ]
  %25 = getelementptr inbounds [4 x [2 x float]], ptr %6, i64 0, i64 %23
  br i1 %10, label %46, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds float, ptr %25, i64 1
  %28 = load float, ptr %25, align 8, !tbaa !175
  %29 = load float, ptr %27, align 4, !tbaa !175
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi i64 [ 0, %26 ], [ %43, %30 ]
  %32 = phi ptr [ %24, %26 ], [ %44, %30 ]
  %33 = phi float [ %28, %26 ], [ %39, %30 ]
  %34 = phi float [ %29, %26 ], [ %42, %30 ]
  %35 = getelementptr inbounds [4 x [2 x float]], ptr %21, i64 0, i64 %31
  %36 = load float, ptr %32, align 4, !tbaa !175
  %37 = fmul float %19, %36
  %38 = load float, ptr %35, align 4, !tbaa !175
  %39 = tail call float @llvm.fmuladd.f32(float %38, float %37, float %33)
  store float %39, ptr %25, align 8, !tbaa !175
  %40 = getelementptr inbounds float, ptr %35, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !175
  %42 = tail call float @llvm.fmuladd.f32(float %41, float %37, float %34)
  store float %42, ptr %27, align 4, !tbaa !175
  %43 = add nuw nsw i64 %31, 1
  %44 = getelementptr inbounds float, ptr %32, i64 1
  %45 = icmp eq i64 %43, 4
  br i1 %45, label %56, label %30, !llvm.loop !216

46:                                               ; preds = %22
  %47 = getelementptr inbounds [4 x [2 x float]], ptr %21, i64 0, i64 %23
  %48 = load float, ptr %47, align 4, !tbaa !175
  %49 = load float, ptr %25, align 8, !tbaa !175
  %50 = tail call float @llvm.fmuladd.f32(float %48, float %19, float %49)
  store float %50, ptr %25, align 8, !tbaa !175
  %51 = getelementptr inbounds float, ptr %47, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !175
  %53 = getelementptr inbounds float, ptr %25, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !175
  %55 = tail call float @llvm.fmuladd.f32(float %52, float %19, float %54)
  store float %55, ptr %53, align 4, !tbaa !175
  br label %56

56:                                               ; preds = %30, %46
  %57 = phi ptr [ %24, %46 ], [ %44, %30 ]
  %58 = add nuw nsw i64 %23, 1
  %59 = icmp eq i64 %58, 4
  br i1 %59, label %60, label %22, !llvm.loop !217

60:                                               ; preds = %56
  %61 = add nuw nsw i64 %13, 1
  %62 = icmp eq i64 %61, %11
  br i1 %62, label %63, label %12, !llvm.loop !218

63:                                               ; preds = %60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef nonnull align 16 dereferenceable(32) %6, i64 32, i1 false)
  br label %64

64:                                               ; preds = %5, %63
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #25
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @layerSwap_origspace_face(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #17 {
  %3 = alloca [4 x [2 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #25
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %15, %4 ]
  %6 = getelementptr inbounds [4 x [2 x float]], ptr %3, i64 0, i64 %5
  %7 = getelementptr inbounds i32, ptr %1, i64 %5
  %8 = load i32, ptr %7, align 4, !tbaa !41
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [4 x [2 x float]], ptr %0, i64 0, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !175
  store float %11, ptr %6, align 8, !tbaa !175
  %12 = getelementptr inbounds float, ptr %10, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !175
  %14 = getelementptr inbounds float, ptr %6, i64 1
  store float %13, ptr %14, align 4, !tbaa !175
  %15 = add nuw nsw i64 %5, 1
  %16 = icmp eq i64 %15, 4
  br i1 %16, label %17, label %4, !llvm.loop !219

17:                                               ; preds = %4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #25
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @layerDefault_origspace_face(ptr nocapture noundef writeonly %0, i32 noundef %1) #17 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %9, %6 ]
  %8 = getelementptr inbounds %struct.OrigSpaceFace, ptr %0, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %8, ptr noundef nonnull align 4 dereferenceable(32) @layerDefault_origspace_face.default_osf, i64 32, i1 false), !tbaa.struct !214
  %9 = add nuw nsw i64 %7, 1
  %10 = icmp eq i64 %9, %5
  br i1 %10, label %11, label %6, !llvm.loop !220

11:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @layerInterp_mloopuv(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #4 {
  %6 = icmp eq ptr %2, null
  %7 = icmp sgt i32 %3, 0
  br i1 %6, label %12, label %8

8:                                                ; preds = %5
  br i1 %7, label %9, label %56

9:                                                ; preds = %8
  %10 = icmp eq ptr %1, null
  %11 = zext nneg i32 %3 to i64
  br label %16

12:                                               ; preds = %5
  br i1 %7, label %13, label %56

13:                                               ; preds = %12
  %14 = icmp eq ptr %1, null
  %15 = zext nneg i32 %3 to i64
  br label %38

16:                                               ; preds = %9, %24
  %17 = phi i64 [ 0, %9 ], [ %36, %24 ]
  %18 = phi ptr [ %2, %9 ], [ %35, %24 ]
  %19 = phi float [ 0.000000e+00, %9 ], [ %31, %24 ]
  %20 = phi float [ 0.000000e+00, %9 ], [ %34, %24 ]
  br i1 %10, label %24, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds float, ptr %1, i64 %17
  %23 = load float, ptr %22, align 4, !tbaa !175
  br label %24

24:                                               ; preds = %16, %21
  %25 = phi float [ %23, %21 ], [ 1.000000e+00, %16 ]
  %26 = getelementptr inbounds ptr, ptr %0, i64 %17
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = load float, ptr %18, align 4, !tbaa !175
  %29 = fmul float %25, %28
  %30 = load float, ptr %27, align 4, !tbaa !175
  %31 = tail call float @llvm.fmuladd.f32(float %30, float %29, float %19)
  %32 = getelementptr inbounds float, ptr %27, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !175
  %34 = tail call float @llvm.fmuladd.f32(float %33, float %29, float %20)
  %35 = getelementptr inbounds float, ptr %18, i64 1
  %36 = add nuw nsw i64 %17, 1
  %37 = icmp eq i64 %36, %11
  br i1 %37, label %56, label %16, !llvm.loop !221

38:                                               ; preds = %13, %45
  %39 = phi i64 [ 0, %13 ], [ %54, %45 ]
  %40 = phi float [ 0.000000e+00, %13 ], [ %50, %45 ]
  %41 = phi float [ 0.000000e+00, %13 ], [ %53, %45 ]
  br i1 %14, label %45, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds float, ptr %1, i64 %39
  %44 = load float, ptr %43, align 4, !tbaa !175
  br label %45

45:                                               ; preds = %38, %42
  %46 = phi float [ %44, %42 ], [ 1.000000e+00, %38 ]
  %47 = getelementptr inbounds ptr, ptr %0, i64 %39
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = load float, ptr %48, align 4, !tbaa !175
  %50 = tail call float @llvm.fmuladd.f32(float %49, float %46, float %40)
  %51 = getelementptr inbounds float, ptr %48, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !175
  %53 = tail call float @llvm.fmuladd.f32(float %52, float %46, float %41)
  %54 = add nuw nsw i64 %39, 1
  %55 = icmp eq i64 %54, %15
  br i1 %55, label %56, label %38, !llvm.loop !222

56:                                               ; preds = %24, %45, %8, %12
  %57 = phi float [ 0.000000e+00, %12 ], [ 0.000000e+00, %8 ], [ %53, %45 ], [ %34, %24 ]
  %58 = phi float [ 0.000000e+00, %12 ], [ 0.000000e+00, %8 ], [ %50, %45 ], [ %31, %24 ]
  store float %58, ptr %4, align 4, !tbaa !175
  %59 = getelementptr inbounds float, ptr %4, i64 1
  store float %57, ptr %59, align 4, !tbaa !175
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @layerEqual_mloopuv(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 {
  %3 = load float, ptr %1, align 4, !tbaa !175
  %4 = load float, ptr %0, align 4, !tbaa !175
  %5 = fsub float %3, %4
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !175
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !175
  %10 = fsub float %7, %9
  %11 = fmul float %10, %10
  %12 = tail call float @llvm.fmuladd.f32(float %5, float %5, float %11)
  %13 = fcmp olt float %12, 0x3EE4F8B580000000
  %14 = zext i1 %13 to i8
  ret i8 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @layerMultiply_mloopuv(ptr nocapture noundef %0, float noundef %1) #19 {
  %3 = load float, ptr %0, align 4, !tbaa !175
  %4 = fmul float %3, %1
  store float %4, ptr %0, align 4, !tbaa !175
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !175
  %7 = fmul float %6, %1
  store float %7, ptr %5, align 4, !tbaa !175
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @layerInitMinMax_mloopuv(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1) #18 {
  %3 = getelementptr inbounds [2 x float], ptr %0, i64 0, i64 1
  store float 0x46293E5940000000, ptr %3, align 4, !tbaa !175
  store float 0x46293E5940000000, ptr %0, align 4, !tbaa !175
  %4 = getelementptr inbounds [2 x float], ptr %1, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %4, align 4, !tbaa !175
  store float 0xC6293E5940000000, ptr %1, align 4, !tbaa !175
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @layerAdd_mloopuv(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #19 {
  %3 = load float, ptr %1, align 4, !tbaa !175
  %4 = load float, ptr %0, align 4, !tbaa !175
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !175
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !175
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !175
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !175
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @layerDoMinMax_mloopuv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5 {
  tail call void @minmax_v2v2_v2(ptr noundef %1, ptr noundef %2, ptr noundef %0) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @layerCopyValue_mloopuv(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #19 {
  %3 = load float, ptr %0, align 4, !tbaa !175
  store float %3, ptr %1, align 4, !tbaa !175
  %4 = getelementptr inbounds float, ptr %0, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !175
  %6 = getelementptr inbounds float, ptr %1, i64 1
  store float %5, ptr %6, align 4, !tbaa !175
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @layerInterp_mloopcol(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #4 {
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %7, label %69

7:                                                ; preds = %5
  %8 = icmp eq ptr %1, null
  %9 = icmp eq ptr %2, null
  %10 = zext nneg i32 %3 to i64
  br label %11

11:                                               ; preds = %7, %61
  %12 = phi i64 [ 0, %7 ], [ %67, %61 ]
  %13 = phi ptr [ %2, %7 ], [ %66, %61 ]
  %14 = phi float [ 0.000000e+00, %7 ], [ %65, %61 ]
  %15 = phi float [ 0.000000e+00, %7 ], [ %64, %61 ]
  %16 = phi float [ 0.000000e+00, %7 ], [ %63, %61 ]
  %17 = phi float [ 0.000000e+00, %7 ], [ %62, %61 ]
  br i1 %8, label %21, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds float, ptr %1, i64 %12
  %20 = load float, ptr %19, align 4, !tbaa !175
  br label %21

21:                                               ; preds = %11, %18
  %22 = phi float [ %20, %18 ], [ 1.000000e+00, %11 ]
  %23 = getelementptr inbounds ptr, ptr %0, i64 %12
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = load i8, ptr %24, align 1, !tbaa !223
  %26 = uitofp i8 %25 to float
  br i1 %9, label %47, label %27

27:                                               ; preds = %21
  %28 = load float, ptr %13, align 4, !tbaa !175
  %29 = fmul float %28, %26
  %30 = tail call float @llvm.fmuladd.f32(float %29, float %22, float %15)
  %31 = getelementptr inbounds %struct.MLoopCol, ptr %24, i64 0, i32 1
  %32 = load i8, ptr %31, align 1, !tbaa !225
  %33 = uitofp i8 %32 to float
  %34 = fmul float %28, %33
  %35 = tail call float @llvm.fmuladd.f32(float %34, float %22, float %16)
  %36 = getelementptr inbounds %struct.MLoopCol, ptr %24, i64 0, i32 2
  %37 = load i8, ptr %36, align 1, !tbaa !226
  %38 = uitofp i8 %37 to float
  %39 = fmul float %28, %38
  %40 = tail call float @llvm.fmuladd.f32(float %39, float %22, float %17)
  %41 = getelementptr inbounds %struct.MLoopCol, ptr %24, i64 0, i32 3
  %42 = load i8, ptr %41, align 1, !tbaa !227
  %43 = uitofp i8 %42 to float
  %44 = fmul float %28, %43
  %45 = tail call float @llvm.fmuladd.f32(float %44, float %22, float %14)
  %46 = getelementptr inbounds float, ptr %13, i64 1
  br label %61

47:                                               ; preds = %21
  %48 = tail call float @llvm.fmuladd.f32(float %26, float %22, float %15)
  %49 = getelementptr inbounds %struct.MLoopCol, ptr %24, i64 0, i32 1
  %50 = load i8, ptr %49, align 1, !tbaa !225
  %51 = uitofp i8 %50 to float
  %52 = tail call float @llvm.fmuladd.f32(float %51, float %22, float %16)
  %53 = getelementptr inbounds %struct.MLoopCol, ptr %24, i64 0, i32 2
  %54 = load i8, ptr %53, align 1, !tbaa !226
  %55 = uitofp i8 %54 to float
  %56 = tail call float @llvm.fmuladd.f32(float %55, float %22, float %17)
  %57 = getelementptr inbounds %struct.MLoopCol, ptr %24, i64 0, i32 3
  %58 = load i8, ptr %57, align 1, !tbaa !227
  %59 = uitofp i8 %58 to float
  %60 = tail call float @llvm.fmuladd.f32(float %59, float %22, float %14)
  br label %61

61:                                               ; preds = %47, %27
  %62 = phi float [ %40, %27 ], [ %56, %47 ]
  %63 = phi float [ %35, %27 ], [ %52, %47 ]
  %64 = phi float [ %30, %27 ], [ %48, %47 ]
  %65 = phi float [ %45, %27 ], [ %60, %47 ]
  %66 = phi ptr [ %46, %27 ], [ %13, %47 ]
  %67 = add nuw nsw i64 %12, 1
  %68 = icmp eq i64 %67, %10
  br i1 %68, label %69, label %11, !llvm.loop !228

69:                                               ; preds = %61, %5
  %70 = phi float [ 0.000000e+00, %5 ], [ %62, %61 ]
  %71 = phi float [ 0.000000e+00, %5 ], [ %63, %61 ]
  %72 = phi float [ 0.000000e+00, %5 ], [ %64, %61 ]
  %73 = phi float [ 0.000000e+00, %5 ], [ %65, %61 ]
  %74 = fcmp olt float %73, 0.000000e+00
  br i1 %74, label %78, label %75

75:                                               ; preds = %69
  %76 = fcmp ogt float %73, 2.550000e+02
  br i1 %76, label %77, label %78

77:                                               ; preds = %75
  br label %78

78:                                               ; preds = %69, %75, %77
  %79 = phi float [ 2.550000e+02, %77 ], [ %73, %75 ], [ 0.000000e+00, %69 ]
  %80 = fcmp olt float %72, 0.000000e+00
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = fcmp ogt float %72, 2.550000e+02
  br i1 %82, label %83, label %84

83:                                               ; preds = %81
  br label %84

84:                                               ; preds = %78, %81, %83
  %85 = phi float [ 2.550000e+02, %83 ], [ %72, %81 ], [ 0.000000e+00, %78 ]
  %86 = fcmp olt float %71, 0.000000e+00
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = fcmp ogt float %71, 2.550000e+02
  br i1 %88, label %89, label %90

89:                                               ; preds = %87
  br label %90

90:                                               ; preds = %84, %87, %89
  %91 = phi float [ 2.550000e+02, %89 ], [ %71, %87 ], [ 0.000000e+00, %84 ]
  %92 = fcmp olt float %70, 0.000000e+00
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = fcmp ogt float %70, 2.550000e+02
  br i1 %94, label %95, label %96

95:                                               ; preds = %93
  br label %96

96:                                               ; preds = %90, %93, %95
  %97 = phi float [ 2.550000e+02, %95 ], [ %70, %93 ], [ 0.000000e+00, %90 ]
  %98 = fptosi float %85 to i32
  %99 = trunc i32 %98 to i8
  store i8 %99, ptr %4, align 1, !tbaa !223
  %100 = fptosi float %91 to i32
  %101 = trunc i32 %100 to i8
  %102 = getelementptr inbounds %struct.MLoopCol, ptr %4, i64 0, i32 1
  store i8 %101, ptr %102, align 1, !tbaa !225
  %103 = fptosi float %97 to i32
  %104 = trunc i32 %103 to i8
  %105 = getelementptr inbounds %struct.MLoopCol, ptr %4, i64 0, i32 2
  store i8 %104, ptr %105, align 1, !tbaa !226
  %106 = fptosi float %79 to i32
  %107 = trunc i32 %106 to i8
  %108 = getelementptr inbounds %struct.MLoopCol, ptr %4, i64 0, i32 3
  store i8 %107, ptr %108, align 1, !tbaa !227
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @layerDefault_mloopcol(ptr nocapture noundef writeonly %0, i32 noundef %1) #18 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = shl nuw nsw i64 %5, 2
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 -1, i64 %6, i1 false)
  br label %7

7:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @layerEqual_mloopcol(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 {
  %3 = load i8, ptr %0, align 1, !tbaa !223
  %4 = zext i8 %3 to i32
  %5 = load i8, ptr %1, align 1, !tbaa !223
  %6 = zext i8 %5 to i32
  %7 = sub nsw i32 %4, %6
  %8 = sitofp i32 %7 to float
  %9 = getelementptr inbounds %struct.MLoopCol, ptr %0, i64 0, i32 1
  %10 = load i8, ptr %9, align 1, !tbaa !225
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds %struct.MLoopCol, ptr %1, i64 0, i32 1
  %13 = load i8, ptr %12, align 1, !tbaa !225
  %14 = zext i8 %13 to i32
  %15 = sub nsw i32 %11, %14
  %16 = sitofp i32 %15 to float
  %17 = getelementptr inbounds %struct.MLoopCol, ptr %0, i64 0, i32 2
  %18 = load i8, ptr %17, align 1, !tbaa !226
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds %struct.MLoopCol, ptr %1, i64 0, i32 2
  %21 = load i8, ptr %20, align 1, !tbaa !226
  %22 = zext i8 %21 to i32
  %23 = sub nsw i32 %19, %22
  %24 = sitofp i32 %23 to float
  %25 = getelementptr inbounds %struct.MLoopCol, ptr %0, i64 0, i32 3
  %26 = load i8, ptr %25, align 1, !tbaa !227
  %27 = zext i8 %26 to i32
  %28 = getelementptr inbounds %struct.MLoopCol, ptr %1, i64 0, i32 3
  %29 = load i8, ptr %28, align 1, !tbaa !227
  %30 = zext i8 %29 to i32
  %31 = sub nsw i32 %27, %30
  %32 = sitofp i32 %31 to float
  %33 = fmul float %16, %16
  %34 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %33)
  %35 = tail call float @llvm.fmuladd.f32(float %24, float %24, float %34)
  %36 = tail call float @llvm.fmuladd.f32(float %32, float %32, float %35)
  %37 = fcmp olt float %36, 0x3F50624DE0000000
  %38 = zext i1 %37 to i8
  ret i8 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @layerMultiply_mloopcol(ptr nocapture noundef %0, float noundef %1) #19 {
  %3 = load i8, ptr %0, align 1, !tbaa !223
  %4 = uitofp i8 %3 to float
  %5 = fmul float %4, %1
  %6 = fptoui float %5 to i8
  store i8 %6, ptr %0, align 1, !tbaa !223
  %7 = getelementptr inbounds %struct.MLoopCol, ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 1, !tbaa !225
  %9 = uitofp i8 %8 to float
  %10 = fmul float %9, %1
  %11 = fptoui float %10 to i8
  store i8 %11, ptr %7, align 1, !tbaa !225
  %12 = getelementptr inbounds %struct.MLoopCol, ptr %0, i64 0, i32 2
  %13 = load i8, ptr %12, align 1, !tbaa !226
  %14 = uitofp i8 %13 to float
  %15 = fmul float %14, %1
  %16 = fptoui float %15 to i8
  store i8 %16, ptr %12, align 1, !tbaa !226
  %17 = getelementptr inbounds %struct.MLoopCol, ptr %0, i64 0, i32 3
  %18 = load i8, ptr %17, align 1, !tbaa !227
  %19 = uitofp i8 %18 to float
  %20 = fmul float %19, %1
  %21 = fptoui float %20 to i8
  store i8 %21, ptr %17, align 1, !tbaa !227
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @layerInitMinMax_mloopcol(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1) #18 {
  store i32 -1, ptr %0, align 1
  store i32 0, ptr %1, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @layerAdd_mloopcol(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #19 {
  %3 = load i8, ptr %1, align 1, !tbaa !223
  %4 = load i8, ptr %0, align 1, !tbaa !223
  %5 = add i8 %4, %3
  store i8 %5, ptr %0, align 1, !tbaa !223
  %6 = getelementptr inbounds %struct.MLoopCol, ptr %1, i64 0, i32 1
  %7 = load i8, ptr %6, align 1, !tbaa !225
  %8 = getelementptr inbounds %struct.MLoopCol, ptr %0, i64 0, i32 1
  %9 = load i8, ptr %8, align 1, !tbaa !225
  %10 = add i8 %9, %7
  store i8 %10, ptr %8, align 1, !tbaa !225
  %11 = getelementptr inbounds %struct.MLoopCol, ptr %1, i64 0, i32 2
  %12 = load i8, ptr %11, align 1, !tbaa !226
  %13 = getelementptr inbounds %struct.MLoopCol, ptr %0, i64 0, i32 2
  %14 = load i8, ptr %13, align 1, !tbaa !226
  %15 = add i8 %14, %12
  store i8 %15, ptr %13, align 1, !tbaa !226
  %16 = getelementptr inbounds %struct.MLoopCol, ptr %1, i64 0, i32 3
  %17 = load i8, ptr %16, align 1, !tbaa !227
  %18 = getelementptr inbounds %struct.MLoopCol, ptr %0, i64 0, i32 3
  %19 = load i8, ptr %18, align 1, !tbaa !227
  %20 = add i8 %19, %17
  store i8 %20, ptr %18, align 1, !tbaa !227
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @layerDoMinMax_mloopcol(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #19 {
  %4 = load i8, ptr %0, align 1, !tbaa !223
  %5 = load i8, ptr %1, align 1, !tbaa !223
  %6 = icmp ult i8 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store i8 %4, ptr %1, align 1, !tbaa !223
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.MLoopCol, ptr %0, i64 0, i32 1
  %10 = load i8, ptr %9, align 1, !tbaa !225
  %11 = getelementptr inbounds %struct.MLoopCol, ptr %1, i64 0, i32 1
  %12 = load i8, ptr %11, align 1, !tbaa !225
  %13 = icmp ult i8 %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i8 %10, ptr %11, align 1, !tbaa !225
  br label %15

15:                                               ; preds = %14, %8
  %16 = getelementptr inbounds %struct.MLoopCol, ptr %0, i64 0, i32 2
  %17 = load i8, ptr %16, align 1, !tbaa !226
  %18 = getelementptr inbounds %struct.MLoopCol, ptr %1, i64 0, i32 2
  %19 = load i8, ptr %18, align 1, !tbaa !226
  %20 = icmp ult i8 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i8 %17, ptr %18, align 1, !tbaa !226
  br label %22

22:                                               ; preds = %21, %15
  %23 = getelementptr inbounds %struct.MLoopCol, ptr %0, i64 0, i32 3
  %24 = load i8, ptr %23, align 1, !tbaa !227
  %25 = getelementptr inbounds %struct.MLoopCol, ptr %1, i64 0, i32 3
  %26 = load i8, ptr %25, align 1, !tbaa !227
  %27 = icmp ult i8 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i8 %24, ptr %25, align 1, !tbaa !227
  br label %29

29:                                               ; preds = %28, %22
  %30 = load i8, ptr %0, align 1, !tbaa !223
  %31 = load i8, ptr %2, align 1, !tbaa !223
  %32 = icmp ugt i8 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i8 %30, ptr %2, align 1, !tbaa !223
  br label %34

34:                                               ; preds = %33, %29
  %35 = load i8, ptr %9, align 1, !tbaa !225
  %36 = getelementptr inbounds %struct.MLoopCol, ptr %2, i64 0, i32 1
  %37 = load i8, ptr %36, align 1, !tbaa !225
  %38 = icmp ugt i8 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i8 %35, ptr %36, align 1, !tbaa !225
  br label %40

40:                                               ; preds = %39, %34
  %41 = load i8, ptr %16, align 1, !tbaa !226
  %42 = getelementptr inbounds %struct.MLoopCol, ptr %2, i64 0, i32 2
  %43 = load i8, ptr %42, align 1, !tbaa !226
  %44 = icmp ugt i8 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i8 %41, ptr %42, align 1, !tbaa !226
  br label %46

46:                                               ; preds = %45, %40
  %47 = load i8, ptr %23, align 1, !tbaa !227
  %48 = getelementptr inbounds %struct.MLoopCol, ptr %2, i64 0, i32 3
  %49 = load i8, ptr %48, align 1, !tbaa !227
  %50 = icmp ugt i8 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i8 %47, ptr %48, align 1, !tbaa !227
  br label %52

52:                                               ; preds = %51, %46
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @layerCopyValue_mloopcol(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #19 {
  %3 = load i8, ptr %0, align 1, !tbaa !223
  store i8 %3, ptr %1, align 1, !tbaa !223
  %4 = getelementptr inbounds %struct.MLoopCol, ptr %0, i64 0, i32 1
  %5 = load i8, ptr %4, align 1, !tbaa !225
  %6 = getelementptr inbounds %struct.MLoopCol, ptr %1, i64 0, i32 1
  store i8 %5, ptr %6, align 1, !tbaa !225
  %7 = getelementptr inbounds %struct.MLoopCol, ptr %0, i64 0, i32 2
  %8 = load i8, ptr %7, align 1, !tbaa !226
  %9 = getelementptr inbounds %struct.MLoopCol, ptr %1, i64 0, i32 2
  store i8 %8, ptr %9, align 1, !tbaa !226
  %10 = getelementptr inbounds %struct.MLoopCol, ptr %0, i64 0, i32 3
  %11 = load i8, ptr %10, align 1, !tbaa !227
  %12 = getelementptr inbounds %struct.MLoopCol, ptr %1, i64 0, i32 3
  store i8 %11, ptr %12, align 1, !tbaa !227
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @layerCopy_mdisps(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #5 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %32

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  br label %7

7:                                                ; preds = %5, %24
  %8 = phi i64 [ 0, %5 ], [ %30, %24 ]
  %9 = getelementptr inbounds %struct.MDisps, ptr %0, i64 %8
  %10 = getelementptr inbounds %struct.MDisps, ptr %0, i64 %8, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !229
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %15 = tail call ptr %14(ptr noundef nonnull %11) #25
  %16 = getelementptr inbounds %struct.MDisps, ptr %1, i64 %8, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !229
  %17 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %18 = getelementptr inbounds %struct.MDisps, ptr %0, i64 %8, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !231
  %20 = tail call ptr %17(ptr noundef %19) #25
  %21 = getelementptr inbounds %struct.MDisps, ptr %1, i64 %8, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !231
  br label %24

22:                                               ; preds = %7
  %23 = getelementptr inbounds %struct.MDisps, ptr %1, i64 %8, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  br label %24

24:                                               ; preds = %22, %13
  %25 = load i32, ptr %9, align 8, !tbaa !232
  %26 = getelementptr inbounds %struct.MDisps, ptr %1, i64 %8
  store i32 %25, ptr %26, align 8, !tbaa !232
  %27 = getelementptr inbounds %struct.MDisps, ptr %0, i64 %8, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !233
  %29 = getelementptr inbounds %struct.MDisps, ptr %1, i64 %8, i32 1
  store i32 %28, ptr %29, align 4, !tbaa !233
  %30 = add nuw nsw i64 %8, 1
  %31 = icmp eq i64 %30, %6
  br i1 %31, label %32, label %7, !llvm.loop !234

32:                                               ; preds = %24, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @layerFree_mdisps(ptr nocapture noundef %0, i32 noundef %1, i32 %2) #5 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %24

5:                                                ; preds = %3
  %6 = zext nneg i32 %1 to i64
  br label %7

7:                                                ; preds = %5, %21
  %8 = phi i64 [ 0, %5 ], [ %22, %21 ]
  %9 = getelementptr inbounds %struct.MDisps, ptr %0, i64 %8
  %10 = getelementptr inbounds %struct.MDisps, ptr %0, i64 %8, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !229
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %14(ptr noundef nonnull %11) #25
  br label %15

15:                                               ; preds = %13, %7
  %16 = getelementptr inbounds %struct.MDisps, ptr %0, i64 %8, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !231
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %20(ptr noundef nonnull %17) #25
  br label %21

21:                                               ; preds = %19, %15
  %22 = add nuw nsw i64 %8, 1
  %23 = icmp eq i64 %22, %6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br i1 %23, label %24, label %7, !llvm.loop !235

24:                                               ; preds = %21, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @layerSwap_mdisps(ptr noundef %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.MDisps, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !229
  %5 = icmp eq ptr %4, null
  br i1 %5, label %54, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds i32, ptr %1, i64 1
  %8 = load i32, ptr %7, align 4, !tbaa !41
  %9 = icmp eq i32 %8, 3
  %10 = select i1 %9, i32 4, i32 3
  %11 = tail call i32 @multires_mdisp_corners(ptr noundef %0) #25
  %12 = load i32, ptr %0, align 8, !tbaa !232
  %13 = sdiv i32 %12, %11
  %14 = icmp eq i32 %11, %10
  br i1 %14, label %25, label %15

15:                                               ; preds = %6
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %17 = load ptr, ptr %3, align 8, !tbaa !229
  tail call void %16(ptr noundef %17) #25
  %18 = load i32, ptr %0, align 8, !tbaa !232
  %19 = sdiv i32 %18, %11
  %20 = mul nsw i32 %19, %10
  store i32 %20, ptr %0, align 8, !tbaa !232
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %22 = sext i32 %20 to i64
  %23 = mul nsw i64 %22, 12
  %24 = tail call ptr %21(i64 noundef %23, ptr noundef nonnull @.str.90) #25
  br label %52

25:                                               ; preds = %6
  %26 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %27 = sext i32 %12 to i64
  %28 = mul nsw i64 %27, 12
  %29 = tail call ptr %26(i64 noundef %28, ptr noundef nonnull @.str.91) #25
  %30 = icmp sgt i32 %11, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %25
  %32 = mul nsw i32 %13, 3
  %33 = sext i32 %32 to i64
  %34 = shl nsw i64 %33, 2
  %35 = sext i32 %13 to i64
  %36 = zext nneg i32 %11 to i64
  br label %37

37:                                               ; preds = %31, %37
  %38 = phi i64 [ 0, %31 ], [ %47, %37 ]
  %39 = mul nsw i64 %38, %35
  %40 = getelementptr inbounds [3 x float], ptr %29, i64 %39
  %41 = load ptr, ptr %3, align 8, !tbaa !229
  %42 = getelementptr inbounds i32, ptr %1, i64 %38
  %43 = load i32, ptr %42, align 4, !tbaa !41
  %44 = mul nsw i32 %43, %13
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [3 x float], ptr %41, i64 %45
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %40, ptr align 4 %46, i64 %34, i1 false)
  %47 = add nuw nsw i64 %38, 1
  %48 = icmp eq i64 %47, %36
  br i1 %48, label %49, label %37, !llvm.loop !236

49:                                               ; preds = %37, %25
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %51 = load ptr, ptr %3, align 8, !tbaa !229
  tail call void %50(ptr noundef %51) #25
  br label %52

52:                                               ; preds = %49, %15
  %53 = phi ptr [ %29, %49 ], [ %24, %15 ]
  store ptr %53, ptr %3, align 8, !tbaa !229
  br label %54

54:                                               ; preds = %52, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @layerRead_mdisps(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) #5 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %32

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  br label %7

7:                                                ; preds = %5, %29
  %8 = phi i64 [ 0, %5 ], [ %30, %29 ]
  %9 = getelementptr inbounds %struct.MDisps, ptr %1, i64 %8
  %10 = getelementptr inbounds %struct.MDisps, ptr %1, i64 %8, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !229
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %15 = load i32, ptr %9, align 8, !tbaa !232
  %16 = sext i32 %15 to i64
  %17 = mul nsw i64 %16, 12
  %18 = tail call ptr %14(i64 noundef %17, ptr noundef nonnull @.str.92) #25
  store ptr %18, ptr %10, align 8, !tbaa !229
  br label %19

19:                                               ; preds = %13, %7
  %20 = load i32, ptr %9, align 8, !tbaa !232
  %21 = mul i32 %20, 12
  %22 = load ptr, ptr %10, align 8, !tbaa !229
  %23 = tail call i32 @cdf_read_data(ptr noundef %0, i32 noundef %21, ptr noundef %22) #25
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = trunc i64 %8 to i32
  %27 = load i32, ptr %9, align 8, !tbaa !232
  %28 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.93, i32 noundef %26, i32 noundef %2, i32 noundef %27)
  br label %32

29:                                               ; preds = %19
  %30 = add nuw nsw i64 %8, 1
  %31 = icmp eq i64 %30, %6
  br i1 %31, label %32, label %7, !llvm.loop !237

32:                                               ; preds = %29, %3, %25
  %33 = phi i32 [ 0, %25 ], [ 1, %3 ], [ 1, %29 ]
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @layerWrite_mdisps(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #5 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %23

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  br label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ 0, %5 ], [ %21, %20 ]
  %9 = getelementptr inbounds %struct.MDisps, ptr %1, i64 %8
  %10 = load i32, ptr %9, align 8, !tbaa !232
  %11 = mul i32 %10, 12
  %12 = getelementptr inbounds %struct.MDisps, ptr %1, i64 %8, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !229
  %14 = tail call i32 @cdf_write_data(ptr noundef %0, i32 noundef %11, ptr noundef %13) #25
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %7
  %17 = trunc i64 %8 to i32
  %18 = load i32, ptr %9, align 8, !tbaa !232
  %19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.94, i32 noundef %17, i32 noundef %2, i32 noundef %18)
  br label %23

20:                                               ; preds = %7
  %21 = add nuw nsw i64 %8, 1
  %22 = icmp eq i64 %21, %6
  br i1 %22, label %23, label %7, !llvm.loop !238

23:                                               ; preds = %20, %3, %16
  %24 = phi i32 [ 0, %16 ], [ 1, %3 ], [ 1, %20 ]
  ret i32 %24
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i64 @layerFilesize_mdisps(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) #20 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %16, %7 ]
  %9 = phi i64 [ 0, %5 ], [ %15, %7 ]
  %10 = getelementptr inbounds %struct.MDisps, ptr %1, i64 %8
  %11 = load i32, ptr %10, align 8, !tbaa !232
  %12 = mul nsw i32 %11, 3
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 2
  %15 = add i64 %14, %9
  %16 = add nuw nsw i64 %8, 1
  %17 = icmp eq i64 %16, %6
  br i1 %17, label %18, label %7, !llvm.loop !239

18:                                               ; preds = %7, %3
  %19 = phi i64 [ 0, %3 ], [ %15, %7 ]
  ret i64 %19
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @layerInterp_shapekey(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture readnone %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #4 {
  %6 = icmp slt i32 %3, 1
  br i1 %6, label %52, label %7

7:                                                ; preds = %5
  %8 = icmp eq ptr %1, null
  %9 = zext nneg i32 %3 to i64
  br i1 %8, label %29, label %10

10:                                               ; preds = %7, %10
  %11 = phi i64 [ %27, %10 ], [ 0, %7 ]
  %12 = phi float [ %20, %10 ], [ 0.000000e+00, %7 ]
  %13 = phi float [ %23, %10 ], [ 0.000000e+00, %7 ]
  %14 = phi float [ %26, %10 ], [ 0.000000e+00, %7 ]
  %15 = getelementptr inbounds ptr, ptr %0, i64 %11
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = getelementptr inbounds float, ptr %1, i64 %11
  %18 = load float, ptr %17, align 4, !tbaa !175
  %19 = load float, ptr %16, align 4, !tbaa !175
  %20 = tail call float @llvm.fmuladd.f32(float %19, float %18, float %12)
  %21 = getelementptr inbounds float, ptr %16, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !175
  %23 = tail call float @llvm.fmuladd.f32(float %22, float %18, float %13)
  %24 = getelementptr inbounds float, ptr %16, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !175
  %26 = tail call float @llvm.fmuladd.f32(float %25, float %18, float %14)
  %27 = add nuw nsw i64 %11, 1
  %28 = icmp eq i64 %27, %9
  br i1 %28, label %46, label %10, !llvm.loop !240

29:                                               ; preds = %7, %29
  %30 = phi i64 [ %44, %29 ], [ 0, %7 ]
  %31 = phi float [ %37, %29 ], [ 0.000000e+00, %7 ]
  %32 = phi float [ %40, %29 ], [ 0.000000e+00, %7 ]
  %33 = phi float [ %43, %29 ], [ 0.000000e+00, %7 ]
  %34 = getelementptr inbounds ptr, ptr %0, i64 %30
  %35 = load ptr, ptr %34, align 8, !tbaa !34
  %36 = load float, ptr %35, align 4, !tbaa !175
  %37 = fadd float %31, %36
  %38 = getelementptr inbounds float, ptr %35, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !175
  %40 = fadd float %32, %39
  %41 = getelementptr inbounds float, ptr %35, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !175
  %43 = fadd float %33, %42
  %44 = add nuw nsw i64 %30, 1
  %45 = icmp eq i64 %44, %9
  br i1 %45, label %46, label %29, !llvm.loop !241

46:                                               ; preds = %10, %29
  %47 = phi float [ %43, %29 ], [ %26, %10 ]
  %48 = phi float [ %40, %29 ], [ %23, %10 ]
  %49 = phi float [ %37, %29 ], [ %20, %10 ]
  store float %49, ptr %4, align 4, !tbaa !175
  %50 = getelementptr inbounds float, ptr %4, i64 1
  store float %48, ptr %50, align 4, !tbaa !175
  %51 = getelementptr inbounds float, ptr %4, i64 2
  store float %47, ptr %51, align 4, !tbaa !175
  br label %52

52:                                               ; preds = %5, %46
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @layerInterp_bweight(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture readnone %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #4 {
  %6 = icmp slt i32 %3, 1
  br i1 %6, label %32, label %7

7:                                                ; preds = %5
  %8 = icmp eq ptr %1, null
  %9 = zext nneg i32 %3 to i64
  br i1 %8, label %21, label %10

10:                                               ; preds = %7, %10
  %11 = phi i64 [ %19, %10 ], [ 0, %7 ]
  %12 = phi float [ %18, %10 ], [ 0.000000e+00, %7 ]
  %13 = getelementptr inbounds ptr, ptr %0, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = load float, ptr %14, align 4, !tbaa !175
  %16 = getelementptr inbounds float, ptr %1, i64 %11
  %17 = load float, ptr %16, align 4, !tbaa !175
  %18 = tail call float @llvm.fmuladd.f32(float %15, float %17, float %12)
  %19 = add nuw nsw i64 %11, 1
  %20 = icmp eq i64 %19, %9
  br i1 %20, label %30, label %10, !llvm.loop !242

21:                                               ; preds = %7, %21
  %22 = phi i64 [ %28, %21 ], [ 0, %7 ]
  %23 = phi float [ %27, %21 ], [ 0.000000e+00, %7 ]
  %24 = getelementptr inbounds ptr, ptr %0, i64 %22
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = load float, ptr %25, align 4, !tbaa !175
  %27 = fadd float %23, %26
  %28 = add nuw nsw i64 %22, 1
  %29 = icmp eq i64 %28, %9
  br i1 %29, label %30, label %21, !llvm.loop !243

30:                                               ; preds = %10, %21
  %31 = phi float [ %27, %21 ], [ %18, %10 ]
  store float %31, ptr %4, align 4, !tbaa !175
  br label %32

32:                                               ; preds = %5, %30
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @layerInterp_mloop_origspace(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #4 {
  %6 = icmp eq ptr %2, null
  %7 = icmp sgt i32 %3, 0
  br i1 %6, label %12, label %8

8:                                                ; preds = %5
  br i1 %7, label %9, label %56

9:                                                ; preds = %8
  %10 = icmp eq ptr %1, null
  %11 = zext nneg i32 %3 to i64
  br label %16

12:                                               ; preds = %5
  br i1 %7, label %13, label %56

13:                                               ; preds = %12
  %14 = icmp eq ptr %1, null
  %15 = zext nneg i32 %3 to i64
  br label %38

16:                                               ; preds = %9, %24
  %17 = phi i64 [ 0, %9 ], [ %36, %24 ]
  %18 = phi ptr [ %2, %9 ], [ %35, %24 ]
  %19 = phi float [ 0.000000e+00, %9 ], [ %31, %24 ]
  %20 = phi float [ 0.000000e+00, %9 ], [ %34, %24 ]
  br i1 %10, label %24, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds float, ptr %1, i64 %17
  %23 = load float, ptr %22, align 4, !tbaa !175
  br label %24

24:                                               ; preds = %16, %21
  %25 = phi float [ %23, %21 ], [ 1.000000e+00, %16 ]
  %26 = getelementptr inbounds ptr, ptr %0, i64 %17
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = load float, ptr %18, align 4, !tbaa !175
  %29 = fmul float %25, %28
  %30 = load float, ptr %27, align 4, !tbaa !175
  %31 = tail call float @llvm.fmuladd.f32(float %30, float %29, float %19)
  %32 = getelementptr inbounds float, ptr %27, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !175
  %34 = tail call float @llvm.fmuladd.f32(float %33, float %29, float %20)
  %35 = getelementptr inbounds float, ptr %18, i64 1
  %36 = add nuw nsw i64 %17, 1
  %37 = icmp eq i64 %36, %11
  br i1 %37, label %56, label %16, !llvm.loop !244

38:                                               ; preds = %13, %45
  %39 = phi i64 [ 0, %13 ], [ %54, %45 ]
  %40 = phi float [ 0.000000e+00, %13 ], [ %50, %45 ]
  %41 = phi float [ 0.000000e+00, %13 ], [ %53, %45 ]
  br i1 %14, label %45, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds float, ptr %1, i64 %39
  %44 = load float, ptr %43, align 4, !tbaa !175
  br label %45

45:                                               ; preds = %38, %42
  %46 = phi float [ %44, %42 ], [ 1.000000e+00, %38 ]
  %47 = getelementptr inbounds ptr, ptr %0, i64 %39
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = load float, ptr %48, align 4, !tbaa !175
  %50 = tail call float @llvm.fmuladd.f32(float %49, float %46, float %40)
  %51 = getelementptr inbounds float, ptr %48, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !175
  %53 = tail call float @llvm.fmuladd.f32(float %52, float %46, float %41)
  %54 = add nuw nsw i64 %39, 1
  %55 = icmp eq i64 %54, %15
  br i1 %55, label %56, label %38, !llvm.loop !245

56:                                               ; preds = %24, %45, %8, %12
  %57 = phi float [ 0.000000e+00, %12 ], [ 0.000000e+00, %8 ], [ %53, %45 ], [ %34, %24 ]
  %58 = phi float [ 0.000000e+00, %12 ], [ 0.000000e+00, %8 ], [ %50, %45 ], [ %31, %24 ]
  store float %58, ptr %4, align 4, !tbaa !175
  %59 = getelementptr inbounds float, ptr %4, i64 1
  store float %57, ptr %59, align 4, !tbaa !175
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @layerEqual_mloop_origspace(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 {
  %3 = load float, ptr %1, align 4, !tbaa !175
  %4 = load float, ptr %0, align 4, !tbaa !175
  %5 = fsub float %3, %4
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !175
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !175
  %10 = fsub float %7, %9
  %11 = fmul float %10, %10
  %12 = tail call float @llvm.fmuladd.f32(float %5, float %5, float %11)
  %13 = fcmp olt float %12, 0x3EE4F8B580000000
  %14 = zext i1 %13 to i8
  ret i8 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @layerMultiply_mloop_origspace(ptr nocapture noundef %0, float noundef %1) #19 {
  %3 = load float, ptr %0, align 4, !tbaa !175
  %4 = fmul float %3, %1
  store float %4, ptr %0, align 4, !tbaa !175
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !175
  %7 = fmul float %6, %1
  store float %7, ptr %5, align 4, !tbaa !175
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @layerInitMinMax_mloop_origspace(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1) #18 {
  %3 = getelementptr inbounds [2 x float], ptr %0, i64 0, i64 1
  store float 0x46293E5940000000, ptr %3, align 4, !tbaa !175
  store float 0x46293E5940000000, ptr %0, align 4, !tbaa !175
  %4 = getelementptr inbounds [2 x float], ptr %1, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %4, align 4, !tbaa !175
  store float 0xC6293E5940000000, ptr %1, align 4, !tbaa !175
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @layerAdd_mloop_origspace(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #19 {
  %3 = load float, ptr %1, align 4, !tbaa !175
  %4 = load float, ptr %0, align 4, !tbaa !175
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !175
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !175
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !175
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !175
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @layerDoMinMax_mloop_origspace(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5 {
  tail call void @minmax_v2v2_v2(ptr noundef %1, ptr noundef %2, ptr noundef %0) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @layerCopyValue_mloop_origspace(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #19 {
  %3 = load float, ptr %0, align 4, !tbaa !175
  store float %3, ptr %1, align 4, !tbaa !175
  %4 = getelementptr inbounds float, ptr %0, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !175
  %6 = getelementptr inbounds float, ptr %1, i64 1
  store float %5, ptr %6, align 4, !tbaa !175
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @layerCopy_bmesh_elem_py_ptr(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #18 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  %7 = shl nuw nsw i64 %6, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %1, i8 0, i64 %7, i1 false), !tbaa !34
  br label %8

8:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @layerFree_bmesh_elem_py_ptr(ptr nocapture readnone %0, i32 %1, i32 %2) #0 {
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @layerCopy_grid_paint_mask(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #5 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %25

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  br label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ 0, %5 ], [ %23, %20 ]
  %9 = getelementptr inbounds %struct.GridPaintMask, ptr %0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !246
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %14 = tail call ptr %13(ptr noundef nonnull %10) #25
  %15 = getelementptr inbounds %struct.GridPaintMask, ptr %1, i64 %8
  store ptr %14, ptr %15, align 8, !tbaa !246
  %16 = getelementptr inbounds %struct.GridPaintMask, ptr %0, i64 %8, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !248
  br label %20

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.GridPaintMask, ptr %1, i64 %8
  store ptr null, ptr %19, align 8, !tbaa !246
  br label %20

20:                                               ; preds = %12, %18
  %21 = phi i32 [ %17, %12 ], [ 0, %18 ]
  %22 = getelementptr inbounds %struct.GridPaintMask, ptr %1, i64 %8, i32 1
  store i32 %21, ptr %22, align 8, !tbaa !248
  %23 = add nuw nsw i64 %8, 1
  %24 = icmp eq i64 %23, %6
  br i1 %24, label %25, label %7, !llvm.loop !249

25:                                               ; preds = %20, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @layerFree_grid_paint_mask(ptr nocapture noundef %0, i32 noundef %1, i32 %2) #5 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %3
  %6 = zext nneg i32 %1 to i64
  br label %7

7:                                                ; preds = %5, %14
  %8 = phi i64 [ 0, %5 ], [ %16, %14 ]
  %9 = getelementptr inbounds %struct.GridPaintMask, ptr %0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !246
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %13(ptr noundef nonnull %10) #25
  br label %14

14:                                               ; preds = %12, %7
  store ptr null, ptr %9, align 8, !tbaa !246
  %15 = getelementptr inbounds %struct.GridPaintMask, ptr %0, i64 %8, i32 1
  store i32 0, ptr %15, align 8, !tbaa !248
  %16 = add nuw nsw i64 %8, 1
  %17 = icmp eq i64 %16, %6
  br i1 %17, label %18, label %7, !llvm.loop !250

18:                                               ; preds = %14, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @layerInterp_mvert_skin(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture readnone %2, i32 noundef %3, ptr nocapture noundef %4) #4 {
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %5
  %8 = icmp eq ptr %1, null
  %9 = zext nneg i32 %3 to i64
  br label %10

10:                                               ; preds = %7, %18
  %11 = phi i64 [ 0, %7 ], [ %30, %18 ]
  %12 = phi float [ 0.000000e+00, %7 ], [ %23, %18 ]
  %13 = phi float [ 0.000000e+00, %7 ], [ %26, %18 ]
  %14 = phi float [ 0.000000e+00, %7 ], [ %29, %18 ]
  br i1 %8, label %18, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds float, ptr %1, i64 %11
  %17 = load float, ptr %16, align 4, !tbaa !175
  br label %18

18:                                               ; preds = %10, %15
  %19 = phi float [ %17, %15 ], [ 1.000000e+00, %10 ]
  %20 = getelementptr inbounds ptr, ptr %0, i64 %11
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = load float, ptr %21, align 4, !tbaa !175
  %23 = tail call float @llvm.fmuladd.f32(float %22, float %19, float %12)
  %24 = getelementptr inbounds float, ptr %21, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !175
  %26 = tail call float @llvm.fmuladd.f32(float %25, float %19, float %13)
  %27 = getelementptr inbounds float, ptr %21, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !175
  %29 = tail call float @llvm.fmuladd.f32(float %28, float %19, float %14)
  %30 = add nuw nsw i64 %11, 1
  %31 = icmp eq i64 %30, %9
  br i1 %31, label %32, label %10, !llvm.loop !251

32:                                               ; preds = %18, %5
  %33 = phi float [ 0.000000e+00, %5 ], [ %29, %18 ]
  %34 = phi float [ 0.000000e+00, %5 ], [ %26, %18 ]
  %35 = phi float [ 0.000000e+00, %5 ], [ %23, %18 ]
  store float %35, ptr %4, align 4, !tbaa !175
  %36 = getelementptr inbounds float, ptr %4, i64 1
  store float %34, ptr %36, align 4, !tbaa !175
  %37 = getelementptr inbounds float, ptr %4, i64 2
  store float %33, ptr %37, align 4, !tbaa !175
  %38 = getelementptr inbounds %struct.MVertSkin, ptr %4, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !252
  %40 = and i32 %39, -2
  store i32 %40, ptr %38, align 4, !tbaa !252
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal void @layerDefault_mvert_skin(ptr nocapture noundef writeonly %0, i32 noundef %1) #21 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %12, %6 ]
  %8 = getelementptr inbounds %struct.MVertSkin, ptr %0, i64 %7
  store float 2.500000e-01, ptr %8, align 4, !tbaa !175
  %9 = getelementptr inbounds float, ptr %8, i64 1
  store float 2.500000e-01, ptr %9, align 4, !tbaa !175
  %10 = getelementptr inbounds float, ptr %8, i64 2
  store float 2.500000e-01, ptr %10, align 4, !tbaa !175
  %11 = getelementptr inbounds %struct.MVertSkin, ptr %0, i64 %7, i32 1
  store i32 0, ptr %11, align 4, !tbaa !252
  %12 = add nuw nsw i64 %7, 1
  %13 = icmp eq i64 %12, %5
  br i1 %13, label %14, label %6, !llvm.loop !254

14:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @layerSwap_flnor(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #17 {
  %3 = alloca [4 x [3 x i16]], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 4, %2 ], [ %6, %4 ]
  %6 = add nsw i64 %5, -1
  %7 = getelementptr inbounds [4 x [3 x i16]], ptr %3, i64 0, i64 %6
  %8 = getelementptr inbounds i32, ptr %1, i64 %6
  %9 = load i32, ptr %8, align 4, !tbaa !41
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x [3 x i16]], ptr %0, i64 0, i64 %10
  %12 = load i16, ptr %11, align 2, !tbaa !189
  store i16 %12, ptr %7, align 2, !tbaa !189
  %13 = getelementptr inbounds i16, ptr %11, i64 1
  %14 = load i16, ptr %13, align 2, !tbaa !189
  %15 = getelementptr inbounds i16, ptr %7, i64 1
  store i16 %14, ptr %15, align 2, !tbaa !189
  %16 = getelementptr inbounds i16, ptr %11, i64 2
  %17 = load i16, ptr %16, align 2, !tbaa !189
  %18 = getelementptr inbounds i16, ptr %7, i64 2
  store i16 %17, ptr %18, align 2, !tbaa !189
  %19 = icmp eq i64 %6, 0
  br i1 %19, label %20, label %4, !llvm.loop !255

20:                                               ; preds = %4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #22

declare void @minmax_v2v2_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare i32 @multires_mdisp_corners(ptr noundef) local_unnamed_addr #8

declare i32 @cdf_read_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

declare i32 @cdf_write_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #8

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #8

declare void @bmiter__face_of_edge_begin(ptr noundef) #8

declare ptr @bmiter__face_of_edge_step(ptr noundef) #8

declare void @bmiter__vert_of_face_begin(ptr noundef) #8

declare ptr @bmiter__vert_of_face_step(ptr noundef) #8

declare void @bmiter__edge_of_face_begin(ptr noundef) #8

declare ptr @bmiter__edge_of_face_step(ptr noundef) #8

declare void @bmiter__loop_of_face_begin(ptr noundef) #8

declare ptr @bmiter__loop_of_face_step(ptr noundef) #8

declare ptr @BLI_mempool_alloc(ptr noundef) local_unnamed_addr #8

declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nofree nounwind willreturn memory(argmem: read) }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nounwind }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !39, !40}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !{!42, !42, i64 0}
!42 = !{!"int", !36, i64 0}
!43 = !{!44, !42, i64 172}
!44 = !{!"CustomData", !35, i64 0, !36, i64 8, !42, i64 172, !42, i64 176, !42, i64 180, !35, i64 184, !35, i64 192}
!45 = !{!44, !35, i64 0}
!46 = !{!47, !42, i64 0}
!47 = !{!"CustomDataLayer", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !36, i64 32, !35, i64 96}
!48 = distinct !{!48, !39, !40}
!49 = !{!50, !35, i64 24}
!50 = !{!"LayerTypeInfo", !42, i64 0, !35, i64 8, !42, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144}
!51 = !{!50, !35, i64 144}
!52 = !{!47, !42, i64 12}
!53 = !{!47, !42, i64 16}
!54 = !{!47, !42, i64 20}
!55 = !{!47, !42, i64 24}
!56 = !{!47, !42, i64 8}
!57 = distinct !{!57, !39, !40}
!58 = !{!47, !35, i64 96}
!59 = !{!47, !42, i64 28}
!60 = distinct !{!60, !39, !40}
!61 = !{!50, !42, i64 0}
!62 = !{!50, !35, i64 32}
!63 = !{!50, !35, i64 64}
!64 = !{!44, !42, i64 176}
!65 = distinct !{!65, !39, !40}
!66 = !{i64 0, i64 4, !41, i64 4, i64 4, !41, i64 8, i64 4, !41, i64 12, i64 4, !41, i64 16, i64 4, !41, i64 20, i64 4, !41, i64 24, i64 4, !41, i64 28, i64 4, !41, i64 32, i64 64, !67, i64 96, i64 8, !34}
!67 = !{!36, !36, i64 0}
!68 = !{!69, !35, i64 0}
!69 = !{!"", !35, i64 0, !42, i64 8, !42, i64 12}
!70 = !{!69, !42, i64 8}
!71 = !{!69, !42, i64 12}
!72 = !{!47, !42, i64 4}
!73 = distinct !{!73, !39, !40}
!74 = !{!44, !42, i64 180}
!75 = !{!44, !35, i64 192}
!76 = !{i8 0, i8 2}
!77 = !{!50, !35, i64 40}
!78 = distinct !{!78, !39, !40}
!79 = distinct !{!79, !39, !40}
!80 = distinct !{!80, !39, !40}
!81 = distinct !{!81, !39, !40}
!82 = distinct !{!82, !39, !40}
!83 = distinct !{!83, !39, !40}
!84 = distinct !{!84, !39, !40}
!85 = distinct !{!85, !39, !40}
!86 = distinct !{!86, !39, !40}
!87 = distinct !{!87, !39, !40}
!88 = distinct !{!88, !39, !40}
!89 = distinct !{!89, !39, !40}
!90 = distinct !{!90, !39, !40}
!91 = distinct !{!91, !39, !40}
!92 = distinct !{!92, !39, !40}
!93 = distinct !{!93, !39, !40}
!94 = distinct !{!94, !39, !40}
!95 = distinct !{!95, !39, !40}
!96 = distinct !{!96, !39, !40}
!97 = distinct !{!97, !39, !40}
!98 = distinct !{!98, !39, !40}
!99 = distinct !{!99, !39, !40}
!100 = distinct !{!100, !39, !40}
!101 = !{!50, !35, i64 48}
!102 = distinct !{!102, !39, !40}
!103 = distinct !{!103, !39, !40}
!104 = !{!50, !35, i64 56}
!105 = distinct !{!105, !39, !40}
!106 = distinct !{!106, !39, !40}
!107 = distinct !{!107, !39, !40}
!108 = distinct !{!108, !39, !40}
!109 = !{!110, !42, i64 0}
!110 = !{!"BMAllocTemplate", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!111 = !{!110, !42, i64 4}
!112 = !{!110, !42, i64 8}
!113 = !{!110, !42, i64 12}
!114 = !{!44, !35, i64 184}
!115 = !{i64 0, i64 8, !34, i64 8, i64 164, !67, i64 172, i64 4, !41, i64 176, i64 4, !41, i64 180, i64 4, !41, i64 184, i64 8, !34, i64 192, i64 8, !34}
!116 = !{!117, !36, i64 60}
!117 = !{!"BMIter", !36, i64 0, !35, i64 40, !35, i64 48, !42, i64 56, !36, i64 60}
!118 = !{!117, !35, i64 40}
!119 = !{!117, !35, i64 48}
!120 = !{!121, !35, i64 32}
!121 = !{!"BMesh", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !36, i64 28, !36, i64 29, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !42, i64 88, !42, i64 92, !42, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !42, i64 128, !35, i64 136, !44, i64 144, !44, i64 344, !44, i64 544, !44, i64 744, !122, i64 944, !42, i64 948, !42, i64 952, !42, i64 956, !123, i64 960, !35, i64 976, !123, i64 984, !35, i64 1000}
!122 = !{!"short", !36, i64 0}
!123 = !{!"ListBase", !35, i64 0, !35, i64 8}
!124 = !{!121, !35, i64 40}
!125 = !{!121, !35, i64 56}
!126 = !{!127, !35, i64 0}
!127 = !{!"BMHeader", !35, i64 0, !42, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!128 = distinct !{!128, !39, !40}
!129 = distinct !{!129, !39, !40}
!130 = !{!131, !35, i64 0}
!131 = !{!"BMLoop", !127, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64}
!132 = distinct !{!132, !39, !40}
!133 = distinct !{!133, !39, !40}
!134 = distinct !{!134, !39, !40}
!135 = distinct !{!135, !39, !40}
!136 = distinct !{!136, !39, !40}
!137 = !{!50, !35, i64 72}
!138 = !{!50, !35, i64 96}
!139 = !{!50, !35, i64 80}
!140 = !{!50, !35, i64 88}
!141 = !{!50, !35, i64 104}
!142 = distinct !{!142, !39, !40}
!143 = distinct !{!143, !39, !40}
!144 = distinct !{!144, !39, !40}
!145 = !{!50, !35, i64 112}
!146 = distinct !{!146, !39, !40}
!147 = distinct !{!147, !39, !40}
!148 = distinct !{!148, !39, !40}
!149 = distinct !{!149, !39, !40}
!150 = distinct !{!150, !39, !40}
!151 = distinct !{!151, !39, !40}
!152 = distinct !{!152, !39, !40}
!153 = distinct !{!153, !39, !40}
!154 = !{!50, !35, i64 8}
!155 = !{!50, !42, i64 16}
!156 = distinct !{!156, !39, !40}
!157 = distinct !{!157, !39, !40}
!158 = distinct !{!158, !39, !40}
!159 = !{!50, !35, i64 120}
!160 = distinct !{!160, !39, !40}
!161 = !{!162, !35, i64 24}
!162 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !122, i64 98, !42, i64 100, !42, i64 104, !42, i64 108, !35, i64 112}
!163 = distinct !{!163, !39, !40}
!164 = !{!50, !35, i64 128}
!165 = distinct !{!165, !39, !40}
!166 = !{!50, !35, i64 136}
!167 = distinct !{!167, !39, !40}
!168 = distinct !{!168, !39, !40}
!169 = distinct !{!169, !39, !40}
!170 = !{!171, !42, i64 8}
!171 = !{!"MDeformVert", !35, i64 0, !42, i64 8, !42, i64 12}
!172 = !{!171, !35, i64 0}
!173 = distinct !{!173, !39, !40}
!174 = distinct !{!174, !39, !40}
!175 = !{!176, !176, i64 0}
!176 = !{!"float", !36, i64 0}
!177 = !{!178, !176, i64 4}
!178 = !{!"MDeformWeight", !42, i64 0, !176, i64 4}
!179 = !{!178, !42, i64 0}
!180 = !{!181, !35, i64 0}
!181 = !{!"MDeformWeight_Link", !35, i64 0, !178, i64 8}
!182 = distinct !{!182, !39, !40}
!183 = !{!181, !42, i64 8}
!184 = !{!181, !176, i64 12}
!185 = distinct !{!185, !39, !40}
!186 = distinct !{!186, !39, !40}
!187 = distinct !{!187, !39, !40}
!188 = !{i64 0, i64 32, !67, i64 32, i64 8, !34, i64 40, i64 1, !67, i64 41, i64 1, !67, i64 42, i64 2, !189, i64 44, i64 2, !189, i64 46, i64 2, !189}
!189 = !{!122, !122, i64 0}
!190 = distinct !{!190, !39, !40}
!191 = distinct !{!191, !39, !40}
!192 = distinct !{!192, !39, !40}
!193 = distinct !{!193, !39, !40}
!194 = !{!195, !122, i64 46}
!195 = !{!"MTFace", !36, i64 0, !35, i64 32, !36, i64 40, !36, i64 41, !122, i64 42, !122, i64 44, !122, i64 46}
!196 = !{!195, !36, i64 40}
!197 = distinct !{!197, !39, !40}
!198 = distinct !{!198, !39, !40}
!199 = !{!200, !176, i64 0}
!200 = !{!"", !176, i64 0, !176, i64 4, !176, i64 8, !176, i64 12}
!201 = !{!200, !176, i64 4}
!202 = !{!200, !176, i64 8}
!203 = !{!200, !176, i64 12}
!204 = !{!205, !36, i64 0}
!205 = !{!"MCol", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3}
!206 = !{!205, !36, i64 1}
!207 = !{!205, !36, i64 2}
!208 = !{!205, !36, i64 3}
!209 = distinct !{!209, !39, !40}
!210 = distinct !{!210, !39, !40}
!211 = distinct !{!211, !39, !40}
!212 = distinct !{!212, !39, !40}
!213 = distinct !{!213, !39, !40}
!214 = !{i64 0, i64 32, !67}
!215 = distinct !{!215, !39, !40}
!216 = distinct !{!216, !39, !40}
!217 = distinct !{!217, !39, !40}
!218 = distinct !{!218, !39, !40}
!219 = distinct !{!219, !39, !40}
!220 = distinct !{!220, !39, !40}
!221 = distinct !{!221, !39, !40}
!222 = distinct !{!222, !39, !40}
!223 = !{!224, !36, i64 0}
!224 = !{!"MLoopCol", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3}
!225 = !{!224, !36, i64 1}
!226 = !{!224, !36, i64 2}
!227 = !{!224, !36, i64 3}
!228 = distinct !{!228, !39, !40}
!229 = !{!230, !35, i64 8}
!230 = !{!"MDisps", !42, i64 0, !42, i64 4, !35, i64 8, !35, i64 16}
!231 = !{!230, !35, i64 16}
!232 = !{!230, !42, i64 0}
!233 = !{!230, !42, i64 4}
!234 = distinct !{!234, !39, !40}
!235 = distinct !{!235, !39, !40}
!236 = distinct !{!236, !39, !40}
!237 = distinct !{!237, !39, !40}
!238 = distinct !{!238, !39, !40}
!239 = distinct !{!239, !39, !40}
!240 = distinct !{!240, !39, !40}
!241 = distinct !{!241, !39, !40}
!242 = distinct !{!242, !39, !40}
!243 = distinct !{!243, !39, !40}
!244 = distinct !{!244, !39, !40}
!245 = distinct !{!245, !39, !40}
!246 = !{!247, !35, i64 0}
!247 = !{!"GridPaintMask", !35, i64 0, !42, i64 8, !42, i64 12}
!248 = !{!247, !42, i64 8}
!249 = distinct !{!249, !39, !40}
!250 = distinct !{!250, !39, !40}
!251 = distinct !{!251, !39, !40}
!252 = !{!253, !42, i64 12}
!253 = !{!"MVertSkin", !36, i64 0, !42, i64 12}
!254 = distinct !{!254, !39, !40}
!255 = distinct !{!255, !39, !40}
