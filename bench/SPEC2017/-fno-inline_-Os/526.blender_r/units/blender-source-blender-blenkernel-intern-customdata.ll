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
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.anon = type { ptr, i32, i32 }
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
@reltable.layerType_getName = internal unnamed_addr constant [41 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.8 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.9 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.10 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.11 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.12 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.13 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.14 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.15 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.16 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.17 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.18 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.19 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.20 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.21 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.22 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.23 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.24 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.25 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.26 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.27 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.28 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.29 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.30 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.31 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.32 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.33 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.34 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.35 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.36 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.37 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.38 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.39 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.40 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.41 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.42 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.43 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.44 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.45 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.46 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.47 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.48 to i64), i64 ptrtoint (ptr @reltable.layerType_getName to i64)) to i32)], align 4
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
@LAYERTYPEINFO = internal constant [41 x %struct.LayerTypeInfo] [%struct.LayerTypeInfo { i32 20, ptr @.str.49, i32 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 8, ptr @.str.50, i32 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 16, ptr @.str.51, i32 1, ptr null, ptr @layerCopy_mdeformvert, ptr @layerFree_mdeformvert, ptr @layerInterp_mdeformvert, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 12, ptr @.str.52, i32 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 20, ptr @.str.53, i32 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 48, ptr @.str.54, i32 1, ptr @.str.55, ptr @layerCopy_tface, ptr null, ptr @layerInterp_tface, ptr @layerSwap_tface, ptr @layerDefault_tface, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @layerMaxNum_tface }, %struct.LayerTypeInfo { i32 16, ptr @.str.56, i32 4, ptr @.str.57, ptr null, ptr null, ptr @layerInterp_mcol, ptr @layerSwap_mcol, ptr @layerDefault_mcol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @layerMaxNum_mloopcol }, %struct.LayerTypeInfo { i32 4, ptr @.str.50, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @layerDefault_origindex, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 12, ptr @.str.58, i32 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 4, ptr @.str.50, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 4, ptr @.str.59, i32 1, ptr @.str.60, ptr @layerCopy_propFloat, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 4, ptr @.str.61, i32 1, ptr @.str.62, ptr @layerCopy_propInt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 256, ptr @.str.63, i32 1, ptr @.str.64, ptr @layerCopy_propString, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 32, ptr @.str.65, i32 1, ptr @.str.55, ptr @layerCopy_origspace_face, ptr null, ptr @layerInterp_origspace_face, ptr @layerSwap_origspace_face, ptr @layerDefault_origspace_face, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 12, ptr @.str.50, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 16, ptr @.str.66, i32 1, ptr @.str.55, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @layerMaxNum_tface }, %struct.LayerTypeInfo { i32 12, ptr @.str.67, i32 1, ptr @.str.55, ptr null, ptr null, ptr @layerInterp_mloopuv, ptr null, ptr null, ptr @layerEqual_mloopuv, ptr @layerMultiply_mloopuv, ptr @layerInitMinMax_mloopuv, ptr @layerAdd_mloopuv, ptr @layerDoMinMax_mloopuv, ptr @layerCopyValue_mloopuv, ptr null, ptr null, ptr null, ptr @layerMaxNum_tface }, %struct.LayerTypeInfo { i32 4, ptr @.str.68, i32 1, ptr @.str.57, ptr null, ptr null, ptr @layerInterp_mloopcol, ptr null, ptr @layerDefault_mloopcol, ptr @layerEqual_mloopcol, ptr @layerMultiply_mloopcol, ptr @layerInitMinMax_mloopcol, ptr @layerAdd_mloopcol, ptr @layerDoMinMax_mloopcol, ptr @layerCopyValue_mloopcol, ptr null, ptr null, ptr null, ptr @layerMaxNum_mloopcol }, %struct.LayerTypeInfo { i32 64, ptr @.str.50, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 24, ptr @.str.69, i32 1, ptr null, ptr @layerCopy_mdisps, ptr @layerFree_mdisps, ptr null, ptr @layerSwap_mdisps, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @layerRead_mdisps, ptr @layerWrite_mdisps, ptr @layerFilesize_mdisps, ptr null }, %struct.LayerTypeInfo { i32 16, ptr @.str.56, i32 4, ptr @.str.70, ptr null, ptr null, ptr @layerInterp_mcol, ptr @layerSwap_mcol, ptr @layerDefault_mcol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 16, ptr @.str.56, i32 4, ptr @.str.71, ptr null, ptr null, ptr @layerInterp_mcol, ptr @layerSwap_mcol, ptr @layerDefault_mcol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 16, ptr @.str.56, i32 4, ptr @.str.72, ptr null, ptr null, ptr @layerInterp_mcol, ptr @layerSwap_mcol, ptr @layerDefault_mcol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 12, ptr @.str.50, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 4, ptr @.str.73, i32 1, ptr @.str.74, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 12, ptr @.str.75, i32 1, ptr @.str.76, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 8, ptr @.str.77, i32 1, ptr @.str.78, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 4, ptr @.str.50, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 12, ptr @.str.50, i32 0, ptr @.str.79, ptr null, ptr null, ptr @layerInterp_shapekey, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 4, ptr @.str.50, i32 0, ptr @.str.80, ptr null, ptr null, ptr @layerInterp_bweight, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 4, ptr @.str.50, i32 0, ptr @.str.81, ptr null, ptr null, ptr @layerInterp_bweight, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 8, ptr @.str.82, i32 1, ptr @.str.83, ptr null, ptr null, ptr @layerInterp_mloop_origspace, ptr null, ptr null, ptr @layerEqual_mloop_origspace, ptr @layerMultiply_mloop_origspace, ptr @layerInitMinMax_mloop_origspace, ptr @layerAdd_mloop_origspace, ptr @layerDoMinMax_mloop_origspace, ptr @layerCopyValue_mloop_origspace, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 4, ptr @.str.68, i32 1, ptr @.str.84, ptr null, ptr null, ptr @layerInterp_mloopcol, ptr null, ptr @layerDefault_mloopcol, ptr @layerEqual_mloopcol, ptr @layerMultiply_mloopcol, ptr @layerInitMinMax_mloopcol, ptr @layerAdd_mloopcol, ptr @layerDoMinMax_mloopcol, ptr @layerCopyValue_mloopcol, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 8, ptr @.str.50, i32 1, ptr null, ptr @layerCopy_bmesh_elem_py_ptr, ptr @layerFree_bmesh_elem_py_ptr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 4, ptr @.str.50, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 16, ptr @.str.85, i32 1, ptr null, ptr @layerCopy_grid_paint_mask, ptr @layerFree_grid_paint_mask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 16, ptr @.str.86, i32 1, ptr null, ptr null, ptr null, ptr @layerInterp_mvert_skin, ptr null, ptr @layerDefault_mvert_skin, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 4, ptr @.str.87, i32 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 4, ptr @.str.88, i32 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 16, ptr @.str.50, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.LayerTypeInfo { i32 24, ptr @.str.50, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @layerSwap_flnor, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }], align 16
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @bpy_bm_generic_invalidate(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @customData_mask_layers__print(i64 noundef %0) local_unnamed_addr #1 {
  %2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i64 noundef %0) #26
  br label %3

3:                                                ; preds = %1, %12
  %4 = phi i64 [ 0, %1 ], [ %13, %12 ]
  %5 = shl nuw nsw i64 1, %4
  %6 = and i64 %5, %0
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = trunc i64 %4 to i32
  %10 = tail call fastcc ptr @layerType_getName(i32 noundef %9) #26
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %10) #26
  br label %12

12:                                               ; preds = %3, %8
  %13 = add nuw nsw i64 %4, 1
  %14 = icmp eq i64 %13, 41
  br i1 %14, label %15, label %3, !llvm.loop !34

15:                                               ; preds = %12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @layerType_getName(i32 noundef %0) unnamed_addr #0 !PGOFuncName !36 {
  %2 = icmp ugt i32 %0, 40
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = shl i64 %4, 2
  %6 = call ptr @llvm.load.relative.i64(ptr @reltable.layerType_getName, i64 %5)
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi ptr [ %6, %3 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @CustomData_update_typemap(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(164) %2, i8 -1, i64 164, i1 false), !tbaa !37
  %3 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !41
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %27

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !44
  br label %8

8:                                                ; preds = %6, %21
  %9 = phi i32 [ %4, %6 ], [ %22, %21 ]
  %10 = phi i64 [ 0, %6 ], [ %24, %21 ]
  %11 = phi i32 [ -1, %6 ], [ %23, %21 ]
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %7, i64 %10
  %13 = load i32, ptr %12, align 8, !tbaa !45
  %14 = icmp eq i32 %13, %11
  br i1 %14, label %21, label %15

15:                                               ; preds = %8
  %16 = sext i32 %13 to i64
  %17 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %16
  %18 = trunc i64 %10 to i32
  store i32 %18, ptr %17, align 4, !tbaa !37
  %19 = load i32, ptr %12, align 8, !tbaa !45
  %20 = load i32, ptr %3, align 4, !tbaa !41
  br label %21

21:                                               ; preds = %15, %8
  %22 = phi i32 [ %20, %15 ], [ %9, %8 ]
  %23 = phi i32 [ %19, %15 ], [ %11, %8 ]
  %24 = add nuw nsw i64 %10, 1
  %25 = sext i32 %22 to i64
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %8, label %27, !llvm.loop !47

27:                                               ; preds = %21, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @CustomData_merge(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 {
  %6 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !41
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %79

9:                                                ; preds = %5
  %10 = icmp ne i32 %3, 0
  br label %11

11:                                               ; preds = %9, %73
  %12 = phi i64 [ 0, %9 ], [ %75, %73 ]
  %13 = phi i8 [ 0, %9 ], [ %74, %73 ]
  %14 = phi i32 [ -1, %9 ], [ %35, %73 ]
  %15 = phi i32 [ 0, %9 ], [ %34, %73 ]
  %16 = phi i32 [ 0, %9 ], [ %33, %73 ]
  %17 = phi i32 [ -1, %9 ], [ %32, %73 ]
  %18 = phi <4 x i32> [ zeroinitializer, %9 ], [ %36, %73 ]
  %19 = load ptr, ptr %0, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct.CustomDataLayer, ptr %19, i64 %12
  %21 = load i32, ptr %20, align 8, !tbaa !45
  %22 = icmp eq i32 %21, %17
  br i1 %22, label %29, label %23

23:                                               ; preds = %11
  %24 = tail call i32 @CustomData_layertype_layers_max(i32 noundef %21) #26
  %25 = getelementptr inbounds %struct.CustomDataLayer, ptr %19, i64 %12, i32 3
  %26 = load <4 x i32>, ptr %25, align 4, !tbaa !37
  %27 = getelementptr inbounds %struct.CustomDataLayer, ptr %19, i64 %12, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !48
  br label %31

29:                                               ; preds = %11
  %30 = add nsw i32 %15, 1
  br label %31

31:                                               ; preds = %29, %23
  %32 = phi i32 [ %21, %23 ], [ %17, %29 ]
  %33 = phi i32 [ %28, %23 ], [ %16, %29 ]
  %34 = phi i32 [ 0, %23 ], [ %30, %29 ]
  %35 = phi i32 [ %24, %23 ], [ %14, %29 ]
  %36 = phi <4 x i32> [ %26, %23 ], [ %18, %29 ]
  %37 = and i32 %33, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %73

39:                                               ; preds = %31
  %40 = zext nneg i32 %21 to i64
  %41 = shl nuw i64 1, %40
  %42 = and i64 %41, %2
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %73, label %44

44:                                               ; preds = %39
  %45 = icmp eq i32 %35, -1
  %46 = icmp slt i32 %34, %35
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %48, label %73

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.CustomDataLayer, ptr %19, i64 %12, i32 8
  %50 = tail call ptr @CustomData_get_layer_named(ptr noundef %1, i32 noundef %21, ptr noundef nonnull %49) #26
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %73

52:                                               ; preds = %48
  switch i32 %3, label %56 [
    i32 0, label %53
    i32 3, label %53
    i32 4, label %53
  ]

53:                                               ; preds = %52, %52, %52
  %54 = getelementptr inbounds %struct.CustomDataLayer, ptr %19, i64 %12, i32 9
  %55 = load ptr, ptr %54, align 8, !tbaa !49
  br label %56

56:                                               ; preds = %52, %53
  %57 = phi ptr [ %55, %53 ], [ null, %52 ]
  %58 = and i32 %33, 2
  %59 = icmp eq i32 %58, 0
  %60 = or i1 %10, %59
  %61 = select i1 %60, i32 %3, i32 3
  %62 = tail call fastcc ptr @customData_add_layer__internal(ptr noundef %1, i32 noundef %21, i32 noundef %61, ptr noundef %57, i32 noundef %4, ptr noundef nonnull %49) #26
  %63 = icmp eq ptr %62, null
  br i1 %63, label %73, label %64

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.CustomDataLayer, ptr %19, i64 %12, i32 7
  %66 = load i32, ptr %65, align 4, !tbaa !50
  %67 = getelementptr inbounds %struct.CustomDataLayer, ptr %62, i64 0, i32 7
  store i32 %66, ptr %67, align 4, !tbaa !50
  %68 = getelementptr inbounds %struct.CustomDataLayer, ptr %62, i64 0, i32 3
  store <4 x i32> %36, ptr %68, align 4, !tbaa !37
  %69 = and i32 %33, 24
  %70 = getelementptr inbounds %struct.CustomDataLayer, ptr %62, i64 0, i32 2
  %71 = load i32, ptr %70, align 8, !tbaa !48
  %72 = or i32 %71, %69
  store i32 %72, ptr %70, align 8, !tbaa !48
  br label %73

73:                                               ; preds = %44, %56, %64, %48, %39, %31
  %74 = phi i8 [ %13, %31 ], [ %13, %48 ], [ 1, %64 ], [ %13, %56 ], [ %13, %39 ], [ %13, %44 ]
  %75 = add nuw nsw i64 %12, 1
  %76 = load i32, ptr %6, align 4, !tbaa !41
  %77 = sext i32 %76 to i64
  %78 = icmp slt i64 %75, %77
  br i1 %78, label %11, label %79, !llvm.loop !51

79:                                               ; preds = %73, %5
  %80 = phi i8 [ 0, %5 ], [ %74, %73 ]
  tail call void @CustomData_update_typemap(ptr noundef %1) #26
  ret i8 %80
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @CustomData_layertype_layers_max(i32 noundef %0) local_unnamed_addr #5 {
  %2 = tail call fastcc ptr @layerType_getInfo(i32 noundef %0) #26
  %3 = getelementptr inbounds %struct.LayerTypeInfo, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.LayerTypeInfo, ptr %2, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 %8() #27
  br label %12

12:                                               ; preds = %6, %1, %10
  %13 = phi i32 [ %11, %10 ], [ 1, %1 ], [ -1, %6 ]
  ret i32 %13
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @CustomData_get_layer_named(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #6 {
  %4 = tail call i32 @CustomData_get_named_layer_index(ptr noundef %0, i32 noundef %1, ptr noundef %2) #26
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !44
  %8 = sext i32 %4 to i64
  %9 = getelementptr inbounds %struct.CustomDataLayer, ptr %7, i64 %8, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  br label %11

11:                                               ; preds = %3, %6
  %12 = phi ptr [ %10, %6 ], [ null, %3 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @customData_add_layer__internal(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #5 !PGOFuncName !55 {
  %7 = tail call fastcc ptr @layerType_getInfo(i32 noundef %1) #26
  %8 = load i32, ptr %7, align 8, !tbaa !56
  %9 = mul nsw i32 %8, %4
  %10 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !41
  %12 = getelementptr inbounds %struct.LayerTypeInfo, ptr %7, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %6
  %16 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %0, i32 noundef %1) #26, !range !57
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %0, align 8, !tbaa !44
  %20 = tail call i32 @CustomData_get_layer_index(ptr noundef nonnull %0, i32 noundef %1) #26
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.CustomDataLayer, ptr %19, i64 %21
  br label %115

23:                                               ; preds = %15, %6
  switch i32 %2, label %24 [
    i32 3, label %44
    i32 0, label %44
  ]

24:                                               ; preds = %23
  %25 = icmp sgt i32 %9, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %24
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %28 = zext nneg i32 %9 to i64
  %29 = tail call fastcc ptr @layerType_getName(i32 noundef %1) #26
  %30 = tail call ptr %27(i64 noundef %28, ptr noundef %29) #27
  %31 = icmp eq ptr %30, null
  br i1 %31, label %115, label %32

32:                                               ; preds = %24, %26
  %33 = phi ptr [ %30, %26 ], [ null, %24 ]
  %34 = icmp eq i32 %2, 4
  %35 = icmp ne ptr %3, null
  %36 = and i1 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.LayerTypeInfo, ptr %7, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !59
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void %39(ptr noundef nonnull %3, ptr noundef %33, i32 noundef %4) #27
  br label %52

42:                                               ; preds = %37
  %43 = sext i32 %9 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %33, ptr nonnull align 1 %3, i64 %43, i1 false)
  br label %52

44:                                               ; preds = %23, %23, %32
  %45 = phi ptr [ %33, %32 ], [ %3, %23 ], [ %3, %23 ]
  switch i32 %2, label %52 [
    i32 2, label %46
    i32 3, label %51
  ]

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.LayerTypeInfo, ptr %7, i64 0, i32 8
  %48 = load ptr, ptr %47, align 8, !tbaa !60
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  tail call void %48(ptr noundef %45, i32 noundef %4) #27
  br label %52

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %44, %50, %46, %51, %41, %42
  %53 = phi ptr [ %33, %41 ], [ %33, %42 ], [ %45, %50 ], [ %45, %46 ], [ %45, %51 ], [ %45, %44 ]
  %54 = phi i32 [ 0, %41 ], [ 0, %42 ], [ 0, %50 ], [ 0, %46 ], [ 2, %51 ], [ 0, %44 ]
  %55 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 3
  %56 = load i32, ptr %55, align 8, !tbaa !61
  %57 = icmp slt i32 %11, %56
  br i1 %57, label %65, label %58

58:                                               ; preds = %52
  %59 = tail call fastcc i32 @customData_resize(ptr noundef nonnull %0, i32 noundef 5) #26, !range !62
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = icmp eq ptr %53, %3
  br i1 %62, label %115, label %63

63:                                               ; preds = %61
  %64 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %64(ptr noundef %53) #27
  br label %115

65:                                               ; preds = %58, %52
  %66 = load i32, ptr %10, align 4, !tbaa !41
  %67 = add nsw i32 %66, 1
  store i32 %67, ptr %10, align 4, !tbaa !41
  %68 = icmp sgt i32 %11, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %65, %77
  %70 = phi i32 [ %78, %77 ], [ %11, %65 ]
  %71 = load ptr, ptr %0, align 8, !tbaa !44
  %72 = zext nneg i32 %70 to i64
  %73 = getelementptr %struct.CustomDataLayer, ptr %71, i64 %72
  %74 = getelementptr %struct.CustomDataLayer, ptr %73, i64 -1
  %75 = load i32, ptr %74, align 8, !tbaa !45
  %76 = icmp sle i32 %75, %1
  br i1 %76, label %80, label %77

77:                                               ; preds = %69
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %73, ptr noundef nonnull align 8 dereferenceable(104) %74, i64 104, i1 false), !tbaa.struct !63
  %78 = add nsw i32 %70, -1
  %79 = icmp sgt i32 %70, 1
  br i1 %79, label %69, label %80, !llvm.loop !65

80:                                               ; preds = %69, %77, %65
  %81 = phi i32 [ %11, %65 ], [ 0, %77 ], [ %70, %69 ]
  %82 = phi i1 [ false, %65 ], [ %76, %77 ], [ %76, %69 ]
  %83 = load ptr, ptr %0, align 8, !tbaa !44
  %84 = sext i32 %81 to i64
  %85 = getelementptr inbounds %struct.CustomDataLayer, ptr %83, i64 %84
  store i32 %1, ptr %85, align 8, !tbaa !45
  %86 = getelementptr inbounds %struct.CustomDataLayer, ptr %83, i64 %84, i32 2
  store i32 %54, ptr %86, align 8, !tbaa !48
  %87 = getelementptr inbounds %struct.CustomDataLayer, ptr %83, i64 %84, i32 9
  store ptr %53, ptr %87, align 8, !tbaa !49
  %88 = icmp eq ptr %5, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %80
  %90 = load ptr, ptr %12, align 8, !tbaa !52
  %91 = icmp eq ptr %90, null
  br i1 %91, label %96, label %92

92:                                               ; preds = %89, %80
  %93 = phi ptr [ %5, %80 ], [ %90, %89 ]
  %94 = getelementptr inbounds %struct.CustomDataLayer, ptr %83, i64 %84, i32 8
  %95 = tail call ptr @BLI_strncpy(ptr noundef nonnull %94, ptr noundef nonnull %93, i64 noundef 64) #27
  tail call void @CustomData_set_layer_unique_name(ptr noundef nonnull %0, i32 noundef %81) #26
  br label %98

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.CustomDataLayer, ptr %83, i64 %84, i32 8
  store i8 0, ptr %97, align 8, !tbaa !64
  br label %98

98:                                               ; preds = %96, %92
  %99 = load ptr, ptr %0, align 8, !tbaa !44
  br i1 %82, label %100, label %110

100:                                              ; preds = %98
  %101 = add nsw i32 %81, -1
  %102 = zext nneg i32 %101 to i64
  %103 = getelementptr inbounds %struct.CustomDataLayer, ptr %99, i64 %102
  %104 = load i32, ptr %103, align 8, !tbaa !45
  %105 = icmp eq i32 %104, %1
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.CustomDataLayer, ptr %99, i64 %102, i32 3
  %108 = getelementptr inbounds %struct.CustomDataLayer, ptr %99, i64 %84, i32 3
  %109 = load <4 x i32>, ptr %107, align 4, !tbaa !37
  store <4 x i32> %109, ptr %108, align 4, !tbaa !37
  br label %112

110:                                              ; preds = %100, %98
  %111 = getelementptr inbounds %struct.CustomDataLayer, ptr %99, i64 %84, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %111, i8 0, i64 16, i1 false)
  br label %112

112:                                              ; preds = %110, %106
  tail call fastcc void @customData_update_offsets(ptr noundef nonnull %0) #26
  %113 = load ptr, ptr %0, align 8, !tbaa !44
  %114 = getelementptr inbounds %struct.CustomDataLayer, ptr %113, i64 %84
  br label %115

115:                                              ; preds = %61, %63, %26, %112, %18
  %116 = phi ptr [ %114, %112 ], [ %22, %18 ], [ null, %26 ], [ null, %63 ], [ null, %61 ]
  ret ptr %116
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CustomData_copy(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 {
  tail call void @CustomData_reset(ptr noundef %1) #26
  %6 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !58
  %11 = tail call ptr %10(ptr noundef nonnull %7) #27
  %12 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 6
  store ptr %11, ptr %12, align 8, !tbaa !66
  br label %13

13:                                               ; preds = %9, %5
  %14 = tail call zeroext i8 @CustomData_merge(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) #26, !range !57
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CustomData_reset(ptr noundef %0) local_unnamed_addr #5 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, i8 0, i64 200, i1 false)
  %2 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1
  tail call void @fill_vn_i(ptr noundef nonnull %2, i32 noundef 41, i32 noundef -1) #27
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: optsize
declare void @fill_vn_i(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CustomData_free(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !41
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %2, %6
  %7 = phi i64 [ %10, %6 ], [ 0, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %7
  tail call fastcc void @customData_free_layer__internal(ptr noundef %9, i32 noundef %1) #26
  %10 = add nuw nsw i64 %7, 1
  %11 = load i32, ptr %3, align 4, !tbaa !41
  %12 = sext i32 %11 to i64
  %13 = icmp slt i64 %10, %12
  br i1 %13, label %6, label %14, !llvm.loop !67

14:                                               ; preds = %6, %2
  %15 = load ptr, ptr %0, align 8, !tbaa !44
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %18(ptr noundef nonnull %15) #27
  br label %19

19:                                               ; preds = %17, %14
  tail call fastcc void @CustomData_external_free(ptr noundef nonnull %0) #26
  tail call void @CustomData_reset(ptr noundef nonnull %0) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @customData_free_layer__internal(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !PGOFuncName !68 {
  %3 = getelementptr inbounds %struct.CustomDataLayer, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !48
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.CustomDataLayer, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %7
  %12 = load i32, ptr %0, align 8, !tbaa !45
  %13 = tail call fastcc ptr @layerType_getInfo(i32 noundef %12) #26
  %14 = getelementptr inbounds %struct.LayerTypeInfo, ptr %13, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !69
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load i32, ptr %13, align 8, !tbaa !56
  tail call void %15(ptr noundef nonnull %9, i32 noundef %1, i32 noundef %18) #27
  %19 = load ptr, ptr %8, align 8, !tbaa !49
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %11, %17
  %22 = phi ptr [ %19, %17 ], [ %9, %11 ]
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %23(ptr noundef nonnull %22) #27
  br label %24

24:                                               ; preds = %17, %21, %7, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @CustomData_external_free(ptr nocapture noundef %0) unnamed_addr #5 !PGOFuncName !70 {
  %2 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %6(ptr noundef nonnull %3) #27
  store ptr null, ptr %2, align 8, !tbaa !66
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @CustomData_get_layer_index(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !37
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CustomData_get_layer_index_n(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 {
  %4 = tail call i32 @CustomData_get_layer_index(ptr noundef %0, i32 noundef %1) #26
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !44
  %8 = add nsw i32 %4, %2
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.CustomDataLayer, ptr %7, i64 %9
  %11 = load i32, ptr %10, align 8, !tbaa !45
  %12 = icmp eq i32 %11, %1
  %13 = select i1 %12, i32 %8, i32 -1
  br label %14

14:                                               ; preds = %6, %3
  %15 = phi i32 [ %13, %6 ], [ -1, %3 ]
  ret i32 %15
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CustomData_get_named_layer_index(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !41
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !44
  %9 = zext nneg i32 %5 to i64
  br label %10

10:                                               ; preds = %7, %19
  %11 = phi i64 [ 0, %7 ], [ %20, %19 ]
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11
  %13 = load i32, ptr %12, align 8, !tbaa !45
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11, i32 8
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) %2) #28
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %10, %15
  %20 = add nuw nsw i64 %11, 1
  %21 = icmp eq i64 %20, %9
  br i1 %21, label %24, label %10, !llvm.loop !71

22:                                               ; preds = %15
  %23 = trunc i64 %11 to i32
  br label %24

24:                                               ; preds = %19, %22, %3
  %25 = phi i32 [ -1, %3 ], [ %23, %22 ], [ -1, %19 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CustomData_get_active_layer_index(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !37
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !44
  %9 = sext i32 %5 to i64
  %10 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %9, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !72
  %12 = add nsw i32 %11, %5
  br label %13

13:                                               ; preds = %2, %7
  %14 = phi i32 [ %12, %7 ], [ -1, %2 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CustomData_get_render_layer_index(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !37
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !44
  %9 = sext i32 %5 to i64
  %10 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %9, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !73
  %12 = add nsw i32 %11, %5
  br label %13

13:                                               ; preds = %2, %7
  %14 = phi i32 [ %12, %7 ], [ -1, %2 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CustomData_get_clone_layer_index(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !37
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !44
  %9 = sext i32 %5 to i64
  %10 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %9, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !74
  %12 = add nsw i32 %11, %5
  br label %13

13:                                               ; preds = %2, %7
  %14 = phi i32 [ %12, %7 ], [ -1, %2 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CustomData_get_stencil_layer_index(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !37
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !44
  %9 = sext i32 %5 to i64
  %10 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %9, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !75
  %12 = add nsw i32 %11, %5
  br label %13

13:                                               ; preds = %2, %7
  %14 = phi i32 [ %12, %7 ], [ -1, %2 ]
  ret i32 %14
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CustomData_get_named_layer(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #6 {
  %4 = tail call i32 @CustomData_get_named_layer_index(ptr noundef %0, i32 noundef %1, ptr noundef %2) #26
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !37
  %8 = icmp eq i32 %4, -1
  %9 = sub nsw i32 %4, %7
  %10 = select i1 %8, i32 -1, i32 %9
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CustomData_get_active_layer(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !37
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !44
  %9 = sext i32 %5 to i64
  %10 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %9, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !72
  br label %12

12:                                               ; preds = %2, %7
  %13 = phi i32 [ %11, %7 ], [ -1, %2 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CustomData_get_render_layer(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !37
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !44
  %9 = sext i32 %5 to i64
  %10 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %9, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !73
  br label %12

12:                                               ; preds = %2, %7
  %13 = phi i32 [ %11, %7 ], [ -1, %2 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CustomData_get_clone_layer(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !37
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !44
  %9 = sext i32 %5 to i64
  %10 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %9, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !74
  br label %12

12:                                               ; preds = %2, %7
  %13 = phi i32 [ %11, %7 ], [ -1, %2 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CustomData_get_stencil_layer(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !37
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !44
  %9 = sext i32 %5 to i64
  %10 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %9, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !75
  br label %12

12:                                               ; preds = %2, %7
  %13 = phi i32 [ %11, %7 ], [ -1, %2 ]
  ret i32 %13
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CustomData_set_layer_active(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !41
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !44
  %9 = zext nneg i32 %5 to i64
  br label %10

10:                                               ; preds = %7, %17
  %11 = phi i64 [ 0, %7 ], [ %18, %17 ]
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11
  %13 = load i32, ptr %12, align 8, !tbaa !45
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11, i32 3
  store i32 %2, ptr %16, align 4, !tbaa !72
  br label %17

17:                                               ; preds = %10, %15
  %18 = add nuw nsw i64 %11, 1
  %19 = icmp eq i64 %18, %9
  br i1 %19, label %20, label %10, !llvm.loop !76

20:                                               ; preds = %17, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CustomData_set_layer_render(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !41
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !44
  %9 = zext nneg i32 %5 to i64
  br label %10

10:                                               ; preds = %7, %17
  %11 = phi i64 [ 0, %7 ], [ %18, %17 ]
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11
  %13 = load i32, ptr %12, align 8, !tbaa !45
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11, i32 4
  store i32 %2, ptr %16, align 8, !tbaa !73
  br label %17

17:                                               ; preds = %10, %15
  %18 = add nuw nsw i64 %11, 1
  %19 = icmp eq i64 %18, %9
  br i1 %19, label %20, label %10, !llvm.loop !77

20:                                               ; preds = %17, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CustomData_set_layer_clone(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !41
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !44
  %9 = zext nneg i32 %5 to i64
  br label %10

10:                                               ; preds = %7, %17
  %11 = phi i64 [ 0, %7 ], [ %18, %17 ]
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11
  %13 = load i32, ptr %12, align 8, !tbaa !45
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11, i32 5
  store i32 %2, ptr %16, align 4, !tbaa !74
  br label %17

17:                                               ; preds = %10, %15
  %18 = add nuw nsw i64 %11, 1
  %19 = icmp eq i64 %18, %9
  br i1 %19, label %20, label %10, !llvm.loop !78

20:                                               ; preds = %17, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CustomData_set_layer_stencil(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !41
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !44
  %9 = zext nneg i32 %5 to i64
  br label %10

10:                                               ; preds = %7, %17
  %11 = phi i64 [ 0, %7 ], [ %18, %17 ]
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11
  %13 = load i32, ptr %12, align 8, !tbaa !45
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11, i32 6
  store i32 %2, ptr %16, align 8, !tbaa !75
  br label %17

17:                                               ; preds = %10, %15
  %18 = add nuw nsw i64 %11, 1
  %19 = icmp eq i64 %18, %9
  br i1 %19, label %20, label %10, !llvm.loop !79

20:                                               ; preds = %17, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CustomData_set_layer_active_index(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !41
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !44
  %9 = zext nneg i32 %5 to i64
  br label %10

10:                                               ; preds = %7, %19
  %11 = phi i64 [ 0, %7 ], [ %20, %19 ]
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11
  %13 = load i32, ptr %12, align 8, !tbaa !45
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11, i32 3
  %17 = trunc i64 %11 to i32
  %18 = sub i32 %2, %17
  store i32 %18, ptr %16, align 4, !tbaa !72
  br label %19

19:                                               ; preds = %10, %15
  %20 = add nuw nsw i64 %11, 1
  %21 = icmp eq i64 %20, %9
  br i1 %21, label %22, label %10, !llvm.loop !80

22:                                               ; preds = %19, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CustomData_set_layer_render_index(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !41
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !44
  %9 = zext nneg i32 %5 to i64
  br label %10

10:                                               ; preds = %7, %19
  %11 = phi i64 [ 0, %7 ], [ %20, %19 ]
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11
  %13 = load i32, ptr %12, align 8, !tbaa !45
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11, i32 4
  %17 = trunc i64 %11 to i32
  %18 = sub i32 %2, %17
  store i32 %18, ptr %16, align 8, !tbaa !73
  br label %19

19:                                               ; preds = %10, %15
  %20 = add nuw nsw i64 %11, 1
  %21 = icmp eq i64 %20, %9
  br i1 %21, label %22, label %10, !llvm.loop !81

22:                                               ; preds = %19, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CustomData_set_layer_clone_index(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !41
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !44
  %9 = zext nneg i32 %5 to i64
  br label %10

10:                                               ; preds = %7, %19
  %11 = phi i64 [ 0, %7 ], [ %20, %19 ]
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11
  %13 = load i32, ptr %12, align 8, !tbaa !45
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11, i32 5
  %17 = trunc i64 %11 to i32
  %18 = sub i32 %2, %17
  store i32 %18, ptr %16, align 4, !tbaa !74
  br label %19

19:                                               ; preds = %10, %15
  %20 = add nuw nsw i64 %11, 1
  %21 = icmp eq i64 %20, %9
  br i1 %21, label %22, label %10, !llvm.loop !82

22:                                               ; preds = %19, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CustomData_set_layer_stencil_index(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !41
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !44
  %9 = zext nneg i32 %5 to i64
  br label %10

10:                                               ; preds = %7, %19
  %11 = phi i64 [ 0, %7 ], [ %20, %19 ]
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11
  %13 = load i32, ptr %12, align 8, !tbaa !45
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11, i32 6
  %17 = trunc i64 %11 to i32
  %18 = sub i32 %2, %17
  store i32 %18, ptr %16, align 8, !tbaa !75
  br label %19

19:                                               ; preds = %10, %15
  %20 = add nuw nsw i64 %11, 1
  %21 = icmp eq i64 %20, %9
  br i1 %21, label %22, label %10, !llvm.loop !83

22:                                               ; preds = %19, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CustomData_set_layer_flag(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !41
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !44
  %9 = zext nneg i32 %5 to i64
  br label %10

10:                                               ; preds = %7, %19
  %11 = phi i64 [ 0, %7 ], [ %20, %19 ]
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11
  %13 = load i32, ptr %12, align 8, !tbaa !45
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %11, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !48
  %18 = or i32 %17, %2
  store i32 %18, ptr %16, align 8, !tbaa !48
  br label %19

19:                                               ; preds = %10, %15
  %20 = add nuw nsw i64 %11, 1
  %21 = icmp eq i64 %20, %9
  br i1 %21, label %22, label %10, !llvm.loop !84

22:                                               ; preds = %19, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CustomData_add_layer(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #5 {
  %6 = tail call fastcc ptr @layerType_getInfo(i32 noundef %1) #26
  %7 = getelementptr inbounds %struct.LayerTypeInfo, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = tail call fastcc ptr @customData_add_layer__internal(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %8) #26
  tail call void @CustomData_update_typemap(ptr noundef %0) #26
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %9, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !49
  br label %14

14:                                               ; preds = %5, %11
  %15 = phi ptr [ %13, %11 ], [ null, %5 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @layerType_getInfo(i32 noundef %0) unnamed_addr #0 !PGOFuncName !85 {
  %2 = icmp ugt i32 %0, 40
  %3 = zext nneg i32 %0 to i64
  %4 = getelementptr inbounds [41 x %struct.LayerTypeInfo], ptr @LAYERTYPEINFO, i64 0, i64 %3
  %5 = select i1 %2, ptr null, ptr %4
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CustomData_add_layer_named(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #5 {
  %7 = tail call fastcc ptr @customData_add_layer__internal(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) #26
  tail call void @CustomData_update_typemap(ptr noundef %0) #26
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.CustomDataLayer, ptr %7, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  br label %12

12:                                               ; preds = %6, %9
  %13 = phi ptr [ %11, %9 ], [ null, %6 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @CustomData_free_layer(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = tail call i32 @CustomData_get_layer_index(ptr noundef %0, i32 noundef %1) #26
  %6 = sub nsw i32 %3, %5
  %7 = icmp slt i32 %3, 0
  br i1 %7, label %84, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8, !tbaa !44
  %10 = zext nneg i32 %3 to i64
  %11 = getelementptr inbounds %struct.CustomDataLayer, ptr %9, i64 %10
  tail call fastcc void @customData_free_layer__internal(ptr noundef %11, i32 noundef %2) #26
  %12 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %13 = add nuw nsw i32 %3, 1
  %14 = load i32, ptr %12, align 4, !tbaa !41
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %8
  %17 = add nuw nsw i64 %10, 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi i64 [ %17, %16 ], [ %25, %18 ]
  %20 = phi i32 [ %3, %16 ], [ %29, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !44
  %22 = zext nneg i32 %20 to i64
  %23 = getelementptr inbounds %struct.CustomDataLayer, ptr %21, i64 %22
  %24 = getelementptr inbounds %struct.CustomDataLayer, ptr %21, i64 %19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %23, ptr noundef nonnull align 8 dereferenceable(104) %24, i64 104, i1 false), !tbaa.struct !63
  %25 = add nuw nsw i64 %19, 1
  %26 = load i32, ptr %12, align 4, !tbaa !41
  %27 = trunc i64 %25 to i32
  %28 = icmp sgt i32 %26, %27
  %29 = trunc i64 %19 to i32
  br i1 %28, label %18, label %30, !llvm.loop !86

30:                                               ; preds = %18, %8
  %31 = phi i32 [ %14, %8 ], [ %26, %18 ]
  %32 = add i32 %31, -1
  store i32 %32, ptr %12, align 4, !tbaa !41
  %33 = tail call fastcc i32 @CustomData_get_layer_index__notypemap(ptr noundef nonnull %0, i32 noundef %1) #26
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %76, label %35

35:                                               ; preds = %30
  %36 = icmp eq i32 %5, %3
  %37 = select i1 %36, i32 1, i32 %6
  %38 = icmp slt i32 %33, %32
  br i1 %38, label %39, label %76

39:                                               ; preds = %35
  %40 = load ptr, ptr %0, align 8, !tbaa !44
  %41 = sext i32 %33 to i64
  %42 = getelementptr inbounds %struct.CustomDataLayer, ptr %40, i64 %41
  br label %43

43:                                               ; preds = %39, %72
  %44 = phi ptr [ %74, %72 ], [ %42, %39 ]
  %45 = phi i32 [ %73, %72 ], [ %33, %39 ]
  %46 = load i32, ptr %44, align 8, !tbaa !45
  %47 = icmp eq i32 %46, %1
  br i1 %47, label %48, label %76

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.CustomDataLayer, ptr %44, i64 0, i32 3
  %50 = load i32, ptr %49, align 4, !tbaa !72
  %51 = icmp slt i32 %50, %37
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = add nsw i32 %50, -1
  store i32 %53, ptr %49, align 4, !tbaa !72
  br label %54

54:                                               ; preds = %52, %48
  %55 = getelementptr inbounds %struct.CustomDataLayer, ptr %44, i64 0, i32 4
  %56 = load i32, ptr %55, align 8, !tbaa !73
  %57 = icmp slt i32 %56, %37
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = add nsw i32 %56, -1
  store i32 %59, ptr %55, align 8, !tbaa !73
  br label %60

60:                                               ; preds = %58, %54
  %61 = getelementptr inbounds %struct.CustomDataLayer, ptr %44, i64 0, i32 5
  %62 = load i32, ptr %61, align 4, !tbaa !74
  %63 = icmp slt i32 %62, %37
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = add nsw i32 %62, -1
  store i32 %65, ptr %61, align 4, !tbaa !74
  br label %66

66:                                               ; preds = %64, %60
  %67 = getelementptr inbounds %struct.CustomDataLayer, ptr %44, i64 0, i32 6
  %68 = load i32, ptr %67, align 8, !tbaa !75
  %69 = icmp slt i32 %68, %37
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = add nsw i32 %68, -1
  store i32 %71, ptr %67, align 8, !tbaa !75
  br label %72

72:                                               ; preds = %66, %70
  %73 = add i32 %45, 1
  %74 = getelementptr inbounds %struct.CustomDataLayer, ptr %44, i64 1
  %75 = icmp eq i32 %73, %32
  br i1 %75, label %76, label %43, !llvm.loop !87

76:                                               ; preds = %72, %43, %35, %30
  %77 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 3
  %78 = load i32, ptr %77, align 8, !tbaa !61
  %79 = add nsw i32 %78, -4
  %80 = icmp sgt i32 %31, %79
  br i1 %80, label %83, label %81

81:                                               ; preds = %76
  %82 = tail call fastcc i32 @customData_resize(ptr noundef nonnull %0, i32 noundef -5) #26, !range !62
  br label %83

83:                                               ; preds = %81, %76
  tail call fastcc void @customData_update_offsets(ptr noundef nonnull %0) #26
  br label %84

84:                                               ; preds = %4, %83
  %85 = phi i8 [ 1, %83 ], [ 0, %4 ]
  ret i8 %85
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @CustomData_get_layer_index__notypemap(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #14 !PGOFuncName !88 {
  %3 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !41
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !44
  %8 = zext nneg i32 %4 to i64
  br label %9

9:                                                ; preds = %6, %14
  %10 = phi i64 [ 0, %6 ], [ %15, %14 ]
  %11 = getelementptr inbounds %struct.CustomDataLayer, ptr %7, i64 %10
  %12 = load i32, ptr %11, align 8, !tbaa !45
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = add nuw nsw i64 %10, 1
  %16 = icmp eq i64 %15, %8
  br i1 %16, label %19, label %9, !llvm.loop !89

17:                                               ; preds = %9
  %18 = trunc i64 %10 to i32
  br label %19

19:                                               ; preds = %14, %17, %2
  %20 = phi i32 [ -1, %2 ], [ %18, %17 ], [ -1, %14 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @customData_resize(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #5 !PGOFuncName !90 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !61
  %6 = add nsw i32 %5, %1
  %7 = sext i32 %6 to i64
  %8 = mul nsw i64 %7, 104
  %9 = tail call ptr %3(i64 noundef %8, ptr noundef nonnull @.str.95) #27
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %2
  %12 = load i32, ptr %4, align 8, !tbaa !61
  %13 = add nsw i32 %12, %1
  store i32 %13, ptr %4, align 8, !tbaa !61
  %14 = load ptr, ptr %0, align 8, !tbaa !44
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !41
  %19 = sext i32 %18 to i64
  %20 = mul nsw i64 %19, 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %9, ptr nonnull align 8 %14, i64 %20, i1 false)
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  %22 = load ptr, ptr %0, align 8, !tbaa !44
  tail call void %21(ptr noundef %22) #27
  br label %23

23:                                               ; preds = %16, %11
  store ptr %9, ptr %0, align 8, !tbaa !44
  br label %24

24:                                               ; preds = %2, %23
  %25 = phi i32 [ 1, %23 ], [ 0, %2 ]
  ret i32 %25
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @customData_update_offsets(ptr nocapture noundef %0) unnamed_addr #12 !PGOFuncName !91 {
  %2 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !41
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !44
  %7 = zext nneg i32 %3 to i64
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi i64 [ 0, %5 ], [ %17, %8 ]
  %10 = phi i32 [ 0, %5 ], [ %16, %8 ]
  %11 = getelementptr inbounds %struct.CustomDataLayer, ptr %6, i64 %9
  %12 = load i32, ptr %11, align 8, !tbaa !45
  %13 = tail call fastcc ptr @layerType_getInfo(i32 noundef %12) #26
  %14 = getelementptr inbounds %struct.CustomDataLayer, ptr %6, i64 %9, i32 1
  store i32 %10, ptr %14, align 4, !tbaa !92
  %15 = load i32, ptr %13, align 8, !tbaa !56
  %16 = add nsw i32 %15, %10
  %17 = add nuw nsw i64 %9, 1
  %18 = icmp eq i64 %17, %7
  br i1 %18, label %19, label %8, !llvm.loop !93

19:                                               ; preds = %8, %1
  %20 = phi i32 [ 0, %1 ], [ %16, %8 ]
  %21 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 4
  store i32 %20, ptr %21, align 4, !tbaa !94
  tail call void @CustomData_update_typemap(ptr noundef nonnull %0) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @CustomData_free_layer_active(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = tail call i32 @CustomData_get_active_layer_index(ptr noundef %0, i32 noundef %1) #26
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call zeroext i8 @CustomData_free_layer(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %4) #26, !range !57
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i8 [ %7, %6 ], [ 0, %3 ]
  ret i8 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CustomData_free_layers(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %0, i32 noundef %1) #26, !range !57
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %3, %6
  %7 = tail call zeroext i8 @CustomData_free_layer_active(ptr noundef %0, i32 noundef %1, i32 noundef %2) #26, !range !57
  %8 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %0, i32 noundef %1) #26, !range !57
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %6, !llvm.loop !95

10:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @CustomData_has_layer(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = tail call i32 @CustomData_get_layer_index(ptr noundef %0, i32 noundef %1) #26
  %4 = icmp ne i32 %3, -1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CustomData_number_of_layers(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !41
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !44
  %8 = zext nneg i32 %4 to i64
  br label %9

9:                                                ; preds = %6, %9
  %10 = phi i64 [ 0, %6 ], [ %17, %9 ]
  %11 = phi i32 [ 0, %6 ], [ %16, %9 ]
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %7, i64 %10
  %13 = load i32, ptr %12, align 8, !tbaa !45
  %14 = icmp eq i32 %13, %1
  %15 = zext i1 %14 to i32
  %16 = add nuw nsw i32 %11, %15
  %17 = add nuw nsw i64 %10, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %19, label %9, !llvm.loop !96

19:                                               ; preds = %9, %2
  %20 = phi i32 [ 0, %2 ], [ %16, %9 ]
  ret i32 %20
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CustomData_number_of_layers_typemask(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !41
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !44
  %8 = zext nneg i32 %4 to i64
  br label %9

9:                                                ; preds = %6, %9
  %10 = phi i64 [ 0, %6 ], [ %20, %9 ]
  %11 = phi i32 [ 0, %6 ], [ %19, %9 ]
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %7, i64 %10
  %13 = load i32, ptr %12, align 8, !tbaa !45
  %14 = zext nneg i32 %13 to i64
  %15 = shl nuw i64 1, %14
  %16 = and i64 %15, %1
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = add nuw nsw i32 %11, %18
  %20 = add nuw nsw i64 %10, 1
  %21 = icmp eq i64 %20, %8
  br i1 %21, label %22, label %9, !llvm.loop !97

22:                                               ; preds = %9, %2
  %23 = phi i32 [ 0, %2 ], [ %19, %9 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CustomData_duplicate_referenced_layer(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = tail call i32 @CustomData_get_active_layer_index(ptr noundef %0, i32 noundef %1) #26
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %41, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !44
  %8 = sext i32 %4 to i64
  %9 = getelementptr inbounds %struct.CustomDataLayer, ptr %7, i64 %8, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !48
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.CustomDataLayer, ptr %7, i64 %8, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !49
  br label %41

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.CustomDataLayer, ptr %7, i64 %8
  %18 = load i32, ptr %17, align 8, !tbaa !45
  %19 = tail call fastcc ptr @layerType_getInfo(i32 noundef %18) #26
  %20 = getelementptr inbounds %struct.LayerTypeInfo, ptr %19, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !59
  %22 = icmp eq ptr %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %16
  %24 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !58
  %25 = load i32, ptr %19, align 8, !tbaa !56
  %26 = mul nsw i32 %25, %2
  %27 = sext i32 %26 to i64
  %28 = tail call ptr %24(i64 noundef %27, ptr noundef nonnull @.str.2) #27
  %29 = load ptr, ptr %20, align 8, !tbaa !59
  %30 = getelementptr inbounds %struct.CustomDataLayer, ptr %7, i64 %8, i32 9
  %31 = load ptr, ptr %30, align 8, !tbaa !49
  tail call void %29(ptr noundef %31, ptr noundef %28, i32 noundef %2) #27
  store ptr %28, ptr %30, align 8, !tbaa !49
  br label %37

32:                                               ; preds = %16
  %33 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !58
  %34 = getelementptr inbounds %struct.CustomDataLayer, ptr %7, i64 %8, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !49
  %36 = tail call ptr %33(ptr noundef %35) #27
  store ptr %36, ptr %34, align 8, !tbaa !49
  br label %37

37:                                               ; preds = %32, %23
  %38 = phi ptr [ %36, %32 ], [ %28, %23 ]
  %39 = load i32, ptr %9, align 8, !tbaa !48
  %40 = and i32 %39, -3
  store i32 %40, ptr %9, align 8, !tbaa !48
  br label %41

41:                                               ; preds = %37, %13, %3
  %42 = phi ptr [ null, %3 ], [ %15, %13 ], [ %38, %37 ]
  ret ptr %42
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CustomData_duplicate_referenced_layer_named(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = tail call i32 @CustomData_get_named_layer_index(ptr noundef %0, i32 noundef %1, ptr noundef %2) #26
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %42, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr %0, align 8, !tbaa !44
  %9 = sext i32 %5 to i64
  %10 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %9, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !48
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %9, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  br label %42

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %9
  %19 = load i32, ptr %18, align 8, !tbaa !45
  %20 = tail call fastcc ptr @layerType_getInfo(i32 noundef %19) #26
  %21 = getelementptr inbounds %struct.LayerTypeInfo, ptr %20, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !59
  %23 = icmp eq ptr %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !58
  %26 = load i32, ptr %20, align 8, !tbaa !56
  %27 = mul nsw i32 %26, %3
  %28 = sext i32 %27 to i64
  %29 = tail call ptr %25(i64 noundef %28, ptr noundef nonnull @.str.2) #27
  %30 = load ptr, ptr %21, align 8, !tbaa !59
  %31 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %9, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !49
  tail call void %30(ptr noundef %32, ptr noundef %29, i32 noundef %3) #27
  store ptr %29, ptr %31, align 8, !tbaa !49
  br label %38

33:                                               ; preds = %17
  %34 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !58
  %35 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %9, i32 9
  %36 = load ptr, ptr %35, align 8, !tbaa !49
  %37 = tail call ptr %34(ptr noundef %36) #27
  store ptr %37, ptr %35, align 8, !tbaa !49
  br label %38

38:                                               ; preds = %33, %24
  %39 = phi ptr [ %37, %33 ], [ %29, %24 ]
  %40 = load i32, ptr %10, align 8, !tbaa !48
  %41 = and i32 %40, -3
  store i32 %41, ptr %10, align 8, !tbaa !48
  br label %42

42:                                               ; preds = %38, %14, %4
  %43 = phi ptr [ null, %4 ], [ %16, %14 ], [ %39, %38 ]
  ret ptr %43
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @CustomData_is_referenced_layer(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = tail call i32 @CustomData_get_active_layer_index(ptr noundef %0, i32 noundef %1) #26
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !44
  %7 = sext i32 %3 to i64
  %8 = getelementptr inbounds %struct.CustomDataLayer, ptr %6, i64 %7, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !48
  %10 = trunc i32 %9 to i8
  %11 = lshr i8 %10, 1
  %12 = and i8 %11, 1
  br label %13

13:                                               ; preds = %2, %5
  %14 = phi i8 [ %12, %5 ], [ 0, %2 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CustomData_free_temporary(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !41
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %37

6:                                                ; preds = %2, %25
  %7 = phi i64 [ %28, %25 ], [ 0, %2 ]
  %8 = phi i8 [ %27, %25 ], [ 0, %2 ]
  %9 = phi i32 [ %26, %25 ], [ 0, %2 ]
  %10 = load ptr, ptr %0, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct.CustomDataLayer, ptr %10, i64 %7
  %12 = zext i32 %9 to i64
  %13 = icmp eq i64 %7, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %6
  %15 = sext i32 %9 to i64
  %16 = getelementptr inbounds %struct.CustomDataLayer, ptr %10, i64 %15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %16, ptr noundef nonnull align 8 dereferenceable(104) %11, i64 104, i1 false), !tbaa.struct !63
  br label %17

17:                                               ; preds = %14, %6
  %18 = getelementptr inbounds %struct.CustomDataLayer, ptr %10, i64 %7, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !48
  %20 = and i32 %19, 5
  %21 = icmp eq i32 %20, 5
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  tail call fastcc void @customData_free_layer__internal(ptr noundef nonnull %11, i32 noundef %1) #26
  br label %25

23:                                               ; preds = %17
  %24 = add nsw i32 %9, 1
  br label %25

25:                                               ; preds = %22, %23
  %26 = phi i32 [ %9, %22 ], [ %24, %23 ]
  %27 = phi i8 [ 1, %22 ], [ %8, %23 ]
  %28 = add nuw nsw i64 %7, 1
  %29 = load i32, ptr %3, align 4, !tbaa !41
  %30 = sext i32 %29 to i64
  %31 = icmp slt i64 %28, %30
  br i1 %31, label %6, label %32, !llvm.loop !98

32:                                               ; preds = %25
  store i32 %26, ptr %3, align 4, !tbaa !41
  %33 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !61
  %35 = add nsw i32 %34, -5
  %36 = icmp sgt i32 %26, %35
  br i1 %36, label %43, label %41

37:                                               ; preds = %2
  store i32 0, ptr %3, align 4, !tbaa !41
  %38 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 3
  %39 = load i32, ptr %38, align 8, !tbaa !61
  %40 = icmp slt i32 %39, 5
  br i1 %40, label %46, label %41

41:                                               ; preds = %37, %32
  %42 = tail call fastcc i32 @customData_resize(ptr noundef nonnull %0, i32 noundef -5) #26, !range !62
  br label %45

43:                                               ; preds = %32
  %44 = icmp eq i8 %27, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %43
  tail call fastcc void @customData_update_offsets(ptr noundef nonnull %0) #26
  br label %46

46:                                               ; preds = %37, %45, %43
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CustomData_set_only_copy(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !41
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !44
  %8 = zext nneg i32 %4 to i64
  br label %9

9:                                                ; preds = %6, %21
  %10 = phi i64 [ 0, %6 ], [ %22, %21 ]
  %11 = getelementptr inbounds %struct.CustomDataLayer, ptr %7, i64 %10
  %12 = load i32, ptr %11, align 8, !tbaa !45
  %13 = zext nneg i32 %12 to i64
  %14 = shl nuw i64 1, %13
  %15 = and i64 %14, %1
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.CustomDataLayer, ptr %7, i64 %10, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !48
  %20 = or i32 %19, 1
  store i32 %20, ptr %18, align 8, !tbaa !48
  br label %21

21:                                               ; preds = %9, %17
  %22 = add nuw nsw i64 %10, 1
  %23 = icmp eq i64 %22, %8
  br i1 %23, label %24, label %9, !llvm.loop !99

24:                                               ; preds = %21, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CustomData_copy_elements(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = tail call fastcc ptr @layerType_getInfo(i32 noundef %0) #26
  %6 = getelementptr inbounds %struct.LayerTypeInfo, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void %7(ptr noundef %1, ptr noundef %2, i32 noundef %3) #27
  br label %14

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 8, !tbaa !56
  %12 = mul nsw i32 %11, %3
  %13 = sext i32 %12 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %1, i64 %13, i1 false)
  br label %14

14:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CustomData_copy_data_named(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 {
  %6 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !41
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %5, %21
  %10 = phi i32 [ %22, %21 ], [ %7, %5 ]
  %11 = phi i64 [ %23, %21 ], [ 0, %5 ]
  %12 = load ptr, ptr %0, align 8, !tbaa !44
  %13 = getelementptr inbounds %struct.CustomDataLayer, ptr %12, i64 %11
  %14 = load i32, ptr %13, align 8, !tbaa !45
  %15 = getelementptr inbounds %struct.CustomDataLayer, ptr %12, i64 %11, i32 8
  %16 = tail call i32 @CustomData_get_named_layer_index(ptr noundef %1, i32 noundef %14, ptr noundef nonnull %15) #26
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %21, label %18

18:                                               ; preds = %9
  %19 = trunc i64 %11 to i32
  tail call fastcc void @CustomData_copy_data_layer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %19, i32 noundef %16, i32 noundef %2, i32 noundef %3, i32 noundef %4) #26
  %20 = load i32, ptr %6, align 4, !tbaa !41
  br label %21

21:                                               ; preds = %9, %18
  %22 = phi i32 [ %10, %9 ], [ %20, %18 ]
  %23 = add nuw nsw i64 %11, 1
  %24 = sext i32 %22 to i64
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %9, label %26, !llvm.loop !100

26:                                               ; preds = %21, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @CustomData_copy_data_layer(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #5 !PGOFuncName !101 {
  %8 = load ptr, ptr %0, align 8, !tbaa !44
  %9 = sext i32 %2 to i64
  %10 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %9
  %11 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %9, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  %13 = load ptr, ptr %1, align 8, !tbaa !44
  %14 = sext i32 %3 to i64
  %15 = getelementptr inbounds %struct.CustomDataLayer, ptr %13, i64 %14, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  %17 = load i32, ptr %10, align 8, !tbaa !45
  %18 = tail call fastcc ptr @layerType_getInfo(i32 noundef %17) #26
  %19 = load i32, ptr %18, align 8, !tbaa !56
  %20 = mul nsw i32 %19, %4
  %21 = mul nsw i32 %19, %5
  %22 = icmp ne ptr %12, null
  %23 = icmp ne ptr %16, null
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %32, label %25

25:                                               ; preds = %7
  %26 = icmp eq ptr %12, null
  %27 = icmp eq ptr %16, null
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %48, label %29

29:                                               ; preds = %25
  %30 = tail call fastcc ptr @layerType_getName(i32 noundef %17) #26
  %31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.96, ptr noundef nonnull @__func__.CustomData_copy_data_layer, ptr noundef %30, ptr noundef %12, ptr noundef %16) #26
  br label %48

32:                                               ; preds = %7
  %33 = getelementptr inbounds %struct.LayerTypeInfo, ptr %18, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !59
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = sext i32 %20 to i64
  %38 = getelementptr inbounds i8, ptr %12, i64 %37
  %39 = sext i32 %21 to i64
  %40 = getelementptr inbounds i8, ptr %16, i64 %39
  tail call void %34(ptr noundef nonnull %38, ptr noundef nonnull %40, i32 noundef %6) #27
  br label %48

41:                                               ; preds = %32
  %42 = sext i32 %21 to i64
  %43 = getelementptr inbounds i8, ptr %16, i64 %42
  %44 = sext i32 %20 to i64
  %45 = getelementptr inbounds i8, ptr %12, i64 %44
  %46 = mul nsw i32 %19, %6
  %47 = sext i32 %46 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %43, ptr nonnull align 1 %45, i64 %47, i1 false)
  br label %48

48:                                               ; preds = %36, %41, %29, %25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CustomData_copy_data(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 {
  %6 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !41
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %49

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 2
  br label %11

11:                                               ; preds = %9, %43
  %12 = phi i32 [ %7, %9 ], [ %44, %43 ]
  %13 = phi i64 [ 0, %9 ], [ %46, %43 ]
  %14 = phi i32 [ 0, %9 ], [ %45, %43 ]
  %15 = load i32, ptr %10, align 4, !tbaa !41
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %11
  %18 = load ptr, ptr %1, align 8, !tbaa !44
  %19 = load ptr, ptr %0, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct.CustomDataLayer, ptr %19, i64 %13
  %21 = load i32, ptr %20, align 8, !tbaa !45
  %22 = sext i32 %14 to i64
  br label %23

23:                                               ; preds = %17, %28
  %24 = phi i64 [ %22, %17 ], [ %29, %28 ]
  %25 = getelementptr inbounds %struct.CustomDataLayer, ptr %18, i64 %24
  %26 = load i32, ptr %25, align 8, !tbaa !45
  %27 = icmp slt i32 %26, %21
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = add nsw i64 %24, 1
  %30 = trunc i64 %29 to i32
  %31 = icmp eq i32 %15, %30
  br i1 %31, label %49, label %23, !llvm.loop !102

32:                                               ; preds = %23
  %33 = trunc i64 %24 to i32
  %34 = shl i64 %24, 32
  %35 = ashr exact i64 %34, 32
  %36 = getelementptr inbounds %struct.CustomDataLayer, ptr %18, i64 %35
  %37 = load i32, ptr %36, align 8, !tbaa !45
  %38 = icmp eq i32 %37, %21
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = trunc i64 %13 to i32
  tail call fastcc void @CustomData_copy_data_layer(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %40, i32 noundef %33, i32 noundef %2, i32 noundef %3, i32 noundef %4) #26
  %41 = add nsw i32 %33, 1
  %42 = load i32, ptr %6, align 4, !tbaa !41
  br label %43

43:                                               ; preds = %32, %39
  %44 = phi i32 [ %42, %39 ], [ %12, %32 ]
  %45 = phi i32 [ %41, %39 ], [ %33, %32 ]
  %46 = add nuw nsw i64 %13, 1
  %47 = sext i32 %44 to i64
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %11, label %49, !llvm.loop !103

49:                                               ; preds = %43, %11, %28, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CustomData_free_elem(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !41
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %35

7:                                                ; preds = %3, %30
  %8 = phi i32 [ %31, %30 ], [ %5, %3 ]
  %9 = phi i64 [ %32, %30 ], [ 0, %3 ]
  %10 = load ptr, ptr %0, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct.CustomDataLayer, ptr %10, i64 %9, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !48
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.CustomDataLayer, ptr %10, i64 %9
  %17 = load i32, ptr %16, align 8, !tbaa !45
  %18 = tail call fastcc ptr @layerType_getInfo(i32 noundef %17) #26
  %19 = getelementptr inbounds %struct.LayerTypeInfo, ptr %18, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !69
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %15
  %23 = load i32, ptr %18, align 8, !tbaa !56
  %24 = mul nsw i32 %23, %1
  %25 = getelementptr inbounds %struct.CustomDataLayer, ptr %10, i64 %9, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !49
  %27 = sext i32 %24 to i64
  %28 = getelementptr inbounds i8, ptr %26, i64 %27
  tail call void %20(ptr noundef %28, i32 noundef %2, i32 noundef %23) #27
  %29 = load i32, ptr %4, align 4, !tbaa !41
  br label %30

30:                                               ; preds = %7, %22, %15
  %31 = phi i32 [ %8, %7 ], [ %29, %22 ], [ %8, %15 ]
  %32 = add nuw nsw i64 %9, 1
  %33 = sext i32 %31 to i64
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %7, label %35, !llvm.loop !104

35:                                               ; preds = %30, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CustomData_interp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #5 {
  %8 = alloca [100 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %8) #29
  %9 = icmp sgt i32 %5, 100
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %12 = zext nneg i32 %5 to i64
  %13 = shl nuw nsw i64 %12, 3
  %14 = tail call ptr %11(i64 noundef %13, ptr noundef nonnull @.str.3) #27
  br label %15

15:                                               ; preds = %10, %7
  %16 = phi ptr [ %14, %10 ], [ %8, %7 ]
  %17 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !41
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %90

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 2
  %22 = icmp sgt i32 %5, 0
  %23 = zext nneg i32 %5 to i64
  br label %24

24:                                               ; preds = %20, %84
  %25 = phi i32 [ %18, %20 ], [ %85, %84 ]
  %26 = phi i64 [ 0, %20 ], [ %87, %84 ]
  %27 = phi i32 [ 0, %20 ], [ %86, %84 ]
  %28 = load ptr, ptr %0, align 8, !tbaa !44
  %29 = getelementptr inbounds %struct.CustomDataLayer, ptr %28, i64 %26
  %30 = load i32, ptr %29, align 8, !tbaa !45
  %31 = call fastcc ptr @layerType_getInfo(i32 noundef %30) #26
  %32 = getelementptr inbounds %struct.LayerTypeInfo, ptr %31, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !105
  %34 = icmp eq ptr %33, null
  br i1 %34, label %84, label %35

35:                                               ; preds = %24
  %36 = load i32, ptr %21, align 4, !tbaa !41
  %37 = icmp slt i32 %27, %36
  br i1 %37, label %38, label %90

38:                                               ; preds = %35
  %39 = load ptr, ptr %1, align 8, !tbaa !44
  %40 = sext i32 %27 to i64
  %41 = sext i32 %36 to i64
  br label %42

42:                                               ; preds = %38, %47
  %43 = phi i64 [ %40, %38 ], [ %48, %47 ]
  %44 = getelementptr inbounds %struct.CustomDataLayer, ptr %39, i64 %43
  %45 = load i32, ptr %44, align 8, !tbaa !45
  %46 = icmp slt i32 %45, %30
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = add nsw i64 %43, 1
  %49 = icmp eq i64 %48, %41
  br i1 %49, label %90, label %42, !llvm.loop !106

50:                                               ; preds = %42
  %51 = trunc i64 %43 to i32
  %52 = shl i64 %43, 32
  %53 = ashr exact i64 %52, 32
  %54 = getelementptr inbounds %struct.CustomDataLayer, ptr %39, i64 %53
  %55 = load i32, ptr %54, align 8, !tbaa !45
  %56 = icmp eq i32 %55, %30
  br i1 %56, label %57, label %84

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.CustomDataLayer, ptr %28, i64 %26, i32 9
  %59 = load ptr, ptr %58, align 8, !tbaa !49
  %60 = load i32, ptr %31, align 8, !tbaa !56
  br i1 %22, label %61, label %74

61:                                               ; preds = %57, %61
  %62 = phi i64 [ %69, %61 ], [ 0, %57 ]
  %63 = getelementptr inbounds i32, ptr %2, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !37
  %65 = mul nsw i32 %64, %60
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, ptr %59, i64 %66
  %68 = getelementptr inbounds ptr, ptr %16, i64 %62
  store ptr %67, ptr %68, align 8, !tbaa !58
  %69 = add nuw nsw i64 %62, 1
  %70 = icmp eq i64 %69, %23
  br i1 %70, label %71, label %61, !llvm.loop !107

71:                                               ; preds = %61
  %72 = load ptr, ptr %32, align 8, !tbaa !105
  %73 = load ptr, ptr %1, align 8, !tbaa !44
  br label %74

74:                                               ; preds = %71, %57
  %75 = phi ptr [ %73, %71 ], [ %39, %57 ]
  %76 = phi ptr [ %72, %71 ], [ %33, %57 ]
  %77 = mul nsw i32 %60, %6
  %78 = getelementptr inbounds %struct.CustomDataLayer, ptr %75, i64 %53, i32 9
  %79 = load ptr, ptr %78, align 8, !tbaa !49
  %80 = sext i32 %77 to i64
  %81 = getelementptr inbounds i8, ptr %79, i64 %80
  call void %76(ptr noundef %16, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %81) #27
  %82 = add nsw i32 %51, 1
  %83 = load i32, ptr %17, align 4, !tbaa !41
  br label %84

84:                                               ; preds = %24, %74, %50
  %85 = phi i32 [ %25, %50 ], [ %83, %74 ], [ %25, %24 ]
  %86 = phi i32 [ %51, %50 ], [ %82, %74 ], [ %27, %24 ]
  %87 = add nuw nsw i64 %26, 1
  %88 = sext i32 %85 to i64
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %24, label %90, !llvm.loop !108

90:                                               ; preds = %84, %35, %47, %15
  br i1 %9, label %91, label %93

91:                                               ; preds = %90
  %92 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  call void %92(ptr noundef %16) #27
  br label %93

93:                                               ; preds = %91, %90
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %8) #29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CustomData_swap(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !41
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %3, %25
  %8 = phi i32 [ %26, %25 ], [ %5, %3 ]
  %9 = phi i64 [ %27, %25 ], [ 0, %3 ]
  %10 = load ptr, ptr %0, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct.CustomDataLayer, ptr %10, i64 %9
  %12 = load i32, ptr %11, align 8, !tbaa !45
  %13 = tail call fastcc ptr @layerType_getInfo(i32 noundef %12) #26
  %14 = getelementptr inbounds %struct.LayerTypeInfo, ptr %13, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !109
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %7
  %18 = load i32, ptr %13, align 8, !tbaa !56
  %19 = mul nsw i32 %18, %1
  %20 = getelementptr inbounds %struct.CustomDataLayer, ptr %10, i64 %9, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !49
  %22 = sext i32 %19 to i64
  %23 = getelementptr inbounds i8, ptr %21, i64 %22
  tail call void %15(ptr noundef %23, ptr noundef %2) #27
  %24 = load i32, ptr %4, align 4, !tbaa !41
  br label %25

25:                                               ; preds = %7, %17
  %26 = phi i32 [ %8, %7 ], [ %24, %17 ]
  %27 = add nuw nsw i64 %9, 1
  %28 = sext i32 %26 to i64
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %7, label %30, !llvm.loop !110

30:                                               ; preds = %25, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @CustomData_get(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 {
  %4 = tail call i32 @CustomData_get_active_layer_index(ptr noundef %0, i32 noundef %2) #26
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %16, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @layerType_getInfo(i32 noundef %2) #26
  %8 = load i32, ptr %7, align 8, !tbaa !56
  %9 = mul nsw i32 %8, %1
  %10 = load ptr, ptr %0, align 8, !tbaa !44
  %11 = sext i32 %4 to i64
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %10, i64 %11, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !49
  %14 = sext i32 %9 to i64
  %15 = getelementptr inbounds i8, ptr %13, i64 %14
  br label %16

16:                                               ; preds = %3, %6
  %17 = phi ptr [ %15, %6 ], [ null, %3 ]
  ret ptr %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @CustomData_get_n(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #10 {
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 1, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !37
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %20, label %9

9:                                                ; preds = %4
  %10 = tail call fastcc ptr @layerType_getInfo(i32 noundef %1) #26
  %11 = load i32, ptr %10, align 8, !tbaa !56
  %12 = mul nsw i32 %11, %2
  %13 = load ptr, ptr %0, align 8, !tbaa !44
  %14 = add nsw i32 %7, %3
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.CustomDataLayer, ptr %13, i64 %15, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !49
  %18 = sext i32 %12 to i64
  %19 = getelementptr inbounds i8, ptr %17, i64 %18
  br label %20

20:                                               ; preds = %4, %9
  %21 = phi ptr [ %19, %9 ], [ null, %4 ]
  ret ptr %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @CustomData_get_layer(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = tail call i32 @CustomData_get_active_layer_index(ptr noundef %0, i32 noundef %1) #26
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !44
  %7 = sext i32 %3 to i64
  %8 = getelementptr inbounds %struct.CustomDataLayer, ptr %6, i64 %7, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @CustomData_get_layer_n(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 {
  %4 = tail call i32 @CustomData_get_layer_index_n(ptr noundef %0, i32 noundef %1, i32 noundef %2) #26
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !44
  %8 = sext i32 %4 to i64
  %9 = getelementptr inbounds %struct.CustomDataLayer, ptr %7, i64 %8, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  br label %11

11:                                               ; preds = %3, %6
  %12 = phi ptr [ %10, %6 ], [ null, %3 ]
  ret ptr %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CustomData_get_offset(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = tail call i32 @CustomData_get_active_layer_index(ptr noundef %0, i32 noundef %1) #26
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !44
  %7 = sext i32 %3 to i64
  %8 = getelementptr inbounds %struct.CustomDataLayer, ptr %6, i64 %7, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !92
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi i32 [ %9, %5 ], [ -1, %2 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CustomData_get_n_offset(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 {
  %4 = tail call i32 @CustomData_get_layer_index_n(ptr noundef %0, i32 noundef %1, i32 noundef %2) #26
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !44
  %8 = sext i32 %4 to i64
  %9 = getelementptr inbounds %struct.CustomDataLayer, ptr %7, i64 %8, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !92
  br label %11

11:                                               ; preds = %3, %6
  %12 = phi i32 [ %10, %6 ], [ -1, %3 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @CustomData_set_layer_name(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #5 {
  %5 = tail call i32 @CustomData_get_layer_index_n(ptr noundef %0, i32 noundef %1, i32 noundef %2) #26
  %6 = icmp eq i32 %5, -1
  %7 = icmp eq ptr %3, null
  %8 = or i1 %7, %6
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 8, !tbaa !44
  %11 = sext i32 %5 to i64
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %10, i64 %11, i32 8
  %13 = tail call ptr @BLI_strncpy(ptr noundef nonnull %12, ptr noundef nonnull %3, i64 noundef 64) #27
  br label %14

14:                                               ; preds = %4, %9
  %15 = phi i8 [ 1, %9 ], [ 0, %4 ]
  ret i8 %15
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @CustomData_set_layer(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #15 {
  %4 = tail call i32 @CustomData_get_active_layer_index(ptr noundef %0, i32 noundef %1) #26
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !44
  %8 = sext i32 %4 to i64
  %9 = getelementptr inbounds %struct.CustomDataLayer, ptr %7, i64 %8, i32 9
  store ptr %2, ptr %9, align 8, !tbaa !49
  br label %10

10:                                               ; preds = %3, %6
  %11 = phi ptr [ %2, %6 ], [ null, %3 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @CustomData_set_layer_n(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #15 {
  %5 = tail call i32 @CustomData_get_layer_index_n(ptr noundef %0, i32 noundef %1, i32 noundef %2) #26
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr %0, align 8, !tbaa !44
  %9 = sext i32 %5 to i64
  %10 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %9, i32 9
  store ptr %3, ptr %10, align 8, !tbaa !49
  br label %11

11:                                               ; preds = %4, %7
  %12 = phi ptr [ %3, %7 ], [ null, %4 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CustomData_set(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #5 {
  %5 = tail call ptr @CustomData_get(ptr noundef %0, i32 noundef %1, i32 noundef %2) #26
  %6 = tail call fastcc ptr @layerType_getInfo(i32 noundef %2) #26
  %7 = icmp eq ptr %5, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.LayerTypeInfo, ptr %6, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void %10(ptr noundef %3, ptr noundef nonnull %5, i32 noundef 1) #27
  br label %16

13:                                               ; preds = %8
  %14 = load i32, ptr %6, align 8, !tbaa !56
  %15 = sext i32 %14 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %5, ptr align 1 %3, i64 %15, i1 false)
  br label %16

16:                                               ; preds = %12, %13, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CustomData_to_bmeshpoly(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 {
  %6 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !41
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %5, %25
  %10 = phi i64 [ %26, %25 ], [ 0, %5 ]
  %11 = load ptr, ptr %0, align 8, !tbaa !44
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %11, i64 %10
  %13 = load i32, ptr %12, align 8, !tbaa !45
  switch i32 %13, label %25 [
    i32 5, label %14
    i32 6, label %20
    i32 19, label %18
    i32 40, label %19
  ]

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.CustomDataLayer, ptr %11, i64 %10, i32 8
  %16 = tail call ptr @CustomData_add_layer_named(ptr noundef %1, i32 noundef 15, i32 noundef 1, ptr noundef null, i32 noundef %4, ptr noundef nonnull %15) #26
  %17 = load ptr, ptr %0, align 8, !tbaa !44
  br label %20

18:                                               ; preds = %9
  br label %20

19:                                               ; preds = %9
  br label %20

20:                                               ; preds = %9, %19, %18, %14
  %21 = phi ptr [ %17, %14 ], [ %11, %18 ], [ %11, %19 ], [ %11, %9 ]
  %22 = phi i32 [ 16, %14 ], [ 19, %18 ], [ 8, %19 ], [ 17, %9 ]
  %23 = getelementptr inbounds %struct.CustomDataLayer, ptr %21, i64 %10, i32 8
  %24 = tail call ptr @CustomData_add_layer_named(ptr noundef %2, i32 noundef %22, i32 noundef 1, ptr noundef null, i32 noundef %3, ptr noundef nonnull %23) #26
  br label %25

25:                                               ; preds = %20, %9
  %26 = add nuw nsw i64 %10, 1
  %27 = load i32, ptr %6, align 4, !tbaa !41
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %9, label %30, !llvm.loop !111

30:                                               ; preds = %25, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CustomData_from_bmeshpoly(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !41
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %23, %4
  %9 = getelementptr inbounds %struct.CustomData, ptr %2, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !41
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %28, label %45

12:                                               ; preds = %4, %23
  %13 = phi i32 [ %24, %23 ], [ %6, %4 ]
  %14 = phi i64 [ %25, %23 ], [ 0, %4 ]
  %15 = load ptr, ptr %1, align 8, !tbaa !44
  %16 = getelementptr inbounds %struct.CustomDataLayer, ptr %15, i64 %14
  %17 = load i32, ptr %16, align 8, !tbaa !45
  %18 = icmp eq i32 %17, 15
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.CustomDataLayer, ptr %15, i64 %14, i32 8
  %21 = tail call ptr @CustomData_add_layer_named(ptr noundef %0, i32 noundef 5, i32 noundef 1, ptr noundef null, i32 noundef %3, ptr noundef nonnull %20) #26
  %22 = load i32, ptr %5, align 4, !tbaa !41
  br label %23

23:                                               ; preds = %12, %19
  %24 = phi i32 [ %13, %12 ], [ %22, %19 ]
  %25 = add nuw nsw i64 %14, 1
  %26 = sext i32 %24 to i64
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %12, label %8, !llvm.loop !112

28:                                               ; preds = %8, %40
  %29 = phi i64 [ %41, %40 ], [ 0, %8 ]
  %30 = load ptr, ptr %2, align 8, !tbaa !44
  %31 = getelementptr inbounds %struct.CustomDataLayer, ptr %30, i64 %29
  %32 = load i32, ptr %31, align 8, !tbaa !45
  switch i32 %32, label %40 [
    i32 17, label %36
    i32 32, label %33
    i32 31, label %34
    i32 8, label %35
  ]

33:                                               ; preds = %28
  br label %36

34:                                               ; preds = %28
  br label %36

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %28, %33, %35, %34
  %37 = phi i32 [ 13, %34 ], [ 40, %35 ], [ 20, %33 ], [ 6, %28 ]
  %38 = getelementptr inbounds %struct.CustomDataLayer, ptr %30, i64 %29, i32 8
  %39 = tail call ptr @CustomData_add_layer_named(ptr noundef %0, i32 noundef %37, i32 noundef 1, ptr noundef null, i32 noundef %3, ptr noundef nonnull %38) #26
  br label %40

40:                                               ; preds = %36, %28
  %41 = add nuw nsw i64 %29, 1
  %42 = load i32, ptr %9, align 4, !tbaa !41
  %43 = sext i32 %42 to i64
  %44 = icmp slt i64 %41, %43
  br i1 %44, label %28, label %45, !llvm.loop !113

45:                                               ; preds = %40, %8
  tail call void @CustomData_bmesh_update_active_layers(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #26
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CustomData_bmesh_update_active_layers(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #12 {
  %4 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %1, i32 noundef 15) #26, !range !57
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @CustomData_get_active_layer(ptr noundef %1, i32 noundef 15) #26
  tail call void @CustomData_set_layer_active(ptr noundef %2, i32 noundef 16, i32 noundef %7) #26
  tail call void @CustomData_set_layer_active(ptr noundef %0, i32 noundef 5, i32 noundef %7) #26
  %8 = tail call i32 @CustomData_get_render_layer(ptr noundef %1, i32 noundef 15) #26
  tail call void @CustomData_set_layer_render(ptr noundef %2, i32 noundef 16, i32 noundef %8) #26
  tail call void @CustomData_set_layer_render(ptr noundef %0, i32 noundef 5, i32 noundef %8) #26
  %9 = tail call i32 @CustomData_get_clone_layer(ptr noundef %1, i32 noundef 15) #26
  tail call void @CustomData_set_layer_clone(ptr noundef %2, i32 noundef 16, i32 noundef %9) #26
  tail call void @CustomData_set_layer_clone(ptr noundef %0, i32 noundef 5, i32 noundef %9) #26
  %10 = tail call i32 @CustomData_get_stencil_layer(ptr noundef %1, i32 noundef 15) #26
  tail call void @CustomData_set_layer_stencil(ptr noundef %2, i32 noundef 16, i32 noundef %10) #26
  tail call void @CustomData_set_layer_stencil(ptr noundef %0, i32 noundef 5, i32 noundef %10) #26
  br label %11

11:                                               ; preds = %6, %3
  %12 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %2, i32 noundef 17) #26, !range !57
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @CustomData_get_active_layer(ptr noundef %2, i32 noundef 17) #26
  tail call void @CustomData_set_layer_active(ptr noundef %0, i32 noundef 6, i32 noundef %15) #26
  %16 = tail call i32 @CustomData_get_render_layer(ptr noundef %2, i32 noundef 17) #26
  tail call void @CustomData_set_layer_render(ptr noundef %0, i32 noundef 6, i32 noundef %16) #26
  %17 = tail call i32 @CustomData_get_clone_layer(ptr noundef %2, i32 noundef 17) #26
  tail call void @CustomData_set_layer_clone(ptr noundef %0, i32 noundef 6, i32 noundef %17) #26
  %18 = tail call i32 @CustomData_get_stencil_layer(ptr noundef %2, i32 noundef 17) #26
  tail call void @CustomData_set_layer_stencil(ptr noundef %0, i32 noundef 6, i32 noundef %18) #26
  br label %19

19:                                               ; preds = %14, %11
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CustomData_bmesh_do_versions_update_active_layers(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #12 {
  %4 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %0, i32 noundef 5) #26, !range !57
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @CustomData_get_active_layer(ptr noundef %0, i32 noundef 5) #26
  tail call void @CustomData_set_layer_active(ptr noundef %1, i32 noundef 15, i32 noundef %7) #26
  tail call void @CustomData_set_layer_active(ptr noundef %2, i32 noundef 16, i32 noundef %7) #26
  %8 = tail call i32 @CustomData_get_render_layer(ptr noundef %0, i32 noundef 5) #26
  tail call void @CustomData_set_layer_render(ptr noundef %1, i32 noundef 15, i32 noundef %8) #26
  tail call void @CustomData_set_layer_render(ptr noundef %2, i32 noundef 16, i32 noundef %8) #26
  %9 = tail call i32 @CustomData_get_clone_layer(ptr noundef %0, i32 noundef 5) #26
  tail call void @CustomData_set_layer_clone(ptr noundef %1, i32 noundef 15, i32 noundef %9) #26
  tail call void @CustomData_set_layer_clone(ptr noundef %2, i32 noundef 16, i32 noundef %9) #26
  %10 = tail call i32 @CustomData_get_stencil_layer(ptr noundef %0, i32 noundef 5) #26
  tail call void @CustomData_set_layer_stencil(ptr noundef %1, i32 noundef 15, i32 noundef %10) #26
  tail call void @CustomData_set_layer_stencil(ptr noundef %2, i32 noundef 16, i32 noundef %10) #26
  br label %11

11:                                               ; preds = %6, %3
  %12 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %0, i32 noundef 6) #26, !range !57
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @CustomData_get_active_layer(ptr noundef %0, i32 noundef 6) #26
  tail call void @CustomData_set_layer_active(ptr noundef %2, i32 noundef 17, i32 noundef %15) #26
  %16 = tail call i32 @CustomData_get_render_layer(ptr noundef %0, i32 noundef 6) #26
  tail call void @CustomData_set_layer_render(ptr noundef %2, i32 noundef 17, i32 noundef %16) #26
  %17 = tail call i32 @CustomData_get_clone_layer(ptr noundef %0, i32 noundef 6) #26
  tail call void @CustomData_set_layer_clone(ptr noundef %2, i32 noundef 17, i32 noundef %17) #26
  %18 = tail call i32 @CustomData_get_stencil_layer(ptr noundef %0, i32 noundef 6) #26
  tail call void @CustomData_set_layer_stencil(ptr noundef %2, i32 noundef 17, i32 noundef %18) #26
  br label %19

19:                                               ; preds = %14, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CustomData_bmesh_init_pool(ptr nocapture noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #5 {
  switch i8 %2, label %12 [
    i8 1, label %4
    i8 2, label %6
    i8 4, label %8
    i8 8, label %10
  ]

4:                                                ; preds = %3
  %5 = load i32, ptr @bm_mesh_chunksize_default, align 4, !tbaa !114
  br label %12

6:                                                ; preds = %3
  %7 = load i32, ptr getelementptr inbounds (%struct.BMAllocTemplate, ptr @bm_mesh_chunksize_default, i64 0, i32 1), align 4, !tbaa !116
  br label %12

8:                                                ; preds = %3
  %9 = load i32, ptr getelementptr inbounds (%struct.BMAllocTemplate, ptr @bm_mesh_chunksize_default, i64 0, i32 2), align 4, !tbaa !117
  br label %12

10:                                               ; preds = %3
  %11 = load i32, ptr getelementptr inbounds (%struct.BMAllocTemplate, ptr @bm_mesh_chunksize_default, i64 0, i32 3), align 4, !tbaa !118
  br label %12

12:                                               ; preds = %3, %10, %8, %6, %4
  %13 = phi i32 [ %11, %10 ], [ %9, %8 ], [ %7, %6 ], [ %5, %4 ], [ 512, %3 ]
  %14 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !41
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 4
  %19 = load i32, ptr %18, align 4, !tbaa !94
  %20 = tail call ptr @BLI_mempool_create(i32 noundef %19, i32 noundef %1, i32 noundef %13, i32 noundef 0) #27
  %21 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 5
  store ptr %20, ptr %21, align 8, !tbaa !119
  br label %22

22:                                               ; preds = %17, %12
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @CustomData_bmesh_merge(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i8 noundef zeroext %5) local_unnamed_addr #5 {
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca %struct.CustomData, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %8) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #29
  %11 = tail call i32 @CustomData_number_of_layers_typemask(ptr noundef %0, i64 noundef %2) #26
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %76, label %13

13:                                               ; preds = %6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %8, ptr noundef nonnull align 8 dereferenceable(200) %1, i64 200, i1 false), !tbaa.struct !120
  %14 = load ptr, ptr %8, align 8, !tbaa !44
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !58
  %18 = tail call ptr %17(ptr noundef nonnull %14) #27
  store ptr %18, ptr %8, align 8, !tbaa !44
  %19 = tail call zeroext i8 @CustomData_merge(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2, i32 noundef %3, i32 noundef 0) #26, !range !57
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %28

21:                                               ; preds = %13
  %22 = tail call zeroext i8 @CustomData_merge(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2, i32 noundef %3, i32 noundef 0) #26, !range !57
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %76, label %28

24:                                               ; preds = %16
  %25 = icmp eq ptr %18, null
  br i1 %25, label %76, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %27(ptr noundef nonnull %18) #27
  br label %76

28:                                               ; preds = %21, %16
  %29 = phi ptr [ null, %21 ], [ %18, %16 ]
  switch i8 %5, label %34 [
    i8 8, label %32
    i8 2, label %30
    i8 4, label %47
  ]

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 1
  br label %34

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 3
  br label %34

34:                                               ; preds = %32, %30, %28
  %35 = phi i8 [ 1, %28 ], [ 2, %30 ], [ 3, %32 ]
  %36 = phi ptr [ %4, %28 ], [ %31, %30 ], [ %33, %32 ]
  %37 = load i32, ptr %36, align 4, !tbaa !37
  %38 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 5
  store ptr null, ptr %38, align 8, !tbaa !119
  tail call void @CustomData_bmesh_init_pool(ptr noundef nonnull %1, i32 noundef %37, i8 noundef zeroext %5) #26
  %39 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, ptr noundef %4, i8 noundef zeroext %35, ptr noundef null) #26
  %40 = icmp eq ptr %39, null
  br i1 %40, label %67, label %41

41:                                               ; preds = %34, %41
  %42 = phi ptr [ %45, %41 ], [ %39, %34 ]
  store ptr null, ptr %9, align 8, !tbaa !58
  %43 = load ptr, ptr %42, align 8, !tbaa !121
  call void @CustomData_bmesh_copy_data(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %43, ptr noundef nonnull %9) #26
  call void @CustomData_bmesh_free_block(ptr noundef nonnull %8, ptr noundef nonnull %42) #26
  %44 = load ptr, ptr %9, align 8, !tbaa !58
  store ptr %44, ptr %42, align 8, !tbaa !121
  %45 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #26
  %46 = icmp eq ptr %45, null
  br i1 %46, label %67, label %41, !llvm.loop !123

47:                                               ; preds = %28
  %48 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 2
  %49 = load i32, ptr %48, align 4, !tbaa !37
  %50 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 5
  store ptr null, ptr %50, align 8, !tbaa !119
  tail call void @CustomData_bmesh_init_pool(ptr noundef nonnull %1, i32 noundef %49, i8 noundef zeroext 4) #26
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #29
  %51 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, ptr noundef %4, i8 noundef zeroext 3, ptr noundef null) #26
  %52 = icmp eq ptr %51, null
  br i1 %52, label %66, label %53

53:                                               ; preds = %47, %63
  %54 = phi ptr [ %64, %63 ], [ %51, %47 ]
  %55 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %10, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %54) #26
  %56 = icmp eq ptr %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %53, %57
  %58 = phi ptr [ %61, %57 ], [ %55, %53 ]
  store ptr null, ptr %9, align 8, !tbaa !58
  %59 = load ptr, ptr %58, align 8, !tbaa !124
  call void @CustomData_bmesh_copy_data(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %59, ptr noundef nonnull %9) #26
  call void @CustomData_bmesh_free_block(ptr noundef nonnull %8, ptr noundef nonnull %58) #26
  %60 = load ptr, ptr %9, align 8, !tbaa !58
  store ptr %60, ptr %58, align 8, !tbaa !124
  %61 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %10) #26
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %57, !llvm.loop !126

63:                                               ; preds = %57, %53
  %64 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #26
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %53, !llvm.loop !127

66:                                               ; preds = %63, %47
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #29
  br label %67

67:                                               ; preds = %41, %34, %66
  %68 = getelementptr inbounds %struct.CustomData, ptr %8, i64 0, i32 5
  %69 = load ptr, ptr %68, align 8, !tbaa !119
  %70 = icmp eq ptr %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  call void @BLI_mempool_destroy(ptr noundef nonnull %69) #27
  br label %72

72:                                               ; preds = %71, %67
  %73 = icmp eq ptr %29, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %72
  %75 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  call void %75(ptr noundef nonnull %29) #27
  br label %76

76:                                               ; preds = %21, %72, %74, %24, %26, %6
  %77 = phi i8 [ 0, %6 ], [ 0, %26 ], [ 0, %24 ], [ 1, %74 ], [ 1, %72 ], [ 0, %21 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #29
  ret i8 %77
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #5 !PGOFuncName !128 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #26
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #26
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CustomData_bmesh_copy_data(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef %3) local_unnamed_addr #5 {
  %5 = load ptr, ptr %3, align 8, !tbaa !58
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  tail call fastcc void @CustomData_bmesh_alloc_block(ptr noundef %1, ptr noundef nonnull %3) #26
  %8 = load ptr, ptr %3, align 8, !tbaa !58
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !94
  %13 = sext i32 %12 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %8, i8 0, i64 %13, i1 false)
  br label %14

14:                                               ; preds = %7, %10, %4
  %15 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !41
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %80

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 2
  br label %20

20:                                               ; preds = %18, %74
  %21 = phi i32 [ %16, %18 ], [ %75, %74 ]
  %22 = phi i64 [ 0, %18 ], [ %77, %74 ]
  %23 = phi i32 [ 0, %18 ], [ %76, %74 ]
  %24 = load i32, ptr %19, align 4, !tbaa !41
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %80

26:                                               ; preds = %20
  %27 = load ptr, ptr %1, align 8, !tbaa !44
  %28 = load ptr, ptr %0, align 8, !tbaa !44
  %29 = getelementptr inbounds %struct.CustomDataLayer, ptr %28, i64 %22
  %30 = load i32, ptr %29, align 8, !tbaa !45
  %31 = sext i32 %23 to i64
  br label %32

32:                                               ; preds = %26, %37
  %33 = phi i64 [ %31, %26 ], [ %38, %37 ]
  %34 = getelementptr inbounds %struct.CustomDataLayer, ptr %27, i64 %33
  %35 = load i32, ptr %34, align 8, !tbaa !45
  %36 = icmp slt i32 %35, %30
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = add nsw i64 %33, 1
  %39 = trunc i64 %38 to i32
  %40 = icmp eq i32 %24, %39
  br i1 %40, label %80, label %32, !llvm.loop !129

41:                                               ; preds = %32
  %42 = trunc i64 %33 to i32
  %43 = shl i64 %33, 32
  %44 = ashr exact i64 %43, 32
  %45 = getelementptr inbounds %struct.CustomDataLayer, ptr %27, i64 %44
  %46 = load i32, ptr %45, align 8, !tbaa !45
  %47 = icmp eq i32 %46, %30
  br i1 %47, label %48, label %74

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.CustomDataLayer, ptr %27, i64 %44, i32 8
  %50 = getelementptr inbounds %struct.CustomDataLayer, ptr %28, i64 %22, i32 8
  %51 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull dereferenceable(1) %50) #28
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.CustomDataLayer, ptr %28, i64 %22, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !92
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, ptr %2, i64 %56
  %58 = load ptr, ptr %3, align 8, !tbaa !58
  %59 = getelementptr inbounds %struct.CustomDataLayer, ptr %27, i64 %44, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !92
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, ptr %58, i64 %61
  %63 = tail call fastcc ptr @layerType_getInfo(i32 noundef %30) #26
  %64 = getelementptr inbounds %struct.LayerTypeInfo, ptr %63, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !59
  %66 = icmp eq ptr %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %53
  tail call void %65(ptr noundef %57, ptr noundef %62, i32 noundef 1) #27
  br label %71

68:                                               ; preds = %53
  %69 = load i32, ptr %63, align 8, !tbaa !56
  %70 = sext i32 %69 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %62, ptr align 1 %57, i64 %70, i1 false)
  br label %71

71:                                               ; preds = %68, %67
  %72 = add nsw i32 %42, 1
  %73 = load i32, ptr %15, align 4, !tbaa !41
  br label %74

74:                                               ; preds = %41, %48, %71
  %75 = phi i32 [ %73, %71 ], [ %21, %48 ], [ %21, %41 ]
  %76 = phi i32 [ %72, %71 ], [ %42, %48 ], [ %42, %41 ]
  %77 = add nuw nsw i64 %22, 1
  %78 = sext i32 %75 to i64
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %20, label %80, !llvm.loop !130

80:                                               ; preds = %74, %20, %37, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CustomData_bmesh_free_block(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #5 {
  %3 = load ptr, ptr %1, align 8, !tbaa !58
  %4 = icmp eq ptr %3, null
  br i1 %4, label %46, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !41
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %37

9:                                                ; preds = %5, %32
  %10 = phi i32 [ %33, %32 ], [ %7, %5 ]
  %11 = phi i64 [ %34, %32 ], [ 0, %5 ]
  %12 = load ptr, ptr %0, align 8, !tbaa !44
  %13 = getelementptr inbounds %struct.CustomDataLayer, ptr %12, i64 %11, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !48
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.CustomDataLayer, ptr %12, i64 %11
  %19 = load i32, ptr %18, align 8, !tbaa !45
  %20 = tail call fastcc ptr @layerType_getInfo(i32 noundef %19) #26
  %21 = getelementptr inbounds %struct.LayerTypeInfo, ptr %20, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !69
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.CustomDataLayer, ptr %12, i64 %11, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !92
  %27 = load ptr, ptr %1, align 8, !tbaa !58
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i8, ptr %27, i64 %28
  %30 = load i32, ptr %20, align 8, !tbaa !56
  tail call void %22(ptr noundef %29, i32 noundef 1, i32 noundef %30) #27
  %31 = load i32, ptr %6, align 4, !tbaa !41
  br label %32

32:                                               ; preds = %9, %24, %17
  %33 = phi i32 [ %10, %9 ], [ %31, %24 ], [ %10, %17 ]
  %34 = add nuw nsw i64 %11, 1
  %35 = sext i32 %33 to i64
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %9, label %37, !llvm.loop !131

37:                                               ; preds = %32, %5
  %38 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 4
  %39 = load i32, ptr %38, align 4, !tbaa !94
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !119
  %44 = load ptr, ptr %1, align 8, !tbaa !58
  tail call void @BLI_mempool_free(ptr noundef %43, ptr noundef %44) #27
  br label %45

45:                                               ; preds = %41, %37
  store ptr null, ptr %1, align 8, !tbaa !58
  br label %46

46:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #5 !PGOFuncName !132 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !133
  %4 = tail call ptr %3(ptr noundef %0) #27
  ret ptr %4
}

; Function Attrs: optsize
declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @BLI_mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CustomData_bmesh_free_block_data(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %41, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !41
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %35

8:                                                ; preds = %4, %30
  %9 = phi i32 [ %31, %30 ], [ %6, %4 ]
  %10 = phi i64 [ %32, %30 ], [ 0, %4 ]
  %11 = load ptr, ptr %0, align 8, !tbaa !44
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %11, i64 %10, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !48
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.CustomDataLayer, ptr %11, i64 %10
  %18 = load i32, ptr %17, align 8, !tbaa !45
  %19 = tail call fastcc ptr @layerType_getInfo(i32 noundef %18) #26
  %20 = getelementptr inbounds %struct.LayerTypeInfo, ptr %19, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !69
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.CustomDataLayer, ptr %11, i64 %10, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !92
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, ptr %1, i64 %26
  %28 = load i32, ptr %19, align 8, !tbaa !56
  tail call void %21(ptr noundef nonnull %27, i32 noundef 1, i32 noundef %28) #27
  %29 = load i32, ptr %5, align 4, !tbaa !41
  br label %30

30:                                               ; preds = %8, %23, %16
  %31 = phi i32 [ %9, %8 ], [ %29, %23 ], [ %9, %16 ]
  %32 = add nuw nsw i64 %10, 1
  %33 = sext i32 %31 to i64
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %8, label %35, !llvm.loop !135

35:                                               ; preds = %30, %4
  %36 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 4
  %37 = load i32, ptr %36, align 4, !tbaa !94
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = sext i32 %37 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 0, i64 %40, i1 false)
  br label %41

41:                                               ; preds = %35, %39, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @CustomData_bmesh_alloc_block(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #5 !PGOFuncName !136 {
  %3 = load ptr, ptr %1, align 8, !tbaa !58
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @CustomData_bmesh_free_block(ptr noundef %0, ptr noundef nonnull %1) #26
  br label %6

6:                                                ; preds = %5, %2
  %7 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !94
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !119
  %13 = tail call ptr @BLI_mempool_alloc(ptr noundef %12) #27
  br label %14

14:                                               ; preds = %6, %10
  %15 = phi ptr [ %13, %10 ], [ null, %6 ]
  store ptr %15, ptr %1, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @CustomData_bmesh_get(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) local_unnamed_addr #10 {
  %4 = tail call i32 @CustomData_get_active_layer_index(ptr noundef %0, i32 noundef %2) #26
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !44
  %8 = sext i32 %4 to i64
  %9 = getelementptr inbounds %struct.CustomDataLayer, ptr %7, i64 %8, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !92
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  br label %13

13:                                               ; preds = %3, %6
  %14 = phi ptr [ %12, %6 ], [ null, %3 ]
  ret ptr %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @CustomData_bmesh_get_n(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #10 {
  %5 = tail call i32 @CustomData_get_layer_index(ptr noundef %0, i32 noundef %2) #26
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr %0, align 8, !tbaa !44
  %9 = add nsw i32 %5, %3
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %10, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !92
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %1, i64 %13
  br label %15

15:                                               ; preds = %4, %7
  %16 = phi ptr [ %14, %7 ], [ null, %4 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @CustomData_bmesh_get_layer_n(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) local_unnamed_addr #10 {
  %4 = icmp slt i32 %2, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !41
  %8 = icmp sgt i32 %7, %2
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !44
  %11 = zext nneg i32 %2 to i64
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %10, i64 %11, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !92
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %1, i64 %14
  br label %16

16:                                               ; preds = %3, %5, %9
  %17 = phi ptr [ %15, %9 ], [ null, %5 ], [ null, %3 ]
  ret ptr %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @CustomData_layer_has_math(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = load ptr, ptr %0, align 8, !tbaa !44
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.CustomDataLayer, ptr %3, i64 %4
  %6 = load i32, ptr %5, align 8, !tbaa !45
  %7 = tail call fastcc ptr @layerType_getInfo(i32 noundef %6) #26
  %8 = getelementptr inbounds %struct.LayerTypeInfo, ptr %7, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !137
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.LayerTypeInfo, ptr %7, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !138
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.LayerTypeInfo, ptr %7, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !139
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.LayerTypeInfo, ptr %7, i64 0, i32 11
  %21 = load ptr, ptr %20, align 8, !tbaa !140
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.LayerTypeInfo, ptr %7, i64 0, i32 13
  %25 = load ptr, ptr %24, align 8, !tbaa !141
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %19, %15, %11, %2
  br label %28

28:                                               ; preds = %23, %27
  %29 = phi i8 [ 0, %27 ], [ 1, %23 ]
  ret i8 %29
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @CustomData_layer_has_interp(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = load ptr, ptr %0, align 8, !tbaa !44
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.CustomDataLayer, ptr %3, i64 %4
  %6 = load i32, ptr %5, align 8, !tbaa !45
  %7 = tail call fastcc ptr @layerType_getInfo(i32 noundef %6) #26
  %8 = getelementptr inbounds %struct.LayerTypeInfo, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !105
  %10 = icmp ne ptr %9, null
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @CustomData_has_math(ptr nocapture noundef readonly %0) local_unnamed_addr #14 {
  %2 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !41
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %8, label %12

5:                                                ; preds = %8
  %6 = add nuw nsw i32 %9, 1
  %7 = icmp eq i32 %6, %3
  br i1 %7, label %12, label %8, !llvm.loop !142

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %6, %5 ], [ 0, %1 ]
  %10 = tail call zeroext i8 @CustomData_layer_has_math(ptr noundef nonnull %0, i32 noundef %9) #26, !range !57
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %5, label %12

12:                                               ; preds = %8, %5, %1
  %13 = phi i8 [ 0, %1 ], [ 0, %5 ], [ 1, %8 ]
  ret i8 %13
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @CustomData_bmesh_has_free(ptr nocapture noundef readonly %0) local_unnamed_addr #14 {
  %2 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !41
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !44
  %7 = zext nneg i32 %3 to i64
  br label %8

8:                                                ; preds = %5, %21
  %9 = phi i64 [ 0, %5 ], [ %22, %21 ]
  %10 = getelementptr inbounds %struct.CustomDataLayer, ptr %6, i64 %9, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !48
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.CustomDataLayer, ptr %6, i64 %9
  %16 = load i32, ptr %15, align 8, !tbaa !45
  %17 = tail call fastcc ptr @layerType_getInfo(i32 noundef %16) #26
  %18 = getelementptr inbounds %struct.LayerTypeInfo, ptr %17, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !69
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %8, %14
  %22 = add nuw nsw i64 %9, 1
  %23 = icmp eq i64 %22, %7
  br i1 %23, label %24, label %8, !llvm.loop !143

24:                                               ; preds = %14, %21, %1
  %25 = phi i8 [ 0, %1 ], [ 0, %21 ], [ 1, %14 ]
  ret i8 %25
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @CustomData_has_interp(ptr nocapture noundef readonly %0) local_unnamed_addr #14 {
  %2 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !41
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %8, label %12

5:                                                ; preds = %8
  %6 = add nuw nsw i32 %9, 1
  %7 = icmp eq i32 %6, %3
  br i1 %7, label %12, label %8, !llvm.loop !144

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %6, %5 ], [ 0, %1 ]
  %10 = tail call zeroext i8 @CustomData_layer_has_interp(ptr noundef nonnull %0, i32 noundef %9) #26, !range !57
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %5, label %12

12:                                               ; preds = %8, %5, %1
  %13 = phi i8 [ 0, %1 ], [ 0, %5 ], [ 1, %8 ]
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CustomData_data_copy_value(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 {
  %4 = tail call fastcc ptr @layerType_getInfo(i32 noundef %0) #26
  %5 = icmp eq ptr %2, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.LayerTypeInfo, ptr %4, i64 0, i32 14
  %8 = load ptr, ptr %7, align 8, !tbaa !145
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void %8(ptr noundef %1, ptr noundef nonnull %2) #27
  br label %14

11:                                               ; preds = %6
  %12 = load i32, ptr %4, align 8, !tbaa !56
  %13 = sext i32 %12 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2, ptr align 1 %1, i64 %13, i1 false)
  br label %14

14:                                               ; preds = %10, %11, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @CustomData_data_equals(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 {
  %4 = tail call fastcc ptr @layerType_getInfo(i32 noundef %0) #26
  %5 = getelementptr inbounds %struct.LayerTypeInfo, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !137
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call zeroext i8 %6(ptr noundef %1, ptr noundef %2) #27
  br label %16

10:                                               ; preds = %3
  %11 = load i32, ptr %4, align 8, !tbaa !56
  %12 = sext i32 %11 to i64
  %13 = tail call i32 @bcmp(ptr %1, ptr %2, i64 %12)
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %10, %8
  %17 = phi i8 [ %9, %8 ], [ %15, %10 ]
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CustomData_data_initminmax(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 {
  %4 = tail call fastcc ptr @layerType_getInfo(i32 noundef %0) #26
  %5 = getelementptr inbounds %struct.LayerTypeInfo, ptr %4, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !140
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void %6(ptr noundef %1, ptr noundef %2) #27
  br label %9

9:                                                ; preds = %8, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CustomData_data_dominmax(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 {
  %5 = tail call fastcc ptr @layerType_getInfo(i32 noundef %0) #26
  %6 = getelementptr inbounds %struct.LayerTypeInfo, ptr %5, i64 0, i32 13
  %7 = load ptr, ptr %6, align 8, !tbaa !141
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void %7(ptr noundef %1, ptr noundef %2, ptr noundef %3) #27
  br label %10

10:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CustomData_data_multiply(i32 noundef %0, ptr noundef %1, float noundef %2) local_unnamed_addr #5 {
  %4 = tail call fastcc ptr @layerType_getInfo(i32 noundef %0) #26
  %5 = getelementptr inbounds %struct.LayerTypeInfo, ptr %4, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !139
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void %6(ptr noundef %1, float noundef %2) #27
  br label %9

9:                                                ; preds = %8, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CustomData_data_add(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 {
  %4 = tail call fastcc ptr @layerType_getInfo(i32 noundef %0) #26
  %5 = getelementptr inbounds %struct.LayerTypeInfo, ptr %4, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !138
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void %6(ptr noundef %1, ptr noundef %2) #27
  br label %9

9:                                                ; preds = %8, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CustomData_bmesh_set(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #5 {
  %5 = tail call ptr @CustomData_bmesh_get(ptr noundef %0, ptr noundef %1, i32 noundef %2) #26
  %6 = tail call fastcc ptr @layerType_getInfo(i32 noundef %2) #26
  %7 = icmp eq ptr %5, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.LayerTypeInfo, ptr %6, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void %10(ptr noundef %3, ptr noundef nonnull %5, i32 noundef 1) #27
  br label %16

13:                                               ; preds = %8
  %14 = load i32, ptr %6, align 8, !tbaa !56
  %15 = sext i32 %14 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %5, ptr align 1 %3, i64 %15, i1 false)
  br label %16

16:                                               ; preds = %12, %13, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CustomData_bmesh_set_n(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #5 {
  %6 = tail call ptr @CustomData_bmesh_get_n(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #26
  %7 = tail call fastcc ptr @layerType_getInfo(i32 noundef %2) #26
  %8 = icmp eq ptr %6, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.LayerTypeInfo, ptr %7, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void %11(ptr noundef %4, ptr noundef nonnull %6, i32 noundef 1) #27
  br label %17

14:                                               ; preds = %9
  %15 = load i32, ptr %7, align 8, !tbaa !56
  %16 = sext i32 %15 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %6, ptr align 1 %4, i64 %16, i1 false)
  br label %17

17:                                               ; preds = %13, %14, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CustomData_bmesh_set_layer_n(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #5 {
  %5 = tail call ptr @CustomData_bmesh_get_layer_n(ptr noundef %0, ptr noundef %1, i32 noundef %2) #26
  %6 = load ptr, ptr %0, align 8, !tbaa !44
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds %struct.CustomDataLayer, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 8, !tbaa !45
  %10 = tail call fastcc ptr @layerType_getInfo(i32 noundef %9) #26
  %11 = icmp eq ptr %5, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.LayerTypeInfo, ptr %10, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !59
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void %14(ptr noundef %3, ptr noundef nonnull %5, i32 noundef 1) #27
  br label %20

17:                                               ; preds = %12
  %18 = load i32, ptr %10, align 8, !tbaa !56
  %19 = sext i32 %18 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %5, ptr align 1 %3, i64 %19, i1 false)
  br label %20

20:                                               ; preds = %16, %17, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CustomData_bmesh_interp_n(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #5 {
  %8 = load ptr, ptr %0, align 8, !tbaa !44
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 8, !tbaa !45
  %12 = tail call fastcc ptr @layerType_getInfo(i32 noundef %11) #26
  %13 = getelementptr inbounds %struct.LayerTypeInfo, ptr %12, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !105
  %15 = getelementptr inbounds %struct.CustomDataLayer, ptr %8, i64 %9, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !92
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, ptr %5, i64 %17
  tail call void %14(ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %18) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CustomData_bmesh_interp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #5 {
  %7 = alloca [100 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %7) #29
  %8 = icmp sgt i32 %4, 100
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %11 = zext nneg i32 %4 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = tail call ptr %10(i64 noundef %12, ptr noundef nonnull @.str.3) #27
  br label %14

14:                                               ; preds = %9, %6
  %15 = phi ptr [ %13, %9 ], [ %7, %6 ]
  %16 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !41
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %53

19:                                               ; preds = %14
  %20 = icmp sgt i32 %4, 0
  %21 = zext nneg i32 %4 to i64
  br label %22

22:                                               ; preds = %19, %48
  %23 = phi i32 [ %17, %19 ], [ %49, %48 ]
  %24 = phi i64 [ 0, %19 ], [ %50, %48 ]
  %25 = load ptr, ptr %0, align 8, !tbaa !44
  %26 = getelementptr inbounds %struct.CustomDataLayer, ptr %25, i64 %24
  %27 = load i32, ptr %26, align 8, !tbaa !45
  %28 = call fastcc ptr @layerType_getInfo(i32 noundef %27) #26
  %29 = getelementptr inbounds %struct.LayerTypeInfo, ptr %28, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !105
  %31 = icmp eq ptr %30, null
  br i1 %31, label %48, label %32

32:                                               ; preds = %22
  br i1 %20, label %33, label %45

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.CustomDataLayer, ptr %25, i64 %24, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !92
  %36 = sext i32 %35 to i64
  br label %37

37:                                               ; preds = %33, %37
  %38 = phi i64 [ 0, %33 ], [ %43, %37 ]
  %39 = getelementptr inbounds ptr, ptr %1, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !58
  %41 = getelementptr inbounds i8, ptr %40, i64 %36
  %42 = getelementptr inbounds ptr, ptr %15, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !58
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %21
  br i1 %44, label %45, label %37, !llvm.loop !146

45:                                               ; preds = %37, %32
  %46 = trunc i64 %24 to i32
  call void @CustomData_bmesh_interp_n(ptr noundef nonnull %0, ptr noundef %15, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %46) #26
  %47 = load i32, ptr %16, align 4, !tbaa !41
  br label %48

48:                                               ; preds = %45, %22
  %49 = phi i32 [ %47, %45 ], [ %23, %22 ]
  %50 = add nuw nsw i64 %24, 1
  %51 = sext i32 %49 to i64
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %22, label %53, !llvm.loop !147

53:                                               ; preds = %48, %14
  br i1 %8, label %54, label %56

54:                                               ; preds = %53
  %55 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  call void %55(ptr noundef %15) #27
  br label %56

56:                                               ; preds = %54, %53
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %7) #29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CustomData_bmesh_set_default(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #5 {
  %3 = load ptr, ptr %1, align 8, !tbaa !58
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call fastcc void @CustomData_bmesh_alloc_block(ptr noundef %0, ptr noundef nonnull %1) #26
  br label %6

6:                                                ; preds = %5, %2
  %7 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !41
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %6, %10
  %11 = phi i32 [ %12, %10 ], [ 0, %6 ]
  tail call fastcc void @CustomData_bmesh_set_default_n(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %11) #26
  %12 = add nuw nsw i32 %11, 1
  %13 = load i32, ptr %7, align 4, !tbaa !41
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %10, label %15, !llvm.loop !148

15:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @CustomData_bmesh_set_default_n(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #5 !PGOFuncName !149 {
  %4 = load ptr, ptr %0, align 8, !tbaa !44
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds %struct.CustomDataLayer, ptr %4, i64 %5
  %7 = getelementptr inbounds %struct.CustomDataLayer, ptr %4, i64 %5, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !92
  %9 = load i32, ptr %6, align 8, !tbaa !45
  %10 = tail call fastcc ptr @layerType_getInfo(i32 noundef %9) #26
  %11 = getelementptr inbounds %struct.LayerTypeInfo, ptr %10, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  %13 = icmp eq ptr %12, null
  %14 = load ptr, ptr %1, align 8, !tbaa !58
  %15 = sext i32 %8 to i64
  %16 = getelementptr inbounds i8, ptr %14, i64 %15
  br i1 %13, label %18, label %17

17:                                               ; preds = %3
  tail call void %12(ptr noundef %16, i32 noundef 1) #27
  br label %21

18:                                               ; preds = %3
  %19 = load i32, ptr %10, align 8, !tbaa !56
  %20 = sext i32 %19 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %16, i8 0, i64 %20, i1 false)
  br label %21

21:                                               ; preds = %18, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CustomData_to_bmesh_block(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3, i8 noundef zeroext %4) local_unnamed_addr #5 {
  %6 = load ptr, ptr %3, align 8, !tbaa !58
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call fastcc void @CustomData_bmesh_alloc_block(ptr noundef %1, ptr noundef nonnull %3) #26
  br label %9

9:                                                ; preds = %8, %5
  %10 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !41
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %78

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 2
  %15 = icmp eq i8 %4, 0
  br label %16

16:                                               ; preds = %13, %70
  %17 = phi i64 [ 0, %13 ], [ %72, %70 ]
  %18 = phi i32 [ 0, %13 ], [ %71, %70 ]
  %19 = load i32, ptr %14, align 4, !tbaa !41
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %78

21:                                               ; preds = %16
  %22 = sext i32 %18 to i64
  br label %23

23:                                               ; preds = %21, %37
  %24 = phi i32 [ %19, %21 ], [ %38, %37 ]
  %25 = phi i64 [ %22, %21 ], [ %39, %37 ]
  %26 = load ptr, ptr %1, align 8, !tbaa !44
  %27 = getelementptr inbounds %struct.CustomDataLayer, ptr %26, i64 %25
  %28 = load i32, ptr %27, align 8, !tbaa !45
  %29 = load ptr, ptr %0, align 8, !tbaa !44
  %30 = getelementptr inbounds %struct.CustomDataLayer, ptr %29, i64 %17
  %31 = load i32, ptr %30, align 8, !tbaa !45
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %23
  br i1 %15, label %37, label %34

34:                                               ; preds = %33
  %35 = trunc i64 %25 to i32
  tail call fastcc void @CustomData_bmesh_set_default_n(ptr noundef nonnull %1, ptr noundef nonnull %3, i32 noundef %35) #26
  %36 = load i32, ptr %14, align 4, !tbaa !41
  br label %37

37:                                               ; preds = %34, %33
  %38 = phi i32 [ %36, %34 ], [ %24, %33 ]
  %39 = add nsw i64 %25, 1
  %40 = sext i32 %38 to i64
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %23, label %76, !llvm.loop !150

42:                                               ; preds = %23
  %43 = trunc i64 %25 to i32
  %44 = shl i64 %25, 32
  %45 = ashr exact i64 %44, 32
  %46 = getelementptr inbounds %struct.CustomDataLayer, ptr %26, i64 %45
  %47 = load i32, ptr %46, align 8, !tbaa !45
  %48 = icmp eq i32 %47, %31
  br i1 %48, label %49, label %70

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.CustomDataLayer, ptr %26, i64 %45, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !92
  %52 = getelementptr inbounds %struct.CustomDataLayer, ptr %29, i64 %17, i32 9
  %53 = load ptr, ptr %52, align 8, !tbaa !49
  %54 = load ptr, ptr %3, align 8, !tbaa !58
  %55 = sext i32 %51 to i64
  %56 = getelementptr inbounds i8, ptr %54, i64 %55
  %57 = tail call fastcc ptr @layerType_getInfo(i32 noundef %31) #26
  %58 = load i32, ptr %57, align 8, !tbaa !56
  %59 = mul nsw i32 %58, %2
  %60 = getelementptr inbounds %struct.LayerTypeInfo, ptr %57, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !59
  %62 = icmp eq ptr %61, null
  %63 = sext i32 %59 to i64
  %64 = getelementptr inbounds i8, ptr %53, i64 %63
  br i1 %62, label %66, label %65

65:                                               ; preds = %49
  tail call void %61(ptr noundef %64, ptr noundef %56, i32 noundef 1) #27
  br label %68

66:                                               ; preds = %49
  %67 = sext i32 %58 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %56, ptr align 1 %64, i64 %67, i1 false)
  br label %68

68:                                               ; preds = %66, %65
  %69 = add nsw i32 %43, 1
  br label %70

70:                                               ; preds = %42, %68
  %71 = phi i32 [ %69, %68 ], [ %43, %42 ]
  %72 = add nuw nsw i64 %17, 1
  %73 = load i32, ptr %10, align 4, !tbaa !41
  %74 = sext i32 %73 to i64
  %75 = icmp slt i64 %72, %74
  br i1 %75, label %16, label %78, !llvm.loop !151

76:                                               ; preds = %37
  %77 = trunc i64 %39 to i32
  br label %78

78:                                               ; preds = %70, %16, %76, %9
  %79 = phi i32 [ 0, %9 ], [ %77, %76 ], [ %18, %16 ], [ %71, %70 ]
  %80 = icmp eq i8 %4, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 2
  %83 = load i32, ptr %82, align 4, !tbaa !41
  %84 = icmp slt i32 %79, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %81, %85
  %86 = phi i32 [ %87, %85 ], [ %79, %81 ]
  tail call fastcc void @CustomData_bmesh_set_default_n(ptr noundef nonnull %1, ptr noundef nonnull %3, i32 noundef %86) #26
  %87 = add nsw i32 %86, 1
  %88 = load i32, ptr %82, align 4, !tbaa !41
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %85, label %90, !llvm.loop !152

90:                                               ; preds = %85, %81, %78
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CustomData_from_bmesh_block(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !41
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %65

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 2
  br label %10

10:                                               ; preds = %8, %59
  %11 = phi i32 [ %6, %8 ], [ %60, %59 ]
  %12 = phi i64 [ 0, %8 ], [ %62, %59 ]
  %13 = phi i32 [ 0, %8 ], [ %61, %59 ]
  %14 = load i32, ptr %9, align 4, !tbaa !41
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %65

16:                                               ; preds = %10
  %17 = load ptr, ptr %1, align 8, !tbaa !44
  %18 = load ptr, ptr %0, align 8, !tbaa !44
  %19 = getelementptr inbounds %struct.CustomDataLayer, ptr %18, i64 %12
  %20 = load i32, ptr %19, align 8, !tbaa !45
  %21 = sext i32 %13 to i64
  br label %22

22:                                               ; preds = %16, %27
  %23 = phi i64 [ %21, %16 ], [ %28, %27 ]
  %24 = getelementptr inbounds %struct.CustomDataLayer, ptr %17, i64 %23
  %25 = load i32, ptr %24, align 8, !tbaa !45
  %26 = icmp slt i32 %25, %20
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = add nsw i64 %23, 1
  %29 = trunc i64 %28 to i32
  %30 = icmp eq i32 %14, %29
  br i1 %30, label %65, label %22, !llvm.loop !153

31:                                               ; preds = %22
  %32 = trunc i64 %23 to i32
  %33 = shl i64 %23, 32
  %34 = ashr exact i64 %33, 32
  %35 = getelementptr inbounds %struct.CustomDataLayer, ptr %17, i64 %34
  %36 = load i32, ptr %35, align 8, !tbaa !45
  %37 = icmp eq i32 %36, %20
  br i1 %37, label %38, label %59

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.CustomDataLayer, ptr %18, i64 %12, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !92
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, ptr %2, i64 %41
  %43 = getelementptr inbounds %struct.CustomDataLayer, ptr %17, i64 %34, i32 9
  %44 = load ptr, ptr %43, align 8, !tbaa !49
  %45 = tail call fastcc ptr @layerType_getInfo(i32 noundef %20) #26
  %46 = load i32, ptr %45, align 8, !tbaa !56
  %47 = mul nsw i32 %46, %3
  %48 = getelementptr inbounds %struct.LayerTypeInfo, ptr %45, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !59
  %50 = icmp eq ptr %49, null
  %51 = sext i32 %47 to i64
  %52 = getelementptr inbounds i8, ptr %44, i64 %51
  br i1 %50, label %54, label %53

53:                                               ; preds = %38
  tail call void %49(ptr noundef %42, ptr noundef %52, i32 noundef 1) #27
  br label %56

54:                                               ; preds = %38
  %55 = sext i32 %46 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %52, ptr align 1 %42, i64 %55, i1 false)
  br label %56

56:                                               ; preds = %54, %53
  %57 = add nsw i32 %32, 1
  %58 = load i32, ptr %5, align 4, !tbaa !41
  br label %59

59:                                               ; preds = %31, %56
  %60 = phi i32 [ %58, %56 ], [ %11, %31 ]
  %61 = phi i32 [ %57, %56 ], [ %32, %31 ]
  %62 = add nuw nsw i64 %12, 1
  %63 = sext i32 %60 to i64
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %10, label %65, !llvm.loop !154

65:                                               ; preds = %59, %10, %27, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @CustomData_file_write_info(i32 noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #16 {
  %4 = tail call fastcc ptr @layerType_getInfo(i32 noundef %0) #26
  %5 = getelementptr inbounds %struct.LayerTypeInfo, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !155
  store ptr %6, ptr %1, align 8, !tbaa !58
  %7 = getelementptr inbounds %struct.LayerTypeInfo, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !156
  store i32 %8, ptr %2, align 4, !tbaa !37
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CustomData_sizeof(i32 noundef %0) local_unnamed_addr #10 {
  %2 = tail call fastcc ptr @layerType_getInfo(i32 noundef %0) #26
  %3 = load i32, ptr %2, align 8, !tbaa !56
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local ptr @CustomData_layertype_name(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @layerType_getName(i32 noundef %0) #26
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @CustomData_layertype_is_singleton(i32 noundef %0) local_unnamed_addr #10 {
  %2 = tail call fastcc ptr @layerType_getInfo(i32 noundef %0) #26
  %3 = getelementptr inbounds %struct.LayerTypeInfo, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = icmp eq ptr %4, null
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CustomData_set_layer_unique_name(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = alloca %struct.anon, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !44
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.CustomDataLayer, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 8, !tbaa !45
  %8 = tail call fastcc ptr @layerType_getInfo(i32 noundef %7) #26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #29
  store ptr %0, ptr %3, align 8, !tbaa !157
  %9 = getelementptr inbounds %struct.anon, ptr %3, i64 0, i32 1
  store i32 %7, ptr %9, align 8, !tbaa !159
  %10 = getelementptr inbounds %struct.anon, ptr %3, i64 0, i32 2
  store i32 %1, ptr %10, align 4, !tbaa !160
  %11 = getelementptr inbounds %struct.LayerTypeInfo, ptr %8, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.CustomDataLayer, ptr %4, i64 %5, i32 8
  %16 = call zeroext i8 @BLI_uniquename_cb(ptr noundef nonnull @customdata_unique_check, ptr noundef nonnull %3, ptr noundef nonnull %12, i8 noundef zeroext 46, ptr noundef nonnull %15, i32 noundef 64) #27
  br label %17

17:                                               ; preds = %2, %14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #29
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_uniquename_cb(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal noundef zeroext i8 @customdata_unique_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 !PGOFuncName !161 {
  %3 = load ptr, ptr %0, align 8, !tbaa !157
  %4 = getelementptr inbounds %struct.anon.2, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !159
  %6 = getelementptr inbounds %struct.anon.2, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !160
  %8 = tail call fastcc zeroext i8 @cd_layer_find_dupe(ptr noundef %3, ptr noundef %1, i32 noundef %5, i32 noundef %7) #26
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CustomData_validate_layer_name(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 {
  %5 = load i8, ptr %2, align 1, !tbaa !64
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @CustomData_get_named_layer_index(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2) #26
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %15

10:                                               ; preds = %4, %7
  %11 = tail call i32 @CustomData_get_active_layer_index(ptr noundef %0, i32 noundef %1) #26
  %12 = load ptr, ptr %0, align 8, !tbaa !44
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds %struct.CustomDataLayer, ptr %12, i64 %13, i32 8
  br label %15

15:                                               ; preds = %7, %10
  %16 = phi ptr [ %14, %10 ], [ %2, %7 ]
  %17 = tail call ptr @BLI_strncpy(ptr noundef %3, ptr noundef nonnull %16, i64 noundef 64) #27
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @CustomData_verify_versions(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #12 {
  %3 = load ptr, ptr %0, align 8, !tbaa !44
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.CustomDataLayer, ptr %3, i64 %4
  %6 = load i32, ptr %5, align 8, !tbaa !45
  %7 = icmp sgt i32 %6, 40
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = tail call fastcc ptr @layerType_getInfo(i32 noundef %6) #26
  %10 = getelementptr inbounds %struct.LayerTypeInfo, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !52
  %12 = icmp eq ptr %11, null
  %13 = icmp sgt i32 %1, 0
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %41

15:                                               ; preds = %8
  %16 = getelementptr %struct.CustomDataLayer, ptr %5, i64 -1
  %17 = load i32, ptr %16, align 8, !tbaa !45
  %18 = icmp eq i32 %17, %6
  br i1 %18, label %19, label %41

19:                                               ; preds = %15, %2
  %20 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %21 = add nsw i32 %1, 1
  %22 = load i32, ptr %20, align 4, !tbaa !41
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = sext i32 %21 to i64
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i64 [ %25, %24 ], [ %33, %26 ]
  %28 = phi i32 [ %1, %24 ], [ %37, %26 ]
  %29 = load ptr, ptr %0, align 8, !tbaa !44
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds %struct.CustomDataLayer, ptr %29, i64 %30
  %32 = getelementptr inbounds %struct.CustomDataLayer, ptr %29, i64 %27
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %31, ptr noundef nonnull align 8 dereferenceable(104) %32, i64 104, i1 false), !tbaa.struct !63
  %33 = add nsw i64 %27, 1
  %34 = load i32, ptr %20, align 4, !tbaa !41
  %35 = sext i32 %34 to i64
  %36 = icmp slt i64 %33, %35
  %37 = trunc i64 %27 to i32
  br i1 %36, label %26, label %38, !llvm.loop !162

38:                                               ; preds = %26, %19
  %39 = phi i32 [ %22, %19 ], [ %34, %26 ]
  %40 = add nsw i32 %39, -1
  store i32 %40, ptr %20, align 4, !tbaa !41
  br label %41

41:                                               ; preds = %8, %15, %38
  %42 = phi i8 [ 0, %38 ], [ 1, %15 ], [ 1, %8 ]
  ret i8 %42
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CustomData_external_reload(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !41
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %45

8:                                                ; preds = %4, %39
  %9 = phi i32 [ %40, %39 ], [ %6, %4 ]
  %10 = phi i32 [ %41, %39 ], [ %6, %4 ]
  %11 = phi i64 [ %42, %39 ], [ 0, %4 ]
  %12 = load ptr, ptr %0, align 8, !tbaa !44
  %13 = getelementptr inbounds %struct.CustomDataLayer, ptr %12, i64 %11
  %14 = load i32, ptr %13, align 8, !tbaa !45
  %15 = tail call fastcc ptr @layerType_getInfo(i32 noundef %14) #26
  %16 = zext nneg i32 %14 to i64
  %17 = shl nuw i64 1, %16
  %18 = and i64 %17, %2
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %39, label %20

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.CustomDataLayer, ptr %12, i64 %11, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !48
  %23 = and i32 %22, 24
  %24 = icmp eq i32 %23, 24
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.LayerTypeInfo, ptr %15, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !69
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.CustomDataLayer, ptr %12, i64 %11, i32 9
  %31 = load ptr, ptr %30, align 8, !tbaa !49
  %32 = load i32, ptr %15, align 8, !tbaa !56
  tail call void %27(ptr noundef %31, i32 noundef %3, i32 noundef %32) #27
  %33 = load i32, ptr %21, align 8, !tbaa !48
  %34 = load i32, ptr %5, align 4, !tbaa !41
  br label %35

35:                                               ; preds = %29, %25
  %36 = phi i32 [ %34, %29 ], [ %9, %25 ]
  %37 = phi i32 [ %33, %29 ], [ %22, %25 ]
  %38 = and i32 %37, -17
  store i32 %38, ptr %21, align 8, !tbaa !48
  br label %39

39:                                               ; preds = %8, %35, %20
  %40 = phi i32 [ %9, %8 ], [ %36, %35 ], [ %9, %20 ]
  %41 = phi i32 [ %10, %8 ], [ %36, %35 ], [ %10, %20 ]
  %42 = add nuw nsw i64 %11, 1
  %43 = sext i32 %41 to i64
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %8, label %45, !llvm.loop !163

45:                                               ; preds = %39, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CustomData_external_read(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = alloca [1024 x i8], align 16
  %6 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #29
  %8 = icmp eq ptr %7, null
  br i1 %8, label %99, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !41
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %99

13:                                               ; preds = %9
  %14 = load ptr, ptr %0, align 8, !tbaa !44
  %15 = add nsw i32 %11, -1
  %16 = zext nneg i32 %15 to i64
  %17 = mul nuw nsw i64 %16, 104
  %18 = zext nneg i32 %11 to i64
  br label %19

19:                                               ; preds = %13, %39
  %20 = phi i64 [ 0, %13 ], [ %41, %39 ]
  %21 = phi i32 [ 0, %13 ], [ %40, %39 ]
  %22 = getelementptr inbounds %struct.CustomDataLayer, ptr %14, i64 %20
  %23 = load i32, ptr %22, align 8, !tbaa !45
  %24 = tail call fastcc ptr @layerType_getInfo(i32 noundef %23) #26
  %25 = zext nneg i32 %23 to i64
  %26 = shl nuw i64 1, %25
  %27 = and i64 %26, %2
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.CustomDataLayer, ptr %14, i64 %20, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !48
  %32 = and i32 %31, 24
  %33 = icmp eq i32 %32, 8
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.LayerTypeInfo, ptr %24, i64 0, i32 15
  %36 = load ptr, ptr %35, align 8, !tbaa !164
  %37 = icmp eq ptr %36, null
  %38 = select i1 %37, i32 %21, i32 1
  br label %39

39:                                               ; preds = %34, %19, %29
  %40 = phi i32 [ %21, %29 ], [ %21, %19 ], [ %38, %34 ]
  %41 = add nuw nsw i64 %20, 1
  %42 = icmp eq i64 %41, %18
  br i1 %42, label %43, label %19, !llvm.loop !165

43:                                               ; preds = %39
  %44 = getelementptr i8, ptr %14, i64 %17
  %45 = icmp eq i32 %40, 0
  br i1 %45, label %99, label %46

46:                                               ; preds = %43
  call fastcc void @customdata_external_filename(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull %7) #26
  %47 = call ptr @cdf_create(i32 noundef 1) #27
  %48 = call i32 @cdf_read_open(ptr noundef %47, ptr noundef nonnull %5) #27
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load i32, ptr %10, align 4, !tbaa !41
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %58, label %98

53:                                               ; preds = %46
  %54 = load ptr, ptr @stderr, align 8, !tbaa !58
  %55 = load i32, ptr %44, align 8, !tbaa !45
  %56 = call fastcc ptr @layerType_getName(i32 noundef %55) #26
  %57 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef nonnull @.str.4, ptr noundef %56, ptr noundef nonnull %5) #30
  br label %99

58:                                               ; preds = %50, %93
  %59 = phi i64 [ %94, %93 ], [ 0, %50 ]
  %60 = load ptr, ptr %0, align 8, !tbaa !44
  %61 = getelementptr inbounds %struct.CustomDataLayer, ptr %60, i64 %59
  %62 = load i32, ptr %61, align 8, !tbaa !45
  %63 = call fastcc ptr @layerType_getInfo(i32 noundef %62) #26
  %64 = zext nneg i32 %62 to i64
  %65 = shl nuw i64 1, %64
  %66 = and i64 %65, %2
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %93, label %68

68:                                               ; preds = %58
  %69 = getelementptr inbounds %struct.CustomDataLayer, ptr %60, i64 %59, i32 2
  %70 = load i32, ptr %69, align 8, !tbaa !48
  %71 = and i32 %70, 24
  %72 = icmp eq i32 %71, 8
  br i1 %72, label %73, label %93

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.LayerTypeInfo, ptr %63, i64 0, i32 15
  %75 = load ptr, ptr %74, align 8, !tbaa !164
  %76 = icmp eq ptr %75, null
  br i1 %76, label %93, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.CustomDataLayer, ptr %60, i64 %59, i32 8
  %79 = call ptr @cdf_layer_find(ptr noundef %47, i32 noundef %62, ptr noundef nonnull %78) #27
  %80 = icmp eq ptr %79, null
  br i1 %80, label %93, label %81

81:                                               ; preds = %77
  %82 = call i32 @cdf_read_layer(ptr noundef %47, ptr noundef nonnull %79) #27
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %98, label %84

84:                                               ; preds = %81
  %85 = load ptr, ptr %74, align 8, !tbaa !164
  %86 = getelementptr inbounds %struct.CustomDataLayer, ptr %60, i64 %59, i32 9
  %87 = load ptr, ptr %86, align 8, !tbaa !49
  %88 = call i32 %85(ptr noundef %47, ptr noundef %87, i32 noundef %3) #27
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %84
  %91 = load i32, ptr %69, align 8, !tbaa !48
  %92 = or i32 %91, 16
  store i32 %92, ptr %69, align 8, !tbaa !48
  br label %93

93:                                               ; preds = %58, %73, %90, %77, %68
  %94 = add nuw nsw i64 %59, 1
  %95 = load i32, ptr %10, align 4, !tbaa !41
  %96 = sext i32 %95 to i64
  %97 = icmp slt i64 %94, %96
  br i1 %97, label %58, label %98, !llvm.loop !166

98:                                               ; preds = %93, %84, %81, %50
  call void @cdf_read_close(ptr noundef %47) #27
  call void @cdf_free(ptr noundef %47) #27
  br label %99

99:                                               ; preds = %9, %43, %4, %98, %53
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @customdata_external_filename(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #5 !PGOFuncName !167 {
  %4 = tail call ptr @BLI_strncpy(ptr noundef %0, ptr noundef %2, i64 noundef 1024) #27
  %5 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !168
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds %struct.Library, ptr %6, i64 0, i32 4
  %9 = load ptr, ptr @G, align 8
  %10 = getelementptr inbounds %struct.Main, ptr %9, i64 0, i32 2
  %11 = select i1 %7, ptr %10, ptr %8
  %12 = tail call zeroext i8 @BLI_path_abs(ptr noundef %0, ptr noundef nonnull %11) #27
  ret void
}

; Function Attrs: optsize
declare ptr @cdf_create(i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @cdf_read_open(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @cdf_layer_find(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @cdf_read_layer(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @cdf_read_close(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @cdf_free(ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CustomData_external_write(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 {
  %6 = alloca [1024 x i8], align 16
  %7 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #29
  %9 = icmp eq ptr %8, null
  br i1 %9, label %175, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !41
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %175

14:                                               ; preds = %10
  %15 = load ptr, ptr %0, align 8, !tbaa !44
  %16 = zext nneg i32 %12 to i64
  br label %17

17:                                               ; preds = %14, %37
  %18 = phi i64 [ 0, %14 ], [ %39, %37 ]
  %19 = phi i32 [ 0, %14 ], [ %38, %37 ]
  %20 = getelementptr inbounds %struct.CustomDataLayer, ptr %15, i64 %18
  %21 = load i32, ptr %20, align 8, !tbaa !45
  %22 = tail call fastcc ptr @layerType_getInfo(i32 noundef %21) #26
  %23 = zext nneg i32 %21 to i64
  %24 = shl nuw i64 1, %23
  %25 = and i64 %24, %2
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.CustomDataLayer, ptr %15, i64 %18, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !48
  %30 = and i32 %29, 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.LayerTypeInfo, ptr %22, i64 0, i32 16
  %34 = load ptr, ptr %33, align 8, !tbaa !171
  %35 = icmp eq ptr %34, null
  %36 = select i1 %35, i32 %19, i32 1
  br label %37

37:                                               ; preds = %32, %17, %27
  %38 = phi i32 [ %19, %27 ], [ %19, %17 ], [ %36, %32 ]
  %39 = add nuw nsw i64 %18, 1
  %40 = icmp eq i64 %39, %16
  br i1 %40, label %41, label %17, !llvm.loop !172

41:                                               ; preds = %37
  %42 = icmp eq i32 %38, 0
  br i1 %42, label %175, label %43

43:                                               ; preds = %41
  tail call void @CustomData_external_read(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) #26
  call fastcc void @customdata_external_filename(ptr noundef nonnull %6, ptr noundef %1, ptr noundef nonnull %8) #26
  %44 = call ptr @cdf_create(i32 noundef 1) #27
  %45 = load i32, ptr %11, align 4, !tbaa !41
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %78

47:                                               ; preds = %43, %73
  %48 = phi i32 [ %74, %73 ], [ %45, %43 ]
  %49 = phi i64 [ %75, %73 ], [ 0, %43 ]
  %50 = load ptr, ptr %0, align 8, !tbaa !44
  %51 = getelementptr inbounds %struct.CustomDataLayer, ptr %50, i64 %49
  %52 = load i32, ptr %51, align 8, !tbaa !45
  %53 = getelementptr inbounds %struct.CustomDataLayer, ptr %50, i64 %49, i32 2
  %54 = load i32, ptr %53, align 8, !tbaa !48
  %55 = and i32 %54, 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %73, label %57

57:                                               ; preds = %47
  %58 = call fastcc ptr @layerType_getInfo(i32 noundef %52) #26
  %59 = getelementptr inbounds %struct.LayerTypeInfo, ptr %58, i64 0, i32 17
  %60 = load ptr, ptr %59, align 8, !tbaa !173
  %61 = icmp eq ptr %60, null
  br i1 %61, label %73, label %62

62:                                               ; preds = %57
  %63 = and i32 %54, 16
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.CustomDataLayer, ptr %50, i64 %49, i32 8
  %67 = getelementptr inbounds %struct.CustomDataLayer, ptr %50, i64 %49, i32 9
  %68 = load ptr, ptr %67, align 8, !tbaa !49
  %69 = call i64 %60(ptr noundef %44, ptr noundef %68, i32 noundef %3) #27
  %70 = call ptr @cdf_layer_add(ptr noundef %44, i32 noundef %52, ptr noundef nonnull %66, i64 noundef %69) #27
  %71 = load i32, ptr %11, align 4, !tbaa !41
  br label %73

72:                                               ; preds = %62
  call void @cdf_free(ptr noundef %44) #27
  br label %175

73:                                               ; preds = %47, %57, %65
  %74 = phi i32 [ %48, %47 ], [ %48, %57 ], [ %71, %65 ]
  %75 = add nuw nsw i64 %49, 1
  %76 = sext i32 %74 to i64
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %47, label %78, !llvm.loop !174

78:                                               ; preds = %73, %43
  %79 = call i32 @cdf_write_open(ptr noundef %44, ptr noundef nonnull %6) #27
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i32, ptr %11, align 4, !tbaa !41
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %87, label %126

84:                                               ; preds = %78
  %85 = load ptr, ptr @stderr, align 8, !tbaa !58
  %86 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %85, ptr noundef nonnull @.str.5, ptr noundef nonnull %6) #30
  br label %175

87:                                               ; preds = %81, %117
  %88 = phi i32 [ %118, %117 ], [ %82, %81 ]
  %89 = phi i64 [ %119, %117 ], [ 0, %81 ]
  %90 = load ptr, ptr %0, align 8, !tbaa !44
  %91 = getelementptr inbounds %struct.CustomDataLayer, ptr %90, i64 %89
  %92 = load i32, ptr %91, align 8, !tbaa !45
  %93 = getelementptr inbounds %struct.CustomDataLayer, ptr %90, i64 %89, i32 2
  %94 = load i32, ptr %93, align 8, !tbaa !48
  %95 = and i32 %94, 8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %117, label %97

97:                                               ; preds = %87
  %98 = call fastcc ptr @layerType_getInfo(i32 noundef %92) #26
  %99 = getelementptr inbounds %struct.LayerTypeInfo, ptr %98, i64 0, i32 16
  %100 = load ptr, ptr %99, align 8, !tbaa !171
  %101 = icmp eq ptr %100, null
  br i1 %101, label %117, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.CustomDataLayer, ptr %90, i64 %89, i32 8
  %104 = call ptr @cdf_layer_find(ptr noundef %44, i32 noundef %92, ptr noundef nonnull %103) #27
  %105 = call i32 @cdf_write_layer(ptr noundef %44, ptr noundef %104) #27
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = trunc i64 %89 to i32
  %109 = load i32, ptr %11, align 4, !tbaa !41
  br label %126

110:                                              ; preds = %102
  %111 = load ptr, ptr %99, align 8, !tbaa !171
  %112 = getelementptr inbounds %struct.CustomDataLayer, ptr %90, i64 %89, i32 9
  %113 = load ptr, ptr %112, align 8, !tbaa !49
  %114 = call i32 %111(ptr noundef %44, ptr noundef %113, i32 noundef %3) #27
  %115 = icmp eq i32 %114, 0
  %116 = load i32, ptr %11, align 4, !tbaa !41
  br i1 %115, label %122, label %117

117:                                              ; preds = %110, %87, %97
  %118 = phi i32 [ %88, %87 ], [ %88, %97 ], [ %116, %110 ]
  %119 = add nuw nsw i64 %89, 1
  %120 = sext i32 %118 to i64
  %121 = icmp slt i64 %119, %120
  br i1 %121, label %87, label %122, !llvm.loop !175

122:                                              ; preds = %117, %110
  %123 = phi i64 [ %89, %110 ], [ %119, %117 ]
  %124 = phi i32 [ %116, %110 ], [ %118, %117 ]
  %125 = trunc i64 %123 to i32
  br label %126

126:                                              ; preds = %122, %107, %81
  %127 = phi i32 [ %82, %81 ], [ %109, %107 ], [ %124, %122 ]
  %128 = phi i32 [ 0, %81 ], [ %108, %107 ], [ %125, %122 ]
  %129 = icmp eq i32 %128, %127
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = icmp sgt i32 %127, 0
  br i1 %131, label %132, label %174

132:                                              ; preds = %130
  %133 = icmp ne i32 %4, 0
  br label %137

134:                                              ; preds = %126
  %135 = load ptr, ptr @stderr, align 8, !tbaa !58
  %136 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %135, ptr noundef nonnull @.str.6, ptr noundef nonnull %6) #30
  call void @cdf_free(ptr noundef %44) #27
  br label %175

137:                                              ; preds = %132, %168
  %138 = phi i32 [ %127, %132 ], [ %169, %168 ]
  %139 = phi i32 [ %127, %132 ], [ %170, %168 ]
  %140 = phi i64 [ 0, %132 ], [ %171, %168 ]
  %141 = load ptr, ptr %0, align 8, !tbaa !44
  %142 = getelementptr inbounds %struct.CustomDataLayer, ptr %141, i64 %140
  %143 = load i32, ptr %142, align 8, !tbaa !45
  %144 = call fastcc ptr @layerType_getInfo(i32 noundef %143) #26
  %145 = getelementptr inbounds %struct.CustomDataLayer, ptr %141, i64 %140, i32 2
  %146 = load i32, ptr %145, align 8, !tbaa !48
  %147 = and i32 %146, 8
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %168, label %149

149:                                              ; preds = %137
  %150 = getelementptr inbounds %struct.LayerTypeInfo, ptr %144, i64 0, i32 16
  %151 = load ptr, ptr %150, align 8, !tbaa !171
  %152 = icmp ne ptr %151, null
  %153 = and i1 %133, %152
  br i1 %153, label %154, label %168

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.LayerTypeInfo, ptr %144, i64 0, i32 5
  %156 = load ptr, ptr %155, align 8, !tbaa !69
  %157 = icmp eq ptr %156, null
  br i1 %157, label %164, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.CustomDataLayer, ptr %141, i64 %140, i32 9
  %160 = load ptr, ptr %159, align 8, !tbaa !49
  %161 = load i32, ptr %144, align 8, !tbaa !56
  call void %156(ptr noundef %160, i32 noundef %3, i32 noundef %161) #27
  %162 = load i32, ptr %145, align 8, !tbaa !48
  %163 = load i32, ptr %11, align 4, !tbaa !41
  br label %164

164:                                              ; preds = %158, %154
  %165 = phi i32 [ %163, %158 ], [ %138, %154 ]
  %166 = phi i32 [ %162, %158 ], [ %146, %154 ]
  %167 = and i32 %166, -17
  store i32 %167, ptr %145, align 8, !tbaa !48
  br label %168

168:                                              ; preds = %137, %149, %164
  %169 = phi i32 [ %138, %137 ], [ %138, %149 ], [ %165, %164 ]
  %170 = phi i32 [ %139, %137 ], [ %139, %149 ], [ %165, %164 ]
  %171 = add nuw nsw i64 %140, 1
  %172 = sext i32 %170 to i64
  %173 = icmp slt i64 %171, %172
  br i1 %173, label %137, label %174, !llvm.loop !176

174:                                              ; preds = %168, %130
  call void @cdf_write_close(ptr noundef %44) #27
  call void @cdf_free(ptr noundef %44) #27
  br label %175

175:                                              ; preds = %10, %41, %5, %174, %134, %84, %72
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #29
  ret void
}

; Function Attrs: optsize
declare ptr @cdf_layer_add(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @cdf_write_open(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @cdf_write_layer(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @cdf_write_close(ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CustomData_external_add(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #5 {
  %6 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = tail call i32 @CustomData_get_active_layer_index(ptr noundef %0, i32 noundef %2) #26
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %27, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %0, align 8, !tbaa !44
  %12 = sext i32 %8 to i64
  %13 = getelementptr inbounds %struct.CustomDataLayer, ptr %11, i64 %12, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !48
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %10
  %18 = icmp eq ptr %7, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %21 = tail call ptr %20(i64 noundef 1024, ptr noundef nonnull @.str.7) #27
  store ptr %21, ptr %6, align 8, !tbaa !66
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi ptr [ %7, %17 ], [ %21, %19 ]
  %24 = tail call ptr @BLI_strncpy(ptr noundef %23, ptr noundef %4, i64 noundef 1024) #27
  %25 = load i32, ptr %13, align 8, !tbaa !48
  %26 = or i32 %25, 24
  store i32 %26, ptr %13, align 8, !tbaa !48
  br label %27

27:                                               ; preds = %10, %5, %22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CustomData_external_remove(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = tail call i32 @CustomData_get_active_layer_index(ptr noundef %0, i32 noundef %2) #26
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %30, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = load ptr, ptr %0, align 8, !tbaa !44
  %11 = sext i32 %5 to i64
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %10, i64 %11
  %13 = icmp eq ptr %9, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.CustomDataLayer, ptr %10, i64 %11, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !48
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %14
  %20 = and i32 %16, 16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, ptr %12, align 8, !tbaa !45
  %24 = zext nneg i32 %23 to i64
  %25 = shl nuw i64 1, %24
  tail call void @CustomData_external_read(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %25, i32 noundef %3) #26
  %26 = load i32, ptr %15, align 8, !tbaa !48
  br label %27

27:                                               ; preds = %22, %19
  %28 = phi i32 [ %26, %22 ], [ %16, %19 ]
  %29 = and i32 %28, -9
  store i32 %29, ptr %15, align 8, !tbaa !48
  br label %30

30:                                               ; preds = %14, %27, %7, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @CustomData_external_test(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = tail call i32 @CustomData_get_active_layer_index(ptr noundef %0, i32 noundef %1) #26
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !44
  %7 = sext i32 %3 to i64
  %8 = getelementptr inbounds %struct.CustomDataLayer, ptr %6, i64 %7, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !48
  %10 = trunc i32 %9 to i8
  %11 = lshr i8 %10, 3
  %12 = and i8 %11, 1
  br label %13

13:                                               ; preds = %2, %5
  %14 = phi i8 [ %12, %5 ], [ 0, %2 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @layerCopy_mdeformvert(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) #5 !PGOFuncName !177 {
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
  %14 = load i32, ptr %13, align 8, !tbaa !178
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %9
  %17 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !58
  %18 = sext i32 %14 to i64
  %19 = shl nsw i64 %18, 3
  %20 = tail call ptr %17(i64 noundef %19, ptr noundef nonnull @.str.89) #27
  %21 = load ptr, ptr %12, align 8, !tbaa !180
  %22 = load i32, ptr %13, align 8, !tbaa !178
  %23 = sext i32 %22 to i64
  %24 = shl nsw i64 %23, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %20, ptr align 4 %21, i64 %24, i1 false)
  br label %25

25:                                               ; preds = %9, %16
  %26 = phi ptr [ %20, %16 ], [ null, %9 ]
  store ptr %26, ptr %12, align 8, !tbaa !180
  %27 = add nuw nsw i64 %10, 1
  %28 = icmp eq i64 %27, %8
  br i1 %28, label %29, label %9, !llvm.loop !181

29:                                               ; preds = %25, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @layerFree_mdeformvert(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #5 !PGOFuncName !182 {
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
  %12 = load ptr, ptr %11, align 8, !tbaa !180
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %15(ptr noundef nonnull %12) #27
  store ptr null, ptr %11, align 8, !tbaa !180
  %16 = getelementptr inbounds %struct.MDeformVert, ptr %11, i64 0, i32 1
  store i32 0, ptr %16, align 8, !tbaa !178
  br label %17

17:                                               ; preds = %14, %8
  %18 = add nuw nsw i64 %9, 1
  %19 = icmp eq i64 %18, %7
  br i1 %19, label %20, label %8, !llvm.loop !183

20:                                               ; preds = %17, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @layerInterp_mdeformvert(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture readnone %2, i32 noundef %3, ptr nocapture noundef %4) #5 !PGOFuncName !184 {
  %6 = icmp slt i32 %3, 1
  br i1 %6, label %98, label %7

7:                                                ; preds = %5
  %8 = icmp eq ptr %1, null
  %9 = zext nneg i32 %3 to i64
  br label %10

10:                                               ; preds = %7, %61
  %11 = phi i64 [ 0, %7 ], [ %64, %61 ]
  %12 = phi ptr [ null, %7 ], [ %63, %61 ]
  %13 = phi i32 [ 0, %7 ], [ %62, %61 ]
  %14 = getelementptr inbounds ptr, ptr %0, i64 %11
  %15 = load ptr, ptr %14, align 8, !tbaa !58
  br i1 %8, label %19, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds float, ptr %1, i64 %11
  %18 = load float, ptr %17, align 4, !tbaa !185
  br label %19

19:                                               ; preds = %10, %16
  %20 = phi float [ %18, %16 ], [ 1.000000e+00, %10 ]
  %21 = getelementptr inbounds %struct.MDeformVert, ptr %15, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !178
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %61

24:                                               ; preds = %19
  %25 = load ptr, ptr %15, align 8, !tbaa !180
  %26 = zext nneg i32 %22 to i64
  br label %27

27:                                               ; preds = %24, %56
  %28 = phi i64 [ 0, %24 ], [ %59, %56 ]
  %29 = phi ptr [ %12, %24 ], [ %58, %56 ]
  %30 = phi i32 [ %13, %24 ], [ %57, %56 ]
  %31 = getelementptr inbounds %struct.MDeformWeight, ptr %25, i64 %28, i32 1
  %32 = load float, ptr %31, align 4, !tbaa !187
  %33 = fmul float %20, %32
  %34 = fcmp oeq float %33, 0.000000e+00
  br i1 %34, label %56, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.MDeformWeight, ptr %25, i64 %28
  %37 = icmp eq ptr %29, null
  %38 = load i32, ptr %36, align 4, !tbaa !189
  br i1 %37, label %51, label %39

39:                                               ; preds = %35, %44
  %40 = phi ptr [ %45, %44 ], [ %29, %35 ]
  %41 = getelementptr inbounds %struct.MDeformWeight_Link, ptr %40, i64 0, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !189
  %43 = icmp eq i32 %42, %38
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load ptr, ptr %40, align 8, !tbaa !190
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %39, !llvm.loop !192

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.MDeformWeight_Link, ptr %40, i64 0, i32 1, i32 1
  %49 = load float, ptr %48, align 4, !tbaa !187
  %50 = fadd float %33, %49
  store float %50, ptr %48, align 4, !tbaa !187
  br label %56

51:                                               ; preds = %44, %35
  %52 = alloca [16 x i8], align 16
  %53 = getelementptr inbounds %struct.MDeformWeight_Link, ptr %52, i64 0, i32 1
  store i32 %38, ptr %53, align 8, !tbaa !193
  %54 = getelementptr inbounds %struct.MDeformWeight_Link, ptr %52, i64 0, i32 1, i32 1
  store float %33, ptr %54, align 4, !tbaa !194
  store ptr %29, ptr %52, align 16, !tbaa !190
  %55 = add nsw i32 %30, 1
  br label %56

56:                                               ; preds = %47, %51, %27
  %57 = phi i32 [ %30, %27 ], [ %30, %47 ], [ %55, %51 ]
  %58 = phi ptr [ %29, %27 ], [ %29, %47 ], [ %52, %51 ]
  %59 = add nuw nsw i64 %28, 1
  %60 = icmp eq i64 %59, %26
  br i1 %60, label %61, label %27, !llvm.loop !195

61:                                               ; preds = %56, %19
  %62 = phi i32 [ %13, %19 ], [ %57, %56 ]
  %63 = phi ptr [ %12, %19 ], [ %58, %56 ]
  %64 = add nuw nsw i64 %11, 1
  %65 = icmp eq i64 %64, %9
  br i1 %65, label %66, label %10, !llvm.loop !196

66:                                               ; preds = %61
  %67 = load ptr, ptr %4, align 8, !tbaa !180
  %68 = icmp eq ptr %67, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.MDeformVert, ptr %4, i64 0, i32 1
  %71 = load i32, ptr %70, align 8, !tbaa !178
  %72 = icmp eq i32 %71, %62
  br i1 %72, label %82, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  call void %74(ptr noundef nonnull %67) #27
  br label %75

75:                                               ; preds = %66, %73
  %76 = icmp eq i32 %62, 0
  br i1 %76, label %97, label %77

77:                                               ; preds = %75
  %78 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !58
  %79 = sext i32 %62 to i64
  %80 = shl nsw i64 %79, 3
  %81 = call ptr %78(i64 noundef %80, ptr noundef nonnull @__func__.layerInterp_mdeformvert) #27
  store ptr %81, ptr %4, align 8, !tbaa !180
  br label %84

82:                                               ; preds = %69
  %83 = icmp eq i32 %62, 0
  br i1 %83, label %97, label %84

84:                                               ; preds = %77, %82
  %85 = getelementptr inbounds %struct.MDeformVert, ptr %4, i64 0, i32 1
  store i32 %62, ptr %85, align 8, !tbaa !178
  %86 = icmp eq ptr %63, null
  br i1 %86, label %98, label %87

87:                                               ; preds = %84, %87
  %88 = phi i64 [ %95, %87 ], [ 0, %84 ]
  %89 = phi ptr [ %94, %87 ], [ %63, %84 ]
  %90 = load ptr, ptr %4, align 8, !tbaa !180
  %91 = getelementptr inbounds %struct.MDeformWeight, ptr %90, i64 %88
  %92 = getelementptr inbounds %struct.MDeformWeight_Link, ptr %89, i64 0, i32 1
  %93 = load i64, ptr %92, align 8
  store i64 %93, ptr %91, align 4
  %94 = load ptr, ptr %89, align 8, !tbaa !190
  %95 = add nuw i64 %88, 1
  %96 = icmp eq ptr %94, null
  br i1 %96, label %98, label %87, !llvm.loop !197

97:                                               ; preds = %75, %82
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  br label %98

98:                                               ; preds = %87, %84, %97, %5
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @layerCopy_tface(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #17 !PGOFuncName !198 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %11, %7 ]
  %9 = getelementptr inbounds %struct.MTFace, ptr %1, i64 %8
  %10 = getelementptr inbounds %struct.MTFace, ptr %0, i64 %8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %10, i64 48, i1 false), !tbaa.struct !199
  %11 = add nuw nsw i64 %8, 1
  %12 = icmp eq i64 %11, %6
  br i1 %12, label %13, label %7, !llvm.loop !201

13:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @layerInterp_tface(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #12 !PGOFuncName !202 {
  %6 = alloca [4 x [2 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %7 = icmp slt i32 %3, 1
  br i1 %7, label %46, label %8

8:                                                ; preds = %5
  %9 = icmp eq ptr %1, null
  %10 = icmp eq ptr %2, null
  %11 = zext nneg i32 %3 to i64
  br label %12

12:                                               ; preds = %8, %41
  %13 = phi i64 [ 0, %8 ], [ %42, %41 ]
  %14 = phi ptr [ %2, %8 ], [ %38, %41 ]
  br i1 %9, label %18, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds float, ptr %1, i64 %13
  %17 = load float, ptr %16, align 4, !tbaa !185
  br label %18

18:                                               ; preds = %12, %15
  %19 = phi float [ %17, %15 ], [ 1.000000e+00, %12 ]
  %20 = getelementptr inbounds ptr, ptr %0, i64 %13
  %21 = load ptr, ptr %20, align 8, !tbaa !58
  br label %22

22:                                               ; preds = %18, %37
  %23 = phi i64 [ 0, %18 ], [ %39, %37 ]
  %24 = phi ptr [ %14, %18 ], [ %38, %37 ]
  %25 = getelementptr inbounds [4 x [2 x float]], ptr %6, i64 0, i64 %23
  br i1 %10, label %35, label %26

26:                                               ; preds = %22, %26
  %27 = phi i64 [ %32, %26 ], [ 0, %22 ]
  %28 = phi ptr [ %33, %26 ], [ %24, %22 ]
  %29 = getelementptr inbounds [4 x [2 x float]], ptr %21, i64 0, i64 %27
  %30 = load float, ptr %28, align 4, !tbaa !185
  %31 = fmul float %19, %30
  call fastcc void @madd_v2_v2fl(ptr noundef nonnull %25, ptr noundef %29, float noundef %31) #26
  %32 = add nuw nsw i64 %27, 1
  %33 = getelementptr inbounds float, ptr %28, i64 1
  %34 = icmp eq i64 %32, 4
  br i1 %34, label %37, label %26, !llvm.loop !203

35:                                               ; preds = %22
  %36 = getelementptr inbounds [4 x [2 x float]], ptr %21, i64 0, i64 %23
  call fastcc void @madd_v2_v2fl(ptr noundef nonnull %25, ptr noundef %36, float noundef %19) #26
  br label %37

37:                                               ; preds = %26, %35
  %38 = phi ptr [ %24, %35 ], [ %33, %26 ]
  %39 = add nuw nsw i64 %23, 1
  %40 = icmp eq i64 %39, 4
  br i1 %40, label %41, label %22, !llvm.loop !204

41:                                               ; preds = %37
  %42 = add nuw nsw i64 %13, 1
  %43 = icmp eq i64 %42, %11
  br i1 %43, label %44, label %12, !llvm.loop !205

44:                                               ; preds = %41
  %45 = load ptr, ptr %0, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %45, i64 48, i1 false), !tbaa.struct !199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 16 dereferenceable(32) %6, i64 32, i1 false)
  br label %46

46:                                               ; preds = %5, %44
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #29
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @layerSwap_tface(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #17 !PGOFuncName !206 {
  %3 = alloca [4 x [2 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #29
  %4 = getelementptr inbounds %struct.MTFace, ptr %0, i64 0, i32 6
  %5 = load i16, ptr %4, align 2, !tbaa !207
  %6 = and i16 %5, -241
  %7 = getelementptr inbounds %struct.MTFace, ptr %0, i64 0, i32 2
  %8 = load i8, ptr %7, align 8, !tbaa !209
  %9 = and i8 %8, -61
  br label %10

10:                                               ; preds = %2, %37
  %11 = phi i64 [ 0, %2 ], [ %39, %37 ]
  %12 = phi i16 [ %6, %2 ], [ %28, %37 ]
  %13 = phi i8 [ %9, %2 ], [ %38, %37 ]
  %14 = getelementptr inbounds i32, ptr %1, i64 %11
  %15 = load i32, ptr %14, align 4, !tbaa !37
  %16 = getelementptr inbounds [4 x [2 x float]], ptr %3, i64 0, i64 %11
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds [4 x [2 x float]], ptr %0, i64 0, i64 %17
  call fastcc void @copy_v2_v2(ptr noundef nonnull %16, ptr noundef %18) #26
  %19 = getelementptr inbounds [4 x i16], ptr @layerSwap_tface.pin_flags, i64 0, i64 %17
  %20 = load i16, ptr %19, align 2, !tbaa !200
  %21 = and i16 %20, %5
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %10
  %24 = getelementptr inbounds [4 x i16], ptr @layerSwap_tface.pin_flags, i64 0, i64 %11
  %25 = load i16, ptr %24, align 2, !tbaa !200
  %26 = or i16 %25, %12
  br label %27

27:                                               ; preds = %23, %10
  %28 = phi i16 [ %26, %23 ], [ %12, %10 ]
  %29 = getelementptr inbounds [4 x i8], ptr @layerSwap_tface.sel_flags, i64 0, i64 %17
  %30 = load i8, ptr %29, align 1, !tbaa !64
  %31 = and i8 %30, %8
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds [4 x i8], ptr @layerSwap_tface.sel_flags, i64 0, i64 %11
  %35 = load i8, ptr %34, align 1, !tbaa !64
  %36 = or i8 %35, %13
  br label %37

37:                                               ; preds = %33, %27
  %38 = phi i8 [ %36, %33 ], [ %13, %27 ]
  %39 = add nuw nsw i64 %11, 1
  %40 = icmp eq i64 %39, 4
  br i1 %40, label %41, label %10, !llvm.loop !210

41:                                               ; preds = %37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %3, i64 32, i1 false)
  store i16 %28, ptr %4, align 2, !tbaa !207
  store i8 %38, ptr %7, align 8, !tbaa !209
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #29
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @layerDefault_tface(ptr nocapture noundef writeonly %0, i32 noundef %1) #17 !PGOFuncName !211 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %9, %6 ]
  %8 = getelementptr inbounds %struct.MTFace, ptr %0, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) @layerDefault_tface.default_tf, i64 48, i1 false), !tbaa.struct !199
  %9 = add nuw nsw i64 %7, 1
  %10 = icmp eq i64 %9, %5
  br i1 %10, label %11, label %6, !llvm.loop !212

11:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @layerMaxNum_tface() #0 !PGOFuncName !213 {
  ret i32 8
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @layerInterp_mcol(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #4 !PGOFuncName !214 {
  %6 = alloca [4 x %struct.anon.0], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %6, i8 0, i64 64, i1 false)
  %7 = icmp slt i32 %3, 1
  br i1 %7, label %107, label %8

8:                                                ; preds = %5
  %9 = icmp eq ptr %1, null
  %10 = icmp eq ptr %2, null
  %11 = zext nneg i32 %3 to i64
  br label %12

12:                                               ; preds = %8, %57
  %13 = phi i64 [ 0, %8 ], [ %58, %57 ]
  %14 = phi ptr [ %2, %8 ], [ %54, %57 ]
  br i1 %9, label %18, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds float, ptr %1, i64 %13
  %17 = load float, ptr %16, align 4, !tbaa !185
  br label %18

18:                                               ; preds = %12, %15
  %19 = phi float [ %17, %15 ], [ 1.000000e+00, %12 ]
  %20 = getelementptr inbounds ptr, ptr %0, i64 %13
  %21 = insertelement <4 x float> poison, float %19, i64 0
  %22 = shufflevector <4 x float> %21, <4 x float> poison, <4 x i32> zeroinitializer
  %23 = load ptr, ptr %20, align 8, !tbaa !58
  br label %24

24:                                               ; preds = %18, %53
  %25 = phi i64 [ 0, %18 ], [ %55, %53 ]
  %26 = phi ptr [ %14, %18 ], [ %54, %53 ]
  br i1 %10, label %46, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds [4 x %struct.anon.0], ptr %6, i64 0, i64 %25
  %29 = load <4 x float>, ptr %28, align 16, !tbaa !185
  br label %30

30:                                               ; preds = %27, %30
  %31 = phi ptr [ %23, %27 ], [ %44, %30 ]
  %32 = phi i32 [ 0, %27 ], [ %42, %30 ]
  %33 = phi ptr [ %26, %27 ], [ %43, %30 ]
  %34 = phi <4 x float> [ %29, %27 ], [ %41, %30 ]
  %35 = load float, ptr %33, align 4, !tbaa !185
  %36 = fmul float %19, %35
  %37 = load <4 x i8>, ptr %31, align 1, !tbaa !64
  %38 = uitofp <4 x i8> %37 to <4 x float>
  %39 = insertelement <4 x float> poison, float %36, i64 0
  %40 = shufflevector <4 x float> %39, <4 x float> poison, <4 x i32> zeroinitializer
  %41 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %38, <4 x float> %40, <4 x float> %34)
  store <4 x float> %41, ptr %28, align 16, !tbaa !185
  %42 = add nuw nsw i32 %32, 1
  %43 = getelementptr inbounds float, ptr %33, i64 1
  %44 = getelementptr inbounds %struct.MCol, ptr %31, i64 1
  %45 = icmp eq i32 %42, 4
  br i1 %45, label %53, label %30, !llvm.loop !215

46:                                               ; preds = %24
  %47 = getelementptr inbounds %struct.MCol, ptr %23, i64 %25
  %48 = getelementptr inbounds [4 x %struct.anon.0], ptr %6, i64 0, i64 %25
  %49 = load <4 x i8>, ptr %47, align 1, !tbaa !64
  %50 = uitofp <4 x i8> %49 to <4 x float>
  %51 = load <4 x float>, ptr %48, align 16, !tbaa !185
  %52 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %50, <4 x float> %22, <4 x float> %51)
  store <4 x float> %52, ptr %48, align 16, !tbaa !185
  br label %53

53:                                               ; preds = %30, %46
  %54 = phi ptr [ %26, %46 ], [ %43, %30 ]
  %55 = add nuw nsw i64 %25, 1
  %56 = icmp eq i64 %55, 4
  br i1 %56, label %57, label %24, !llvm.loop !216

57:                                               ; preds = %53
  %58 = add nuw nsw i64 %13, 1
  %59 = icmp eq i64 %58, %11
  br i1 %59, label %60, label %12, !llvm.loop !217

60:                                               ; preds = %57, %96
  %61 = phi i64 [ %105, %96 ], [ 0, %57 ]
  %62 = getelementptr inbounds [4 x %struct.anon.0], ptr %6, i64 0, i64 %61
  %63 = load float, ptr %62, align 16, !tbaa !218
  %64 = fcmp olt float %63, 0.000000e+00
  br i1 %64, label %67, label %65

65:                                               ; preds = %60
  %66 = fcmp ogt float %63, 2.550000e+02
  br i1 %66, label %67, label %69

67:                                               ; preds = %65, %60
  %68 = phi float [ 0.000000e+00, %60 ], [ 2.550000e+02, %65 ]
  store float %68, ptr %62, align 16, !tbaa !218
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi float [ %63, %65 ], [ %68, %67 ]
  %71 = getelementptr inbounds [4 x %struct.anon.0], ptr %6, i64 0, i64 %61, i32 1
  %72 = load float, ptr %71, align 4, !tbaa !220
  %73 = fcmp olt float %72, 0.000000e+00
  br i1 %73, label %76, label %74

74:                                               ; preds = %69
  %75 = fcmp ogt float %72, 2.550000e+02
  br i1 %75, label %76, label %78

76:                                               ; preds = %74, %69
  %77 = phi float [ 0.000000e+00, %69 ], [ 2.550000e+02, %74 ]
  store float %77, ptr %71, align 4, !tbaa !220
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi float [ %72, %74 ], [ %77, %76 ]
  %80 = getelementptr inbounds [4 x %struct.anon.0], ptr %6, i64 0, i64 %61, i32 2
  %81 = load float, ptr %80, align 8, !tbaa !221
  %82 = fcmp olt float %81, 0.000000e+00
  br i1 %82, label %85, label %83

83:                                               ; preds = %78
  %84 = fcmp ogt float %81, 2.550000e+02
  br i1 %84, label %85, label %87

85:                                               ; preds = %83, %78
  %86 = phi float [ 0.000000e+00, %78 ], [ 2.550000e+02, %83 ]
  store float %86, ptr %80, align 8, !tbaa !221
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi float [ %81, %83 ], [ %86, %85 ]
  %89 = getelementptr inbounds [4 x %struct.anon.0], ptr %6, i64 0, i64 %61, i32 3
  %90 = load float, ptr %89, align 4, !tbaa !222
  %91 = fcmp olt float %90, 0.000000e+00
  br i1 %91, label %94, label %92

92:                                               ; preds = %87
  %93 = fcmp ogt float %90, 2.550000e+02
  br i1 %93, label %94, label %96

94:                                               ; preds = %92, %87
  %95 = phi float [ 0.000000e+00, %87 ], [ 2.550000e+02, %92 ]
  store float %95, ptr %89, align 4, !tbaa !222
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi float [ %90, %92 ], [ %95, %94 ]
  %98 = insertelement <4 x float> poison, float %70, i64 0
  %99 = insertelement <4 x float> %98, float %79, i64 1
  %100 = insertelement <4 x float> %99, float %88, i64 2
  %101 = insertelement <4 x float> %100, float %97, i64 3
  %102 = fptosi <4 x float> %101 to <4 x i32>
  %103 = getelementptr inbounds %struct.MCol, ptr %4, i64 %61
  %104 = trunc <4 x i32> %102 to <4 x i8>
  store <4 x i8> %104, ptr %103, align 1, !tbaa !64
  %105 = add nuw nsw i64 %61, 1
  %106 = icmp eq i64 %105, 4
  br i1 %106, label %107, label %60, !llvm.loop !223

107:                                              ; preds = %96, %5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #29
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @layerSwap_mcol(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #17 !PGOFuncName !224 {
  %3 = alloca [4 x %struct.MCol], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #29
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %12, %4 ]
  %6 = getelementptr inbounds [4 x %struct.MCol], ptr %3, i64 0, i64 %5
  %7 = getelementptr inbounds i32, ptr %1, i64 %5
  %8 = load i32, ptr %7, align 4, !tbaa !37
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.MCol, ptr %0, i64 %9
  %11 = load i32, ptr %10, align 1
  store i32 %11, ptr %6, align 4
  %12 = add nuw nsw i64 %5, 1
  %13 = icmp eq i64 %12, 4
  br i1 %13, label %14, label %4, !llvm.loop !225

14:                                               ; preds = %4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @layerDefault_mcol(ptr nocapture noundef writeonly %0, i32 noundef %1) #18 !PGOFuncName !226 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @layerMaxNum_mloopcol() #0 !PGOFuncName !227 {
  ret i32 8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @layerDefault_origindex(ptr noundef %0, i32 noundef %1) #5 !PGOFuncName !228 {
  tail call void @fill_vn_i(ptr noundef %0, i32 noundef %1, i32 noundef -1) #27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @layerCopy_propFloat(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #19 !PGOFuncName !229 {
  %4 = sext i32 %2 to i64
  %5 = shl nsw i64 %4, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %0, i64 %5, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @layerCopy_propInt(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #19 !PGOFuncName !230 {
  %4 = sext i32 %2 to i64
  %5 = shl nsw i64 %4, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %0, i64 %5, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @layerCopy_propString(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #19 !PGOFuncName !231 {
  %4 = sext i32 %2 to i64
  %5 = shl nsw i64 %4, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %0, i64 %5, i1 false)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @layerCopy_origspace_face(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #17 !PGOFuncName !232 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %11, %7 ]
  %9 = getelementptr inbounds %struct.OrigSpaceFace, ptr %1, i64 %8
  %10 = getelementptr inbounds %struct.OrigSpaceFace, ptr %0, i64 %8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %9, ptr noundef nonnull align 4 dereferenceable(32) %10, i64 32, i1 false), !tbaa.struct !233
  %11 = add nuw nsw i64 %8, 1
  %12 = icmp eq i64 %11, %6
  br i1 %12, label %13, label %7, !llvm.loop !234

13:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @layerInterp_origspace_face(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #12 !PGOFuncName !235 {
  %6 = alloca [4 x [2 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %7 = icmp slt i32 %3, 1
  br i1 %7, label %45, label %8

8:                                                ; preds = %5
  %9 = icmp eq ptr %1, null
  %10 = icmp eq ptr %2, null
  %11 = zext nneg i32 %3 to i64
  br label %12

12:                                               ; preds = %8, %41
  %13 = phi i64 [ 0, %8 ], [ %42, %41 ]
  %14 = phi ptr [ %2, %8 ], [ %38, %41 ]
  br i1 %9, label %18, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds float, ptr %1, i64 %13
  %17 = load float, ptr %16, align 4, !tbaa !185
  br label %18

18:                                               ; preds = %12, %15
  %19 = phi float [ %17, %15 ], [ 1.000000e+00, %12 ]
  %20 = getelementptr inbounds ptr, ptr %0, i64 %13
  %21 = load ptr, ptr %20, align 8, !tbaa !58
  br label %22

22:                                               ; preds = %18, %37
  %23 = phi i64 [ 0, %18 ], [ %39, %37 ]
  %24 = phi ptr [ %14, %18 ], [ %38, %37 ]
  %25 = getelementptr inbounds [4 x [2 x float]], ptr %6, i64 0, i64 %23
  br i1 %10, label %35, label %26

26:                                               ; preds = %22, %26
  %27 = phi i64 [ %32, %26 ], [ 0, %22 ]
  %28 = phi ptr [ %33, %26 ], [ %24, %22 ]
  %29 = getelementptr inbounds [4 x [2 x float]], ptr %21, i64 0, i64 %27
  %30 = load float, ptr %28, align 4, !tbaa !185
  %31 = fmul float %19, %30
  call fastcc void @madd_v2_v2fl(ptr noundef nonnull %25, ptr noundef %29, float noundef %31) #26
  %32 = add nuw nsw i64 %27, 1
  %33 = getelementptr inbounds float, ptr %28, i64 1
  %34 = icmp eq i64 %32, 4
  br i1 %34, label %37, label %26, !llvm.loop !236

35:                                               ; preds = %22
  %36 = getelementptr inbounds [4 x [2 x float]], ptr %21, i64 0, i64 %23
  call fastcc void @madd_v2_v2fl(ptr noundef nonnull %25, ptr noundef %36, float noundef %19) #26
  br label %37

37:                                               ; preds = %26, %35
  %38 = phi ptr [ %24, %35 ], [ %33, %26 ]
  %39 = add nuw nsw i64 %23, 1
  %40 = icmp eq i64 %39, 4
  br i1 %40, label %41, label %22, !llvm.loop !237

41:                                               ; preds = %37
  %42 = add nuw nsw i64 %13, 1
  %43 = icmp eq i64 %42, %11
  br i1 %43, label %44, label %12, !llvm.loop !238

44:                                               ; preds = %41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef nonnull align 16 dereferenceable(32) %6, i64 32, i1 false)
  br label %45

45:                                               ; preds = %5, %44
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #29
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @layerSwap_origspace_face(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #17 !PGOFuncName !239 {
  %3 = alloca [4 x [2 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #29
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %11, %4 ]
  %6 = getelementptr inbounds [4 x [2 x float]], ptr %3, i64 0, i64 %5
  %7 = getelementptr inbounds i32, ptr %1, i64 %5
  %8 = load i32, ptr %7, align 4, !tbaa !37
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [4 x [2 x float]], ptr %0, i64 0, i64 %9
  call fastcc void @copy_v2_v2(ptr noundef nonnull %6, ptr noundef %10) #26
  %11 = add nuw nsw i64 %5, 1
  %12 = icmp eq i64 %11, 4
  br i1 %12, label %13, label %4, !llvm.loop !240

13:                                               ; preds = %4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #29
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @layerDefault_origspace_face(ptr nocapture noundef writeonly %0, i32 noundef %1) #17 !PGOFuncName !241 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %9, %6 ]
  %8 = getelementptr inbounds %struct.OrigSpaceFace, ptr %0, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %8, ptr noundef nonnull align 4 dereferenceable(32) @layerDefault_origspace_face.default_osf, i64 32, i1 false), !tbaa.struct !233
  %9 = add nuw nsw i64 %7, 1
  %10 = icmp eq i64 %9, %5
  br i1 %10, label %11, label %6, !llvm.loop !242

11:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @layerInterp_mloopuv(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #12 !PGOFuncName !243 {
  %6 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #29
  call fastcc void @zero_v2(ptr noundef nonnull %6) #26
  %7 = icmp eq ptr %2, null
  %8 = icmp sgt i32 %3, 0
  br i1 %7, label %13, label %9

9:                                                ; preds = %5
  br i1 %8, label %10, label %43

10:                                               ; preds = %9
  %11 = icmp eq ptr %1, null
  %12 = zext nneg i32 %3 to i64
  br label %17

13:                                               ; preds = %5
  br i1 %8, label %14, label %43

14:                                               ; preds = %13
  %15 = icmp eq ptr %1, null
  %16 = zext nneg i32 %3 to i64
  br label %32

17:                                               ; preds = %10, %23
  %18 = phi i64 [ 0, %10 ], [ %30, %23 ]
  %19 = phi ptr [ %2, %10 ], [ %29, %23 ]
  br i1 %11, label %23, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds float, ptr %1, i64 %18
  %22 = load float, ptr %21, align 4, !tbaa !185
  br label %23

23:                                               ; preds = %17, %20
  %24 = phi float [ %22, %20 ], [ 1.000000e+00, %17 ]
  %25 = getelementptr inbounds ptr, ptr %0, i64 %18
  %26 = load ptr, ptr %25, align 8, !tbaa !58
  %27 = load float, ptr %19, align 4, !tbaa !185
  %28 = fmul float %24, %27
  call fastcc void @madd_v2_v2fl(ptr noundef nonnull %6, ptr noundef %26, float noundef %28) #26
  %29 = getelementptr inbounds float, ptr %19, i64 1
  %30 = add nuw nsw i64 %18, 1
  %31 = icmp eq i64 %30, %12
  br i1 %31, label %43, label %17, !llvm.loop !244

32:                                               ; preds = %14, %37
  %33 = phi i64 [ 0, %14 ], [ %41, %37 ]
  br i1 %15, label %37, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds float, ptr %1, i64 %33
  %36 = load float, ptr %35, align 4, !tbaa !185
  br label %37

37:                                               ; preds = %32, %34
  %38 = phi float [ %36, %34 ], [ 1.000000e+00, %32 ]
  %39 = getelementptr inbounds ptr, ptr %0, i64 %33
  %40 = load ptr, ptr %39, align 8, !tbaa !58
  call fastcc void @madd_v2_v2fl(ptr noundef nonnull %6, ptr noundef %40, float noundef %38) #26
  %41 = add nuw nsw i64 %33, 1
  %42 = icmp eq i64 %41, %16
  br i1 %42, label %43, label %32, !llvm.loop !245

43:                                               ; preds = %23, %37, %9, %13
  call fastcc void @copy_v2_v2(ptr noundef %4, ptr noundef nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal zeroext i8 @layerEqual_mloopuv(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #19 !PGOFuncName !246 {
  %3 = tail call fastcc float @len_squared_v2v2(ptr noundef %0, ptr noundef %1) #26
  %4 = fcmp olt float %3, 0x3EE4F8B580000000
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @layerMultiply_mloopuv(ptr nocapture noundef %0, float noundef %1) #19 !PGOFuncName !247 {
  tail call fastcc void @mul_v2_fl(ptr noundef %0, float noundef %1) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @layerInitMinMax_mloopuv(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1) #18 !PGOFuncName !248 {
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %0, align 4, !tbaa !185
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %1, align 4, !tbaa !185
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @layerAdd_mloopuv(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #19 !PGOFuncName !249 {
  tail call fastcc void @add_v2_v2(ptr noundef %0, ptr noundef %1) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @layerDoMinMax_mloopuv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5 !PGOFuncName !250 {
  tail call void @minmax_v2v2_v2(ptr noundef %1, ptr noundef %2, ptr noundef %0) #27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @layerCopyValue_mloopuv(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #19 !PGOFuncName !251 {
  tail call fastcc void @copy_v2_v2(ptr noundef %1, ptr noundef %0) #26
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @layerInterp_mloopcol(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #4 !PGOFuncName !252 {
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %7, label %92

7:                                                ; preds = %5
  %8 = icmp eq ptr %1, null
  %9 = icmp eq ptr %2, null
  %10 = zext nneg i32 %3 to i64
  br label %11

11:                                               ; preds = %7, %55
  %12 = phi i64 [ 0, %7 ], [ %58, %55 ]
  %13 = phi ptr [ %2, %7 ], [ %56, %55 ]
  %14 = phi <4 x float> [ zeroinitializer, %7 ], [ %57, %55 ]
  br i1 %8, label %18, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds float, ptr %1, i64 %12
  %17 = load float, ptr %16, align 4, !tbaa !185
  br label %18

18:                                               ; preds = %11, %15
  %19 = phi float [ %17, %15 ], [ 1.000000e+00, %11 ]
  %20 = getelementptr inbounds ptr, ptr %0, i64 %12
  %21 = load ptr, ptr %20, align 8, !tbaa !58
  %22 = load i8, ptr %21, align 1, !tbaa !253
  %23 = uitofp i8 %22 to float
  br i1 %9, label %42, label %24

24:                                               ; preds = %18
  %25 = load float, ptr %13, align 4, !tbaa !185
  %26 = getelementptr inbounds %struct.MLoopCol, ptr %21, i64 0, i32 1
  %27 = load <2 x i8>, ptr %26, align 1, !tbaa !64
  %28 = uitofp <2 x i8> %27 to <2 x float>
  %29 = getelementptr inbounds %struct.MLoopCol, ptr %21, i64 0, i32 3
  %30 = load i8, ptr %29, align 1, !tbaa !255
  %31 = uitofp i8 %30 to float
  %32 = insertelement <4 x float> poison, float %25, i64 0
  %33 = shufflevector <4 x float> %32, <4 x float> poison, <4 x i32> zeroinitializer
  %34 = shufflevector <2 x float> %28, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %35 = insertelement <4 x float> %34, float %23, i64 2
  %36 = insertelement <4 x float> %35, float %31, i64 3
  %37 = fmul <4 x float> %33, %36
  %38 = insertelement <4 x float> poison, float %19, i64 0
  %39 = shufflevector <4 x float> %38, <4 x float> poison, <4 x i32> zeroinitializer
  %40 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %37, <4 x float> %39, <4 x float> %14)
  %41 = getelementptr inbounds float, ptr %13, i64 1
  br label %55

42:                                               ; preds = %18
  %43 = getelementptr inbounds %struct.MLoopCol, ptr %21, i64 0, i32 1
  %44 = load <2 x i8>, ptr %43, align 1, !tbaa !64
  %45 = uitofp <2 x i8> %44 to <2 x float>
  %46 = getelementptr inbounds %struct.MLoopCol, ptr %21, i64 0, i32 3
  %47 = load i8, ptr %46, align 1, !tbaa !255
  %48 = uitofp i8 %47 to float
  %49 = shufflevector <2 x float> %45, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %50 = insertelement <4 x float> %49, float %23, i64 2
  %51 = insertelement <4 x float> %50, float %48, i64 3
  %52 = insertelement <4 x float> poison, float %19, i64 0
  %53 = shufflevector <4 x float> %52, <4 x float> poison, <4 x i32> zeroinitializer
  %54 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %51, <4 x float> %53, <4 x float> %14)
  br label %55

55:                                               ; preds = %42, %24
  %56 = phi ptr [ %41, %24 ], [ %13, %42 ]
  %57 = phi <4 x float> [ %40, %24 ], [ %54, %42 ]
  %58 = add nuw nsw i64 %12, 1
  %59 = icmp eq i64 %58, %10
  br i1 %59, label %60, label %11, !llvm.loop !256

60:                                               ; preds = %55
  %61 = extractelement <4 x float> %57, i64 3
  %62 = fcmp olt float %61, 0.000000e+00
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = fcmp ogt float %61, 2.550000e+02
  br i1 %64, label %65, label %66

65:                                               ; preds = %63
  br label %66

66:                                               ; preds = %60, %63, %65
  %67 = phi float [ 2.550000e+02, %65 ], [ %61, %63 ], [ 0.000000e+00, %60 ]
  %68 = extractelement <4 x float> %57, i64 2
  %69 = fcmp olt float %68, 0.000000e+00
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = fcmp ogt float %68, 2.550000e+02
  br i1 %71, label %72, label %73

72:                                               ; preds = %70
  br label %73

73:                                               ; preds = %66, %70, %72
  %74 = phi float [ 2.550000e+02, %72 ], [ %68, %70 ], [ 0.000000e+00, %66 ]
  %75 = extractelement <4 x float> %57, i64 1
  %76 = fcmp olt float %75, 0.000000e+00
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = fcmp ogt float %75, 2.550000e+02
  br i1 %78, label %79, label %80

79:                                               ; preds = %77
  br label %80

80:                                               ; preds = %73, %77, %79
  %81 = phi float [ 2.550000e+02, %79 ], [ %75, %77 ], [ 0.000000e+00, %73 ]
  %82 = extractelement <4 x float> %57, i64 0
  %83 = fcmp olt float %82, 0.000000e+00
  %84 = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %74, i64 0
  %85 = insertelement <4 x float> %84, float %81, i64 1
  %86 = insertelement <4 x float> %85, float %67, i64 3
  br i1 %83, label %92, label %87

87:                                               ; preds = %80
  %88 = fcmp ogt float %82, 2.550000e+02
  %89 = shufflevector <4 x float> %86, <4 x float> %57, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  br i1 %88, label %90, label %92

90:                                               ; preds = %87
  %91 = insertelement <4 x float> %89, float 2.550000e+02, i64 2
  br label %92

92:                                               ; preds = %5, %80, %87, %90
  %93 = phi <4 x float> [ %91, %90 ], [ %89, %87 ], [ %86, %80 ], [ zeroinitializer, %5 ]
  %94 = fptosi <4 x float> %93 to <4 x i32>
  %95 = trunc <4 x i32> %94 to <4 x i8>
  store <4 x i8> %95, ptr %4, align 1, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @layerDefault_mloopcol(ptr nocapture noundef writeonly %0, i32 noundef %1) #18 !PGOFuncName !257 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @layerEqual_mloopcol(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 !PGOFuncName !258 {
  %3 = load i8, ptr %0, align 1, !tbaa !253
  %4 = zext i8 %3 to i32
  %5 = load i8, ptr %1, align 1, !tbaa !253
  %6 = zext i8 %5 to i32
  %7 = sub nsw i32 %4, %6
  %8 = sitofp i32 %7 to float
  %9 = getelementptr inbounds %struct.MLoopCol, ptr %0, i64 0, i32 1
  %10 = load i8, ptr %9, align 1, !tbaa !259
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds %struct.MLoopCol, ptr %1, i64 0, i32 1
  %13 = load i8, ptr %12, align 1, !tbaa !259
  %14 = zext i8 %13 to i32
  %15 = sub nsw i32 %11, %14
  %16 = sitofp i32 %15 to float
  %17 = getelementptr inbounds %struct.MLoopCol, ptr %0, i64 0, i32 2
  %18 = load i8, ptr %17, align 1, !tbaa !260
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds %struct.MLoopCol, ptr %1, i64 0, i32 2
  %21 = load i8, ptr %20, align 1, !tbaa !260
  %22 = zext i8 %21 to i32
  %23 = sub nsw i32 %19, %22
  %24 = sitofp i32 %23 to float
  %25 = getelementptr inbounds %struct.MLoopCol, ptr %0, i64 0, i32 3
  %26 = load i8, ptr %25, align 1, !tbaa !255
  %27 = zext i8 %26 to i32
  %28 = getelementptr inbounds %struct.MLoopCol, ptr %1, i64 0, i32 3
  %29 = load i8, ptr %28, align 1, !tbaa !255
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @layerMultiply_mloopcol(ptr nocapture noundef %0, float noundef %1) #19 !PGOFuncName !261 {
  %3 = load <4 x i8>, ptr %0, align 1, !tbaa !64
  %4 = uitofp <4 x i8> %3 to <4 x float>
  %5 = insertelement <4 x float> poison, float %1, i64 0
  %6 = shufflevector <4 x float> %5, <4 x float> poison, <4 x i32> zeroinitializer
  %7 = fmul <4 x float> %6, %4
  %8 = fptoui <4 x float> %7 to <4 x i8>
  store <4 x i8> %8, ptr %0, align 1, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @layerInitMinMax_mloopcol(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1) #18 !PGOFuncName !262 {
  store i32 -1, ptr %0, align 1
  store i32 0, ptr %1, align 1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @layerAdd_mloopcol(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #19 !PGOFuncName !263 {
  %3 = load <4 x i8>, ptr %1, align 1, !tbaa !64
  %4 = load <4 x i8>, ptr %0, align 1, !tbaa !64
  %5 = add <4 x i8> %4, %3
  store <4 x i8> %5, ptr %0, align 1, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @layerDoMinMax_mloopcol(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #19 !PGOFuncName !264 {
  %4 = load i8, ptr %0, align 1, !tbaa !253
  %5 = load i8, ptr %1, align 1, !tbaa !253
  %6 = icmp ult i8 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store i8 %4, ptr %1, align 1, !tbaa !253
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.MLoopCol, ptr %0, i64 0, i32 1
  %10 = load i8, ptr %9, align 1, !tbaa !259
  %11 = getelementptr inbounds %struct.MLoopCol, ptr %1, i64 0, i32 1
  %12 = load i8, ptr %11, align 1, !tbaa !259
  %13 = icmp ult i8 %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i8 %10, ptr %11, align 1, !tbaa !259
  br label %15

15:                                               ; preds = %14, %8
  %16 = getelementptr inbounds %struct.MLoopCol, ptr %0, i64 0, i32 2
  %17 = load i8, ptr %16, align 1, !tbaa !260
  %18 = getelementptr inbounds %struct.MLoopCol, ptr %1, i64 0, i32 2
  %19 = load i8, ptr %18, align 1, !tbaa !260
  %20 = icmp ult i8 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i8 %17, ptr %18, align 1, !tbaa !260
  br label %22

22:                                               ; preds = %21, %15
  %23 = getelementptr inbounds %struct.MLoopCol, ptr %0, i64 0, i32 3
  %24 = load i8, ptr %23, align 1, !tbaa !255
  %25 = getelementptr inbounds %struct.MLoopCol, ptr %1, i64 0, i32 3
  %26 = load i8, ptr %25, align 1, !tbaa !255
  %27 = icmp ult i8 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i8 %24, ptr %25, align 1, !tbaa !255
  br label %29

29:                                               ; preds = %28, %22
  %30 = load i8, ptr %0, align 1, !tbaa !253
  %31 = load i8, ptr %2, align 1, !tbaa !253
  %32 = icmp ugt i8 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i8 %30, ptr %2, align 1, !tbaa !253
  br label %34

34:                                               ; preds = %33, %29
  %35 = load i8, ptr %9, align 1, !tbaa !259
  %36 = getelementptr inbounds %struct.MLoopCol, ptr %2, i64 0, i32 1
  %37 = load i8, ptr %36, align 1, !tbaa !259
  %38 = icmp ugt i8 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i8 %35, ptr %36, align 1, !tbaa !259
  br label %40

40:                                               ; preds = %39, %34
  %41 = load i8, ptr %16, align 1, !tbaa !260
  %42 = getelementptr inbounds %struct.MLoopCol, ptr %2, i64 0, i32 2
  %43 = load i8, ptr %42, align 1, !tbaa !260
  %44 = icmp ugt i8 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i8 %41, ptr %42, align 1, !tbaa !260
  br label %46

46:                                               ; preds = %45, %40
  %47 = load i8, ptr %23, align 1, !tbaa !255
  %48 = getelementptr inbounds %struct.MLoopCol, ptr %2, i64 0, i32 3
  %49 = load i8, ptr %48, align 1, !tbaa !255
  %50 = icmp ugt i8 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i8 %47, ptr %48, align 1, !tbaa !255
  br label %52

52:                                               ; preds = %51, %46
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @layerCopyValue_mloopcol(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #19 !PGOFuncName !265 {
  %3 = load <4 x i8>, ptr %0, align 1, !tbaa !64
  store <4 x i8> %3, ptr %1, align 1, !tbaa !64
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @layerCopy_mdisps(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #5 !PGOFuncName !266 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %30

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  br label %7

7:                                                ; preds = %5, %23
  %8 = phi i64 [ 0, %5 ], [ %28, %23 ]
  %9 = getelementptr inbounds %struct.MDisps, ptr %0, i64 %8
  %10 = getelementptr inbounds %struct.MDisps, ptr %0, i64 %8, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !267
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !58
  %15 = tail call ptr %14(ptr noundef nonnull %11) #27
  %16 = getelementptr inbounds %struct.MDisps, ptr %1, i64 %8, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !267
  %17 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !58
  %18 = getelementptr inbounds %struct.MDisps, ptr %0, i64 %8, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !269
  %20 = tail call ptr %17(ptr noundef %19) #27
  br label %23

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.MDisps, ptr %1, i64 %8, i32 2
  store ptr null, ptr %22, align 8, !tbaa !267
  br label %23

23:                                               ; preds = %21, %13
  %24 = phi ptr [ null, %21 ], [ %20, %13 ]
  %25 = getelementptr inbounds %struct.MDisps, ptr %1, i64 %8, i32 3
  store ptr %24, ptr %25, align 8
  %26 = getelementptr inbounds %struct.MDisps, ptr %1, i64 %8
  %27 = load <2 x i32>, ptr %9, align 8, !tbaa !37
  store <2 x i32> %27, ptr %26, align 8, !tbaa !37
  %28 = add nuw nsw i64 %8, 1
  %29 = icmp eq i64 %28, %6
  br i1 %29, label %30, label %7, !llvm.loop !270

30:                                               ; preds = %23, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @layerFree_mdisps(ptr nocapture noundef %0, i32 noundef %1, i32 %2) #5 !PGOFuncName !271 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %24

5:                                                ; preds = %3
  %6 = zext nneg i32 %1 to i64
  br label %7

7:                                                ; preds = %5, %21
  %8 = phi i64 [ 0, %5 ], [ %22, %21 ]
  %9 = getelementptr inbounds %struct.MDisps, ptr %0, i64 %8
  %10 = getelementptr inbounds %struct.MDisps, ptr %0, i64 %8, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !267
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %14(ptr noundef nonnull %11) #27
  br label %15

15:                                               ; preds = %13, %7
  %16 = getelementptr inbounds %struct.MDisps, ptr %0, i64 %8, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !269
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %20(ptr noundef nonnull %17) #27
  br label %21

21:                                               ; preds = %19, %15
  %22 = add nuw nsw i64 %8, 1
  %23 = icmp eq i64 %22, %6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br i1 %23, label %24, label %7, !llvm.loop !272

24:                                               ; preds = %21, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @layerSwap_mdisps(ptr noundef %0, ptr nocapture noundef readonly %1) #5 !PGOFuncName !273 {
  %3 = getelementptr inbounds %struct.MDisps, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !267
  %5 = icmp eq ptr %4, null
  br i1 %5, label %52, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds i32, ptr %1, i64 1
  %8 = load i32, ptr %7, align 4, !tbaa !37
  %9 = icmp eq i32 %8, 3
  %10 = select i1 %9, i32 4, i32 3
  %11 = tail call i32 @multires_mdisp_corners(ptr noundef nonnull %0) #27
  %12 = load i32, ptr %0, align 8, !tbaa !274
  %13 = sdiv i32 %12, %11
  %14 = icmp eq i32 %11, %10
  br i1 %14, label %25, label %15

15:                                               ; preds = %6
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  %17 = load ptr, ptr %3, align 8, !tbaa !267
  tail call void %16(ptr noundef %17) #27
  %18 = load i32, ptr %0, align 8, !tbaa !274
  %19 = sdiv i32 %18, %11
  %20 = mul nsw i32 %19, %10
  store i32 %20, ptr %0, align 8, !tbaa !274
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %22 = sext i32 %20 to i64
  %23 = mul nsw i64 %22, 12
  %24 = tail call ptr %21(i64 noundef %23, ptr noundef nonnull @.str.90) #27
  br label %50

25:                                               ; preds = %6
  %26 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %27 = sext i32 %12 to i64
  %28 = mul nsw i64 %27, 12
  %29 = tail call ptr %26(i64 noundef %28, ptr noundef nonnull @.str.91) #27
  %30 = mul nsw i32 %13, 3
  %31 = sext i32 %30 to i64
  %32 = shl nsw i64 %31, 2
  %33 = sext i32 %13 to i64
  %34 = zext nneg i32 %10 to i64
  br label %35

35:                                               ; preds = %25, %35
  %36 = phi i64 [ 0, %25 ], [ %45, %35 ]
  %37 = mul nsw i64 %36, %33
  %38 = getelementptr inbounds [3 x float], ptr %29, i64 %37
  %39 = load ptr, ptr %3, align 8, !tbaa !267
  %40 = getelementptr inbounds i32, ptr %1, i64 %36
  %41 = load i32, ptr %40, align 4, !tbaa !37
  %42 = mul nsw i32 %41, %13
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [3 x float], ptr %39, i64 %43
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %38, ptr align 4 %44, i64 %32, i1 false)
  %45 = add nuw nsw i64 %36, 1
  %46 = icmp eq i64 %45, %34
  br i1 %46, label %47, label %35, !llvm.loop !275

47:                                               ; preds = %35
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  %49 = load ptr, ptr %3, align 8, !tbaa !267
  tail call void %48(ptr noundef %49) #27
  br label %50

50:                                               ; preds = %47, %15
  %51 = phi ptr [ %29, %47 ], [ %24, %15 ]
  store ptr %51, ptr %3, align 8, !tbaa !267
  br label %52

52:                                               ; preds = %50, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @layerRead_mdisps(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) #5 !PGOFuncName !276 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %32

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  br label %7

7:                                                ; preds = %5, %29
  %8 = phi i64 [ 0, %5 ], [ %30, %29 ]
  %9 = getelementptr inbounds %struct.MDisps, ptr %1, i64 %8
  %10 = getelementptr inbounds %struct.MDisps, ptr %1, i64 %8, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !267
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !58
  %15 = load i32, ptr %9, align 8, !tbaa !274
  %16 = sext i32 %15 to i64
  %17 = mul nsw i64 %16, 12
  %18 = tail call ptr %14(i64 noundef %17, ptr noundef nonnull @.str.92) #27
  store ptr %18, ptr %10, align 8, !tbaa !267
  br label %19

19:                                               ; preds = %13, %7
  %20 = phi ptr [ %18, %13 ], [ %11, %7 ]
  %21 = load i32, ptr %9, align 8, !tbaa !274
  %22 = mul i32 %21, 12
  %23 = tail call i32 @cdf_read_data(ptr noundef %0, i32 noundef %22, ptr noundef %20) #27
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = trunc i64 %8 to i32
  %27 = load i32, ptr %9, align 8, !tbaa !274
  %28 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.93, i32 noundef %26, i32 noundef %2, i32 noundef %27) #26
  br label %32

29:                                               ; preds = %19
  %30 = add nuw nsw i64 %8, 1
  %31 = icmp eq i64 %30, %6
  br i1 %31, label %32, label %7, !llvm.loop !277

32:                                               ; preds = %29, %3, %25
  %33 = phi i32 [ 0, %25 ], [ 1, %3 ], [ 1, %29 ]
  ret i32 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @layerWrite_mdisps(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #5 !PGOFuncName !278 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %23

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  br label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ 0, %5 ], [ %21, %20 ]
  %9 = getelementptr inbounds %struct.MDisps, ptr %1, i64 %8
  %10 = load i32, ptr %9, align 8, !tbaa !274
  %11 = mul i32 %10, 12
  %12 = getelementptr inbounds %struct.MDisps, ptr %1, i64 %8, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !267
  %14 = tail call i32 @cdf_write_data(ptr noundef %0, i32 noundef %11, ptr noundef %13) #27
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %7
  %17 = trunc i64 %8 to i32
  %18 = load i32, ptr %9, align 8, !tbaa !274
  %19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.94, i32 noundef %17, i32 noundef %2, i32 noundef %18) #26
  br label %23

20:                                               ; preds = %7
  %21 = add nuw nsw i64 %8, 1
  %22 = icmp eq i64 %21, %6
  br i1 %22, label %23, label %7, !llvm.loop !279

23:                                               ; preds = %20, %3, %16
  %24 = phi i32 [ 0, %16 ], [ 1, %3 ], [ 1, %20 ]
  ret i32 %24
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal i64 @layerFilesize_mdisps(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) #20 !PGOFuncName !280 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %16, %7 ]
  %9 = phi i64 [ 0, %5 ], [ %15, %7 ]
  %10 = getelementptr inbounds %struct.MDisps, ptr %1, i64 %8
  %11 = load i32, ptr %10, align 8, !tbaa !274
  %12 = mul nsw i32 %11, 3
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 2
  %15 = add i64 %14, %9
  %16 = add nuw nsw i64 %8, 1
  %17 = icmp eq i64 %16, %6
  br i1 %17, label %18, label %7, !llvm.loop !281

18:                                               ; preds = %7, %3
  %19 = phi i64 [ 0, %3 ], [ %15, %7 ]
  ret i64 %19
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @layerInterp_shapekey(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture readnone %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #12 !PGOFuncName !282 {
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #29
  %7 = icmp slt i32 %3, 1
  br i1 %7, label %26, label %8

8:                                                ; preds = %5
  call fastcc void @zero_v3(ptr noundef nonnull %6) #26
  %9 = icmp eq ptr %1, null
  %10 = zext nneg i32 %3 to i64
  br i1 %9, label %19, label %11

11:                                               ; preds = %8, %11
  %12 = phi i64 [ %17, %11 ], [ 0, %8 ]
  %13 = getelementptr inbounds ptr, ptr %0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !58
  %15 = getelementptr inbounds float, ptr %1, i64 %12
  %16 = load float, ptr %15, align 4, !tbaa !185
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %6, ptr noundef %14, float noundef %16) #26
  %17 = add nuw nsw i64 %12, 1
  %18 = icmp eq i64 %17, %10
  br i1 %18, label %25, label %11, !llvm.loop !283

19:                                               ; preds = %8, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %8 ]
  %21 = getelementptr inbounds ptr, ptr %0, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !58
  call fastcc void @add_v3_v3(ptr noundef nonnull %6, ptr noundef %22) #26
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %10
  br i1 %24, label %25, label %19, !llvm.loop !284

25:                                               ; preds = %11, %19
  call fastcc void @copy_v3_v3(ptr noundef %4, ptr noundef nonnull %6) #26
  br label %26

26:                                               ; preds = %5, %25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #29
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @layerInterp_bweight(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture readnone %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #4 !PGOFuncName !285 {
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
  %14 = load ptr, ptr %13, align 8, !tbaa !58
  %15 = load float, ptr %14, align 4, !tbaa !185
  %16 = getelementptr inbounds float, ptr %1, i64 %11
  %17 = load float, ptr %16, align 4, !tbaa !185
  %18 = tail call float @llvm.fmuladd.f32(float %15, float %17, float %12)
  %19 = add nuw nsw i64 %11, 1
  %20 = icmp eq i64 %19, %9
  br i1 %20, label %30, label %10, !llvm.loop !286

21:                                               ; preds = %7, %21
  %22 = phi i64 [ %28, %21 ], [ 0, %7 ]
  %23 = phi float [ %27, %21 ], [ 0.000000e+00, %7 ]
  %24 = getelementptr inbounds ptr, ptr %0, i64 %22
  %25 = load ptr, ptr %24, align 8, !tbaa !58
  %26 = load float, ptr %25, align 4, !tbaa !185
  %27 = fadd float %23, %26
  %28 = add nuw nsw i64 %22, 1
  %29 = icmp eq i64 %28, %9
  br i1 %29, label %30, label %21, !llvm.loop !287

30:                                               ; preds = %10, %21
  %31 = phi float [ %27, %21 ], [ %18, %10 ]
  store float %31, ptr %4, align 4, !tbaa !185
  br label %32

32:                                               ; preds = %5, %30
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @layerInterp_mloop_origspace(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #12 !PGOFuncName !288 {
  %6 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #29
  call fastcc void @zero_v2(ptr noundef nonnull %6) #26
  %7 = icmp eq ptr %2, null
  %8 = icmp sgt i32 %3, 0
  br i1 %7, label %13, label %9

9:                                                ; preds = %5
  br i1 %8, label %10, label %43

10:                                               ; preds = %9
  %11 = icmp eq ptr %1, null
  %12 = zext nneg i32 %3 to i64
  br label %17

13:                                               ; preds = %5
  br i1 %8, label %14, label %43

14:                                               ; preds = %13
  %15 = icmp eq ptr %1, null
  %16 = zext nneg i32 %3 to i64
  br label %32

17:                                               ; preds = %10, %23
  %18 = phi i64 [ 0, %10 ], [ %30, %23 ]
  %19 = phi ptr [ %2, %10 ], [ %29, %23 ]
  br i1 %11, label %23, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds float, ptr %1, i64 %18
  %22 = load float, ptr %21, align 4, !tbaa !185
  br label %23

23:                                               ; preds = %17, %20
  %24 = phi float [ %22, %20 ], [ 1.000000e+00, %17 ]
  %25 = getelementptr inbounds ptr, ptr %0, i64 %18
  %26 = load ptr, ptr %25, align 8, !tbaa !58
  %27 = load float, ptr %19, align 4, !tbaa !185
  %28 = fmul float %24, %27
  call fastcc void @madd_v2_v2fl(ptr noundef nonnull %6, ptr noundef %26, float noundef %28) #26
  %29 = getelementptr inbounds float, ptr %19, i64 1
  %30 = add nuw nsw i64 %18, 1
  %31 = icmp eq i64 %30, %12
  br i1 %31, label %43, label %17, !llvm.loop !289

32:                                               ; preds = %14, %37
  %33 = phi i64 [ 0, %14 ], [ %41, %37 ]
  br i1 %15, label %37, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds float, ptr %1, i64 %33
  %36 = load float, ptr %35, align 4, !tbaa !185
  br label %37

37:                                               ; preds = %32, %34
  %38 = phi float [ %36, %34 ], [ 1.000000e+00, %32 ]
  %39 = getelementptr inbounds ptr, ptr %0, i64 %33
  %40 = load ptr, ptr %39, align 8, !tbaa !58
  call fastcc void @madd_v2_v2fl(ptr noundef nonnull %6, ptr noundef %40, float noundef %38) #26
  %41 = add nuw nsw i64 %33, 1
  %42 = icmp eq i64 %41, %16
  br i1 %42, label %43, label %32, !llvm.loop !290

43:                                               ; preds = %23, %37, %9, %13
  call fastcc void @copy_v2_v2(ptr noundef %4, ptr noundef nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal zeroext i8 @layerEqual_mloop_origspace(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #19 !PGOFuncName !291 {
  %3 = tail call fastcc float @len_squared_v2v2(ptr noundef %0, ptr noundef %1) #26
  %4 = fcmp olt float %3, 0x3EE4F8B580000000
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @layerMultiply_mloop_origspace(ptr nocapture noundef %0, float noundef %1) #19 !PGOFuncName !292 {
  tail call fastcc void @mul_v2_fl(ptr noundef %0, float noundef %1) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @layerInitMinMax_mloop_origspace(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1) #18 !PGOFuncName !293 {
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %0, align 4, !tbaa !185
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %1, align 4, !tbaa !185
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @layerAdd_mloop_origspace(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #19 !PGOFuncName !294 {
  tail call fastcc void @add_v2_v2(ptr noundef %0, ptr noundef %1) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @layerDoMinMax_mloop_origspace(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5 !PGOFuncName !295 {
  tail call void @minmax_v2v2_v2(ptr noundef %1, ptr noundef %2, ptr noundef %0) #27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @layerCopyValue_mloop_origspace(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #19 !PGOFuncName !296 {
  tail call fastcc void @copy_v2_v2(ptr noundef %1, ptr noundef %0) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @layerCopy_bmesh_elem_py_ptr(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #18 !PGOFuncName !297 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  %7 = shl nuw nsw i64 %6, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %1, i8 0, i64 %7, i1 false), !tbaa !58
  br label %8

8:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @layerFree_bmesh_elem_py_ptr(ptr nocapture readonly %0, i32 %1, i32 %2) #0 !PGOFuncName !298 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @layerCopy_grid_paint_mask(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #5 !PGOFuncName !299 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %24

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  br label %7

7:                                                ; preds = %5, %17
  %8 = phi i64 [ 0, %5 ], [ %22, %17 ]
  %9 = getelementptr inbounds %struct.GridPaintMask, ptr %0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !300
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !58
  %14 = tail call ptr %13(ptr noundef nonnull %10) #27
  %15 = getelementptr inbounds %struct.GridPaintMask, ptr %0, i64 %8, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !302
  br label %17

17:                                               ; preds = %7, %12
  %18 = phi ptr [ %14, %12 ], [ null, %7 ]
  %19 = phi i32 [ %16, %12 ], [ 0, %7 ]
  %20 = getelementptr inbounds %struct.GridPaintMask, ptr %1, i64 %8
  store ptr %18, ptr %20, align 8
  %21 = getelementptr inbounds %struct.GridPaintMask, ptr %1, i64 %8, i32 1
  store i32 %19, ptr %21, align 8
  %22 = add nuw nsw i64 %8, 1
  %23 = icmp eq i64 %22, %6
  br i1 %23, label %24, label %7, !llvm.loop !303

24:                                               ; preds = %17, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @layerFree_grid_paint_mask(ptr nocapture noundef %0, i32 noundef %1, i32 %2) #5 !PGOFuncName !304 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %3
  %6 = zext nneg i32 %1 to i64
  br label %7

7:                                                ; preds = %5, %14
  %8 = phi i64 [ 0, %5 ], [ %16, %14 ]
  %9 = getelementptr inbounds %struct.GridPaintMask, ptr %0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !300
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  tail call void %13(ptr noundef nonnull %10) #27
  br label %14

14:                                               ; preds = %12, %7
  store ptr null, ptr %9, align 8, !tbaa !300
  %15 = getelementptr inbounds %struct.GridPaintMask, ptr %0, i64 %8, i32 1
  store i32 0, ptr %15, align 8, !tbaa !302
  %16 = add nuw nsw i64 %8, 1
  %17 = icmp eq i64 %16, %6
  br i1 %17, label %18, label %7, !llvm.loop !305

18:                                               ; preds = %14, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @layerInterp_mvert_skin(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture readnone %2, i32 noundef %3, ptr nocapture noundef %4) #12 !PGOFuncName !306 {
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #29
  call fastcc void @zero_v3(ptr noundef nonnull %6) #26
  %7 = icmp sgt i32 %3, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %5
  %9 = icmp eq ptr %1, null
  %10 = zext nneg i32 %3 to i64
  br label %11

11:                                               ; preds = %8, %16
  %12 = phi i64 [ 0, %8 ], [ %20, %16 ]
  br i1 %9, label %16, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds float, ptr %1, i64 %12
  %15 = load float, ptr %14, align 4, !tbaa !185
  br label %16

16:                                               ; preds = %11, %13
  %17 = phi float [ %15, %13 ], [ 1.000000e+00, %11 ]
  %18 = getelementptr inbounds ptr, ptr %0, i64 %12
  %19 = load ptr, ptr %18, align 8, !tbaa !58
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %6, ptr noundef %19, float noundef %17) #26
  %20 = add nuw nsw i64 %12, 1
  %21 = icmp eq i64 %20, %10
  br i1 %21, label %22, label %11, !llvm.loop !307

22:                                               ; preds = %16, %5
  call fastcc void @copy_v3_v3(ptr noundef %4, ptr noundef nonnull %6) #26
  %23 = getelementptr inbounds %struct.MVertSkin, ptr %4, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !308
  %25 = and i32 %24, -2
  store i32 %25, ptr %23, align 4, !tbaa !308
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #29
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable
define internal void @layerDefault_mvert_skin(ptr nocapture noundef writeonly %0, i32 noundef %1) #21 !PGOFuncName !310 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %10, %6 ]
  %8 = getelementptr inbounds %struct.MVertSkin, ptr %0, i64 %7
  tail call fastcc void @copy_v3_fl(ptr noundef %8) #26
  %9 = getelementptr inbounds %struct.MVertSkin, ptr %0, i64 %7, i32 1
  store i32 0, ptr %9, align 4, !tbaa !308
  %10 = add nuw nsw i64 %7, 1
  %11 = icmp eq i64 %10, %5
  br i1 %11, label %12, label %6, !llvm.loop !311

12:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @layerSwap_flnor(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #17 !PGOFuncName !312 {
  %3 = alloca [4 x [3 x i16]], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #29
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 4, %2 ], [ %6, %4 ]
  %6 = add nsw i64 %5, -1
  %7 = getelementptr inbounds [4 x [3 x i16]], ptr %3, i64 0, i64 %6
  %8 = getelementptr inbounds i32, ptr %1, i64 %6
  %9 = load i32, ptr %8, align 4, !tbaa !37
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x [3 x i16]], ptr %0, i64 0, i64 %10
  call fastcc void @copy_v3_v3_short(ptr noundef nonnull %7, ptr noundef %11) #26
  %12 = icmp eq i64 %6, 0
  br i1 %12, label %13, label %4, !llvm.loop !313

13:                                               ; preds = %4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v2_v2fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #19 !PGOFuncName !314 {
  %4 = load float, ptr %1, align 4, !tbaa !185
  %5 = load float, ptr %0, align 4, !tbaa !185
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !185
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !185
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !185
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !185
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #22

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #19 !PGOFuncName !315 {
  %3 = load float, ptr %1, align 4, !tbaa !185
  store float %3, ptr %0, align 4, !tbaa !185
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !185
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !185
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #18 !PGOFuncName !316 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !185
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #19 !PGOFuncName !317 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #29
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #26
  %4 = call fastcc float @dot_v2v2(ptr noundef nonnull %3, ptr noundef nonnull %3) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #29
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #19 !PGOFuncName !318 {
  %4 = load float, ptr %1, align 4, !tbaa !185
  %5 = load float, ptr %2, align 4, !tbaa !185
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !185
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !185
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !185
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !185
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !319 {
  %3 = load float, ptr %0, align 4, !tbaa !185
  %4 = load float, ptr %1, align 4, !tbaa !185
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !185
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !185
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #19 !PGOFuncName !320 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !185
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !185
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #19 !PGOFuncName !321 {
  %3 = load float, ptr %1, align 4, !tbaa !185
  %4 = load float, ptr %0, align 4, !tbaa !185
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !185
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !185
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !185
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !185
  ret void
}

; Function Attrs: optsize
declare void @minmax_v2v2_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @multires_mdisp_corners(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @cdf_read_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @cdf_write_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #18 !PGOFuncName !322 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !185
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !185
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #19 !PGOFuncName !323 {
  %4 = load float, ptr %1, align 4, !tbaa !185
  %5 = load float, ptr %0, align 4, !tbaa !185
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !185
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !185
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !185
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !185
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !185
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !185
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !185
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #19 !PGOFuncName !324 {
  %3 = load float, ptr %1, align 4, !tbaa !185
  %4 = load float, ptr %0, align 4, !tbaa !185
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !185
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !185
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !185
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !185
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !185
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !185
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !185
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #19 !PGOFuncName !325 {
  %3 = load float, ptr %1, align 4, !tbaa !185
  store float %3, ptr %0, align 4, !tbaa !185
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !185
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !185
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !185
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !185
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @copy_v3_fl(ptr nocapture noundef writeonly %0) unnamed_addr #18 !PGOFuncName !326 {
  store <2 x float> <float 2.500000e-01, float 2.500000e-01>, ptr %0, align 4, !tbaa !185
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 2.500000e-01, ptr %2, align 4, !tbaa !185
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3_short(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #19 !PGOFuncName !327 {
  %3 = load i16, ptr %1, align 2, !tbaa !200
  store i16 %3, ptr %0, align 2, !tbaa !200
  %4 = getelementptr inbounds i16, ptr %1, i64 1
  %5 = load i16, ptr %4, align 2, !tbaa !200
  %6 = getelementptr inbounds i16, ptr %0, i64 1
  store i16 %5, ptr %6, align 2, !tbaa !200
  %7 = getelementptr inbounds i16, ptr %1, i64 2
  %8 = load i16, ptr %7, align 2, !tbaa !200
  %9 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %8, ptr %9, align 2, !tbaa !200
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #5 !PGOFuncName !328 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !329
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  switch i8 %2, label %25 [
    i8 1, label %8
    i8 2, label %11
    i8 3, label %14
    i8 4, label %17
    i8 5, label %18
    i8 6, label %19
    i8 7, label %20
    i8 8, label %21
    i8 9, label %22
    i8 10, label %23
    i8 11, label %24
  ]

8:                                                ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !330
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !133
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !331
  br label %26

11:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !330
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !133
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !334
  br label %26

14:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !330
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !133
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !335
  br label %26

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !330
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !133
  br label %26

18:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !330
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !133
  br label %26

19:                                               ; preds = %4
  store ptr @bmiter__loop_of_vert_begin, ptr %6, align 8, !tbaa !330
  store ptr @bmiter__loop_of_vert_step, ptr %7, align 8, !tbaa !133
  br label %26

20:                                               ; preds = %4
  store ptr @bmiter__vert_of_edge_begin, ptr %6, align 8, !tbaa !330
  store ptr @bmiter__vert_of_edge_step, ptr %7, align 8, !tbaa !133
  br label %26

21:                                               ; preds = %4
  store ptr @bmiter__face_of_edge_begin, ptr %6, align 8, !tbaa !330
  store ptr @bmiter__face_of_edge_step, ptr %7, align 8, !tbaa !133
  br label %26

22:                                               ; preds = %4
  store ptr @bmiter__vert_of_face_begin, ptr %6, align 8, !tbaa !330
  store ptr @bmiter__vert_of_face_step, ptr %7, align 8, !tbaa !133
  br label %26

23:                                               ; preds = %4
  store ptr @bmiter__edge_of_face_begin, ptr %6, align 8, !tbaa !330
  store ptr @bmiter__edge_of_face_step, ptr %7, align 8, !tbaa !133
  br label %26

24:                                               ; preds = %4
  store ptr @bmiter__loop_of_face_begin, ptr %6, align 8, !tbaa !330
  store ptr @bmiter__loop_of_face_step, ptr %7, align 8, !tbaa !133
  br label %26

25:                                               ; preds = %4
  unreachable

26:                                               ; preds = %24, %23, %22, %21, %20, %19, %18, %17, %14, %11, %8
  %27 = phi ptr [ %3, %24 ], [ %3, %23 ], [ %3, %22 ], [ %3, %21 ], [ %3, %20 ], [ %3, %19 ], [ %3, %18 ], [ %3, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ]
  %28 = phi ptr [ @bmiter__loop_of_face_begin, %24 ], [ @bmiter__edge_of_face_begin, %23 ], [ @bmiter__vert_of_face_begin, %22 ], [ @bmiter__face_of_edge_begin, %21 ], [ @bmiter__vert_of_edge_begin, %20 ], [ @bmiter__loop_of_vert_begin, %19 ], [ @bmiter__face_of_vert_begin, %18 ], [ @bmiter__edge_of_vert_begin, %17 ], [ @bmiter__elem_of_mesh_begin, %14 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %27, ptr %0, align 8, !tbaa !64
  tail call void %28(ptr noundef nonnull %0) #27
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #8

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #8

; Function Attrs: optsize
declare void @bmiter__edge_of_vert_begin(ptr noundef) #8

; Function Attrs: optsize
declare ptr @bmiter__edge_of_vert_step(ptr noundef) #8

; Function Attrs: optsize
declare void @bmiter__face_of_vert_begin(ptr noundef) #8

; Function Attrs: optsize
declare ptr @bmiter__face_of_vert_step(ptr noundef) #8

; Function Attrs: optsize
declare void @bmiter__loop_of_vert_begin(ptr noundef) #8

; Function Attrs: optsize
declare ptr @bmiter__loop_of_vert_step(ptr noundef) #8

; Function Attrs: optsize
declare void @bmiter__vert_of_edge_begin(ptr noundef) #8

; Function Attrs: optsize
declare ptr @bmiter__vert_of_edge_step(ptr noundef) #8

; Function Attrs: optsize
declare void @bmiter__face_of_edge_begin(ptr noundef) #8

; Function Attrs: optsize
declare ptr @bmiter__face_of_edge_step(ptr noundef) #8

; Function Attrs: optsize
declare void @bmiter__vert_of_face_begin(ptr noundef) #8

; Function Attrs: optsize
declare ptr @bmiter__vert_of_face_step(ptr noundef) #8

; Function Attrs: optsize
declare void @bmiter__edge_of_face_begin(ptr noundef) #8

; Function Attrs: optsize
declare ptr @bmiter__edge_of_face_step(ptr noundef) #8

; Function Attrs: optsize
declare void @bmiter__loop_of_face_begin(ptr noundef) #8

; Function Attrs: optsize
declare ptr @bmiter__loop_of_face_step(ptr noundef) #8

; Function Attrs: optsize
declare ptr @BLI_mempool_alloc(ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @cd_layer_find_dupe(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #6 !PGOFuncName !336 {
  %5 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !41
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %36

8:                                                ; preds = %4
  %9 = zext i32 %3 to i64
  %10 = zext nneg i32 %6 to i64
  br label %11

11:                                               ; preds = %8, %33
  %12 = phi i64 [ 0, %8 ], [ %34, %33 ]
  %13 = icmp eq i64 %12, %9
  br i1 %13, label %33, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %0, align 8, !tbaa !44
  %16 = getelementptr inbounds %struct.CustomDataLayer, ptr %15, i64 %12
  %17 = tail call fastcc zeroext i8 @CustomData_is_property_layer(i32 noundef %2) #26, !range !57
  %18 = icmp eq i8 %17, 0
  %19 = load i32, ptr %16, align 8, !tbaa !45
  br i1 %18, label %27, label %20

20:                                               ; preds = %14
  %21 = tail call fastcc zeroext i8 @CustomData_is_property_layer(i32 noundef %19) #26, !range !57
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.CustomDataLayer, ptr %15, i64 %12, i32 8
  %25 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(1) %1) #28
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %36, label %33

27:                                               ; preds = %14
  %28 = icmp eq i32 %19, %2
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.CustomDataLayer, ptr %15, i64 %12, i32 8
  %31 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(1) %1) #28
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %23, %20, %29, %27, %11
  %34 = add nuw nsw i64 %12, 1
  %35 = icmp eq i64 %34, %10
  br i1 %35, label %36, label %11, !llvm.loop !337

36:                                               ; preds = %29, %23, %33, %4
  %37 = phi i8 [ 0, %4 ], [ 0, %33 ], [ 1, %23 ], [ 1, %29 ]
  ret i8 %37
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @CustomData_is_property_layer(i32 noundef %0) unnamed_addr #0 !PGOFuncName !338 {
  %2 = add i32 %0, -10
  %3 = icmp ult i32 %2, 3
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #25

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nofree nounwind willreturn memory(argmem: read) }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { optsize }
attributes #27 = { nounwind optsize }
attributes #28 = { nounwind optsize willreturn memory(read) }
attributes #29 = { nounwind }
attributes #30 = { cold optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"customdata.c:layerType_getName"}
!37 = !{!38, !38, i64 0}
!38 = !{!"int", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!42, !38, i64 172}
!42 = !{!"CustomData", !43, i64 0, !39, i64 8, !38, i64 172, !38, i64 176, !38, i64 180, !43, i64 184, !43, i64 192}
!43 = !{!"any pointer", !39, i64 0}
!44 = !{!42, !43, i64 0}
!45 = !{!46, !38, i64 0}
!46 = !{!"CustomDataLayer", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20, !38, i64 24, !38, i64 28, !39, i64 32, !43, i64 96}
!47 = distinct !{!47, !35}
!48 = !{!46, !38, i64 8}
!49 = !{!46, !43, i64 96}
!50 = !{!46, !38, i64 28}
!51 = distinct !{!51, !35}
!52 = !{!53, !43, i64 24}
!53 = !{!"LayerTypeInfo", !38, i64 0, !43, i64 8, !38, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !43, i64 104, !43, i64 112, !43, i64 120, !43, i64 128, !43, i64 136, !43, i64 144}
!54 = !{!53, !43, i64 144}
!55 = !{!"customdata.c:customData_add_layer__internal"}
!56 = !{!53, !38, i64 0}
!57 = !{i8 0, i8 2}
!58 = !{!43, !43, i64 0}
!59 = !{!53, !43, i64 32}
!60 = !{!53, !43, i64 64}
!61 = !{!42, !38, i64 176}
!62 = !{i32 0, i32 2}
!63 = !{i64 0, i64 4, !37, i64 4, i64 4, !37, i64 8, i64 4, !37, i64 12, i64 4, !37, i64 16, i64 4, !37, i64 20, i64 4, !37, i64 24, i64 4, !37, i64 28, i64 4, !37, i64 32, i64 64, !64, i64 96, i64 8, !58}
!64 = !{!39, !39, i64 0}
!65 = distinct !{!65, !35}
!66 = !{!42, !43, i64 192}
!67 = distinct !{!67, !35}
!68 = !{!"customdata.c:customData_free_layer__internal"}
!69 = !{!53, !43, i64 40}
!70 = !{!"customdata.c:CustomData_external_free"}
!71 = distinct !{!71, !35}
!72 = !{!46, !38, i64 12}
!73 = !{!46, !38, i64 16}
!74 = !{!46, !38, i64 20}
!75 = !{!46, !38, i64 24}
!76 = distinct !{!76, !35}
!77 = distinct !{!77, !35}
!78 = distinct !{!78, !35}
!79 = distinct !{!79, !35}
!80 = distinct !{!80, !35}
!81 = distinct !{!81, !35}
!82 = distinct !{!82, !35}
!83 = distinct !{!83, !35}
!84 = distinct !{!84, !35}
!85 = !{!"customdata.c:layerType_getInfo"}
!86 = distinct !{!86, !35}
!87 = distinct !{!87, !35}
!88 = !{!"customdata.c:CustomData_get_layer_index__notypemap"}
!89 = distinct !{!89, !35}
!90 = !{!"customdata.c:customData_resize"}
!91 = !{!"customdata.c:customData_update_offsets"}
!92 = !{!46, !38, i64 4}
!93 = distinct !{!93, !35}
!94 = !{!42, !38, i64 180}
!95 = distinct !{!95, !35}
!96 = distinct !{!96, !35}
!97 = distinct !{!97, !35}
!98 = distinct !{!98, !35}
!99 = distinct !{!99, !35}
!100 = distinct !{!100, !35}
!101 = !{!"customdata.c:CustomData_copy_data_layer"}
!102 = distinct !{!102, !35}
!103 = distinct !{!103, !35}
!104 = distinct !{!104, !35}
!105 = !{!53, !43, i64 48}
!106 = distinct !{!106, !35}
!107 = distinct !{!107, !35}
!108 = distinct !{!108, !35}
!109 = !{!53, !43, i64 56}
!110 = distinct !{!110, !35}
!111 = distinct !{!111, !35}
!112 = distinct !{!112, !35}
!113 = distinct !{!113, !35}
!114 = !{!115, !38, i64 0}
!115 = !{!"BMAllocTemplate", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12}
!116 = !{!115, !38, i64 4}
!117 = !{!115, !38, i64 8}
!118 = !{!115, !38, i64 12}
!119 = !{!42, !43, i64 184}
!120 = !{i64 0, i64 8, !58, i64 8, i64 164, !64, i64 172, i64 4, !37, i64 176, i64 4, !37, i64 180, i64 4, !37, i64 184, i64 8, !58, i64 192, i64 8, !58}
!121 = !{!122, !43, i64 0}
!122 = !{!"BMHeader", !43, i64 0, !38, i64 8, !39, i64 12, !39, i64 13, !39, i64 14}
!123 = distinct !{!123, !35}
!124 = !{!125, !43, i64 0}
!125 = !{!"BMLoop", !122, i64 0, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64}
!126 = distinct !{!126, !35}
!127 = distinct !{!127, !35}
!128 = !{!"customdata.c:BM_iter_new"}
!129 = distinct !{!129, !35}
!130 = distinct !{!130, !35}
!131 = distinct !{!131, !35}
!132 = !{!"customdata.c:BM_iter_step"}
!133 = !{!134, !43, i64 48}
!134 = !{!"BMIter", !39, i64 0, !43, i64 40, !43, i64 48, !38, i64 56, !39, i64 60}
!135 = distinct !{!135, !35}
!136 = !{!"customdata.c:CustomData_bmesh_alloc_block"}
!137 = !{!53, !43, i64 72}
!138 = !{!53, !43, i64 96}
!139 = !{!53, !43, i64 80}
!140 = !{!53, !43, i64 88}
!141 = !{!53, !43, i64 104}
!142 = distinct !{!142, !35}
!143 = distinct !{!143, !35}
!144 = distinct !{!144, !35}
!145 = !{!53, !43, i64 112}
!146 = distinct !{!146, !35}
!147 = distinct !{!147, !35}
!148 = distinct !{!148, !35}
!149 = !{!"customdata.c:CustomData_bmesh_set_default_n"}
!150 = distinct !{!150, !35}
!151 = distinct !{!151, !35}
!152 = distinct !{!152, !35}
!153 = distinct !{!153, !35}
!154 = distinct !{!154, !35}
!155 = !{!53, !43, i64 8}
!156 = !{!53, !38, i64 16}
!157 = !{!158, !43, i64 0}
!158 = !{!"", !43, i64 0, !38, i64 8, !38, i64 12}
!159 = !{!158, !38, i64 8}
!160 = !{!158, !38, i64 12}
!161 = !{!"customdata.c:customdata_unique_check"}
!162 = distinct !{!162, !35}
!163 = distinct !{!163, !35}
!164 = !{!53, !43, i64 120}
!165 = distinct !{!165, !35}
!166 = distinct !{!166, !35}
!167 = !{!"customdata.c:customdata_external_filename"}
!168 = !{!169, !43, i64 24}
!169 = !{!"ID", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !39, i64 32, !170, i64 98, !38, i64 100, !38, i64 104, !38, i64 108, !43, i64 112}
!170 = !{!"short", !39, i64 0}
!171 = !{!53, !43, i64 128}
!172 = distinct !{!172, !35}
!173 = !{!53, !43, i64 136}
!174 = distinct !{!174, !35}
!175 = distinct !{!175, !35}
!176 = distinct !{!176, !35}
!177 = !{!"customdata.c:layerCopy_mdeformvert"}
!178 = !{!179, !38, i64 8}
!179 = !{!"MDeformVert", !43, i64 0, !38, i64 8, !38, i64 12}
!180 = !{!179, !43, i64 0}
!181 = distinct !{!181, !35}
!182 = !{!"customdata.c:layerFree_mdeformvert"}
!183 = distinct !{!183, !35}
!184 = !{!"customdata.c:layerInterp_mdeformvert"}
!185 = !{!186, !186, i64 0}
!186 = !{!"float", !39, i64 0}
!187 = !{!188, !186, i64 4}
!188 = !{!"MDeformWeight", !38, i64 0, !186, i64 4}
!189 = !{!188, !38, i64 0}
!190 = !{!191, !43, i64 0}
!191 = !{!"MDeformWeight_Link", !43, i64 0, !188, i64 8}
!192 = distinct !{!192, !35}
!193 = !{!191, !38, i64 8}
!194 = !{!191, !186, i64 12}
!195 = distinct !{!195, !35}
!196 = distinct !{!196, !35}
!197 = distinct !{!197, !35}
!198 = !{!"customdata.c:layerCopy_tface"}
!199 = !{i64 0, i64 32, !64, i64 32, i64 8, !58, i64 40, i64 1, !64, i64 41, i64 1, !64, i64 42, i64 2, !200, i64 44, i64 2, !200, i64 46, i64 2, !200}
!200 = !{!170, !170, i64 0}
!201 = distinct !{!201, !35}
!202 = !{!"customdata.c:layerInterp_tface"}
!203 = distinct !{!203, !35}
!204 = distinct !{!204, !35}
!205 = distinct !{!205, !35}
!206 = !{!"customdata.c:layerSwap_tface"}
!207 = !{!208, !170, i64 46}
!208 = !{!"MTFace", !39, i64 0, !43, i64 32, !39, i64 40, !39, i64 41, !170, i64 42, !170, i64 44, !170, i64 46}
!209 = !{!208, !39, i64 40}
!210 = distinct !{!210, !35}
!211 = !{!"customdata.c:layerDefault_tface"}
!212 = distinct !{!212, !35}
!213 = !{!"customdata.c:layerMaxNum_tface"}
!214 = !{!"customdata.c:layerInterp_mcol"}
!215 = distinct !{!215, !35}
!216 = distinct !{!216, !35}
!217 = distinct !{!217, !35}
!218 = !{!219, !186, i64 0}
!219 = !{!"", !186, i64 0, !186, i64 4, !186, i64 8, !186, i64 12}
!220 = !{!219, !186, i64 4}
!221 = !{!219, !186, i64 8}
!222 = !{!219, !186, i64 12}
!223 = distinct !{!223, !35}
!224 = !{!"customdata.c:layerSwap_mcol"}
!225 = distinct !{!225, !35}
!226 = !{!"customdata.c:layerDefault_mcol"}
!227 = !{!"customdata.c:layerMaxNum_mloopcol"}
!228 = !{!"customdata.c:layerDefault_origindex"}
!229 = !{!"customdata.c:layerCopy_propFloat"}
!230 = !{!"customdata.c:layerCopy_propInt"}
!231 = !{!"customdata.c:layerCopy_propString"}
!232 = !{!"customdata.c:layerCopy_origspace_face"}
!233 = !{i64 0, i64 32, !64}
!234 = distinct !{!234, !35}
!235 = !{!"customdata.c:layerInterp_origspace_face"}
!236 = distinct !{!236, !35}
!237 = distinct !{!237, !35}
!238 = distinct !{!238, !35}
!239 = !{!"customdata.c:layerSwap_origspace_face"}
!240 = distinct !{!240, !35}
!241 = !{!"customdata.c:layerDefault_origspace_face"}
!242 = distinct !{!242, !35}
!243 = !{!"customdata.c:layerInterp_mloopuv"}
!244 = distinct !{!244, !35}
!245 = distinct !{!245, !35}
!246 = !{!"customdata.c:layerEqual_mloopuv"}
!247 = !{!"customdata.c:layerMultiply_mloopuv"}
!248 = !{!"customdata.c:layerInitMinMax_mloopuv"}
!249 = !{!"customdata.c:layerAdd_mloopuv"}
!250 = !{!"customdata.c:layerDoMinMax_mloopuv"}
!251 = !{!"customdata.c:layerCopyValue_mloopuv"}
!252 = !{!"customdata.c:layerInterp_mloopcol"}
!253 = !{!254, !39, i64 0}
!254 = !{!"MLoopCol", !39, i64 0, !39, i64 1, !39, i64 2, !39, i64 3}
!255 = !{!254, !39, i64 3}
!256 = distinct !{!256, !35}
!257 = !{!"customdata.c:layerDefault_mloopcol"}
!258 = !{!"customdata.c:layerEqual_mloopcol"}
!259 = !{!254, !39, i64 1}
!260 = !{!254, !39, i64 2}
!261 = !{!"customdata.c:layerMultiply_mloopcol"}
!262 = !{!"customdata.c:layerInitMinMax_mloopcol"}
!263 = !{!"customdata.c:layerAdd_mloopcol"}
!264 = !{!"customdata.c:layerDoMinMax_mloopcol"}
!265 = !{!"customdata.c:layerCopyValue_mloopcol"}
!266 = !{!"customdata.c:layerCopy_mdisps"}
!267 = !{!268, !43, i64 8}
!268 = !{!"MDisps", !38, i64 0, !38, i64 4, !43, i64 8, !43, i64 16}
!269 = !{!268, !43, i64 16}
!270 = distinct !{!270, !35}
!271 = !{!"customdata.c:layerFree_mdisps"}
!272 = distinct !{!272, !35}
!273 = !{!"customdata.c:layerSwap_mdisps"}
!274 = !{!268, !38, i64 0}
!275 = distinct !{!275, !35}
!276 = !{!"customdata.c:layerRead_mdisps"}
!277 = distinct !{!277, !35}
!278 = !{!"customdata.c:layerWrite_mdisps"}
!279 = distinct !{!279, !35}
!280 = !{!"customdata.c:layerFilesize_mdisps"}
!281 = distinct !{!281, !35}
!282 = !{!"customdata.c:layerInterp_shapekey"}
!283 = distinct !{!283, !35}
!284 = distinct !{!284, !35}
!285 = !{!"customdata.c:layerInterp_bweight"}
!286 = distinct !{!286, !35}
!287 = distinct !{!287, !35}
!288 = !{!"customdata.c:layerInterp_mloop_origspace"}
!289 = distinct !{!289, !35}
!290 = distinct !{!290, !35}
!291 = !{!"customdata.c:layerEqual_mloop_origspace"}
!292 = !{!"customdata.c:layerMultiply_mloop_origspace"}
!293 = !{!"customdata.c:layerInitMinMax_mloop_origspace"}
!294 = !{!"customdata.c:layerAdd_mloop_origspace"}
!295 = !{!"customdata.c:layerDoMinMax_mloop_origspace"}
!296 = !{!"customdata.c:layerCopyValue_mloop_origspace"}
!297 = !{!"customdata.c:layerCopy_bmesh_elem_py_ptr"}
!298 = !{!"customdata.c:layerFree_bmesh_elem_py_ptr"}
!299 = !{!"customdata.c:layerCopy_grid_paint_mask"}
!300 = !{!301, !43, i64 0}
!301 = !{!"GridPaintMask", !43, i64 0, !38, i64 8, !38, i64 12}
!302 = !{!301, !38, i64 8}
!303 = distinct !{!303, !35}
!304 = !{!"customdata.c:layerFree_grid_paint_mask"}
!305 = distinct !{!305, !35}
!306 = !{!"customdata.c:layerInterp_mvert_skin"}
!307 = distinct !{!307, !35}
!308 = !{!309, !38, i64 12}
!309 = !{!"MVertSkin", !39, i64 0, !38, i64 12}
!310 = !{!"customdata.c:layerDefault_mvert_skin"}
!311 = distinct !{!311, !35}
!312 = !{!"customdata.c:layerSwap_flnor"}
!313 = distinct !{!313, !35}
!314 = !{!"customdata.c:madd_v2_v2fl"}
!315 = !{!"customdata.c:copy_v2_v2"}
!316 = !{!"customdata.c:zero_v2"}
!317 = !{!"customdata.c:len_squared_v2v2"}
!318 = !{!"customdata.c:sub_v2_v2v2"}
!319 = !{!"customdata.c:dot_v2v2"}
!320 = !{!"customdata.c:mul_v2_fl"}
!321 = !{!"customdata.c:add_v2_v2"}
!322 = !{!"customdata.c:zero_v3"}
!323 = !{!"customdata.c:madd_v3_v3fl"}
!324 = !{!"customdata.c:add_v3_v3"}
!325 = !{!"customdata.c:copy_v3_v3"}
!326 = !{!"customdata.c:copy_v3_fl"}
!327 = !{!"customdata.c:copy_v3_v3_short"}
!328 = !{!"customdata.c:BM_iter_init"}
!329 = !{!134, !39, i64 60}
!330 = !{!134, !43, i64 40}
!331 = !{!332, !43, i64 32}
!332 = !{!"BMesh", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20, !38, i64 24, !39, i64 28, !39, i64 29, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !38, i64 88, !38, i64 92, !38, i64 96, !43, i64 104, !43, i64 112, !43, i64 120, !38, i64 128, !43, i64 136, !42, i64 144, !42, i64 344, !42, i64 544, !42, i64 744, !170, i64 944, !38, i64 948, !38, i64 952, !38, i64 956, !333, i64 960, !43, i64 976, !333, i64 984, !43, i64 1000}
!333 = !{!"ListBase", !43, i64 0, !43, i64 8}
!334 = !{!332, !43, i64 40}
!335 = !{!332, !43, i64 56}
!336 = !{!"customdata.c:cd_layer_find_dupe"}
!337 = distinct !{!337, !35}
!338 = !{!"customdata.c:CustomData_is_property_layer"}
