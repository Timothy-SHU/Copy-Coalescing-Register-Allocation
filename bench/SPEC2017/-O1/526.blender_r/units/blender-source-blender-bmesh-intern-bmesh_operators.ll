; ModuleID = 'blender/source/blender/bmesh/intern/bmesh_operators.c'
source_filename = "blender/source/blender/bmesh/intern/bmesh_operators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
%struct.BMIter = type { %union.anon.0, ptr, ptr, i32, i8 }
%union.anon.0 = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMElemF = type { %struct.BMHeader, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMFlagLayer = type { i16 }
%struct.BMOpDefine = type { ptr, [16 x %struct.BMOSlotType], [16 x %struct.BMOSlotType], ptr, i32 }
%struct.BMOSlotType = type { [32 x i8], i32, %union.eBMOpSlotSubType_Union }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct._gh_Entry = type { ptr, ptr, ptr }
%struct.BMEditSelection = type { ptr, ptr, ptr, i8 }
%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.BMOpError = type { ptr, ptr, i32, ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@BMO_OPSLOT_TYPEINFO = dso_local local_unnamed_addr constant [11 x i32] [i32 0, i32 4, i32 4, i32 4, i32 8, i32 8, i32 0, i32 0, i32 12, i32 8, i32 8], align 16
@bmo_opdefines = external local_unnamed_addr global [0 x ptr], align 8
@__func__.BMO_op_init = private unnamed_addr constant [12 x i8] c"BMO_op_init\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [53 x i8] c"%s: invalid size argument %d (bmesh internal error)\0A\00", align 1
@__func__.BMO_slot_mat_set = private unnamed_addr constant [17 x i8] c"BMO_slot_mat_set\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.BMO_slot_as_arrayN = private unnamed_addr constant [19 x i8] c"BMO_slot_as_arrayN\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"bmop_error\00", align 1
@bmo_error_messages = internal unnamed_addr constant [10 x ptr] [ptr null, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], align 16
@bmo_opdefines_total = external local_unnamed_addr constant i32, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"could not match end of slot name\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"name to slot code check failed\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"matrix size was not 3 or 4\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"htype duplicated\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"%s: unrecognized bmop format char: '%c', %d in '%s'\0A\00", align 1
@__func__.BMO_op_vinitf = private unnamed_addr constant [14 x i8] c"BMO_op_vinitf\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"%s: error parsing formatting string\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"string: '%s', position %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"         \00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"^\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"source code:  %s:%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"blender/source/blender/bmesh/intern/bmesh_operators.c\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"reason: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"%s: failed\0A\00", align 1
@__func__.BMO_op_initf = private unnamed_addr constant [13 x i8] c"BMO_op_initf\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"%s: failed, format is:\0A    \22%s\22\0A\00", align 1
@__func__.BMO_op_callf = private unnamed_addr constant [13 x i8] c"BMO_op_callf\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"bmesh slot map hash\00", align 1
@__const.bmo_mesh_flag_count.iter_types = private unnamed_addr constant [3 x i8] c"\01\02\03", align 1
@__const.bmo_mesh_flag_count.flag_types = private unnamed_addr constant [3 x i8] c"\01\02\08", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"Self intersection error\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"Could not dissolve vert\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"Could not connect vertices\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"Could not traverse mesh\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"Could not dissolve faces\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"Tessellation error\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"Cannot deal with non-manifold geometry\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"Invalid selection\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"Internal mesh error\00", align 1
@.str.29 = private unnamed_addr constant [69 x i8] c"%s: ! could not find bmesh slot for name %s! (bmesh internal error)\0A\00", align 1
@__func__.bmo_name_to_slotcode_check = private unnamed_addr constant [27 x i8] c"bmo_name_to_slotcode_check\00", align 1
@.str.30 = private unnamed_addr constant [67 x i8] c"%s: could not find bmesh slot for name %s! (bmesh internal error)\0A\00", align 1
@__func__.BMO_opcode_from_opname_check = private unnamed_addr constant [29 x i8] c"BMO_opcode_from_opname_check\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BMO_op_flag_enable(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = or i32 %5, %2
  store i32 %6, ptr %4, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BMO_op_flag_disable(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = xor i32 %2, -1
  %5 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = and i32 %6, %4
  store i32 %7, ptr %5, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BMO_push(ptr nocapture noundef %0, ptr nocapture readnone %1) local_unnamed_addr #1 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca %struct.BMIter, align 8
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %10 = load i32, ptr %9, align 8, !tbaa !40
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr %9, align 8, !tbaa !40
  %12 = icmp sgt i32 %10, 0
  br i1 %12, label %13, label %104

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  %16 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 20
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 21
  %19 = load ptr, ptr %18, align 8, !tbaa !47
  %20 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 31
  %21 = load i32, ptr %20, align 4, !tbaa !48
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 1
  %24 = add nsw i32 %21, 1
  store i32 %24, ptr %20, align 4, !tbaa !48
  %25 = shl i32 %24, 1
  %26 = load i32, ptr %0, align 8, !tbaa !49
  %27 = tail call ptr @BLI_mempool_create(i32 noundef %25, i32 noundef %26, i32 noundef 512, i32 noundef 0) #15
  store ptr %27, ptr %14, align 8, !tbaa !45
  %28 = load i32, ptr %20, align 4, !tbaa !48
  %29 = shl i32 %28, 1
  %30 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !50
  %32 = tail call ptr @BLI_mempool_create(i32 noundef %29, i32 noundef %31, i32 noundef 512, i32 noundef 0) #15
  store ptr %32, ptr %16, align 8, !tbaa !46
  %33 = load i32, ptr %20, align 4, !tbaa !48
  %34 = shl i32 %33, 1
  %35 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %36 = load i32, ptr %35, align 4, !tbaa !51
  %37 = tail call ptr @BLI_mempool_create(i32 noundef %34, i32 noundef %36, i32 noundef 512, i32 noundef 0) #15
  store ptr %37, ptr %18, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #15
  %38 = load ptr, ptr %14, align 8, !tbaa !45
  %39 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 1, ptr %39, align 4, !tbaa !52
  %40 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %40, align 8, !tbaa !54
  %41 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %41, align 8, !tbaa !55
  %42 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %43 = load ptr, ptr %42, align 8, !tbaa !56
  store ptr %43, ptr %6, align 8, !tbaa !57
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #15
  %44 = load ptr, ptr %41, align 8, !tbaa !55
  %45 = call ptr %44(ptr noundef nonnull %6) #15
  %46 = icmp eq ptr %45, null
  br i1 %46, label %59, label %47

47:                                               ; preds = %13, %47
  %48 = phi ptr [ %56, %47 ], [ %45, %13 ]
  %49 = phi i32 [ %57, %47 ], [ 0, %13 ]
  %50 = getelementptr inbounds %struct.BMElemF, ptr %48, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !58
  %52 = call ptr @BLI_mempool_calloc(ptr noundef %38) #15
  store ptr %52, ptr %50, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %52, ptr align 1 %51, i64 %23, i1 false)
  %53 = getelementptr inbounds %struct.BMHeader, ptr %48, i64 0, i32 1
  store i32 %49, ptr %53, align 8, !tbaa !61
  %54 = getelementptr inbounds %struct.BMHeader, ptr %48, i64 0, i32 4
  store i8 0, ptr %54, align 2, !tbaa !62
  %55 = load ptr, ptr %41, align 8, !tbaa !55
  %56 = call ptr %55(ptr noundef nonnull %6) #15
  %57 = add nuw nsw i32 %49, 1
  %58 = icmp eq ptr %56, null
  br i1 %58, label %59, label %47, !llvm.loop !63

59:                                               ; preds = %47, %13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #15
  %60 = load ptr, ptr %16, align 8, !tbaa !46
  %61 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  store i8 2, ptr %61, align 4, !tbaa !52
  %62 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %62, align 8, !tbaa !54
  %63 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %63, align 8, !tbaa !55
  %64 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %65 = load ptr, ptr %64, align 8, !tbaa !66
  store ptr %65, ptr %7, align 8, !tbaa !57
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %7) #15
  %66 = load ptr, ptr %63, align 8, !tbaa !55
  %67 = call ptr %66(ptr noundef nonnull %7) #15
  %68 = icmp eq ptr %67, null
  br i1 %68, label %81, label %69

69:                                               ; preds = %59, %69
  %70 = phi ptr [ %78, %69 ], [ %67, %59 ]
  %71 = phi i32 [ %79, %69 ], [ 0, %59 ]
  %72 = getelementptr inbounds %struct.BMElemF, ptr %70, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !58
  %74 = call ptr @BLI_mempool_calloc(ptr noundef %60) #15
  store ptr %74, ptr %72, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %74, ptr align 1 %73, i64 %23, i1 false)
  %75 = getelementptr inbounds %struct.BMHeader, ptr %70, i64 0, i32 1
  store i32 %71, ptr %75, align 8, !tbaa !61
  %76 = getelementptr inbounds %struct.BMHeader, ptr %70, i64 0, i32 4
  store i8 0, ptr %76, align 2, !tbaa !62
  %77 = load ptr, ptr %63, align 8, !tbaa !55
  %78 = call ptr %77(ptr noundef nonnull %7) #15
  %79 = add nuw nsw i32 %71, 1
  %80 = icmp eq ptr %78, null
  br i1 %80, label %81, label %69, !llvm.loop !67

81:                                               ; preds = %69, %59
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #15
  %82 = load ptr, ptr %18, align 8, !tbaa !47
  %83 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  store i8 3, ptr %83, align 4, !tbaa !52
  %84 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %84, align 8, !tbaa !54
  %85 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %85, align 8, !tbaa !55
  %86 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %87 = load ptr, ptr %86, align 8, !tbaa !68
  store ptr %87, ptr %8, align 8, !tbaa !57
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #15
  %88 = load ptr, ptr %85, align 8, !tbaa !55
  %89 = call ptr %88(ptr noundef nonnull %8) #15
  %90 = icmp eq ptr %89, null
  br i1 %90, label %103, label %91

91:                                               ; preds = %81, %91
  %92 = phi i32 [ %101, %91 ], [ 0, %81 ]
  %93 = phi ptr [ %100, %91 ], [ %89, %81 ]
  %94 = getelementptr inbounds %struct.BMElemF, ptr %93, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !58
  %96 = call ptr @BLI_mempool_calloc(ptr noundef %82) #15
  store ptr %96, ptr %94, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %96, ptr align 1 %95, i64 %23, i1 false)
  %97 = getelementptr inbounds %struct.BMHeader, ptr %93, i64 0, i32 1
  store i32 %92, ptr %97, align 8, !tbaa !61
  %98 = getelementptr inbounds %struct.BMHeader, ptr %93, i64 0, i32 4
  store i8 0, ptr %98, align 2, !tbaa !62
  %99 = load ptr, ptr %85, align 8, !tbaa !55
  %100 = call ptr %99(ptr noundef nonnull %8) #15
  %101 = add nuw nsw i32 %92, 1
  %102 = icmp eq ptr %100, null
  br i1 %102, label %103, label %91, !llvm.loop !69

103:                                              ; preds = %91, %81
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #15
  call void @BLI_mempool_destroy(ptr noundef %15) #15
  call void @BLI_mempool_destroy(ptr noundef %17) #15
  call void @BLI_mempool_destroy(ptr noundef %19) #15
  br label %174

104:                                              ; preds = %2
  %105 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 31
  %106 = load i32, ptr %105, align 4, !tbaa !48
  %107 = add nsw i32 %106, -1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #15
  %108 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %108, align 4, !tbaa !52
  %109 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %109, align 8, !tbaa !54
  %110 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %110, align 8, !tbaa !55
  %111 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %112 = load ptr, ptr %111, align 8, !tbaa !56
  store ptr %112, ptr %3, align 8, !tbaa !57
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #15
  %113 = load ptr, ptr %110, align 8, !tbaa !55
  %114 = call ptr %113(ptr noundef nonnull %3) #15
  %115 = icmp eq ptr %114, null
  br i1 %115, label %129, label %116

116:                                              ; preds = %104
  %117 = sext i32 %107 to i64
  br label %118

118:                                              ; preds = %116, %118
  %119 = phi i32 [ 0, %116 ], [ %127, %118 ]
  %120 = phi ptr [ %114, %116 ], [ %126, %118 ]
  %121 = getelementptr inbounds %struct.BMElemF, ptr %120, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !58
  %123 = getelementptr inbounds %struct.BMFlagLayer, ptr %122, i64 %117
  store i16 0, ptr %123, align 2, !tbaa.struct !70
  %124 = getelementptr inbounds %struct.BMHeader, ptr %120, i64 0, i32 1
  store i32 %119, ptr %124, align 8, !tbaa !61
  %125 = load ptr, ptr %110, align 8, !tbaa !55
  %126 = call ptr %125(ptr noundef nonnull %3) #15
  %127 = add nuw nsw i32 %119, 1
  %128 = icmp eq ptr %126, null
  br i1 %128, label %129, label %118, !llvm.loop !72

129:                                              ; preds = %118, %104
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  %130 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 2, ptr %130, align 4, !tbaa !52
  %131 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %131, align 8, !tbaa !54
  %132 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %132, align 8, !tbaa !55
  %133 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %134 = load ptr, ptr %133, align 8, !tbaa !66
  store ptr %134, ptr %4, align 8, !tbaa !57
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #15
  %135 = load ptr, ptr %132, align 8, !tbaa !55
  %136 = call ptr %135(ptr noundef nonnull %4) #15
  %137 = icmp eq ptr %136, null
  br i1 %137, label %151, label %138

138:                                              ; preds = %129
  %139 = sext i32 %107 to i64
  br label %140

140:                                              ; preds = %138, %140
  %141 = phi i32 [ 0, %138 ], [ %149, %140 ]
  %142 = phi ptr [ %136, %138 ], [ %148, %140 ]
  %143 = getelementptr inbounds %struct.BMElemF, ptr %142, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !58
  %145 = getelementptr inbounds %struct.BMFlagLayer, ptr %144, i64 %139
  store i16 0, ptr %145, align 2, !tbaa.struct !70
  %146 = getelementptr inbounds %struct.BMHeader, ptr %142, i64 0, i32 1
  store i32 %141, ptr %146, align 8, !tbaa !61
  %147 = load ptr, ptr %132, align 8, !tbaa !55
  %148 = call ptr %147(ptr noundef nonnull %4) #15
  %149 = add nuw nsw i32 %141, 1
  %150 = icmp eq ptr %148, null
  br i1 %150, label %151, label %140, !llvm.loop !73

151:                                              ; preds = %140, %129
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #15
  %152 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 3, ptr %152, align 4, !tbaa !52
  %153 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %153, align 8, !tbaa !54
  %154 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %154, align 8, !tbaa !55
  %155 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %156 = load ptr, ptr %155, align 8, !tbaa !68
  store ptr %156, ptr %5, align 8, !tbaa !57
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #15
  %157 = load ptr, ptr %154, align 8, !tbaa !55
  %158 = call ptr %157(ptr noundef nonnull %5) #15
  %159 = icmp eq ptr %158, null
  br i1 %159, label %173, label %160

160:                                              ; preds = %151
  %161 = sext i32 %107 to i64
  br label %162

162:                                              ; preds = %160, %162
  %163 = phi i32 [ 0, %160 ], [ %171, %162 ]
  %164 = phi ptr [ %158, %160 ], [ %170, %162 ]
  %165 = getelementptr inbounds %struct.BMElemF, ptr %164, i64 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !58
  %167 = getelementptr inbounds %struct.BMFlagLayer, ptr %166, i64 %161
  store i16 0, ptr %167, align 2, !tbaa.struct !70
  %168 = getelementptr inbounds %struct.BMHeader, ptr %164, i64 0, i32 1
  store i32 %163, ptr %168, align 8, !tbaa !61
  %169 = load ptr, ptr %154, align 8, !tbaa !55
  %170 = call ptr %169(ptr noundef nonnull %5) #15
  %171 = add nuw nsw i32 %163, 1
  %172 = icmp eq ptr %170, null
  br i1 %172, label %173, label %162, !llvm.loop !74

173:                                              ; preds = %162, %151
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #15
  br label %174

174:                                              ; preds = %173, %103
  %175 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %176 = load i8, ptr %175, align 4, !tbaa !75
  %177 = and i8 %176, -12
  store i8 %177, ptr %175, align 4, !tbaa !75
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BMO_pop(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = alloca %struct.BMIter, align 8
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %6 = load i32, ptr %5, align 8, !tbaa !40
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %98

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 20
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 21
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 31
  %16 = load i32, ptr %15, align 4, !tbaa !48
  %17 = add nsw i32 %16, -1
  %18 = sext i32 %17 to i64
  %19 = shl nsw i64 %18, 1
  store i32 %17, ptr %15, align 4, !tbaa !48
  %20 = trunc i64 %19 to i32
  %21 = load i32, ptr %0, align 8, !tbaa !49
  %22 = tail call ptr @BLI_mempool_create(i32 noundef %20, i32 noundef %21, i32 noundef 512, i32 noundef 0) #15
  store ptr %22, ptr %9, align 8, !tbaa !45
  %23 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !50
  %25 = tail call ptr @BLI_mempool_create(i32 noundef %20, i32 noundef %24, i32 noundef 512, i32 noundef 0) #15
  store ptr %25, ptr %11, align 8, !tbaa !46
  %26 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !51
  %28 = tail call ptr @BLI_mempool_create(i32 noundef %20, i32 noundef %27, i32 noundef 512, i32 noundef 0) #15
  store ptr %28, ptr %13, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #15
  %29 = load ptr, ptr %9, align 8, !tbaa !45
  %30 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 4
  store i8 1, ptr %30, align 4, !tbaa !52
  %31 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %31, align 8, !tbaa !54
  %32 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %32, align 8, !tbaa !55
  %33 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %34 = load ptr, ptr %33, align 8, !tbaa !56
  store ptr %34, ptr %2, align 8, !tbaa !57
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %2) #15
  %35 = load ptr, ptr %32, align 8, !tbaa !55
  %36 = call ptr %35(ptr noundef nonnull %2) #15
  %37 = icmp eq ptr %36, null
  br i1 %37, label %50, label %38

38:                                               ; preds = %8, %38
  %39 = phi ptr [ %47, %38 ], [ %36, %8 ]
  %40 = phi i32 [ %48, %38 ], [ 0, %8 ]
  %41 = getelementptr inbounds %struct.BMElemF, ptr %39, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !58
  %43 = call ptr @BLI_mempool_alloc(ptr noundef %29) #15
  store ptr %43, ptr %41, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %43, ptr align 1 %42, i64 %19, i1 false)
  %44 = getelementptr inbounds %struct.BMHeader, ptr %39, i64 0, i32 1
  store i32 %40, ptr %44, align 8, !tbaa !61
  %45 = getelementptr inbounds %struct.BMHeader, ptr %39, i64 0, i32 4
  store i8 0, ptr %45, align 2, !tbaa !62
  %46 = load ptr, ptr %32, align 8, !tbaa !55
  %47 = call ptr %46(ptr noundef nonnull %2) #15
  %48 = add nuw nsw i32 %40, 1
  %49 = icmp eq ptr %47, null
  br i1 %49, label %50, label %38, !llvm.loop !76

50:                                               ; preds = %38, %8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #15
  %51 = load ptr, ptr %11, align 8, !tbaa !46
  %52 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 2, ptr %52, align 4, !tbaa !52
  %53 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %53, align 8, !tbaa !54
  %54 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %54, align 8, !tbaa !55
  %55 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %56 = load ptr, ptr %55, align 8, !tbaa !66
  store ptr %56, ptr %3, align 8, !tbaa !57
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #15
  %57 = load ptr, ptr %54, align 8, !tbaa !55
  %58 = call ptr %57(ptr noundef nonnull %3) #15
  %59 = icmp eq ptr %58, null
  br i1 %59, label %72, label %60

60:                                               ; preds = %50, %60
  %61 = phi ptr [ %69, %60 ], [ %58, %50 ]
  %62 = phi i32 [ %70, %60 ], [ 0, %50 ]
  %63 = getelementptr inbounds %struct.BMElemF, ptr %61, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !58
  %65 = call ptr @BLI_mempool_alloc(ptr noundef %51) #15
  store ptr %65, ptr %63, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %65, ptr align 1 %64, i64 %19, i1 false)
  %66 = getelementptr inbounds %struct.BMHeader, ptr %61, i64 0, i32 1
  store i32 %62, ptr %66, align 8, !tbaa !61
  %67 = getelementptr inbounds %struct.BMHeader, ptr %61, i64 0, i32 4
  store i8 0, ptr %67, align 2, !tbaa !62
  %68 = load ptr, ptr %54, align 8, !tbaa !55
  %69 = call ptr %68(ptr noundef nonnull %3) #15
  %70 = add nuw nsw i32 %62, 1
  %71 = icmp eq ptr %69, null
  br i1 %71, label %72, label %60, !llvm.loop !77

72:                                               ; preds = %60, %50
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  %73 = load ptr, ptr %13, align 8, !tbaa !47
  %74 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 3, ptr %74, align 4, !tbaa !52
  %75 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %75, align 8, !tbaa !54
  %76 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %76, align 8, !tbaa !55
  %77 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %78 = load ptr, ptr %77, align 8, !tbaa !68
  store ptr %78, ptr %4, align 8, !tbaa !57
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #15
  %79 = load ptr, ptr %76, align 8, !tbaa !55
  %80 = call ptr %79(ptr noundef nonnull %4) #15
  %81 = icmp eq ptr %80, null
  br i1 %81, label %94, label %82

82:                                               ; preds = %72, %82
  %83 = phi i32 [ %92, %82 ], [ 0, %72 ]
  %84 = phi ptr [ %91, %82 ], [ %80, %72 ]
  %85 = getelementptr inbounds %struct.BMElemF, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !58
  %87 = call ptr @BLI_mempool_alloc(ptr noundef %73) #15
  store ptr %87, ptr %85, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %87, ptr align 1 %86, i64 %19, i1 false)
  %88 = getelementptr inbounds %struct.BMHeader, ptr %84, i64 0, i32 1
  store i32 %83, ptr %88, align 8, !tbaa !61
  %89 = getelementptr inbounds %struct.BMHeader, ptr %84, i64 0, i32 4
  store i8 0, ptr %89, align 2, !tbaa !62
  %90 = load ptr, ptr %76, align 8, !tbaa !55
  %91 = call ptr %90(ptr noundef nonnull %4) #15
  %92 = add nuw nsw i32 %83, 1
  %93 = icmp eq ptr %91, null
  br i1 %93, label %94, label %82, !llvm.loop !78

94:                                               ; preds = %82, %72
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  call void @BLI_mempool_destroy(ptr noundef %10) #15
  call void @BLI_mempool_destroy(ptr noundef %12) #15
  call void @BLI_mempool_destroy(ptr noundef %14) #15
  %95 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %96 = load i8, ptr %95, align 4, !tbaa !75
  %97 = and i8 %96, -12
  store i8 %97, ptr %95, align 4, !tbaa !75
  br label %98

98:                                               ; preds = %94, %1
  %99 = load i32, ptr %5, align 8, !tbaa !40
  %100 = add nsw i32 %99, -1
  store i32 %100, ptr %5, align 8, !tbaa !40
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BMO_op_init(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 {
  %5 = load i32, ptr @bmo_opdefines_total, align 4, !tbaa !79
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %4
  %8 = zext i32 %5 to i64
  br label %9

9:                                                ; preds = %7, %16
  %10 = phi i64 [ 0, %7 ], [ %17, %16 ]
  %11 = getelementptr inbounds [0 x ptr], ptr @bmo_opdefines, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !80
  %13 = load ptr, ptr %12, align 8, !tbaa !81
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %3) #16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %9
  %17 = add nuw nsw i64 %10, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %21, label %9, !llvm.loop !83

19:                                               ; preds = %9
  %20 = trunc i64 %10 to i32
  br label %21

21:                                               ; preds = %19, %16, %4
  %22 = phi i32 [ -1, %4 ], [ %20, %19 ], [ -1, %16 ]
  %23 = icmp eq i32 %22, -1
  %24 = select i1 %23, i32 0, i32 %22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1312) %1, i8 0, i64 1312, i1 false)
  %25 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 4
  store i32 %24, ptr %25, align 8, !tbaa !84
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds [0 x ptr], ptr @bmo_opdefines, i64 0, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !80
  %29 = getelementptr inbounds %struct.BMOpDefine, ptr %28, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !85
  %31 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 5
  store i32 %30, ptr %31, align 4, !tbaa !86
  %32 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  store i32 %2, ptr %32, align 8, !tbaa !34
  %33 = getelementptr inbounds %struct.BMOpDefine, ptr %28, i64 0, i32 1
  %34 = getelementptr inbounds %struct.BMOpDefine, ptr %28, i64 0, i32 1, i64 0, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !87
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %57, label %37

37:                                               ; preds = %21, %51
  %38 = phi i32 [ %55, %51 ], [ %35, %21 ]
  %39 = phi i64 [ %53, %51 ], [ 0, %21 ]
  %40 = phi i32 [ %52, %51 ], [ 0, %21 ]
  %41 = getelementptr inbounds %struct.BMOSlotType, ptr %33, i64 %39
  %42 = getelementptr inbounds %struct.BMOpSlot, ptr %1, i64 %39
  store ptr %41, ptr %42, align 8, !tbaa !89
  %43 = getelementptr inbounds %struct.BMOpSlot, ptr %1, i64 %39, i32 1
  store i32 %38, ptr %43, align 8, !tbaa !91
  %44 = getelementptr inbounds %struct.BMOpSlot, ptr %1, i64 %39, i32 2
  %45 = getelementptr inbounds %struct.BMOSlotType, ptr %33, i64 %39, i32 2
  %46 = load i32, ptr %45, align 4
  store i32 %46, ptr %44, align 4
  %47 = icmp eq i32 %38, 10
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  %49 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.19) #15
  %50 = getelementptr inbounds %struct.BMOpSlot, ptr %1, i64 %39, i32 4
  store ptr %49, ptr %50, align 8, !tbaa !57
  br label %51

51:                                               ; preds = %48, %37
  %52 = add i32 %40, 1
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.BMOSlotType, ptr %33, i64 %53, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !87
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %37, !llvm.loop !92

57:                                               ; preds = %51, %21
  %58 = load ptr, ptr %27, align 8, !tbaa !80
  %59 = getelementptr inbounds %struct.BMOpDefine, ptr %58, i64 0, i32 2
  %60 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  %61 = getelementptr inbounds %struct.BMOpDefine, ptr %58, i64 0, i32 2, i64 0, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !87
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %84, label %64

64:                                               ; preds = %57, %78
  %65 = phi i32 [ %82, %78 ], [ %62, %57 ]
  %66 = phi i64 [ %80, %78 ], [ 0, %57 ]
  %67 = phi i32 [ %79, %78 ], [ 0, %57 ]
  %68 = getelementptr inbounds %struct.BMOSlotType, ptr %59, i64 %66
  %69 = getelementptr inbounds %struct.BMOpSlot, ptr %60, i64 %66
  store ptr %68, ptr %69, align 8, !tbaa !89
  %70 = getelementptr inbounds %struct.BMOpSlot, ptr %60, i64 %66, i32 1
  store i32 %65, ptr %70, align 8, !tbaa !91
  %71 = getelementptr inbounds %struct.BMOpSlot, ptr %60, i64 %66, i32 2
  %72 = getelementptr inbounds %struct.BMOSlotType, ptr %59, i64 %66, i32 2
  %73 = load i32, ptr %72, align 4
  store i32 %73, ptr %71, align 4
  %74 = icmp eq i32 %65, 10
  br i1 %74, label %75, label %78

75:                                               ; preds = %64
  %76 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.19) #15
  %77 = getelementptr inbounds %struct.BMOpSlot, ptr %60, i64 %66, i32 4
  store ptr %76, ptr %77, align 8, !tbaa !57
  br label %78

78:                                               ; preds = %75, %64
  %79 = add i32 %67, 1
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.BMOSlotType, ptr %59, i64 %80, i32 1
  %82 = load i32, ptr %81, align 4, !tbaa !87
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %64, !llvm.loop !92

84:                                               ; preds = %78, %57
  %85 = load ptr, ptr %27, align 8, !tbaa !80
  %86 = getelementptr inbounds %struct.BMOpDefine, ptr %85, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !93
  %88 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 2
  store ptr %87, ptr %88, align 8, !tbaa !94
  %89 = tail call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @__func__.BMO_op_init) #15
  %90 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 3
  store ptr %89, ptr %90, align 8, !tbaa !95
  tail call void @BLI_memarena_use_calloc(ptr noundef %89) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BMO_opcode_from_opname(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load i32, ptr @bmo_opdefines_total, align 4, !tbaa !79
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = zext i32 %2 to i64
  br label %6

6:                                                ; preds = %4, %13
  %7 = phi i64 [ 0, %4 ], [ %14, %13 ]
  %8 = getelementptr inbounds [0 x ptr], ptr @bmo_opdefines, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  %10 = load ptr, ptr %9, align 8, !tbaa !81
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %0) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %6
  %14 = add nuw nsw i64 %7, 1
  %15 = icmp eq i64 %14, %5
  br i1 %15, label %18, label %6, !llvm.loop !83

16:                                               ; preds = %6
  %17 = trunc i64 %7 to i32
  br label %18

18:                                               ; preds = %16, %13, %1
  %19 = phi i32 [ -1, %1 ], [ %17, %16 ], [ -1, %13 ]
  ret i32 %19
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #5

declare void @BLI_memarena_use_calloc(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @BMO_op_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  tail call void @BM_mesh_elem_toolflags_ensure(ptr noundef %0) #15
  tail call void @BMO_push(ptr noundef %0, ptr poison)
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %4 = load i32, ptr %3, align 8, !tbaa !40
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !86
  tail call void @bmesh_edit_begin(ptr noundef %0, i32 noundef %8) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !94
  tail call void %11(ptr noundef %0, ptr noundef %1) #15
  %12 = load i32, ptr %3, align 8, !tbaa !40
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 5
  %16 = load i32, ptr %15, align 4, !tbaa !86
  tail call void @bmesh_edit_end(ptr noundef %0, i32 noundef %16) #15
  br label %17

17:                                               ; preds = %14, %9
  tail call void @BMO_pop(ptr noundef %0)
  ret void
}

declare void @BM_mesh_elem_toolflags_ensure(ptr noundef) local_unnamed_addr #5

declare void @bmesh_edit_begin(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @bmesh_edit_end(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @BMO_op_finish(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !84
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [0 x ptr], ptr @bmo_opdefines, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !80
  %8 = getelementptr inbounds %struct.BMOpDefine, ptr %7, i64 0, i32 1
  %9 = getelementptr inbounds %struct.BMOpDefine, ptr %7, i64 0, i32 1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !87
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %2, %21
  %13 = phi i64 [ %23, %21 ], [ 0, %2 ]
  %14 = phi i32 [ %22, %21 ], [ 0, %2 ]
  %15 = getelementptr inbounds %struct.BMOpSlot, ptr %1, i64 %13, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !91
  %17 = icmp eq i32 %16, 10
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.BMOpSlot, ptr %1, i64 %13, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !57
  tail call void @BLI_ghash_free(ptr noundef %20, ptr noundef null, ptr noundef null) #15
  br label %21

21:                                               ; preds = %18, %12
  %22 = add i32 %14, 1
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.BMOSlotType, ptr %8, i64 %23, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !87
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %12, !llvm.loop !96

27:                                               ; preds = %21, %2
  %28 = load i32, ptr %3, align 8, !tbaa !84
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [0 x ptr], ptr @bmo_opdefines, i64 0, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !80
  %32 = getelementptr inbounds %struct.BMOpDefine, ptr %31, i64 0, i32 2
  %33 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  %34 = getelementptr inbounds %struct.BMOpDefine, ptr %31, i64 0, i32 2, i64 0, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !87
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %27, %46
  %38 = phi i64 [ %48, %46 ], [ 0, %27 ]
  %39 = phi i32 [ %47, %46 ], [ 0, %27 ]
  %40 = getelementptr inbounds %struct.BMOpSlot, ptr %33, i64 %38, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !91
  %42 = icmp eq i32 %41, 10
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.BMOpSlot, ptr %33, i64 %38, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !57
  tail call void @BLI_ghash_free(ptr noundef %45, ptr noundef null, ptr noundef null) #15
  br label %46

46:                                               ; preds = %43, %37
  %47 = add i32 %39, 1
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.BMOSlotType, ptr %32, i64 %48, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !87
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %37, !llvm.loop !96

52:                                               ; preds = %46, %27
  %53 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !95
  tail call void @BLI_memarena_free(ptr noundef %54) #15
  ret void
}

declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BMO_slot_exists(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr %0, align 8, !tbaa !89
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %2, %11
  %6 = phi ptr [ %14, %11 ], [ %3, %2 ]
  %7 = phi i32 [ %13, %11 ], [ 0, %2 ]
  %8 = phi ptr [ %12, %11 ], [ %0, %2 ]
  %9 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %6, i64 noundef 32) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.BMOpSlot, ptr %8, i64 1
  %13 = add nuw nsw i32 %7, 1
  %14 = load ptr, ptr %12, align 8, !tbaa !89
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5, !llvm.loop !97

16:                                               ; preds = %11, %5
  %17 = phi i32 [ %7, %5 ], [ -1, %11 ]
  %18 = icmp sgt i32 %17, -1
  %19 = zext i1 %18 to i8
  br label %20

20:                                               ; preds = %16, %2
  %21 = phi i8 [ 0, %2 ], [ %19, %16 ]
  ret i8 %21
}

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @BMO_slot_get(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = load ptr, ptr %0, align 8, !tbaa !89
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2, %11
  %6 = phi ptr [ %14, %11 ], [ %3, %2 ]
  %7 = phi i32 [ %13, %11 ], [ 0, %2 ]
  %8 = phi ptr [ %12, %11 ], [ %0, %2 ]
  %9 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %6, i64 noundef 32) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.BMOpSlot, ptr %8, i64 1
  %13 = add nuw nsw i32 %7, 1
  %14 = load ptr, ptr %12, align 8, !tbaa !89
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5, !llvm.loop !97

16:                                               ; preds = %11, %5, %2
  %17 = phi i32 [ -1, %2 ], [ %7, %5 ], [ -1, %11 ]
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load ptr, ptr @stderr, align 8, !tbaa !80
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef %1) #17
  br label %22

22:                                               ; preds = %16, %19
  %23 = zext nneg i32 %17 to i64
  %24 = getelementptr inbounds %struct.BMOpSlot, ptr %0, i64 %23
  %25 = select i1 %18, ptr null, ptr %24
  ret ptr %25
}

; Function Attrs: nounwind uwtable
define dso_local void @_bmo_slot_copy(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 {
  %6 = alloca %struct.GHashIterator, align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !89
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %5, %15
  %10 = phi ptr [ %18, %15 ], [ %7, %5 ]
  %11 = phi i32 [ %17, %15 ], [ 0, %5 ]
  %12 = phi ptr [ %16, %15 ], [ %0, %5 ]
  %13 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %10, i64 noundef 32) #16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.BMOpSlot, ptr %12, i64 1
  %17 = add nuw nsw i32 %11, 1
  %18 = load ptr, ptr %16, align 8, !tbaa !89
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %9, !llvm.loop !97

20:                                               ; preds = %15, %9, %5
  %21 = phi i32 [ -1, %5 ], [ %11, %9 ], [ -1, %15 ]
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load ptr, ptr @stderr, align 8, !tbaa !80
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef %1) #17
  br label %26

26:                                               ; preds = %20, %23
  %27 = zext nneg i32 %21 to i64
  %28 = getelementptr inbounds %struct.BMOpSlot, ptr %0, i64 %27
  %29 = select i1 %22, ptr null, ptr %28
  %30 = load ptr, ptr %2, align 8, !tbaa !89
  %31 = icmp eq ptr %30, null
  br i1 %31, label %43, label %32

32:                                               ; preds = %26, %38
  %33 = phi ptr [ %41, %38 ], [ %30, %26 ]
  %34 = phi i32 [ %40, %38 ], [ 0, %26 ]
  %35 = phi ptr [ %39, %38 ], [ %2, %26 ]
  %36 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %33, i64 noundef 32) #16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.BMOpSlot, ptr %35, i64 1
  %40 = add nuw nsw i32 %34, 1
  %41 = load ptr, ptr %39, align 8, !tbaa !89
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %32, !llvm.loop !97

43:                                               ; preds = %38, %32, %26
  %44 = phi i32 [ -1, %26 ], [ %34, %32 ], [ -1, %38 ]
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load ptr, ptr @stderr, align 8, !tbaa !80
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef %3) #17
  br label %49

49:                                               ; preds = %43, %46
  %50 = zext nneg i32 %44 to i64
  %51 = getelementptr inbounds %struct.BMOpSlot, ptr %2, i64 %50
  %52 = select i1 %45, ptr null, ptr %51
  %53 = icmp eq ptr %29, %52
  br i1 %53, label %161, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.BMOpSlot, ptr %29, i64 0, i32 1
  %56 = load i32, ptr %55, align 8, !tbaa !91
  %57 = getelementptr inbounds %struct.BMOpSlot, ptr %52, i64 0, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !91
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %161

60:                                               ; preds = %54
  switch i32 %58, label %158 [
    i32 9, label %61
    i32 10, label %140
  ]

61:                                               ; preds = %60
  %62 = getelementptr inbounds %struct.BMOpSlot, ptr %52, i64 0, i32 4
  store ptr null, ptr %62, align 8, !tbaa !57
  %63 = getelementptr inbounds %struct.BMOpSlot, ptr %29, i64 0, i32 3
  %64 = load i32, ptr %63, align 8, !tbaa !98
  %65 = getelementptr inbounds %struct.BMOpSlot, ptr %52, i64 0, i32 3
  store i32 %64, ptr %65, align 8, !tbaa !98
  %66 = icmp eq i32 %64, 0
  br i1 %66, label %161, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.BMOpSlot, ptr %29, i64 0, i32 2
  %69 = load i32, ptr %68, align 4, !tbaa !57
  %70 = getelementptr inbounds %struct.BMOpSlot, ptr %52, i64 0, i32 2
  %71 = load i32, ptr %70, align 4, !tbaa !57
  %72 = and i32 %71, 11
  %73 = or i32 %71, %69
  %74 = and i32 %73, 11
  %75 = icmp eq i32 %74, %72
  br i1 %75, label %101, label %76

76:                                               ; preds = %67
  %77 = load i32, ptr %63, align 8, !tbaa !98
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %97, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.BMOpSlot, ptr %29, i64 0, i32 4
  %81 = load ptr, ptr %80, align 8, !tbaa !57
  br label %82

82:                                               ; preds = %79, %82
  %83 = phi i32 [ %94, %82 ], [ 0, %79 ]
  %84 = phi i32 [ %93, %82 ], [ 0, %79 ]
  %85 = phi ptr [ %95, %82 ], [ %81, %79 ]
  %86 = load ptr, ptr %85, align 8, !tbaa !80
  %87 = getelementptr inbounds %struct.BMHeader, ptr %86, i64 0, i32 2
  %88 = load i8, ptr %87, align 4, !tbaa !99
  %89 = zext i8 %88 to i32
  %90 = and i32 %72, %89
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i32
  %93 = add i32 %84, %92
  %94 = add nuw i32 %83, 1
  %95 = getelementptr inbounds ptr, ptr %85, i64 1
  %96 = icmp eq i32 %94, %77
  br i1 %96, label %97, label %82, !llvm.loop !101

97:                                               ; preds = %82, %76
  %98 = phi i32 [ 0, %76 ], [ %93, %82 ]
  %99 = icmp eq i32 %98, %77
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  store i32 %98, ptr %65, align 8, !tbaa !98
  br label %101

101:                                              ; preds = %97, %100, %67
  %102 = load i32, ptr %65, align 8, !tbaa !98
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %161, label %104

104:                                              ; preds = %101
  %105 = load i32, ptr %57, align 8, !tbaa !91
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds [11 x i32], ptr @BMO_OPSLOT_TYPEINFO, i64 0, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !79
  %109 = mul nsw i32 %108, %102
  %110 = sext i32 %109 to i64
  %111 = tail call ptr @BLI_memarena_alloc(ptr noundef %4, i64 noundef %110) #15
  store ptr %111, ptr %62, align 8, !tbaa !57
  %112 = load i32, ptr %63, align 8, !tbaa !98
  %113 = load i32, ptr %65, align 8, !tbaa !98
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %104
  %116 = getelementptr inbounds %struct.BMOpSlot, ptr %29, i64 0, i32 4
  %117 = load ptr, ptr %116, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %111, ptr align 8 %117, i64 %110, i1 false)
  br label %161

118:                                              ; preds = %104
  %119 = icmp eq i32 %112, 0
  br i1 %119, label %161, label %120

120:                                              ; preds = %118
  %121 = getelementptr inbounds %struct.BMOpSlot, ptr %29, i64 0, i32 4
  %122 = load ptr, ptr %121, align 8, !tbaa !57
  br label %123

123:                                              ; preds = %120, %135
  %124 = phi ptr [ %136, %135 ], [ %111, %120 ]
  %125 = phi ptr [ %138, %135 ], [ %122, %120 ]
  %126 = phi i32 [ %137, %135 ], [ 0, %120 ]
  %127 = load ptr, ptr %125, align 8, !tbaa !80
  %128 = getelementptr inbounds %struct.BMHeader, ptr %127, i64 0, i32 2
  %129 = load i8, ptr %128, align 4, !tbaa !99
  %130 = zext i8 %129 to i32
  %131 = and i32 %72, %130
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %123
  store ptr %127, ptr %124, align 8, !tbaa !80
  %134 = getelementptr inbounds ptr, ptr %124, i64 1
  br label %135

135:                                              ; preds = %123, %133
  %136 = phi ptr [ %134, %133 ], [ %124, %123 ]
  %137 = add nuw i32 %126, 1
  %138 = getelementptr inbounds ptr, ptr %125, i64 1
  %139 = icmp eq i32 %137, %112
  br i1 %139, label %161, label %123, !llvm.loop !102

140:                                              ; preds = %60
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #15
  %141 = getelementptr inbounds %struct.BMOpSlot, ptr %29, i64 0, i32 4
  %142 = load ptr, ptr %141, align 8, !tbaa !57
  call void @BLI_ghashIterator_init(ptr noundef nonnull %6, ptr noundef %142) #15
  %143 = getelementptr inbounds %struct.GHashIterator, ptr %6, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !103
  %145 = icmp eq ptr %144, null
  br i1 %145, label %157, label %146

146:                                              ; preds = %140
  %147 = getelementptr inbounds %struct.BMOpSlot, ptr %52, i64 0, i32 4
  br label %148

148:                                              ; preds = %146, %148
  %149 = phi ptr [ %144, %146 ], [ %155, %148 ]
  %150 = getelementptr inbounds %struct._gh_Entry, ptr %149, i64 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !105
  %152 = getelementptr inbounds %struct._gh_Entry, ptr %149, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !107
  %154 = load ptr, ptr %147, align 8, !tbaa !57
  call void @BLI_ghash_insert(ptr noundef %154, ptr noundef %151, ptr noundef %153) #15
  call void @BLI_ghashIterator_step(ptr noundef nonnull %6) #15
  %155 = load ptr, ptr %143, align 8, !tbaa !103
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %148, !llvm.loop !108

157:                                              ; preds = %148, %140
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  br label %161

158:                                              ; preds = %60
  %159 = getelementptr inbounds %struct.BMOpSlot, ptr %52, i64 0, i32 4
  %160 = getelementptr inbounds %struct.BMOpSlot, ptr %29, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %159, ptr noundef nonnull align 8 dereferenceable(16) %160, i64 16, i1 false), !tbaa.struct !109
  br label %161

161:                                              ; preds = %135, %118, %61, %158, %157, %115, %101, %54, %49
  ret void
}

declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

declare void @BLI_ghashIterator_init(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define dso_local void @BMO_slot_float_set(ptr nocapture noundef %0, ptr noundef %1, float noundef %2) local_unnamed_addr #6 {
  %4 = load ptr, ptr %0, align 8, !tbaa !89
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %3, %12
  %7 = phi ptr [ %15, %12 ], [ %4, %3 ]
  %8 = phi i32 [ %14, %12 ], [ 0, %3 ]
  %9 = phi ptr [ %13, %12 ], [ %0, %3 ]
  %10 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %7, i64 noundef 32) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.BMOpSlot, ptr %9, i64 1
  %14 = add nuw nsw i32 %8, 1
  %15 = load ptr, ptr %13, align 8, !tbaa !89
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %6, !llvm.loop !97

17:                                               ; preds = %12, %6, %3
  %18 = phi i32 [ -1, %3 ], [ %8, %6 ], [ -1, %12 ]
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load ptr, ptr @stderr, align 8, !tbaa !80
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef %1) #17
  br label %23

23:                                               ; preds = %17, %20
  %24 = zext nneg i32 %18 to i64
  %25 = getelementptr inbounds %struct.BMOpSlot, ptr %0, i64 %24
  %26 = select i1 %19, ptr null, ptr %25
  %27 = getelementptr inbounds %struct.BMOpSlot, ptr %26, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !91
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.BMOpSlot, ptr %26, i64 0, i32 4
  store float %2, ptr %31, align 8, !tbaa !57
  br label %32

32:                                               ; preds = %23, %30
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @BMO_slot_int_set(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = load ptr, ptr %0, align 8, !tbaa !89
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %3, %12
  %7 = phi ptr [ %15, %12 ], [ %4, %3 ]
  %8 = phi i32 [ %14, %12 ], [ 0, %3 ]
  %9 = phi ptr [ %13, %12 ], [ %0, %3 ]
  %10 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %7, i64 noundef 32) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.BMOpSlot, ptr %9, i64 1
  %14 = add nuw nsw i32 %8, 1
  %15 = load ptr, ptr %13, align 8, !tbaa !89
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %6, !llvm.loop !97

17:                                               ; preds = %12, %6, %3
  %18 = phi i32 [ -1, %3 ], [ %8, %6 ], [ -1, %12 ]
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load ptr, ptr @stderr, align 8, !tbaa !80
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef %1) #17
  br label %23

23:                                               ; preds = %17, %20
  %24 = zext nneg i32 %18 to i64
  %25 = getelementptr inbounds %struct.BMOpSlot, ptr %0, i64 %24
  %26 = select i1 %19, ptr null, ptr %25
  %27 = getelementptr inbounds %struct.BMOpSlot, ptr %26, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !91
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.BMOpSlot, ptr %26, i64 0, i32 4
  store i32 %2, ptr %31, align 8, !tbaa !57
  br label %32

32:                                               ; preds = %23, %30
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @BMO_slot_bool_set(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #6 {
  %4 = load ptr, ptr %0, align 8, !tbaa !89
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %3, %12
  %7 = phi ptr [ %15, %12 ], [ %4, %3 ]
  %8 = phi i32 [ %14, %12 ], [ 0, %3 ]
  %9 = phi ptr [ %13, %12 ], [ %0, %3 ]
  %10 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %7, i64 noundef 32) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.BMOpSlot, ptr %9, i64 1
  %14 = add nuw nsw i32 %8, 1
  %15 = load ptr, ptr %13, align 8, !tbaa !89
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %6, !llvm.loop !97

17:                                               ; preds = %12, %6, %3
  %18 = phi i32 [ -1, %3 ], [ %8, %6 ], [ -1, %12 ]
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load ptr, ptr @stderr, align 8, !tbaa !80
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef %1) #17
  br label %23

23:                                               ; preds = %17, %20
  %24 = zext nneg i32 %18 to i64
  %25 = getelementptr inbounds %struct.BMOpSlot, ptr %0, i64 %24
  %26 = select i1 %19, ptr null, ptr %25
  %27 = getelementptr inbounds %struct.BMOpSlot, ptr %26, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !91
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = zext i8 %2 to i32
  %32 = getelementptr inbounds %struct.BMOpSlot, ptr %26, i64 0, i32 4
  store i32 %31, ptr %32, align 8, !tbaa !57
  br label %33

33:                                               ; preds = %23, %30
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BMO_slot_mat_set(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = load ptr, ptr %1, align 8, !tbaa !89
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %5, %14
  %9 = phi ptr [ %17, %14 ], [ %6, %5 ]
  %10 = phi i32 [ %16, %14 ], [ 0, %5 ]
  %11 = phi ptr [ %15, %14 ], [ %1, %5 ]
  %12 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %9, i64 noundef 32) #16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.BMOpSlot, ptr %11, i64 1
  %16 = add nuw nsw i32 %10, 1
  %17 = load ptr, ptr %15, align 8, !tbaa !89
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %8, !llvm.loop !97

19:                                               ; preds = %14, %8, %5
  %20 = phi i32 [ -1, %5 ], [ %10, %8 ], [ -1, %14 ]
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load ptr, ptr @stderr, align 8, !tbaa !80
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef %2) #17
  br label %25

25:                                               ; preds = %19, %22
  %26 = zext nneg i32 %20 to i64
  %27 = getelementptr inbounds %struct.BMOpSlot, ptr %1, i64 %26
  %28 = select i1 %21, ptr null, ptr %27
  %29 = getelementptr inbounds %struct.BMOpSlot, ptr %28, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !91
  %31 = icmp eq i32 %30, 5
  br i1 %31, label %32, label %44

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.BMOpSlot, ptr %28, i64 0, i32 3
  store i32 4, ptr %33, align 8, !tbaa !98
  %34 = getelementptr inbounds %struct.BMOperator, ptr %0, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !95
  %36 = tail call ptr @BLI_memarena_alloc(ptr noundef %35, i64 noundef 64) #15
  %37 = getelementptr inbounds %struct.BMOpSlot, ptr %28, i64 0, i32 4
  store ptr %36, ptr %37, align 8, !tbaa !57
  switch i32 %4, label %40 [
    i32 4, label %38
    i32 3, label %39
  ]

38:                                               ; preds = %32
  tail call void @copy_m4_m4(ptr noundef %36, ptr noundef %3) #15
  br label %44

39:                                               ; preds = %32
  tail call void @copy_m4_m3(ptr noundef %36, ptr noundef %3) #15
  br label %44

40:                                               ; preds = %32
  %41 = load ptr, ptr @stderr, align 8, !tbaa !80
  %42 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.BMO_slot_mat_set, i32 noundef %4) #17
  %43 = load ptr, ptr %37, align 8, !tbaa !57
  tail call void @zero_m4(ptr noundef %43) #15
  br label %44

44:                                               ; preds = %38, %40, %39, %25
  ret void
}

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @copy_m4_m3(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

declare void @zero_m4(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @BMO_slot_mat4_get(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = load ptr, ptr %0, align 8, !tbaa !89
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %3, %12
  %7 = phi ptr [ %15, %12 ], [ %4, %3 ]
  %8 = phi i32 [ %14, %12 ], [ 0, %3 ]
  %9 = phi ptr [ %13, %12 ], [ %0, %3 ]
  %10 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %7, i64 noundef 32) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.BMOpSlot, ptr %9, i64 1
  %14 = add nuw nsw i32 %8, 1
  %15 = load ptr, ptr %13, align 8, !tbaa !89
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %6, !llvm.loop !97

17:                                               ; preds = %12, %6, %3
  %18 = phi i32 [ -1, %3 ], [ %8, %6 ], [ -1, %12 ]
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load ptr, ptr @stderr, align 8, !tbaa !80
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef %1) #17
  br label %23

23:                                               ; preds = %17, %20
  %24 = zext nneg i32 %18 to i64
  %25 = getelementptr inbounds %struct.BMOpSlot, ptr %0, i64 %24
  %26 = select i1 %19, ptr null, ptr %25
  %27 = getelementptr inbounds %struct.BMOpSlot, ptr %26, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !91
  %29 = icmp eq i32 %28, 5
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.BMOpSlot, ptr %26, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !57
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @copy_m4_m4(ptr noundef %2, ptr noundef nonnull %32) #15
  br label %36

35:                                               ; preds = %30
  tail call void @unit_m4(ptr noundef %2) #15
  br label %36

36:                                               ; preds = %34, %35, %23
  ret void
}

declare void @unit_m4(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @BMO_slot_mat3_get(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = load ptr, ptr %0, align 8, !tbaa !89
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %3, %12
  %7 = phi ptr [ %15, %12 ], [ %4, %3 ]
  %8 = phi i32 [ %14, %12 ], [ 0, %3 ]
  %9 = phi ptr [ %13, %12 ], [ %0, %3 ]
  %10 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %7, i64 noundef 32) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.BMOpSlot, ptr %9, i64 1
  %14 = add nuw nsw i32 %8, 1
  %15 = load ptr, ptr %13, align 8, !tbaa !89
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %6, !llvm.loop !97

17:                                               ; preds = %12, %6, %3
  %18 = phi i32 [ -1, %3 ], [ %8, %6 ], [ -1, %12 ]
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load ptr, ptr @stderr, align 8, !tbaa !80
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef %1) #17
  br label %23

23:                                               ; preds = %17, %20
  %24 = zext nneg i32 %18 to i64
  %25 = getelementptr inbounds %struct.BMOpSlot, ptr %0, i64 %24
  %26 = select i1 %19, ptr null, ptr %25
  %27 = getelementptr inbounds %struct.BMOpSlot, ptr %26, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !91
  %29 = icmp eq i32 %28, 5
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.BMOpSlot, ptr %26, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !57
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @copy_m3_m4(ptr noundef %2, ptr noundef nonnull %32) #15
  br label %36

35:                                               ; preds = %30
  tail call void @unit_m3(ptr noundef %2) #15
  br label %36

36:                                               ; preds = %34, %35, %23
  ret void
}

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @unit_m3(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define dso_local void @BMO_slot_ptr_set(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 {
  %4 = load ptr, ptr %0, align 8, !tbaa !89
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %3, %12
  %7 = phi ptr [ %15, %12 ], [ %4, %3 ]
  %8 = phi i32 [ %14, %12 ], [ 0, %3 ]
  %9 = phi ptr [ %13, %12 ], [ %0, %3 ]
  %10 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %7, i64 noundef 32) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.BMOpSlot, ptr %9, i64 1
  %14 = add nuw nsw i32 %8, 1
  %15 = load ptr, ptr %13, align 8, !tbaa !89
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %6, !llvm.loop !97

17:                                               ; preds = %12, %6, %3
  %18 = phi i32 [ -1, %3 ], [ %8, %6 ], [ -1, %12 ]
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load ptr, ptr @stderr, align 8, !tbaa !80
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef %1) #17
  br label %23

23:                                               ; preds = %17, %20
  %24 = zext nneg i32 %18 to i64
  %25 = getelementptr inbounds %struct.BMOpSlot, ptr %0, i64 %24
  %26 = select i1 %19, ptr null, ptr %25
  %27 = getelementptr inbounds %struct.BMOpSlot, ptr %26, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !91
  %29 = icmp eq i32 %28, 4
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.BMOpSlot, ptr %26, i64 0, i32 4
  store ptr %2, ptr %31, align 8, !tbaa !57
  br label %32

32:                                               ; preds = %23, %30
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @BMO_slot_vec_set(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #6 {
  %4 = load ptr, ptr %0, align 8, !tbaa !89
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %3, %12
  %7 = phi ptr [ %15, %12 ], [ %4, %3 ]
  %8 = phi i32 [ %14, %12 ], [ 0, %3 ]
  %9 = phi ptr [ %13, %12 ], [ %0, %3 ]
  %10 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %7, i64 noundef 32) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.BMOpSlot, ptr %9, i64 1
  %14 = add nuw nsw i32 %8, 1
  %15 = load ptr, ptr %13, align 8, !tbaa !89
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %6, !llvm.loop !97

17:                                               ; preds = %12, %6, %3
  %18 = phi i32 [ -1, %3 ], [ %8, %6 ], [ -1, %12 ]
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load ptr, ptr @stderr, align 8, !tbaa !80
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef %1) #17
  br label %23

23:                                               ; preds = %17, %20
  %24 = zext nneg i32 %18 to i64
  %25 = getelementptr inbounds %struct.BMOpSlot, ptr %0, i64 %24
  %26 = select i1 %19, ptr null, ptr %25
  %27 = getelementptr inbounds %struct.BMOpSlot, ptr %26, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !91
  %29 = icmp eq i32 %28, 8
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.BMOpSlot, ptr %26, i64 0, i32 4
  %32 = load float, ptr %2, align 4, !tbaa !110
  store float %32, ptr %31, align 4, !tbaa !110
  %33 = getelementptr inbounds float, ptr %2, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !110
  %35 = getelementptr inbounds i8, ptr %26, i64 28
  store float %34, ptr %35, align 4, !tbaa !110
  %36 = getelementptr inbounds float, ptr %2, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !110
  %38 = getelementptr inbounds %struct.BMOpSlot, ptr %26, i64 0, i32 4, i32 1
  store float %37, ptr %38, align 4, !tbaa !110
  br label %39

39:                                               ; preds = %23, %30
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local float @BMO_slot_float_get(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = load ptr, ptr %0, align 8, !tbaa !89
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2, %11
  %6 = phi ptr [ %14, %11 ], [ %3, %2 ]
  %7 = phi i32 [ %13, %11 ], [ 0, %2 ]
  %8 = phi ptr [ %12, %11 ], [ %0, %2 ]
  %9 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %6, i64 noundef 32) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.BMOpSlot, ptr %8, i64 1
  %13 = add nuw nsw i32 %7, 1
  %14 = load ptr, ptr %12, align 8, !tbaa !89
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5, !llvm.loop !97

16:                                               ; preds = %11, %5, %2
  %17 = phi i32 [ -1, %2 ], [ %7, %5 ], [ -1, %11 ]
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load ptr, ptr @stderr, align 8, !tbaa !80
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef %1) #17
  br label %22

22:                                               ; preds = %16, %19
  %23 = zext nneg i32 %17 to i64
  %24 = getelementptr inbounds %struct.BMOpSlot, ptr %0, i64 %23
  %25 = select i1 %18, ptr null, ptr %24
  %26 = getelementptr inbounds %struct.BMOpSlot, ptr %25, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !91
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.BMOpSlot, ptr %25, i64 0, i32 4
  %31 = load float, ptr %30, align 8, !tbaa !57
  br label %32

32:                                               ; preds = %22, %29
  %33 = phi float [ %31, %29 ], [ 0.000000e+00, %22 ]
  ret float %33
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @BMO_slot_int_get(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = load ptr, ptr %0, align 8, !tbaa !89
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2, %11
  %6 = phi ptr [ %14, %11 ], [ %3, %2 ]
  %7 = phi i32 [ %13, %11 ], [ 0, %2 ]
  %8 = phi ptr [ %12, %11 ], [ %0, %2 ]
  %9 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %6, i64 noundef 32) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.BMOpSlot, ptr %8, i64 1
  %13 = add nuw nsw i32 %7, 1
  %14 = load ptr, ptr %12, align 8, !tbaa !89
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5, !llvm.loop !97

16:                                               ; preds = %11, %5, %2
  %17 = phi i32 [ -1, %2 ], [ %7, %5 ], [ -1, %11 ]
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load ptr, ptr @stderr, align 8, !tbaa !80
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef %1) #17
  br label %22

22:                                               ; preds = %16, %19
  %23 = zext nneg i32 %17 to i64
  %24 = getelementptr inbounds %struct.BMOpSlot, ptr %0, i64 %23
  %25 = select i1 %18, ptr null, ptr %24
  %26 = getelementptr inbounds %struct.BMOpSlot, ptr %25, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !91
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.BMOpSlot, ptr %25, i64 0, i32 4
  %31 = load i32, ptr %30, align 8, !tbaa !57
  br label %32

32:                                               ; preds = %22, %29
  %33 = phi i32 [ %31, %29 ], [ 0, %22 ]
  ret i32 %33
}

; Function Attrs: nofree nounwind uwtable
define dso_local zeroext i8 @BMO_slot_bool_get(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = load ptr, ptr %0, align 8, !tbaa !89
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2, %11
  %6 = phi ptr [ %14, %11 ], [ %3, %2 ]
  %7 = phi i32 [ %13, %11 ], [ 0, %2 ]
  %8 = phi ptr [ %12, %11 ], [ %0, %2 ]
  %9 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %6, i64 noundef 32) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.BMOpSlot, ptr %8, i64 1
  %13 = add nuw nsw i32 %7, 1
  %14 = load ptr, ptr %12, align 8, !tbaa !89
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5, !llvm.loop !97

16:                                               ; preds = %11, %5, %2
  %17 = phi i32 [ -1, %2 ], [ %7, %5 ], [ -1, %11 ]
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load ptr, ptr @stderr, align 8, !tbaa !80
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef %1) #17
  br label %22

22:                                               ; preds = %16, %19
  %23 = zext nneg i32 %17 to i64
  %24 = getelementptr inbounds %struct.BMOpSlot, ptr %0, i64 %23
  %25 = select i1 %18, ptr null, ptr %24
  %26 = getelementptr inbounds %struct.BMOpSlot, ptr %25, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !91
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.BMOpSlot, ptr %25, i64 0, i32 4
  %31 = load i32, ptr %30, align 8, !tbaa !57
  %32 = trunc i32 %31 to i8
  br label %33

33:                                               ; preds = %22, %29
  %34 = phi i8 [ %32, %29 ], [ 0, %22 ]
  ret i8 %34
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BMO_slot_as_arrayN(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #1 {
  %4 = load ptr, ptr %0, align 8, !tbaa !89
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %3, %12
  %7 = phi ptr [ %15, %12 ], [ %4, %3 ]
  %8 = phi i32 [ %14, %12 ], [ 0, %3 ]
  %9 = phi ptr [ %13, %12 ], [ %0, %3 ]
  %10 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %7, i64 noundef 32) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.BMOpSlot, ptr %9, i64 1
  %14 = add nuw nsw i32 %8, 1
  %15 = load ptr, ptr %13, align 8, !tbaa !89
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %6, !llvm.loop !97

17:                                               ; preds = %12, %6, %3
  %18 = phi i32 [ -1, %3 ], [ %8, %6 ], [ -1, %12 ]
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load ptr, ptr @stderr, align 8, !tbaa !80
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef %1) #17
  br label %23

23:                                               ; preds = %17, %20
  %24 = zext nneg i32 %18 to i64
  %25 = getelementptr inbounds %struct.BMOpSlot, ptr %0, i64 %24
  %26 = select i1 %19, ptr null, ptr %25
  %27 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !80
  %28 = getelementptr inbounds %struct.BMOpSlot, ptr %26, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !98
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 3
  %32 = tail call ptr %27(i64 noundef %31, ptr noundef nonnull @__func__.BMO_slot_as_arrayN) #15
  %33 = getelementptr inbounds %struct.BMOpSlot, ptr %26, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !57
  %35 = load i32, ptr %28, align 8, !tbaa !98
  %36 = sext i32 %35 to i64
  %37 = shl nsw i64 %36, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %32, ptr align 8 %34, i64 %37, i1 false)
  %38 = load i32, ptr %28, align 8, !tbaa !98
  store i32 %38, ptr %2, align 4, !tbaa !79
  ret ptr %32
}

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @BMO_slot_ptr_get(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = load ptr, ptr %0, align 8, !tbaa !89
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2, %11
  %6 = phi ptr [ %14, %11 ], [ %3, %2 ]
  %7 = phi i32 [ %13, %11 ], [ 0, %2 ]
  %8 = phi ptr [ %12, %11 ], [ %0, %2 ]
  %9 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %6, i64 noundef 32) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.BMOpSlot, ptr %8, i64 1
  %13 = add nuw nsw i32 %7, 1
  %14 = load ptr, ptr %12, align 8, !tbaa !89
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5, !llvm.loop !97

16:                                               ; preds = %11, %5, %2
  %17 = phi i32 [ -1, %2 ], [ %7, %5 ], [ -1, %11 ]
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load ptr, ptr @stderr, align 8, !tbaa !80
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef %1) #17
  br label %22

22:                                               ; preds = %16, %19
  %23 = zext nneg i32 %17 to i64
  %24 = getelementptr inbounds %struct.BMOpSlot, ptr %0, i64 %23
  %25 = select i1 %18, ptr null, ptr %24
  %26 = getelementptr inbounds %struct.BMOpSlot, ptr %25, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !91
  %28 = icmp eq i32 %27, 4
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.BMOpSlot, ptr %25, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !57
  br label %32

32:                                               ; preds = %22, %29
  %33 = phi ptr [ %31, %29 ], [ null, %22 ]
  ret ptr %33
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @BMO_slot_vec_get(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #6 {
  %4 = load ptr, ptr %0, align 8, !tbaa !89
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %3, %12
  %7 = phi ptr [ %15, %12 ], [ %4, %3 ]
  %8 = phi i32 [ %14, %12 ], [ 0, %3 ]
  %9 = phi ptr [ %13, %12 ], [ %0, %3 ]
  %10 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %7, i64 noundef 32) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.BMOpSlot, ptr %9, i64 1
  %14 = add nuw nsw i32 %8, 1
  %15 = load ptr, ptr %13, align 8, !tbaa !89
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %6, !llvm.loop !97

17:                                               ; preds = %12, %6, %3
  %18 = phi i32 [ -1, %3 ], [ %8, %6 ], [ -1, %12 ]
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load ptr, ptr @stderr, align 8, !tbaa !80
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef %1) #17
  br label %23

23:                                               ; preds = %17, %20
  %24 = zext nneg i32 %18 to i64
  %25 = getelementptr inbounds %struct.BMOpSlot, ptr %0, i64 %24
  %26 = select i1 %19, ptr null, ptr %25
  %27 = getelementptr inbounds %struct.BMOpSlot, ptr %26, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !91
  %29 = icmp eq i32 %28, 8
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.BMOpSlot, ptr %26, i64 0, i32 4
  %32 = load float, ptr %31, align 4, !tbaa !110
  store float %32, ptr %2, align 4, !tbaa !110
  %33 = getelementptr inbounds i8, ptr %26, i64 28
  %34 = load float, ptr %33, align 4, !tbaa !110
  %35 = getelementptr inbounds float, ptr %2, i64 1
  store float %34, ptr %35, align 4, !tbaa !110
  %36 = getelementptr inbounds %struct.BMOpSlot, ptr %26, i64 0, i32 4, i32 1
  %37 = load float, ptr %36, align 4, !tbaa !110
  %38 = getelementptr inbounds float, ptr %2, i64 2
  store float %37, ptr %38, align 4, !tbaa !110
  br label %39

39:                                               ; preds = %23, %30
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BMO_mesh_enabled_flag_count(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i16 noundef signext %2) local_unnamed_addr #1 {
  %4 = tail call fastcc i32 @bmo_mesh_flag_count(ptr noundef %0, i8 noundef zeroext %1, i16 noundef signext %2, i8 noundef zeroext 1)
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @bmo_mesh_flag_count(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i16 noundef signext %2, i8 noundef zeroext %3) unnamed_addr #1 {
  %5 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #15
  %6 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %7 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %8 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %9 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %10 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %11 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %12 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %13 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %14 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %15 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %16 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %17 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %18 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %19 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %20 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %21 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %22 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %23 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %24 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %25 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %26 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %27 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %28 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %29 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %30 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %31 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %32 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %33 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %34 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %35 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %36 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %37 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %38 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %39 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  br label %40

40:                                               ; preds = %4, %92
  %41 = phi i64 [ 0, %4 ], [ %94, %92 ]
  %42 = phi i32 [ 0, %4 ], [ %93, %92 ]
  %43 = getelementptr inbounds [3 x i8], ptr @__const.bmo_mesh_flag_count.flag_types, i64 0, i64 %41
  %44 = load i8, ptr %43, align 1, !tbaa !57
  %45 = and i8 %44, %1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %92, label %47

47:                                               ; preds = %40
  %48 = getelementptr inbounds [3 x i8], ptr @__const.bmo_mesh_flag_count.iter_types, i64 0, i64 %41
  %49 = load i8, ptr %48, align 1, !tbaa !57
  store i8 %49, ptr %6, align 4, !tbaa !52
  switch i8 %49, label %70 [
    i8 1, label %50
    i8 2, label %52
    i8 3, label %54
    i8 4, label %56
    i8 5, label %57
    i8 6, label %58
    i8 7, label %59
    i8 8, label %60
    i8 9, label %61
    i8 10, label %62
    i8 11, label %63
    i8 13, label %64
    i8 14, label %65
  ]

50:                                               ; preds = %47
  store ptr @bmiter__elem_of_mesh_begin, ptr %33, align 8, !tbaa !54
  store ptr @bmiter__elem_of_mesh_step, ptr %34, align 8, !tbaa !55
  %51 = load ptr, ptr %35, align 8, !tbaa !56
  store ptr %51, ptr %5, align 8, !tbaa !57
  br label %66

52:                                               ; preds = %47
  store ptr @bmiter__elem_of_mesh_begin, ptr %30, align 8, !tbaa !54
  store ptr @bmiter__elem_of_mesh_step, ptr %31, align 8, !tbaa !55
  %53 = load ptr, ptr %32, align 8, !tbaa !66
  store ptr %53, ptr %5, align 8, !tbaa !57
  br label %66

54:                                               ; preds = %47
  store ptr @bmiter__elem_of_mesh_begin, ptr %27, align 8, !tbaa !54
  store ptr @bmiter__elem_of_mesh_step, ptr %28, align 8, !tbaa !55
  %55 = load ptr, ptr %29, align 8, !tbaa !68
  store ptr %55, ptr %5, align 8, !tbaa !57
  br label %66

56:                                               ; preds = %47
  store ptr @bmiter__edge_of_vert_begin, ptr %25, align 8, !tbaa !54
  store ptr @bmiter__edge_of_vert_step, ptr %26, align 8, !tbaa !55
  store ptr null, ptr %5, align 8, !tbaa !57
  br label %66

57:                                               ; preds = %47
  store ptr @bmiter__face_of_vert_begin, ptr %23, align 8, !tbaa !54
  store ptr @bmiter__face_of_vert_step, ptr %24, align 8, !tbaa !55
  store ptr null, ptr %5, align 8, !tbaa !57
  br label %66

58:                                               ; preds = %47
  store ptr @bmiter__loop_of_vert_begin, ptr %21, align 8, !tbaa !54
  store ptr @bmiter__loop_of_vert_step, ptr %22, align 8, !tbaa !55
  store ptr null, ptr %5, align 8, !tbaa !57
  br label %66

59:                                               ; preds = %47
  store ptr @bmiter__vert_of_edge_begin, ptr %19, align 8, !tbaa !54
  store ptr @bmiter__vert_of_edge_step, ptr %20, align 8, !tbaa !55
  store ptr null, ptr %5, align 8, !tbaa !57
  br label %66

60:                                               ; preds = %47
  store ptr @bmiter__face_of_edge_begin, ptr %17, align 8, !tbaa !54
  store ptr @bmiter__face_of_edge_step, ptr %18, align 8, !tbaa !55
  store ptr null, ptr %5, align 8, !tbaa !57
  br label %66

61:                                               ; preds = %47
  store ptr @bmiter__vert_of_face_begin, ptr %15, align 8, !tbaa !54
  store ptr @bmiter__vert_of_face_step, ptr %16, align 8, !tbaa !55
  store ptr null, ptr %5, align 8, !tbaa !57
  br label %66

62:                                               ; preds = %47
  store ptr @bmiter__edge_of_face_begin, ptr %13, align 8, !tbaa !54
  store ptr @bmiter__edge_of_face_step, ptr %14, align 8, !tbaa !55
  store ptr null, ptr %5, align 8, !tbaa !57
  br label %66

63:                                               ; preds = %47
  store ptr @bmiter__loop_of_face_begin, ptr %11, align 8, !tbaa !54
  store ptr @bmiter__loop_of_face_step, ptr %12, align 8, !tbaa !55
  store ptr null, ptr %5, align 8, !tbaa !57
  br label %66

64:                                               ; preds = %47
  store ptr @bmiter__loop_of_loop_begin, ptr %9, align 8, !tbaa !54
  store ptr @bmiter__loop_of_loop_step, ptr %10, align 8, !tbaa !55
  store ptr null, ptr %5, align 8, !tbaa !57
  br label %66

65:                                               ; preds = %47
  store ptr @bmiter__loop_of_edge_begin, ptr %7, align 8, !tbaa !54
  store ptr @bmiter__loop_of_edge_step, ptr %8, align 8, !tbaa !55
  store ptr null, ptr %5, align 8, !tbaa !57
  br label %66

66:                                               ; preds = %65, %64, %63, %62, %61, %60, %59, %58, %57, %56, %54, %52, %50
  %67 = load ptr, ptr %36, align 8, !tbaa !54
  call void %67(ptr noundef nonnull %5) #15
  %68 = load ptr, ptr %37, align 8, !tbaa !55
  %69 = call ptr %68(ptr noundef nonnull %5) #15
  br label %70

70:                                               ; preds = %47, %66
  %71 = phi ptr [ %69, %66 ], [ null, %47 ]
  %72 = icmp eq ptr %71, null
  br i1 %72, label %92, label %73

73:                                               ; preds = %70, %73
  %74 = phi ptr [ %90, %73 ], [ %71, %70 ]
  %75 = phi i32 [ %88, %73 ], [ %42, %70 ]
  %76 = getelementptr inbounds %struct.BMElemF, ptr %74, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !58
  %78 = load i32, ptr %38, align 8, !tbaa !40
  %79 = sext i32 %78 to i64
  %80 = getelementptr %struct.BMFlagLayer, ptr %77, i64 %79
  %81 = getelementptr %struct.BMFlagLayer, ptr %80, i64 -1
  %82 = load i16, ptr %81, align 2, !tbaa !112
  %83 = and i16 %82, %2
  %84 = icmp ne i16 %83, 0
  %85 = zext i1 %84 to i8
  %86 = icmp eq i8 %85, %3
  %87 = zext i1 %86 to i32
  %88 = add nsw i32 %75, %87
  %89 = load ptr, ptr %39, align 8, !tbaa !55
  %90 = call ptr %89(ptr noundef nonnull %5) #15
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %73, !llvm.loop !114

92:                                               ; preds = %73, %70, %40
  %93 = phi i32 [ %42, %40 ], [ %42, %70 ], [ %88, %73 ]
  %94 = add nuw nsw i64 %41, 1
  %95 = icmp eq i64 %94, 3
  br i1 %95, label %96, label %40, !llvm.loop !115

96:                                               ; preds = %92
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #15
  ret i32 %93
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BMO_mesh_disabled_flag_count(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i16 noundef signext %2) local_unnamed_addr #1 {
  %4 = tail call fastcc i32 @bmo_mesh_flag_count(ptr noundef %0, i8 noundef zeroext %1, i16 noundef signext %2, i8 noundef zeroext 0)
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @BMO_mesh_flag_disable_all(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i8 noundef zeroext %2, i16 noundef signext %3) local_unnamed_addr #1 {
  %5 = alloca %struct.BMIter, align 8
  %6 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %7 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %8 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %9 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %10 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %11 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %12 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %13 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %14 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %15 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %16 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %17 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %18 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %19 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %20 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %21 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %22 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %23 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %24 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %25 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %26 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %27 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %28 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %29 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %30 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %31 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %32 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %33 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %34 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %35 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %36 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %37 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %38 = xor i16 %3, -1
  %39 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %40 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  br label %41

41:                                               ; preds = %4, %87
  %42 = phi i64 [ 0, %4 ], [ %88, %87 ]
  %43 = getelementptr inbounds [3 x i8], ptr @__const.bmo_mesh_flag_count.flag_types, i64 0, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !57
  %45 = and i8 %44, %2
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %87, label %47

47:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #15
  %48 = getelementptr inbounds [3 x i8], ptr @__const.bmo_mesh_flag_count.iter_types, i64 0, i64 %42
  %49 = load i8, ptr %48, align 1, !tbaa !57
  store i8 %49, ptr %6, align 4, !tbaa !52
  switch i8 %49, label %70 [
    i8 1, label %50
    i8 2, label %52
    i8 3, label %54
    i8 4, label %56
    i8 5, label %57
    i8 6, label %58
    i8 7, label %59
    i8 8, label %60
    i8 9, label %61
    i8 10, label %62
    i8 11, label %63
    i8 13, label %64
    i8 14, label %65
  ]

50:                                               ; preds = %47
  store ptr @bmiter__elem_of_mesh_begin, ptr %33, align 8, !tbaa !54
  store ptr @bmiter__elem_of_mesh_step, ptr %34, align 8, !tbaa !55
  %51 = load ptr, ptr %35, align 8, !tbaa !56
  store ptr %51, ptr %5, align 8, !tbaa !57
  br label %66

52:                                               ; preds = %47
  store ptr @bmiter__elem_of_mesh_begin, ptr %30, align 8, !tbaa !54
  store ptr @bmiter__elem_of_mesh_step, ptr %31, align 8, !tbaa !55
  %53 = load ptr, ptr %32, align 8, !tbaa !66
  store ptr %53, ptr %5, align 8, !tbaa !57
  br label %66

54:                                               ; preds = %47
  store ptr @bmiter__elem_of_mesh_begin, ptr %27, align 8, !tbaa !54
  store ptr @bmiter__elem_of_mesh_step, ptr %28, align 8, !tbaa !55
  %55 = load ptr, ptr %29, align 8, !tbaa !68
  store ptr %55, ptr %5, align 8, !tbaa !57
  br label %66

56:                                               ; preds = %47
  store ptr @bmiter__edge_of_vert_begin, ptr %25, align 8, !tbaa !54
  store ptr @bmiter__edge_of_vert_step, ptr %26, align 8, !tbaa !55
  store ptr null, ptr %5, align 8, !tbaa !57
  br label %66

57:                                               ; preds = %47
  store ptr @bmiter__face_of_vert_begin, ptr %23, align 8, !tbaa !54
  store ptr @bmiter__face_of_vert_step, ptr %24, align 8, !tbaa !55
  store ptr null, ptr %5, align 8, !tbaa !57
  br label %66

58:                                               ; preds = %47
  store ptr @bmiter__loop_of_vert_begin, ptr %21, align 8, !tbaa !54
  store ptr @bmiter__loop_of_vert_step, ptr %22, align 8, !tbaa !55
  store ptr null, ptr %5, align 8, !tbaa !57
  br label %66

59:                                               ; preds = %47
  store ptr @bmiter__vert_of_edge_begin, ptr %19, align 8, !tbaa !54
  store ptr @bmiter__vert_of_edge_step, ptr %20, align 8, !tbaa !55
  store ptr null, ptr %5, align 8, !tbaa !57
  br label %66

60:                                               ; preds = %47
  store ptr @bmiter__face_of_edge_begin, ptr %17, align 8, !tbaa !54
  store ptr @bmiter__face_of_edge_step, ptr %18, align 8, !tbaa !55
  store ptr null, ptr %5, align 8, !tbaa !57
  br label %66

61:                                               ; preds = %47
  store ptr @bmiter__vert_of_face_begin, ptr %15, align 8, !tbaa !54
  store ptr @bmiter__vert_of_face_step, ptr %16, align 8, !tbaa !55
  store ptr null, ptr %5, align 8, !tbaa !57
  br label %66

62:                                               ; preds = %47
  store ptr @bmiter__edge_of_face_begin, ptr %13, align 8, !tbaa !54
  store ptr @bmiter__edge_of_face_step, ptr %14, align 8, !tbaa !55
  store ptr null, ptr %5, align 8, !tbaa !57
  br label %66

63:                                               ; preds = %47
  store ptr @bmiter__loop_of_face_begin, ptr %11, align 8, !tbaa !54
  store ptr @bmiter__loop_of_face_step, ptr %12, align 8, !tbaa !55
  store ptr null, ptr %5, align 8, !tbaa !57
  br label %66

64:                                               ; preds = %47
  store ptr @bmiter__loop_of_loop_begin, ptr %9, align 8, !tbaa !54
  store ptr @bmiter__loop_of_loop_step, ptr %10, align 8, !tbaa !55
  store ptr null, ptr %5, align 8, !tbaa !57
  br label %66

65:                                               ; preds = %47
  store ptr @bmiter__loop_of_edge_begin, ptr %7, align 8, !tbaa !54
  store ptr @bmiter__loop_of_edge_step, ptr %8, align 8, !tbaa !55
  store ptr null, ptr %5, align 8, !tbaa !57
  br label %66

66:                                               ; preds = %65, %64, %63, %62, %61, %60, %59, %58, %57, %56, %54, %52, %50
  %67 = load ptr, ptr %36, align 8, !tbaa !54
  call void %67(ptr noundef nonnull %5) #15
  %68 = load ptr, ptr %37, align 8, !tbaa !55
  %69 = call ptr %68(ptr noundef nonnull %5) #15
  br label %70

70:                                               ; preds = %47, %66
  %71 = phi ptr [ %69, %66 ], [ null, %47 ]
  %72 = icmp eq ptr %71, null
  br i1 %72, label %86, label %73

73:                                               ; preds = %70, %73
  %74 = phi ptr [ %84, %73 ], [ %71, %70 ]
  %75 = getelementptr inbounds %struct.BMElemF, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !58
  %77 = load i32, ptr %39, align 8, !tbaa !40
  %78 = sext i32 %77 to i64
  %79 = getelementptr %struct.BMFlagLayer, ptr %76, i64 %78
  %80 = getelementptr %struct.BMFlagLayer, ptr %79, i64 -1
  %81 = load i16, ptr %80, align 2, !tbaa !112
  %82 = and i16 %81, %38
  store i16 %82, ptr %80, align 2, !tbaa !112
  %83 = load ptr, ptr %40, align 8, !tbaa !55
  %84 = call ptr %83(ptr noundef nonnull %5) #15
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %73, !llvm.loop !116

86:                                               ; preds = %73, %70
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #15
  br label %87

87:                                               ; preds = %41, %86
  %88 = add nuw nsw i64 %42, 1
  %89 = icmp eq i64 %88, 3
  br i1 %89, label %90, label %41, !llvm.loop !117

90:                                               ; preds = %87
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BMO_mesh_selected_remap(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4) local_unnamed_addr #1 {
  %6 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32
  %7 = load ptr, ptr %6, align 8, !tbaa !118
  %8 = icmp eq ptr %7, null
  br i1 %8, label %41, label %9

9:                                                ; preds = %5
  %10 = icmp eq i8 %4, 0
  br label %11

11:                                               ; preds = %9, %39
  %12 = phi ptr [ %7, %9 ], [ %13, %39 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !119
  %14 = getelementptr inbounds %struct.BMEditSelection, ptr %12, i64 0, i32 3
  %15 = load i8, ptr %14, align 8, !tbaa !121
  switch i8 %15, label %17 [
    i8 1, label %18
    i8 2, label %16
  ]

16:                                               ; preds = %11
  br label %18

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %11, %17, %16
  %19 = phi ptr [ %3, %17 ], [ %2, %16 ], [ %1, %11 ]
  %20 = getelementptr inbounds %struct.BMEditSelection, ptr %12, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !122
  %22 = getelementptr inbounds %struct.BMOpSlot, ptr %19, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !57
  %24 = tail call ptr @BLI_ghash_lookup_p(ptr noundef %23, ptr noundef %21) #15
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %18
  %27 = load ptr, ptr %24, align 8, !tbaa !80
  br label %28

28:                                               ; preds = %18, %26
  %29 = phi ptr [ %27, %26 ], [ null, %18 ]
  store ptr %29, ptr %20, align 8, !tbaa !122
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  br i1 %10, label %39, label %32

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.BMHeader, ptr %29, i64 0, i32 3
  %34 = load i8, ptr %33, align 1, !tbaa !123
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32, %28
  tail call void @BLI_remlink(ptr noundef nonnull %6, ptr noundef nonnull %12) #15
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !80
  tail call void %38(ptr noundef nonnull %12) #15
  br label %39

39:                                               ; preds = %31, %32, %37
  %40 = icmp eq ptr %13, null
  br i1 %40, label %41, label %11, !llvm.loop !124

41:                                               ; preds = %39, %5
  %42 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 33
  %43 = load ptr, ptr %42, align 8, !tbaa !125
  %44 = icmp eq ptr %43, null
  br i1 %44, label %56, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.BMOpSlot, ptr %3, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !57
  %48 = tail call ptr @BLI_ghash_lookup_p(ptr noundef %47, ptr noundef nonnull %43) #15
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = load ptr, ptr %48, align 8, !tbaa !80
  br label %52

52:                                               ; preds = %45, %50
  %53 = phi ptr [ %51, %50 ], [ null, %45 ]
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  store ptr %53, ptr %42, align 8, !tbaa !125
  br label %56

56:                                               ; preds = %52, %55, %41
  ret void
}

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @BMO_slot_buffer_count(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = load ptr, ptr %0, align 8, !tbaa !89
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2, %11
  %6 = phi ptr [ %14, %11 ], [ %3, %2 ]
  %7 = phi i32 [ %13, %11 ], [ 0, %2 ]
  %8 = phi ptr [ %12, %11 ], [ %0, %2 ]
  %9 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %6, i64 noundef 32) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.BMOpSlot, ptr %8, i64 1
  %13 = add nuw nsw i32 %7, 1
  %14 = load ptr, ptr %12, align 8, !tbaa !89
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5, !llvm.loop !97

16:                                               ; preds = %11, %5, %2
  %17 = phi i32 [ -1, %2 ], [ %7, %5 ], [ -1, %11 ]
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load ptr, ptr @stderr, align 8, !tbaa !80
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef %1) #17
  br label %22

22:                                               ; preds = %16, %19
  %23 = zext nneg i32 %17 to i64
  %24 = getelementptr inbounds %struct.BMOpSlot, ptr %0, i64 %23
  %25 = select i1 %18, ptr null, ptr %24
  %26 = getelementptr inbounds %struct.BMOpSlot, ptr %25, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !91
  %28 = icmp eq i32 %27, 9
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.BMOpSlot, ptr %25, i64 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !98
  br label %32

32:                                               ; preds = %22, %29
  %33 = phi i32 [ %31, %29 ], [ 0, %22 ]
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BMO_slot_map_count(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr %0, align 8, !tbaa !89
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2, %11
  %6 = phi ptr [ %14, %11 ], [ %3, %2 ]
  %7 = phi i32 [ %13, %11 ], [ 0, %2 ]
  %8 = phi ptr [ %12, %11 ], [ %0, %2 ]
  %9 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %6, i64 noundef 32) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.BMOpSlot, ptr %8, i64 1
  %13 = add nuw nsw i32 %7, 1
  %14 = load ptr, ptr %12, align 8, !tbaa !89
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5, !llvm.loop !97

16:                                               ; preds = %11, %5, %2
  %17 = phi i32 [ -1, %2 ], [ %7, %5 ], [ -1, %11 ]
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load ptr, ptr @stderr, align 8, !tbaa !80
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef %1) #17
  br label %22

22:                                               ; preds = %16, %19
  %23 = zext nneg i32 %17 to i64
  %24 = getelementptr inbounds %struct.BMOpSlot, ptr %0, i64 %23
  %25 = select i1 %18, ptr null, ptr %24
  %26 = getelementptr inbounds %struct.BMOpSlot, ptr %25, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !57
  %28 = tail call i32 @BLI_ghash_size(ptr noundef %27) #15
  ret i32 %28
}

declare i32 @BLI_ghash_size(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @BMO_slot_map_insert(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.BMOpSlot, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  tail call void @BLI_ghash_insert(ptr noundef %6, ptr noundef %2, ptr noundef %3) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BMO_slot_map_to_flag(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3, i16 noundef signext %4) local_unnamed_addr #1 {
  %6 = alloca %struct.GHashIterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #15
  %7 = load ptr, ptr %1, align 8, !tbaa !89
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %5, %15
  %10 = phi ptr [ %18, %15 ], [ %7, %5 ]
  %11 = phi i32 [ %17, %15 ], [ 0, %5 ]
  %12 = phi ptr [ %16, %15 ], [ %1, %5 ]
  %13 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %10, i64 noundef 32) #16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.BMOpSlot, ptr %12, i64 1
  %17 = add nuw nsw i32 %11, 1
  %18 = load ptr, ptr %16, align 8, !tbaa !89
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %9, !llvm.loop !97

20:                                               ; preds = %15, %9, %5
  %21 = phi i32 [ -1, %5 ], [ %11, %9 ], [ -1, %15 ]
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load ptr, ptr @stderr, align 8, !tbaa !80
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef %2) #17
  br label %26

26:                                               ; preds = %20, %23
  %27 = zext nneg i32 %21 to i64
  %28 = getelementptr inbounds %struct.BMOpSlot, ptr %1, i64 %27
  %29 = select i1 %22, ptr null, ptr %28
  %30 = getelementptr inbounds %struct.BMOpSlot, ptr %29, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !57
  call void @BLI_ghashIterator_init(ptr noundef nonnull %6, ptr noundef %31) #15
  %32 = getelementptr inbounds %struct.GHashIterator, ptr %6, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !103
  %34 = icmp eq ptr %33, null
  br i1 %34, label %57, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %37

37:                                               ; preds = %35, %54
  %38 = phi ptr [ %33, %35 ], [ %55, %54 ]
  %39 = getelementptr inbounds %struct._gh_Entry, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !105
  %41 = getelementptr inbounds %struct.BMHeader, ptr %40, i64 0, i32 2
  %42 = load i8, ptr %41, align 4, !tbaa !126
  %43 = and i8 %42, %3
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.BMElemF, ptr %40, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !58
  %48 = load i32, ptr %36, align 8, !tbaa !40
  %49 = sext i32 %48 to i64
  %50 = getelementptr %struct.BMFlagLayer, ptr %47, i64 %49
  %51 = getelementptr %struct.BMFlagLayer, ptr %50, i64 -1
  %52 = load i16, ptr %51, align 2, !tbaa !112
  %53 = or i16 %52, %4
  store i16 %53, ptr %51, align 2, !tbaa !112
  br label %54

54:                                               ; preds = %37, %45
  call void @BLI_ghashIterator_step(ptr noundef nonnull %6) #15
  %55 = load ptr, ptr %32, align 8, !tbaa !103
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %37, !llvm.loop !127

57:                                               ; preds = %54, %26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BMO_slot_buffer_alloc(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = load ptr, ptr %1, align 8, !tbaa !89
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %4, %13
  %8 = phi ptr [ %16, %13 ], [ %5, %4 ]
  %9 = phi i32 [ %15, %13 ], [ 0, %4 ]
  %10 = phi ptr [ %14, %13 ], [ %1, %4 ]
  %11 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %8, i64 noundef 32) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.BMOpSlot, ptr %10, i64 1
  %15 = add nuw nsw i32 %9, 1
  %16 = load ptr, ptr %14, align 8, !tbaa !89
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %7, !llvm.loop !97

18:                                               ; preds = %13, %7, %4
  %19 = phi i32 [ -1, %4 ], [ %9, %7 ], [ -1, %13 ]
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load ptr, ptr @stderr, align 8, !tbaa !80
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef %2) #17
  br label %24

24:                                               ; preds = %18, %21
  %25 = zext nneg i32 %19 to i64
  %26 = getelementptr inbounds %struct.BMOpSlot, ptr %1, i64 %25
  %27 = select i1 %20, ptr null, ptr %26
  %28 = getelementptr inbounds %struct.BMOpSlot, ptr %27, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !91
  %30 = icmp eq i32 %29, 9
  br i1 %30, label %31, label %46

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.BMOpSlot, ptr %27, i64 0, i32 3
  store i32 %3, ptr %32, align 8, !tbaa !98
  %33 = icmp eq i32 %3, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.BMOperator, ptr %0, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !95
  %37 = zext nneg i32 %29 to i64
  %38 = getelementptr inbounds [11 x i32], ptr @BMO_OPSLOT_TYPEINFO, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !79
  %40 = mul nsw i32 %39, %3
  %41 = sext i32 %40 to i64
  %42 = tail call ptr @BLI_memarena_alloc(ptr noundef %36, i64 noundef %41) #15
  br label %43

43:                                               ; preds = %31, %34
  %44 = phi ptr [ %42, %34 ], [ null, %31 ]
  %45 = getelementptr inbounds %struct.BMOpSlot, ptr %27, i64 0, i32 4
  store ptr %44, ptr %45, align 8, !tbaa !57
  br label %46

46:                                               ; preds = %24, %43
  %47 = phi ptr [ %44, %43 ], [ null, %24 ]
  ret ptr %47
}

; Function Attrs: nounwind uwtable
define dso_local void @BMO_slot_buffer_from_all(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #1 {
  %6 = alloca %struct.BMIter, align 8
  %7 = load ptr, ptr %2, align 8, !tbaa !89
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %5, %15
  %10 = phi ptr [ %18, %15 ], [ %7, %5 ]
  %11 = phi i32 [ %17, %15 ], [ 0, %5 ]
  %12 = phi ptr [ %16, %15 ], [ %2, %5 ]
  %13 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %10, i64 noundef 32) #16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.BMOpSlot, ptr %12, i64 1
  %17 = add nuw nsw i32 %11, 1
  %18 = load ptr, ptr %16, align 8, !tbaa !89
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %9, !llvm.loop !97

20:                                               ; preds = %15, %9, %5
  %21 = phi i32 [ -1, %5 ], [ %11, %9 ], [ -1, %15 ]
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load ptr, ptr @stderr, align 8, !tbaa !80
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef %3) #17
  br label %26

26:                                               ; preds = %20, %23
  %27 = zext nneg i32 %21 to i64
  %28 = getelementptr inbounds %struct.BMOpSlot, ptr %2, i64 %27
  %29 = select i1 %22, ptr null, ptr %28
  %30 = zext i8 %4 to i32
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %26
  %34 = load i32, ptr %0, align 8, !tbaa !49
  br label %35

35:                                               ; preds = %33, %26
  %36 = phi i32 [ %34, %33 ], [ 0, %26 ]
  %37 = and i32 %30, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !50
  %42 = add nsw i32 %41, %36
  br label %43

43:                                               ; preds = %39, %35
  %44 = phi i32 [ %42, %39 ], [ %36, %35 ]
  %45 = and i32 %30, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %49 = load i32, ptr %48, align 4, !tbaa !51
  %50 = add nsw i32 %49, %44
  br label %51

51:                                               ; preds = %47, %43
  %52 = phi i32 [ %50, %47 ], [ %44, %43 ]
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %127, label %54

54:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #15
  %55 = tail call ptr @BMO_slot_buffer_alloc(ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i32 noundef %52)
  br i1 %32, label %78, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 1, ptr %57, align 4, !tbaa !52
  %58 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %58, align 8, !tbaa !54
  %59 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %59, align 8, !tbaa !55
  %60 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %61 = load ptr, ptr %60, align 8, !tbaa !56
  store ptr %61, ptr %6, align 8, !tbaa !57
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #15
  %62 = load ptr, ptr %59, align 8, !tbaa !55
  %63 = call ptr %62(ptr noundef nonnull %6) #15
  %64 = icmp eq ptr %63, null
  br i1 %64, label %78, label %65

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.BMOpSlot, ptr %29, i64 0, i32 4
  br label %67

67:                                               ; preds = %65, %67
  %68 = phi i64 [ 0, %65 ], [ %72, %67 ]
  %69 = phi ptr [ %63, %65 ], [ %74, %67 ]
  %70 = load ptr, ptr %66, align 8, !tbaa !57
  %71 = getelementptr inbounds ptr, ptr %70, i64 %68
  store ptr %69, ptr %71, align 8, !tbaa !80
  %72 = add nuw i64 %68, 1
  %73 = load ptr, ptr %59, align 8, !tbaa !55
  %74 = call ptr %73(ptr noundef nonnull %6) #15
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %67, !llvm.loop !128

76:                                               ; preds = %67
  %77 = trunc i64 %72 to i32
  br label %78

78:                                               ; preds = %76, %56, %54
  %79 = phi i32 [ 0, %54 ], [ 0, %56 ], [ %77, %76 ]
  br i1 %38, label %103, label %80

80:                                               ; preds = %78
  %81 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 2, ptr %81, align 4, !tbaa !52
  %82 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %82, align 8, !tbaa !54
  %83 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %83, align 8, !tbaa !55
  %84 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %85 = load ptr, ptr %84, align 8, !tbaa !66
  store ptr %85, ptr %6, align 8, !tbaa !57
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #15
  %86 = load ptr, ptr %83, align 8, !tbaa !55
  %87 = call ptr %86(ptr noundef nonnull %6) #15
  %88 = icmp eq ptr %87, null
  br i1 %88, label %103, label %89

89:                                               ; preds = %80
  %90 = getelementptr inbounds %struct.BMOpSlot, ptr %29, i64 0, i32 4
  %91 = zext i32 %79 to i64
  br label %92

92:                                               ; preds = %89, %92
  %93 = phi i64 [ %91, %89 ], [ %97, %92 ]
  %94 = phi ptr [ %87, %89 ], [ %99, %92 ]
  %95 = load ptr, ptr %90, align 8, !tbaa !57
  %96 = getelementptr inbounds ptr, ptr %95, i64 %93
  store ptr %94, ptr %96, align 8, !tbaa !80
  %97 = add nuw i64 %93, 1
  %98 = load ptr, ptr %83, align 8, !tbaa !55
  %99 = call ptr %98(ptr noundef nonnull %6) #15
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %92, !llvm.loop !129

101:                                              ; preds = %92
  %102 = trunc i64 %97 to i32
  br label %103

103:                                              ; preds = %101, %80, %78
  %104 = phi i32 [ %79, %78 ], [ %79, %80 ], [ %102, %101 ]
  br i1 %46, label %126, label %105

105:                                              ; preds = %103
  %106 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 3, ptr %106, align 4, !tbaa !52
  %107 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %107, align 8, !tbaa !54
  %108 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %108, align 8, !tbaa !55
  %109 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %110 = load ptr, ptr %109, align 8, !tbaa !68
  store ptr %110, ptr %6, align 8, !tbaa !57
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #15
  %111 = load ptr, ptr %108, align 8, !tbaa !55
  %112 = call ptr %111(ptr noundef nonnull %6) #15
  %113 = icmp eq ptr %112, null
  br i1 %113, label %126, label %114

114:                                              ; preds = %105
  %115 = getelementptr inbounds %struct.BMOpSlot, ptr %29, i64 0, i32 4
  %116 = sext i32 %104 to i64
  br label %117

117:                                              ; preds = %114, %117
  %118 = phi i64 [ %116, %114 ], [ %122, %117 ]
  %119 = phi ptr [ %112, %114 ], [ %124, %117 ]
  %120 = load ptr, ptr %115, align 8, !tbaa !57
  %121 = getelementptr inbounds ptr, ptr %120, i64 %118
  store ptr %119, ptr %121, align 8, !tbaa !80
  %122 = add i64 %118, 1
  %123 = load ptr, ptr %108, align 8, !tbaa !55
  %124 = call ptr %123(ptr noundef nonnull %6) #15
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %117, !llvm.loop !130

126:                                              ; preds = %117, %105, %103
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #15
  br label %127

127:                                              ; preds = %126, %51
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BMO_slot_buffer_from_enabled_hflag(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #1 {
  tail call fastcc void @bmo_slot_buffer_from_hflag(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @bmo_slot_buffer_from_hflag(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6) unnamed_addr #1 {
  %8 = alloca %struct.BMIter, align 8
  %9 = load ptr, ptr %2, align 8, !tbaa !89
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %7, %17
  %12 = phi ptr [ %20, %17 ], [ %9, %7 ]
  %13 = phi i32 [ %19, %17 ], [ 0, %7 ]
  %14 = phi ptr [ %18, %17 ], [ %2, %7 ]
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %12, i64 noundef 32) #16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.BMOpSlot, ptr %14, i64 1
  %19 = add nuw nsw i32 %13, 1
  %20 = load ptr, ptr %18, align 8, !tbaa !89
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %11, !llvm.loop !97

22:                                               ; preds = %17, %11, %7
  %23 = phi i32 [ -1, %7 ], [ %13, %11 ], [ -1, %17 ]
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load ptr, ptr @stderr, align 8, !tbaa !80
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef %3) #17
  br label %28

28:                                               ; preds = %22, %25
  %29 = zext nneg i32 %23 to i64
  %30 = getelementptr inbounds %struct.BMOpSlot, ptr %2, i64 %29
  %31 = select i1 %24, ptr null, ptr %30
  %32 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %33 = load i32, ptr %32, align 8, !tbaa !34
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  %36 = and i8 %5, 2
  %37 = icmp eq i8 %36, 0
  %38 = and i1 %37, %35
  %39 = zext i1 %38 to i8
  %40 = icmp eq i8 %6, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %28
  %42 = tail call i32 @BM_mesh_elem_hflag_count_enabled(ptr noundef %0, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %39) #15
  br label %45

43:                                               ; preds = %28
  %44 = tail call i32 @BM_mesh_elem_hflag_count_disabled(ptr noundef %0, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %39) #15
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %170, label %48

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #15
  %49 = tail call ptr @BMO_slot_buffer_alloc(ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i32 noundef %46)
  %50 = zext i8 %4 to i32
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %89, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  store i8 1, ptr %54, align 4, !tbaa !52
  %55 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %55, align 8, !tbaa !54
  %56 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %56, align 8, !tbaa !55
  %57 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %58 = load ptr, ptr %57, align 8, !tbaa !56
  store ptr %58, ptr %8, align 8, !tbaa !57
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #15
  %59 = load ptr, ptr %56, align 8, !tbaa !55
  %60 = call ptr %59(ptr noundef nonnull %8) #15
  %61 = icmp eq ptr %60, null
  br i1 %61, label %89, label %62

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.BMOpSlot, ptr %31, i64 0, i32 4
  br label %64

64:                                               ; preds = %62, %84
  %65 = phi ptr [ %60, %62 ], [ %87, %84 ]
  %66 = phi i32 [ 0, %62 ], [ %85, %84 ]
  br i1 %38, label %67, label %72

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.BMHeader, ptr %65, i64 0, i32 3
  %69 = load i8, ptr %68, align 1, !tbaa !123
  %70 = and i8 %69, 2
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %67, %64
  %73 = getelementptr inbounds %struct.BMHeader, ptr %65, i64 0, i32 3
  %74 = load i8, ptr %73, align 1, !tbaa !123
  %75 = and i8 %74, %5
  %76 = icmp ne i8 %75, 0
  %77 = zext i1 %76 to i8
  %78 = icmp eq i8 %77, %6
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = load ptr, ptr %63, align 8, !tbaa !57
  %81 = sext i32 %66 to i64
  %82 = getelementptr inbounds ptr, ptr %80, i64 %81
  store ptr %65, ptr %82, align 8, !tbaa !80
  %83 = add nsw i32 %66, 1
  br label %84

84:                                               ; preds = %67, %72, %79
  %85 = phi i32 [ %66, %67 ], [ %83, %79 ], [ %66, %72 ]
  %86 = load ptr, ptr %56, align 8, !tbaa !55
  %87 = call ptr %86(ptr noundef nonnull %8) #15
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %64, !llvm.loop !131

89:                                               ; preds = %84, %53, %48
  %90 = phi i32 [ 0, %48 ], [ 0, %53 ], [ %85, %84 ]
  %91 = and i32 %50, 2
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %129, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  store i8 2, ptr %94, align 4, !tbaa !52
  %95 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %95, align 8, !tbaa !54
  %96 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %96, align 8, !tbaa !55
  %97 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %98 = load ptr, ptr %97, align 8, !tbaa !66
  store ptr %98, ptr %8, align 8, !tbaa !57
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #15
  %99 = load ptr, ptr %96, align 8, !tbaa !55
  %100 = call ptr %99(ptr noundef nonnull %8) #15
  %101 = icmp eq ptr %100, null
  br i1 %101, label %129, label %102

102:                                              ; preds = %93
  %103 = getelementptr inbounds %struct.BMOpSlot, ptr %31, i64 0, i32 4
  br label %104

104:                                              ; preds = %102, %124
  %105 = phi ptr [ %100, %102 ], [ %127, %124 ]
  %106 = phi i32 [ %90, %102 ], [ %125, %124 ]
  br i1 %38, label %107, label %112

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.BMHeader, ptr %105, i64 0, i32 3
  %109 = load i8, ptr %108, align 1, !tbaa !123
  %110 = and i8 %109, 2
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %107, %104
  %113 = getelementptr inbounds %struct.BMHeader, ptr %105, i64 0, i32 3
  %114 = load i8, ptr %113, align 1, !tbaa !123
  %115 = and i8 %114, %5
  %116 = icmp ne i8 %115, 0
  %117 = zext i1 %116 to i8
  %118 = icmp eq i8 %117, %6
  br i1 %118, label %119, label %124

119:                                              ; preds = %112
  %120 = load ptr, ptr %103, align 8, !tbaa !57
  %121 = sext i32 %106 to i64
  %122 = getelementptr inbounds ptr, ptr %120, i64 %121
  store ptr %105, ptr %122, align 8, !tbaa !80
  %123 = add nsw i32 %106, 1
  br label %124

124:                                              ; preds = %107, %112, %119
  %125 = phi i32 [ %106, %107 ], [ %123, %119 ], [ %106, %112 ]
  %126 = load ptr, ptr %96, align 8, !tbaa !55
  %127 = call ptr %126(ptr noundef nonnull %8) #15
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %104, !llvm.loop !132

129:                                              ; preds = %124, %93, %89
  %130 = phi i32 [ %90, %89 ], [ %90, %93 ], [ %125, %124 ]
  %131 = and i32 %50, 8
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %169, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  store i8 3, ptr %134, align 4, !tbaa !52
  %135 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %135, align 8, !tbaa !54
  %136 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %136, align 8, !tbaa !55
  %137 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %138 = load ptr, ptr %137, align 8, !tbaa !68
  store ptr %138, ptr %8, align 8, !tbaa !57
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #15
  %139 = load ptr, ptr %136, align 8, !tbaa !55
  %140 = call ptr %139(ptr noundef nonnull %8) #15
  %141 = icmp eq ptr %140, null
  br i1 %141, label %169, label %142

142:                                              ; preds = %133
  %143 = getelementptr inbounds %struct.BMOpSlot, ptr %31, i64 0, i32 4
  br label %144

144:                                              ; preds = %142, %164
  %145 = phi ptr [ %140, %142 ], [ %167, %164 ]
  %146 = phi i32 [ %130, %142 ], [ %165, %164 ]
  br i1 %38, label %147, label %152

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.BMHeader, ptr %145, i64 0, i32 3
  %149 = load i8, ptr %148, align 1, !tbaa !123
  %150 = and i8 %149, 2
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %147, %144
  %153 = getelementptr inbounds %struct.BMHeader, ptr %145, i64 0, i32 3
  %154 = load i8, ptr %153, align 1, !tbaa !123
  %155 = and i8 %154, %5
  %156 = icmp ne i8 %155, 0
  %157 = zext i1 %156 to i8
  %158 = icmp eq i8 %157, %6
  br i1 %158, label %159, label %164

159:                                              ; preds = %152
  %160 = load ptr, ptr %143, align 8, !tbaa !57
  %161 = sext i32 %146 to i64
  %162 = getelementptr inbounds ptr, ptr %160, i64 %161
  store ptr %145, ptr %162, align 8, !tbaa !80
  %163 = add nsw i32 %146, 1
  br label %164

164:                                              ; preds = %147, %152, %159
  %165 = phi i32 [ %146, %147 ], [ %163, %159 ], [ %146, %152 ]
  %166 = load ptr, ptr %136, align 8, !tbaa !55
  %167 = call ptr %166(ptr noundef nonnull %8) #15
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %144, !llvm.loop !133

169:                                              ; preds = %164, %133, %129
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #15
  br label %172

170:                                              ; preds = %45
  %171 = getelementptr inbounds %struct.BMOpSlot, ptr %31, i64 0, i32 3
  store i32 0, ptr %171, align 8, !tbaa !98
  br label %172

172:                                              ; preds = %170, %169
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BMO_slot_buffer_from_disabled_hflag(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #1 {
  tail call fastcc void @bmo_slot_buffer_from_hflag(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BMO_slot_buffer_from_single(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.BMOperator, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !95
  %6 = tail call ptr @BLI_memarena_alloc(ptr noundef %5, i64 noundef 32) #15
  %7 = getelementptr inbounds %struct.BMOpSlot, ptr %1, i64 0, i32 4
  store ptr %6, ptr %7, align 8, !tbaa !57
  %8 = getelementptr inbounds %struct.BMOpSlot, ptr %1, i64 0, i32 3
  store i32 1, ptr %8, align 8, !tbaa !98
  store ptr %2, ptr %6, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BMO_slot_buffer_get_single(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.BMOpSlot, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !98
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMOpSlot, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = load ptr, ptr %7, align 8, !tbaa !80
  br label %9

9:                                                ; preds = %1, %5
  %10 = phi ptr [ %8, %5 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local void @_bmo_slot_buffer_append(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 {
  %6 = load ptr, ptr %0, align 8, !tbaa !89
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %5, %14
  %9 = phi ptr [ %17, %14 ], [ %6, %5 ]
  %10 = phi i32 [ %16, %14 ], [ 0, %5 ]
  %11 = phi ptr [ %15, %14 ], [ %0, %5 ]
  %12 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %9, i64 noundef 32) #16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.BMOpSlot, ptr %11, i64 1
  %16 = add nuw nsw i32 %10, 1
  %17 = load ptr, ptr %15, align 8, !tbaa !89
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %8, !llvm.loop !97

19:                                               ; preds = %14, %8, %5
  %20 = phi i32 [ -1, %5 ], [ %10, %8 ], [ -1, %14 ]
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load ptr, ptr @stderr, align 8, !tbaa !80
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef %1) #17
  br label %25

25:                                               ; preds = %19, %22
  %26 = zext nneg i32 %20 to i64
  %27 = getelementptr inbounds %struct.BMOpSlot, ptr %0, i64 %26
  %28 = select i1 %21, ptr null, ptr %27
  %29 = load ptr, ptr %2, align 8, !tbaa !89
  %30 = icmp eq ptr %29, null
  br i1 %30, label %42, label %31

31:                                               ; preds = %25, %37
  %32 = phi ptr [ %40, %37 ], [ %29, %25 ]
  %33 = phi i32 [ %39, %37 ], [ 0, %25 ]
  %34 = phi ptr [ %38, %37 ], [ %2, %25 ]
  %35 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %32, i64 noundef 32) #16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.BMOpSlot, ptr %34, i64 1
  %39 = add nuw nsw i32 %33, 1
  %40 = load ptr, ptr %38, align 8, !tbaa !89
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %31, !llvm.loop !97

42:                                               ; preds = %37, %31, %25
  %43 = phi i32 [ -1, %25 ], [ %33, %31 ], [ -1, %37 ]
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load ptr, ptr @stderr, align 8, !tbaa !80
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef %3) #17
  br label %48

48:                                               ; preds = %42, %45
  %49 = zext nneg i32 %43 to i64
  %50 = getelementptr inbounds %struct.BMOpSlot, ptr %2, i64 %49
  %51 = select i1 %44, ptr null, ptr %50
  %52 = getelementptr inbounds %struct.BMOpSlot, ptr %28, i64 0, i32 3
  %53 = load i32, ptr %52, align 8, !tbaa !98
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  tail call void @_bmo_slot_copy(ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %4)
  br label %87

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.BMOpSlot, ptr %51, i64 0, i32 3
  %58 = load i32, ptr %57, align 8, !tbaa !98
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %87, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.BMOpSlot, ptr %28, i64 0, i32 1
  %62 = load i32, ptr %61, align 8, !tbaa !91
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [11 x i32], ptr @BMO_OPSLOT_TYPEINFO, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !79
  %66 = add nsw i32 %58, %53
  %67 = mul nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = tail call ptr @BLI_memarena_alloc(ptr noundef %4, i64 noundef %68) #15
  %70 = getelementptr inbounds %struct.BMOpSlot, ptr %28, i64 0, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !57
  %72 = load i32, ptr %52, align 8, !tbaa !98
  %73 = mul nsw i32 %72, %65
  %74 = sext i32 %73 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %69, ptr align 8 %71, i64 %74, i1 false)
  %75 = load i32, ptr %52, align 8, !tbaa !98
  %76 = mul nsw i32 %75, %65
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, ptr %69, i64 %77
  %79 = getelementptr inbounds %struct.BMOpSlot, ptr %51, i64 0, i32 4
  %80 = load ptr, ptr %79, align 8, !tbaa !57
  %81 = load i32, ptr %57, align 8, !tbaa !98
  %82 = mul nsw i32 %81, %65
  %83 = sext i32 %82 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %78, ptr align 8 %80, i64 %83, i1 false)
  store ptr %69, ptr %70, align 8, !tbaa !57
  %84 = load i32, ptr %57, align 8, !tbaa !98
  %85 = load i32, ptr %52, align 8, !tbaa !98
  %86 = add nsw i32 %85, %84
  store i32 %86, ptr %52, align 8, !tbaa !98
  br label %87

87:                                               ; preds = %56, %60, %55
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BMO_slot_buffer_from_enabled_flag(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr noundef %3, i8 noundef zeroext %4, i16 noundef signext %5) local_unnamed_addr #1 {
  tail call fastcc void @bmo_slot_buffer_from_flag(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i16 noundef signext %5, i8 noundef zeroext 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @bmo_slot_buffer_from_flag(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr noundef %3, i8 noundef zeroext %4, i16 noundef signext %5, i8 noundef zeroext %6) unnamed_addr #1 {
  %8 = alloca %struct.BMIter, align 8
  %9 = load ptr, ptr %2, align 8, !tbaa !89
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %7, %17
  %12 = phi ptr [ %20, %17 ], [ %9, %7 ]
  %13 = phi i32 [ %19, %17 ], [ 0, %7 ]
  %14 = phi ptr [ %18, %17 ], [ %2, %7 ]
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %12, i64 noundef 32) #16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.BMOpSlot, ptr %14, i64 1
  %19 = add nuw nsw i32 %13, 1
  %20 = load ptr, ptr %18, align 8, !tbaa !89
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %11, !llvm.loop !97

22:                                               ; preds = %17, %11, %7
  %23 = phi i32 [ -1, %7 ], [ %13, %11 ], [ -1, %17 ]
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load ptr, ptr @stderr, align 8, !tbaa !80
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef %3) #17
  br label %28

28:                                               ; preds = %22, %25
  %29 = zext nneg i32 %23 to i64
  %30 = getelementptr inbounds %struct.BMOpSlot, ptr %2, i64 %29
  %31 = select i1 %24, ptr null, ptr %30
  %32 = icmp ne i8 %6, 0
  %33 = zext i1 %32 to i8
  %34 = tail call fastcc i32 @bmo_mesh_flag_count(ptr noundef %0, i8 noundef zeroext %4, i16 noundef signext %5, i8 noundef zeroext %33)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %154, label %36

36:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #15
  %37 = tail call ptr @BMO_slot_buffer_alloc(ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i32 noundef %34)
  %38 = getelementptr inbounds %struct.BMOpSlot, ptr %31, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !57
  %40 = zext i8 %4 to i32
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %77, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  store i8 1, ptr %44, align 4, !tbaa !52
  %45 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %45, align 8, !tbaa !54
  %46 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %46, align 8, !tbaa !55
  %47 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %48 = load ptr, ptr %47, align 8, !tbaa !56
  store ptr %48, ptr %8, align 8, !tbaa !57
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #15
  %49 = load ptr, ptr %46, align 8, !tbaa !55
  %50 = call ptr %49(ptr noundef nonnull %8) #15
  %51 = icmp eq ptr %50, null
  br i1 %51, label %77, label %52

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %54

54:                                               ; preds = %52, %72
  %55 = phi ptr [ %50, %52 ], [ %75, %72 ]
  %56 = phi i32 [ 0, %52 ], [ %73, %72 ]
  %57 = getelementptr inbounds %struct.BMElemF, ptr %55, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !58
  %59 = load i32, ptr %53, align 8, !tbaa !40
  %60 = sext i32 %59 to i64
  %61 = getelementptr %struct.BMFlagLayer, ptr %58, i64 %60
  %62 = getelementptr %struct.BMFlagLayer, ptr %61, i64 -1
  %63 = load i16, ptr %62, align 2, !tbaa !112
  %64 = and i16 %63, %5
  %65 = icmp ne i16 %64, 0
  %66 = zext i1 %65 to i8
  %67 = icmp eq i8 %66, %6
  br i1 %67, label %68, label %72

68:                                               ; preds = %54
  %69 = sext i32 %56 to i64
  %70 = getelementptr inbounds ptr, ptr %39, i64 %69
  store ptr %55, ptr %70, align 8, !tbaa !80
  %71 = add nsw i32 %56, 1
  br label %72

72:                                               ; preds = %54, %68
  %73 = phi i32 [ %71, %68 ], [ %56, %54 ]
  %74 = load ptr, ptr %46, align 8, !tbaa !55
  %75 = call ptr %74(ptr noundef nonnull %8) #15
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %54, !llvm.loop !134

77:                                               ; preds = %72, %43, %36
  %78 = phi i32 [ 0, %36 ], [ 0, %43 ], [ %73, %72 ]
  %79 = and i32 %40, 2
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %115, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  store i8 2, ptr %82, align 4, !tbaa !52
  %83 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %83, align 8, !tbaa !54
  %84 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %84, align 8, !tbaa !55
  %85 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %86 = load ptr, ptr %85, align 8, !tbaa !66
  store ptr %86, ptr %8, align 8, !tbaa !57
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #15
  %87 = load ptr, ptr %84, align 8, !tbaa !55
  %88 = call ptr %87(ptr noundef nonnull %8) #15
  %89 = icmp eq ptr %88, null
  br i1 %89, label %115, label %90

90:                                               ; preds = %81
  %91 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %92

92:                                               ; preds = %90, %110
  %93 = phi ptr [ %88, %90 ], [ %113, %110 ]
  %94 = phi i32 [ %78, %90 ], [ %111, %110 ]
  %95 = getelementptr inbounds %struct.BMElemF, ptr %93, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !58
  %97 = load i32, ptr %91, align 8, !tbaa !40
  %98 = sext i32 %97 to i64
  %99 = getelementptr %struct.BMFlagLayer, ptr %96, i64 %98
  %100 = getelementptr %struct.BMFlagLayer, ptr %99, i64 -1
  %101 = load i16, ptr %100, align 2, !tbaa !112
  %102 = and i16 %101, %5
  %103 = icmp ne i16 %102, 0
  %104 = zext i1 %103 to i8
  %105 = icmp eq i8 %104, %6
  br i1 %105, label %106, label %110

106:                                              ; preds = %92
  %107 = sext i32 %94 to i64
  %108 = getelementptr inbounds ptr, ptr %39, i64 %107
  store ptr %93, ptr %108, align 8, !tbaa !80
  %109 = add nsw i32 %94, 1
  br label %110

110:                                              ; preds = %92, %106
  %111 = phi i32 [ %109, %106 ], [ %94, %92 ]
  %112 = load ptr, ptr %84, align 8, !tbaa !55
  %113 = call ptr %112(ptr noundef nonnull %8) #15
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %92, !llvm.loop !135

115:                                              ; preds = %110, %81, %77
  %116 = phi i32 [ %78, %77 ], [ %78, %81 ], [ %111, %110 ]
  %117 = and i32 %40, 8
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %153, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  store i8 3, ptr %120, align 4, !tbaa !52
  %121 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %121, align 8, !tbaa !54
  %122 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %122, align 8, !tbaa !55
  %123 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %124 = load ptr, ptr %123, align 8, !tbaa !68
  store ptr %124, ptr %8, align 8, !tbaa !57
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #15
  %125 = load ptr, ptr %122, align 8, !tbaa !55
  %126 = call ptr %125(ptr noundef nonnull %8) #15
  %127 = icmp eq ptr %126, null
  br i1 %127, label %153, label %128

128:                                              ; preds = %119
  %129 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %130

130:                                              ; preds = %128, %148
  %131 = phi ptr [ %126, %128 ], [ %151, %148 ]
  %132 = phi i32 [ %116, %128 ], [ %149, %148 ]
  %133 = getelementptr inbounds %struct.BMElemF, ptr %131, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !58
  %135 = load i32, ptr %129, align 8, !tbaa !40
  %136 = sext i32 %135 to i64
  %137 = getelementptr %struct.BMFlagLayer, ptr %134, i64 %136
  %138 = getelementptr %struct.BMFlagLayer, ptr %137, i64 -1
  %139 = load i16, ptr %138, align 2, !tbaa !112
  %140 = and i16 %139, %5
  %141 = icmp ne i16 %140, 0
  %142 = zext i1 %141 to i8
  %143 = icmp eq i8 %142, %6
  br i1 %143, label %144, label %148

144:                                              ; preds = %130
  %145 = sext i32 %132 to i64
  %146 = getelementptr inbounds ptr, ptr %39, i64 %145
  store ptr %131, ptr %146, align 8, !tbaa !80
  %147 = add nsw i32 %132, 1
  br label %148

148:                                              ; preds = %130, %144
  %149 = phi i32 [ %147, %144 ], [ %132, %130 ]
  %150 = load ptr, ptr %122, align 8, !tbaa !55
  %151 = call ptr %150(ptr noundef nonnull %8) #15
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %130, !llvm.loop !136

153:                                              ; preds = %148, %119, %115
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #15
  br label %156

154:                                              ; preds = %28
  %155 = getelementptr inbounds %struct.BMOpSlot, ptr %31, i64 0, i32 3
  store i32 0, ptr %155, align 8, !tbaa !98
  br label %156

156:                                              ; preds = %154, %153
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BMO_slot_buffer_from_disabled_flag(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr noundef %3, i8 noundef zeroext %4, i16 noundef signext %5) local_unnamed_addr #1 {
  tail call fastcc void @bmo_slot_buffer_from_flag(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i16 noundef signext %5, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BMO_slot_buffer_hflag_enable(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #1 {
  %7 = load ptr, ptr %1, align 8, !tbaa !89
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %6, %15
  %10 = phi ptr [ %18, %15 ], [ %7, %6 ]
  %11 = phi i32 [ %17, %15 ], [ 0, %6 ]
  %12 = phi ptr [ %16, %15 ], [ %1, %6 ]
  %13 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %10, i64 noundef 32) #16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.BMOpSlot, ptr %12, i64 1
  %17 = add nuw nsw i32 %11, 1
  %18 = load ptr, ptr %16, align 8, !tbaa !89
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %9, !llvm.loop !97

20:                                               ; preds = %15, %9, %6
  %21 = phi i32 [ -1, %6 ], [ %11, %9 ], [ -1, %15 ]
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load ptr, ptr @stderr, align 8, !tbaa !80
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef %2) #17
  br label %26

26:                                               ; preds = %20, %23
  %27 = zext nneg i32 %21 to i64
  %28 = getelementptr inbounds %struct.BMOpSlot, ptr %1, i64 %27
  %29 = select i1 %22, ptr null, ptr %28
  %30 = icmp ne i8 %5, 0
  %31 = zext i8 %4 to i32
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  %34 = and i1 %30, %33
  %35 = and i32 %31, 2
  %36 = icmp ne i32 %35, 0
  %37 = and i1 %30, %36
  %38 = getelementptr inbounds %struct.BMOpSlot, ptr %29, i64 0, i32 3
  %39 = load i32, ptr %38, align 8, !tbaa !98
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %26
  %42 = getelementptr inbounds %struct.BMOpSlot, ptr %29, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !57
  br label %44

44:                                               ; preds = %41, %62
  %45 = phi ptr [ %64, %62 ], [ %43, %41 ]
  %46 = phi i32 [ %63, %62 ], [ 0, %41 ]
  %47 = load ptr, ptr %45, align 8, !tbaa !80
  %48 = getelementptr inbounds %struct.BMHeader, ptr %47, i64 0, i32 2
  %49 = load i8, ptr %48, align 4, !tbaa !99
  %50 = and i8 %49, %3
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %44
  br i1 %34, label %53, label %54

53:                                               ; preds = %52
  tail call void @BM_elem_select_set(ptr noundef %0, ptr noundef %47, i8 noundef zeroext 1) #15
  br label %54

54:                                               ; preds = %53, %52
  br i1 %37, label %55, label %57

55:                                               ; preds = %54
  %56 = load ptr, ptr %45, align 8, !tbaa !80
  tail call void @_bm_elem_hide_set(ptr noundef %0, ptr noundef %56, i8 noundef zeroext 0) #15
  br label %57

57:                                               ; preds = %55, %54
  %58 = load ptr, ptr %45, align 8, !tbaa !80
  %59 = getelementptr inbounds %struct.BMHeader, ptr %58, i64 0, i32 3
  %60 = load i8, ptr %59, align 1, !tbaa !123
  %61 = or i8 %60, %4
  store i8 %61, ptr %59, align 1, !tbaa !123
  br label %62

62:                                               ; preds = %44, %57
  %63 = add nuw nsw i32 %46, 1
  %64 = getelementptr inbounds ptr, ptr %45, i64 1
  %65 = load i32, ptr %38, align 8, !tbaa !98
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %44, label %67, !llvm.loop !137

67:                                               ; preds = %62, %26
  ret void
}

declare void @BM_elem_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

declare void @_bm_elem_hide_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @BMO_slot_buffer_hflag_disable(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #1 {
  %7 = load ptr, ptr %1, align 8, !tbaa !89
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %6, %15
  %10 = phi ptr [ %18, %15 ], [ %7, %6 ]
  %11 = phi i32 [ %17, %15 ], [ 0, %6 ]
  %12 = phi ptr [ %16, %15 ], [ %1, %6 ]
  %13 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %10, i64 noundef 32) #16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.BMOpSlot, ptr %12, i64 1
  %17 = add nuw nsw i32 %11, 1
  %18 = load ptr, ptr %16, align 8, !tbaa !89
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %9, !llvm.loop !97

20:                                               ; preds = %15, %9, %6
  %21 = phi i32 [ -1, %6 ], [ %11, %9 ], [ -1, %15 ]
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load ptr, ptr @stderr, align 8, !tbaa !80
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef %2) #17
  br label %26

26:                                               ; preds = %20, %23
  %27 = zext nneg i32 %21 to i64
  %28 = getelementptr inbounds %struct.BMOpSlot, ptr %1, i64 %27
  %29 = select i1 %22, ptr null, ptr %28
  %30 = icmp ne i8 %5, 0
  %31 = zext i8 %4 to i32
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  %34 = and i1 %30, %33
  %35 = and i32 %31, 2
  %36 = icmp ne i32 %35, 0
  %37 = and i1 %30, %36
  %38 = getelementptr inbounds %struct.BMOpSlot, ptr %29, i64 0, i32 3
  %39 = load i32, ptr %38, align 8, !tbaa !98
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %68

41:                                               ; preds = %26
  %42 = getelementptr inbounds %struct.BMOpSlot, ptr %29, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !57
  %44 = xor i8 %4, -1
  br label %45

45:                                               ; preds = %41, %63
  %46 = phi ptr [ %43, %41 ], [ %65, %63 ]
  %47 = phi i32 [ 0, %41 ], [ %64, %63 ]
  %48 = load ptr, ptr %46, align 8, !tbaa !80
  %49 = getelementptr inbounds %struct.BMHeader, ptr %48, i64 0, i32 2
  %50 = load i8, ptr %49, align 4, !tbaa !99
  %51 = and i8 %50, %3
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %45
  br i1 %34, label %54, label %55

54:                                               ; preds = %53
  tail call void @BM_elem_select_set(ptr noundef %0, ptr noundef %48, i8 noundef zeroext 0) #15
  br label %55

55:                                               ; preds = %54, %53
  br i1 %37, label %56, label %58

56:                                               ; preds = %55
  %57 = load ptr, ptr %46, align 8, !tbaa !80
  tail call void @_bm_elem_hide_set(ptr noundef %0, ptr noundef %57, i8 noundef zeroext 0) #15
  br label %58

58:                                               ; preds = %56, %55
  %59 = load ptr, ptr %46, align 8, !tbaa !80
  %60 = getelementptr inbounds %struct.BMHeader, ptr %59, i64 0, i32 3
  %61 = load i8, ptr %60, align 1, !tbaa !123
  %62 = and i8 %61, %44
  store i8 %62, ptr %60, align 1, !tbaa !123
  br label %63

63:                                               ; preds = %45, %58
  %64 = add nuw nsw i32 %47, 1
  %65 = getelementptr inbounds ptr, ptr %46, i64 1
  %66 = load i32, ptr %38, align 8, !tbaa !98
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %45, label %68, !llvm.loop !138

68:                                               ; preds = %63, %26
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @BMO_slot_buffer_flag_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3, i16 noundef signext %4) local_unnamed_addr #6 {
  %6 = load ptr, ptr %1, align 8, !tbaa !89
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %5, %14
  %9 = phi ptr [ %17, %14 ], [ %6, %5 ]
  %10 = phi i32 [ %16, %14 ], [ 0, %5 ]
  %11 = phi ptr [ %15, %14 ], [ %1, %5 ]
  %12 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %9, i64 noundef 32) #16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.BMOpSlot, ptr %11, i64 1
  %16 = add nuw nsw i32 %10, 1
  %17 = load ptr, ptr %15, align 8, !tbaa !89
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %8, !llvm.loop !97

19:                                               ; preds = %14, %8, %5
  %20 = phi i32 [ -1, %5 ], [ %10, %8 ], [ -1, %14 ]
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load ptr, ptr @stderr, align 8, !tbaa !80
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef %2) #17
  br label %25

25:                                               ; preds = %19, %22
  %26 = zext nneg i32 %20 to i64
  %27 = getelementptr inbounds %struct.BMOpSlot, ptr %1, i64 %26
  %28 = select i1 %21, ptr null, ptr %27
  %29 = getelementptr inbounds %struct.BMOpSlot, ptr %28, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !57
  %31 = getelementptr inbounds %struct.BMOpSlot, ptr %28, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !98
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %36 = zext nneg i32 %32 to i64
  br label %37

37:                                               ; preds = %34, %54
  %38 = phi i64 [ 0, %34 ], [ %55, %54 ]
  %39 = getelementptr inbounds ptr, ptr %30, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !80
  %41 = getelementptr inbounds %struct.BMHeader, ptr %40, i64 0, i32 2
  %42 = load i8, ptr %41, align 4, !tbaa !139
  %43 = and i8 %42, %3
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.BMElemF, ptr %40, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !58
  %48 = load i32, ptr %35, align 8, !tbaa !40
  %49 = sext i32 %48 to i64
  %50 = getelementptr %struct.BMFlagLayer, ptr %47, i64 %49
  %51 = getelementptr %struct.BMFlagLayer, ptr %50, i64 -1
  %52 = load i16, ptr %51, align 2, !tbaa !112
  %53 = or i16 %52, %4
  store i16 %53, ptr %51, align 2, !tbaa !112
  br label %54

54:                                               ; preds = %37, %45
  %55 = add nuw nsw i64 %38, 1
  %56 = icmp eq i64 %55, %36
  br i1 %56, label %57, label %37, !llvm.loop !140

57:                                               ; preds = %54, %25
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @BMO_slot_buffer_flag_disable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3, i16 noundef signext %4) local_unnamed_addr #6 {
  %6 = load ptr, ptr %1, align 8, !tbaa !89
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %5, %14
  %9 = phi ptr [ %17, %14 ], [ %6, %5 ]
  %10 = phi i32 [ %16, %14 ], [ 0, %5 ]
  %11 = phi ptr [ %15, %14 ], [ %1, %5 ]
  %12 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %9, i64 noundef 32) #16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.BMOpSlot, ptr %11, i64 1
  %16 = add nuw nsw i32 %10, 1
  %17 = load ptr, ptr %15, align 8, !tbaa !89
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %8, !llvm.loop !97

19:                                               ; preds = %14, %8, %5
  %20 = phi i32 [ -1, %5 ], [ %10, %8 ], [ -1, %14 ]
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load ptr, ptr @stderr, align 8, !tbaa !80
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef %2) #17
  br label %25

25:                                               ; preds = %19, %22
  %26 = zext nneg i32 %20 to i64
  %27 = getelementptr inbounds %struct.BMOpSlot, ptr %1, i64 %26
  %28 = select i1 %21, ptr null, ptr %27
  %29 = getelementptr inbounds %struct.BMOpSlot, ptr %28, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !57
  %31 = getelementptr inbounds %struct.BMOpSlot, ptr %28, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !98
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %25
  %35 = xor i16 %4, -1
  %36 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %37 = zext nneg i32 %32 to i64
  br label %38

38:                                               ; preds = %34, %55
  %39 = phi i64 [ 0, %34 ], [ %56, %55 ]
  %40 = getelementptr inbounds ptr, ptr %30, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !80
  %42 = getelementptr inbounds %struct.BMHeader, ptr %41, i64 0, i32 2
  %43 = load i8, ptr %42, align 4, !tbaa !139
  %44 = and i8 %43, %3
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.BMElemF, ptr %41, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !58
  %49 = load i32, ptr %36, align 8, !tbaa !40
  %50 = sext i32 %49 to i64
  %51 = getelementptr %struct.BMFlagLayer, ptr %48, i64 %50
  %52 = getelementptr %struct.BMFlagLayer, ptr %51, i64 -1
  %53 = load i16, ptr %52, align 2, !tbaa !112
  %54 = and i16 %53, %35
  store i16 %54, ptr %52, align 2, !tbaa !112
  br label %55

55:                                               ; preds = %38, %46
  %56 = add nuw nsw i64 %39, 1
  %57 = icmp eq i64 %56, %37
  br i1 %57, label %58, label %38, !llvm.loop !141

58:                                               ; preds = %55, %25
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @BMO_slot_buffer_get_first(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = load ptr, ptr %0, align 8, !tbaa !89
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2, %11
  %6 = phi ptr [ %14, %11 ], [ %3, %2 ]
  %7 = phi i32 [ %13, %11 ], [ 0, %2 ]
  %8 = phi ptr [ %12, %11 ], [ %0, %2 ]
  %9 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %6, i64 noundef 32) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.BMOpSlot, ptr %8, i64 1
  %13 = add nuw nsw i32 %7, 1
  %14 = load ptr, ptr %12, align 8, !tbaa !89
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5, !llvm.loop !97

16:                                               ; preds = %11, %5, %2
  %17 = phi i32 [ -1, %2 ], [ %7, %5 ], [ -1, %11 ]
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load ptr, ptr @stderr, align 8, !tbaa !80
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef %1) #17
  br label %22

22:                                               ; preds = %16, %19
  %23 = zext nneg i32 %17 to i64
  %24 = getelementptr inbounds %struct.BMOpSlot, ptr %0, i64 %23
  %25 = select i1 %18, ptr null, ptr %24
  %26 = getelementptr inbounds %struct.BMOpSlot, ptr %25, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !91
  %28 = icmp eq i32 %27, 9
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.BMOpSlot, ptr %25, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !57
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %31, align 8, !tbaa !80
  br label %35

35:                                               ; preds = %33, %29, %22
  %36 = phi ptr [ null, %22 ], [ %34, %33 ], [ null, %29 ]
  ret ptr %36
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BMO_iter_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #1 {
  %5 = load ptr, ptr %1, align 8, !tbaa !89
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %4, %13
  %8 = phi ptr [ %16, %13 ], [ %5, %4 ]
  %9 = phi i32 [ %15, %13 ], [ 0, %4 ]
  %10 = phi ptr [ %14, %13 ], [ %1, %4 ]
  %11 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %8, i64 noundef 32) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.BMOpSlot, ptr %10, i64 1
  %15 = add nuw nsw i32 %9, 1
  %16 = load ptr, ptr %14, align 8, !tbaa !89
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %7, !llvm.loop !97

18:                                               ; preds = %13, %7, %4
  %19 = phi i32 [ -1, %4 ], [ %9, %7 ], [ -1, %13 ]
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load ptr, ptr @stderr, align 8, !tbaa !80
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef %2) #17
  br label %24

24:                                               ; preds = %18, %21
  %25 = zext nneg i32 %19 to i64
  %26 = getelementptr inbounds %struct.BMOpSlot, ptr %1, i64 %25
  %27 = select i1 %20, ptr null, ptr %26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  store ptr %27, ptr %0, align 8, !tbaa !142
  %28 = getelementptr inbounds %struct.BMOIter, ptr %0, i64 0, i32 1
  store i32 0, ptr %28, align 8, !tbaa !144
  %29 = getelementptr inbounds %struct.BMOIter, ptr %0, i64 0, i32 4
  store i8 %3, ptr %29, align 8, !tbaa !145
  %30 = getelementptr inbounds %struct.BMOpSlot, ptr %27, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !91
  %32 = icmp eq i32 %31, 10
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.BMOIter, ptr %0, i64 0, i32 2
  %35 = getelementptr inbounds %struct.BMOpSlot, ptr %27, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !57
  tail call void @BLI_ghashIterator_init(ptr noundef nonnull %34, ptr noundef %36) #15
  br label %37

37:                                               ; preds = %24, %33
  %38 = load ptr, ptr %0, align 8, !tbaa !142
  %39 = getelementptr inbounds %struct.BMOpSlot, ptr %38, i64 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !91
  switch i32 %40, label %83 [
    i32 9, label %41
    i32 10, label %71
  ]

41:                                               ; preds = %37
  %42 = load i32, ptr %28, align 8, !tbaa !144
  %43 = getelementptr inbounds %struct.BMOpSlot, ptr %38, i64 0, i32 3
  %44 = load i32, ptr %43, align 8, !tbaa !98
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %83

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.BMOpSlot, ptr %38, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !57
  %49 = add nsw i32 %42, 1
  store i32 %49, ptr %28, align 8, !tbaa !144
  %50 = sext i32 %42 to i64
  %51 = getelementptr inbounds ptr, ptr %48, i64 %50
  %52 = load i8, ptr %29, align 8, !tbaa !145
  %53 = load ptr, ptr %51, align 8, !tbaa !80
  %54 = getelementptr inbounds %struct.BMHeader, ptr %53, i64 0, i32 2
  %55 = load i8, ptr %54, align 4, !tbaa !139
  %56 = and i8 %55, %52
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %83

58:                                               ; preds = %46, %61
  %59 = load i32, ptr %28, align 8, !tbaa !144
  %60 = icmp slt i32 %59, %44
  br i1 %60, label %61, label %83

61:                                               ; preds = %58
  %62 = load ptr, ptr %47, align 8, !tbaa !57
  %63 = add nsw i32 %59, 1
  store i32 %63, ptr %28, align 8, !tbaa !144
  %64 = sext i32 %59 to i64
  %65 = getelementptr inbounds ptr, ptr %62, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !80
  %67 = getelementptr inbounds %struct.BMHeader, ptr %66, i64 0, i32 2
  %68 = load i8, ptr %67, align 4, !tbaa !139
  %69 = and i8 %68, %52
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %58, label %83, !llvm.loop !146

71:                                               ; preds = %37
  %72 = getelementptr inbounds %struct.BMOIter, ptr %0, i64 0, i32 2, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !103
  %74 = icmp eq ptr %73, null
  br i1 %74, label %81, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.BMOIter, ptr %0, i64 0, i32 2
  %77 = getelementptr inbounds %struct._gh_Entry, ptr %73, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !105
  %79 = getelementptr inbounds %struct._gh_Entry, ptr %73, i64 0, i32 2
  %80 = getelementptr inbounds %struct.BMOIter, ptr %0, i64 0, i32 3
  store ptr %79, ptr %80, align 8, !tbaa !147
  tail call void @BLI_ghashIterator_step(ptr noundef nonnull %76) #15
  br label %83

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.BMOIter, ptr %0, i64 0, i32 3
  store ptr null, ptr %82, align 8, !tbaa !147
  br label %83

83:                                               ; preds = %58, %61, %37, %41, %46, %75, %81
  %84 = phi ptr [ null, %41 ], [ %78, %75 ], [ null, %81 ], [ null, %37 ], [ %53, %46 ], [ null, %58 ], [ %66, %61 ]
  ret ptr %84
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BMO_iter_step(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !142
  %3 = getelementptr inbounds %struct.BMOpSlot, ptr %2, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !91
  switch i32 %4, label %49 [
    i32 9, label %5
    i32 10, label %37
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMOIter, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !144
  %8 = getelementptr inbounds %struct.BMOpSlot, ptr %2, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !98
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %49

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.BMOpSlot, ptr %2, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = add nsw i32 %7, 1
  store i32 %14, ptr %6, align 8, !tbaa !144
  %15 = sext i32 %7 to i64
  %16 = getelementptr inbounds ptr, ptr %13, i64 %15
  %17 = getelementptr inbounds %struct.BMOIter, ptr %0, i64 0, i32 4
  %18 = load i8, ptr %17, align 8, !tbaa !145
  %19 = load ptr, ptr %16, align 8, !tbaa !80
  %20 = getelementptr inbounds %struct.BMHeader, ptr %19, i64 0, i32 2
  %21 = load i8, ptr %20, align 4, !tbaa !139
  %22 = and i8 %21, %18
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %11, %27
  %25 = load i32, ptr %6, align 8, !tbaa !144
  %26 = icmp slt i32 %25, %9
  br i1 %26, label %27, label %49

27:                                               ; preds = %24
  %28 = load ptr, ptr %12, align 8, !tbaa !57
  %29 = add nsw i32 %25, 1
  store i32 %29, ptr %6, align 8, !tbaa !144
  %30 = sext i32 %25 to i64
  %31 = getelementptr inbounds ptr, ptr %28, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !80
  %33 = getelementptr inbounds %struct.BMHeader, ptr %32, i64 0, i32 2
  %34 = load i8, ptr %33, align 4, !tbaa !139
  %35 = and i8 %34, %18
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %24, label %49, !llvm.loop !146

37:                                               ; preds = %1
  %38 = getelementptr inbounds %struct.BMOIter, ptr %0, i64 0, i32 2, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !103
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.BMOIter, ptr %0, i64 0, i32 2
  %43 = getelementptr inbounds %struct._gh_Entry, ptr %39, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !105
  %45 = getelementptr inbounds %struct._gh_Entry, ptr %39, i64 0, i32 2
  %46 = getelementptr inbounds %struct.BMOIter, ptr %0, i64 0, i32 3
  store ptr %45, ptr %46, align 8, !tbaa !147
  tail call void @BLI_ghashIterator_step(ptr noundef nonnull %42) #15
  br label %49

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.BMOIter, ptr %0, i64 0, i32 3
  store ptr null, ptr %48, align 8, !tbaa !147
  br label %49

49:                                               ; preds = %27, %24, %11, %1, %41, %47, %5
  %50 = phi ptr [ null, %5 ], [ %44, %41 ], [ null, %47 ], [ null, %1 ], [ %19, %11 ], [ null, %24 ], [ %32, %27 ]
  ret ptr %50
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @BMO_iter_map_value_p(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.BMOIter, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !147
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BMO_iter_map_value_ptr(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.BMOIter, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !147
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !80
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BMO_iter_map_value_float(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.BMOIter, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !147
  %4 = load ptr, ptr %3, align 8, !tbaa !80
  %5 = load float, ptr %4, align 4, !tbaa !110
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BMO_iter_map_value_int(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.BMOIter, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !147
  %4 = load ptr, ptr %3, align 8, !tbaa !80
  %5 = load i32, ptr %4, align 4, !tbaa !79
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BMO_iter_map_value_bool(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.BMOIter, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !147
  %4 = load ptr, ptr %3, align 8, !tbaa !80
  %5 = load i8, ptr %4, align 1, !tbaa !57
  ret i8 %5
}

; Function Attrs: nounwind uwtable
define dso_local void @BMO_error_clear(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 34
  br label %3

3:                                                ; preds = %12, %1
  %4 = load ptr, ptr %2, align 8, !tbaa !148
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.BMOpError, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !149
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi i32 [ %8, %6 ], [ 0, %3 ]
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  tail call void @BLI_remlink(ptr noundef nonnull %2, ptr noundef %4) #15
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !80
  tail call void %13(ptr noundef %4) #15
  br label %3, !llvm.loop !151

14:                                               ; preds = %9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BMO_error_pop(ptr noundef %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 34
  %5 = load ptr, ptr %4, align 8, !tbaa !148
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %1, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.BMOpError, ptr %5, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !152
  store ptr %11, ptr %1, align 8, !tbaa !80
  br label %12

12:                                               ; preds = %9, %7
  %13 = icmp eq ptr %2, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.BMOpError, ptr %5, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !153
  store ptr %16, ptr %2, align 8, !tbaa !80
  br label %17

17:                                               ; preds = %14, %12
  %18 = getelementptr inbounds %struct.BMOpError, ptr %5, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !149
  br label %20

20:                                               ; preds = %3, %17
  %21 = phi i32 [ %19, %17 ], [ 0, %3 ]
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 8, !tbaa !148
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef %24) #15
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !80
  tail call void %25(ptr noundef %24) #15
  br label %26

26:                                               ; preds = %23, %20
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define dso_local void @BMO_error_raise(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !80
  %6 = tail call ptr %5(i64 noundef 40, ptr noundef nonnull @.str.1) #15
  %7 = getelementptr inbounds %struct.BMOpError, ptr %6, i64 0, i32 2
  store i32 %2, ptr %7, align 8, !tbaa !149
  %8 = icmp eq ptr %3, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = sext i32 %2 to i64
  %11 = getelementptr inbounds [10 x ptr], ptr @bmo_error_messages, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !80
  br label %13

13:                                               ; preds = %9, %4
  %14 = phi ptr [ %3, %4 ], [ %12, %9 ]
  %15 = getelementptr inbounds %struct.BMOpError, ptr %6, i64 0, i32 4
  store ptr %14, ptr %15, align 8, !tbaa !152
  %16 = getelementptr inbounds %struct.BMOpError, ptr %6, i64 0, i32 3
  store ptr %1, ptr %16, align 8, !tbaa !153
  %17 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 34
  tail call void @BLI_addhead(ptr noundef nonnull %17, ptr noundef %6) #15
  ret void
}

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BMO_error_occurred(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 34
  %3 = load ptr, ptr %2, align 8, !tbaa !154
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @BMO_error_get(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #11 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 34
  %5 = load ptr, ptr %4, align 8, !tbaa !148
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %1, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.BMOpError, ptr %5, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !152
  store ptr %11, ptr %1, align 8, !tbaa !80
  br label %12

12:                                               ; preds = %9, %7
  %13 = icmp eq ptr %2, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.BMOpError, ptr %5, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !153
  store ptr %16, ptr %2, align 8, !tbaa !80
  br label %17

17:                                               ; preds = %14, %12
  %18 = getelementptr inbounds %struct.BMOpError, ptr %5, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !149
  br label %20

20:                                               ; preds = %3, %17
  %21 = phi i32 [ %19, %17 ], [ 0, %3 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BMO_op_vinitf(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #1 {
  %6 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %6, i8 0, i64 64, i1 false)
  %7 = tail call ptr @BLI_strdup(ptr noundef %3) #15
  %8 = tail call i64 @strcspn(ptr noundef %7, ptr noundef nonnull @.str.3) #16
  %9 = shl i64 %8, 32
  %10 = ashr exact i64 %9, 32
  %11 = getelementptr inbounds i8, ptr %7, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !57
  store i8 0, ptr %11, align 1, !tbaa !57
  %13 = load i32, ptr @bmo_opdefines_total, align 4, !tbaa !79
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %5
  %16 = zext i32 %13 to i64
  br label %17

17:                                               ; preds = %15, %24
  %18 = phi i64 [ 0, %15 ], [ %25, %24 ]
  %19 = getelementptr inbounds [0 x ptr], ptr @bmo_opdefines, i64 0, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !80
  %21 = load ptr, ptr %20, align 8, !tbaa !81
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull dereferenceable(1) %7) #16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = add nuw nsw i64 %18, 1
  %26 = icmp eq i64 %25, %16
  br i1 %26, label %29, label %17, !llvm.loop !83

27:                                               ; preds = %17
  %28 = trunc i64 %18 to i32
  br label %29

29:                                               ; preds = %24, %27
  %30 = phi i32 [ %28, %27 ], [ -1, %24 ]
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %36

32:                                               ; preds = %5, %29
  %33 = load ptr, ptr @stderr, align 8, !tbaa !80
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.BMO_opcode_from_opname_check, ptr noundef %7) #17
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !80
  tail call void %35(ptr noundef %7) #15
  br label %582

36:                                               ; preds = %29
  %37 = icmp ne i8 %12, 0
  %38 = zext i1 %37 to i64
  %39 = add i64 %8, %38
  %40 = shl i64 %39, 32
  %41 = ashr exact i64 %40, 32
  %42 = getelementptr inbounds i8, ptr %7, i64 %41
  tail call void @BMO_op_init(ptr poison, ptr noundef %1, i32 noundef %2, ptr noundef %7)
  %43 = load i8, ptr %42, align 1, !tbaa !57
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %551, label %45

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %47 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %48 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %49 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %50 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %51 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %52 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %53 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %54 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 1
  %55 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %56 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %57 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %58 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %59 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %60 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %61 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %62 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %63 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %64 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %65 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %66 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %67 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 3
  %68 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 3
  %69 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %70 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %71 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 3
  %72 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %73 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %74 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %75 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %76 = ptrtoint ptr %7 to i64
  br label %77

77:                                               ; preds = %45, %543
  %78 = phi i8 [ %43, %45 ], [ %549, %543 ]
  %79 = phi ptr [ %42, %45 ], [ %548, %543 ]
  %80 = phi i8 [ 1, %45 ], [ %546, %543 ]
  %81 = phi ptr [ @.str.2, %45 ], [ %545, %543 ]
  %82 = phi i32 [ -1, %45 ], [ %544, %543 ]
  %83 = icmp eq i8 %80, 0
  br i1 %83, label %116, label %84

84:                                               ; preds = %77
  %85 = call i64 @strspn(ptr noundef nonnull %79, ptr noundef nonnull @.str.3) #16
  %86 = shl i64 %85, 32
  %87 = ashr exact i64 %86, 32
  %88 = getelementptr inbounds i8, ptr %79, i64 %87
  %89 = getelementptr inbounds i8, ptr %88, i64 %87
  %90 = load i8, ptr %89, align 1, !tbaa !57
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %551, label %92

92:                                               ; preds = %84
  %93 = call i64 @strcspn(ptr noundef nonnull %88, ptr noundef nonnull @.str.4) #16
  %94 = shl i64 %93, 32
  %95 = ashr exact i64 %94, 32
  %96 = getelementptr inbounds i8, ptr %88, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !57
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %553, label %99

99:                                               ; preds = %92
  store i8 0, ptr %96, align 1, !tbaa !57
  %100 = load ptr, ptr %1, align 8, !tbaa !89
  %101 = icmp eq ptr %100, null
  br i1 %101, label %111, label %102

102:                                              ; preds = %99, %107
  %103 = phi ptr [ %109, %107 ], [ %100, %99 ]
  %104 = phi ptr [ %108, %107 ], [ %1, %99 ]
  %105 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %88, ptr noundef nonnull dereferenceable(1) %103, i64 noundef 32) #16
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.BMOpSlot, ptr %104, i64 1
  %109 = load ptr, ptr %108, align 8, !tbaa !89
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %102, !llvm.loop !97

111:                                              ; preds = %99, %107
  %112 = load ptr, ptr @stderr, align 8, !tbaa !80
  %113 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %112, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef nonnull %88) #17
  br label %553

114:                                              ; preds = %102
  %115 = call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef nonnull %88, i64 noundef 64) #15
  br label %543

116:                                              ; preds = %77
  switch i8 %78, label %536 [
    i8 32, label %543
    i8 61, label %543
    i8 37, label %543
    i8 109, label %117
    i8 118, label %141
    i8 101, label %190
    i8 115, label %231
    i8 83, label %231
    i8 105, label %265
    i8 98, label %307
    i8 112, label %350
    i8 102, label %392
    i8 70, label %392
    i8 104, label %392
    i8 72, label %392
    i8 97, label %392
  ]

117:                                              ; preds = %116
  %118 = getelementptr inbounds i8, ptr %79, i64 1
  %119 = load i8, ptr %118, align 1, !tbaa !57
  switch i8 %119, label %136 [
    i8 51, label %121
    i8 52, label %120
  ]

120:                                              ; preds = %117
  br label %121

121:                                              ; preds = %117, %120
  %122 = phi i32 [ 4, %120 ], [ 3, %117 ]
  %123 = load i32, ptr %4, align 8
  %124 = icmp ult i32 %123, 41
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = load ptr, ptr %75, align 8
  %127 = zext nneg i32 %123 to i64
  %128 = getelementptr i8, ptr %126, i64 %127
  %129 = add nuw nsw i32 %123, 8
  store i32 %129, ptr %4, align 8
  br label %133

130:                                              ; preds = %121
  %131 = load ptr, ptr %74, align 8
  %132 = getelementptr i8, ptr %131, i64 8
  store ptr %132, ptr %74, align 8
  br label %133

133:                                              ; preds = %130, %125
  %134 = phi ptr [ %128, %125 ], [ %131, %130 ]
  %135 = load ptr, ptr %134, align 8
  call void @BMO_slot_mat_set(ptr noundef %1, ptr noundef %1, ptr noundef nonnull %6, ptr noundef %135, i32 noundef %122)
  br label %136

136:                                              ; preds = %117, %133
  %137 = phi i1 [ true, %133 ], [ false, %117 ]
  %138 = phi i32 [ %82, %133 ], [ 1773, %117 ]
  %139 = phi ptr [ %81, %133 ], [ @.str.7, %117 ]
  %140 = phi i8 [ 1, %133 ], [ 0, %117 ]
  br i1 %137, label %543, label %553

141:                                              ; preds = %116
  %142 = load i32, ptr %4, align 8
  %143 = icmp ult i32 %142, 41
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load ptr, ptr %73, align 8
  %146 = zext nneg i32 %142 to i64
  %147 = getelementptr i8, ptr %145, i64 %146
  %148 = add nuw nsw i32 %142, 8
  store i32 %148, ptr %4, align 8
  br label %152

149:                                              ; preds = %141
  %150 = load ptr, ptr %72, align 8
  %151 = getelementptr i8, ptr %150, i64 8
  store ptr %151, ptr %72, align 8
  br label %152

152:                                              ; preds = %149, %144
  %153 = phi ptr [ %147, %144 ], [ %150, %149 ]
  %154 = load ptr, ptr %153, align 8
  %155 = load ptr, ptr %1, align 8, !tbaa !89
  %156 = icmp eq ptr %155, null
  br i1 %156, label %168, label %157

157:                                              ; preds = %152, %163
  %158 = phi ptr [ %166, %163 ], [ %155, %152 ]
  %159 = phi i32 [ %165, %163 ], [ 0, %152 ]
  %160 = phi ptr [ %164, %163 ], [ %1, %152 ]
  %161 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %158, i64 noundef 32) #16
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %157
  %164 = getelementptr inbounds %struct.BMOpSlot, ptr %160, i64 1
  %165 = add nuw nsw i32 %159, 1
  %166 = load ptr, ptr %164, align 8, !tbaa !89
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %157, !llvm.loop !97

168:                                              ; preds = %163, %157, %152
  %169 = phi i32 [ -1, %152 ], [ %159, %157 ], [ -1, %163 ]
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load ptr, ptr @stderr, align 8, !tbaa !80
  %173 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %172, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef nonnull %6) #17
  br label %174

174:                                              ; preds = %168, %171
  %175 = zext nneg i32 %169 to i64
  %176 = getelementptr inbounds %struct.BMOpSlot, ptr %1, i64 %175
  %177 = select i1 %170, ptr null, ptr %176
  %178 = getelementptr inbounds %struct.BMOpSlot, ptr %177, i64 0, i32 1
  %179 = load i32, ptr %178, align 8, !tbaa !91
  %180 = icmp eq i32 %179, 8
  br i1 %180, label %181, label %543

181:                                              ; preds = %174
  %182 = getelementptr inbounds %struct.BMOpSlot, ptr %177, i64 0, i32 4
  %183 = load float, ptr %154, align 4, !tbaa !110
  store float %183, ptr %182, align 4, !tbaa !110
  %184 = getelementptr inbounds float, ptr %154, i64 1
  %185 = load float, ptr %184, align 4, !tbaa !110
  %186 = getelementptr inbounds i8, ptr %177, i64 28
  store float %185, ptr %186, align 4, !tbaa !110
  %187 = getelementptr inbounds float, ptr %154, i64 2
  %188 = load float, ptr %187, align 4, !tbaa !110
  %189 = getelementptr inbounds %struct.BMOpSlot, ptr %177, i64 0, i32 4, i32 1
  store float %188, ptr %189, align 4, !tbaa !110
  br label %543

190:                                              ; preds = %116
  %191 = load i32, ptr %4, align 8
  %192 = icmp ult i32 %191, 41
  br i1 %192, label %193, label %198

193:                                              ; preds = %190
  %194 = load ptr, ptr %70, align 8
  %195 = zext nneg i32 %191 to i64
  %196 = getelementptr i8, ptr %194, i64 %195
  %197 = add nuw nsw i32 %191, 8
  store i32 %197, ptr %4, align 8
  br label %201

198:                                              ; preds = %190
  %199 = load ptr, ptr %69, align 8
  %200 = getelementptr i8, ptr %199, i64 8
  store ptr %200, ptr %69, align 8
  br label %201

201:                                              ; preds = %198, %193
  %202 = phi ptr [ %196, %193 ], [ %199, %198 ]
  %203 = load ptr, ptr %202, align 8
  %204 = load ptr, ptr %1, align 8, !tbaa !89
  %205 = icmp eq ptr %204, null
  br i1 %205, label %217, label %206

206:                                              ; preds = %201, %212
  %207 = phi ptr [ %215, %212 ], [ %204, %201 ]
  %208 = phi i32 [ %214, %212 ], [ 0, %201 ]
  %209 = phi ptr [ %213, %212 ], [ %1, %201 ]
  %210 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %207, i64 noundef 32) #16
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %217, label %212

212:                                              ; preds = %206
  %213 = getelementptr inbounds %struct.BMOpSlot, ptr %209, i64 1
  %214 = add nuw nsw i32 %208, 1
  %215 = load ptr, ptr %213, align 8, !tbaa !89
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %206, !llvm.loop !97

217:                                              ; preds = %212, %206, %201
  %218 = phi i32 [ -1, %201 ], [ %208, %206 ], [ -1, %212 ]
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %217
  %221 = load ptr, ptr @stderr, align 8, !tbaa !80
  %222 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %221, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef nonnull %6) #17
  br label %223

223:                                              ; preds = %217, %220
  %224 = zext nneg i32 %218 to i64
  %225 = getelementptr inbounds %struct.BMOpSlot, ptr %1, i64 %224
  %226 = select i1 %219, ptr null, ptr %225
  %227 = load ptr, ptr %71, align 8, !tbaa !95
  %228 = call ptr @BLI_memarena_alloc(ptr noundef %227, i64 noundef 32) #15
  %229 = getelementptr inbounds %struct.BMOpSlot, ptr %226, i64 0, i32 4
  store ptr %228, ptr %229, align 8, !tbaa !57
  %230 = getelementptr inbounds %struct.BMOpSlot, ptr %226, i64 0, i32 3
  store i32 1, ptr %230, align 8, !tbaa !98
  store ptr %203, ptr %228, align 8, !tbaa !80
  br label %543

231:                                              ; preds = %116, %116
  %232 = load i32, ptr %4, align 8
  %233 = icmp ult i32 %232, 41
  br i1 %233, label %234, label %239

234:                                              ; preds = %231
  %235 = load ptr, ptr %64, align 8
  %236 = zext nneg i32 %232 to i64
  %237 = getelementptr i8, ptr %235, i64 %236
  %238 = add nuw nsw i32 %232, 8
  store i32 %238, ptr %4, align 8
  br label %242

239:                                              ; preds = %231
  %240 = load ptr, ptr %63, align 8
  %241 = getelementptr i8, ptr %240, i64 8
  store ptr %241, ptr %63, align 8
  br label %242

242:                                              ; preds = %239, %234
  %243 = phi ptr [ %237, %234 ], [ %240, %239 ]
  %244 = load ptr, ptr %243, align 8
  %245 = load i32, ptr %4, align 8
  %246 = icmp ult i32 %245, 41
  br i1 %246, label %247, label %252

247:                                              ; preds = %242
  %248 = load ptr, ptr %66, align 8
  %249 = zext nneg i32 %245 to i64
  %250 = getelementptr i8, ptr %248, i64 %249
  %251 = add nuw nsw i32 %245, 8
  store i32 %251, ptr %4, align 8
  br label %255

252:                                              ; preds = %242
  %253 = load ptr, ptr %65, align 8
  %254 = getelementptr i8, ptr %253, i64 8
  store ptr %254, ptr %65, align 8
  br label %255

255:                                              ; preds = %252, %247
  %256 = phi ptr [ %250, %247 ], [ %253, %252 ]
  %257 = load ptr, ptr %256, align 8
  %258 = load i8, ptr %79, align 1, !tbaa !57
  %259 = icmp eq i8 %258, 115
  br i1 %259, label %260, label %262

260:                                              ; preds = %255
  %261 = load ptr, ptr %68, align 8, !tbaa !95
  call void @_bmo_slot_copy(ptr noundef %244, ptr noundef %257, ptr noundef %1, ptr noundef nonnull %6, ptr noundef %261)
  br label %543

262:                                              ; preds = %255
  %263 = getelementptr inbounds %struct.BMOperator, ptr %244, i64 0, i32 1
  %264 = load ptr, ptr %67, align 8, !tbaa !95
  call void @_bmo_slot_copy(ptr noundef nonnull %263, ptr noundef %257, ptr noundef %1, ptr noundef nonnull %6, ptr noundef %264)
  br label %543

265:                                              ; preds = %116
  %266 = load i32, ptr %4, align 8
  %267 = icmp ult i32 %266, 41
  br i1 %267, label %268, label %273

268:                                              ; preds = %265
  %269 = load ptr, ptr %62, align 8
  %270 = zext nneg i32 %266 to i64
  %271 = getelementptr i8, ptr %269, i64 %270
  %272 = add nuw nsw i32 %266, 8
  store i32 %272, ptr %4, align 8
  br label %276

273:                                              ; preds = %265
  %274 = load ptr, ptr %61, align 8
  %275 = getelementptr i8, ptr %274, i64 8
  store ptr %275, ptr %61, align 8
  br label %276

276:                                              ; preds = %273, %268
  %277 = phi ptr [ %271, %268 ], [ %274, %273 ]
  %278 = load i32, ptr %277, align 4
  %279 = load ptr, ptr %1, align 8, !tbaa !89
  %280 = icmp eq ptr %279, null
  br i1 %280, label %292, label %281

281:                                              ; preds = %276, %287
  %282 = phi ptr [ %290, %287 ], [ %279, %276 ]
  %283 = phi i32 [ %289, %287 ], [ 0, %276 ]
  %284 = phi ptr [ %288, %287 ], [ %1, %276 ]
  %285 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %282, i64 noundef 32) #16
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %292, label %287

287:                                              ; preds = %281
  %288 = getelementptr inbounds %struct.BMOpSlot, ptr %284, i64 1
  %289 = add nuw nsw i32 %283, 1
  %290 = load ptr, ptr %288, align 8, !tbaa !89
  %291 = icmp eq ptr %290, null
  br i1 %291, label %292, label %281, !llvm.loop !97

292:                                              ; preds = %287, %281, %276
  %293 = phi i32 [ -1, %276 ], [ %283, %281 ], [ -1, %287 ]
  %294 = icmp slt i32 %293, 0
  br i1 %294, label %295, label %298

295:                                              ; preds = %292
  %296 = load ptr, ptr @stderr, align 8, !tbaa !80
  %297 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %296, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef nonnull %6) #17
  br label %298

298:                                              ; preds = %292, %295
  %299 = zext nneg i32 %293 to i64
  %300 = getelementptr inbounds %struct.BMOpSlot, ptr %1, i64 %299
  %301 = select i1 %294, ptr null, ptr %300
  %302 = getelementptr inbounds %struct.BMOpSlot, ptr %301, i64 0, i32 1
  %303 = load i32, ptr %302, align 8, !tbaa !91
  %304 = icmp eq i32 %303, 2
  br i1 %304, label %305, label %543

305:                                              ; preds = %298
  %306 = getelementptr inbounds %struct.BMOpSlot, ptr %301, i64 0, i32 4
  store i32 %278, ptr %306, align 8, !tbaa !57
  br label %543

307:                                              ; preds = %116
  %308 = load i32, ptr %4, align 8
  %309 = icmp ult i32 %308, 41
  br i1 %309, label %310, label %315

310:                                              ; preds = %307
  %311 = load ptr, ptr %60, align 8
  %312 = zext nneg i32 %308 to i64
  %313 = getelementptr i8, ptr %311, i64 %312
  %314 = add nuw nsw i32 %308, 8
  store i32 %314, ptr %4, align 8
  br label %318

315:                                              ; preds = %307
  %316 = load ptr, ptr %59, align 8
  %317 = getelementptr i8, ptr %316, i64 8
  store ptr %317, ptr %59, align 8
  br label %318

318:                                              ; preds = %315, %310
  %319 = phi ptr [ %313, %310 ], [ %316, %315 ]
  %320 = load i32, ptr %319, align 4
  %321 = load ptr, ptr %1, align 8, !tbaa !89
  %322 = icmp eq ptr %321, null
  br i1 %322, label %334, label %323

323:                                              ; preds = %318, %329
  %324 = phi ptr [ %332, %329 ], [ %321, %318 ]
  %325 = phi i32 [ %331, %329 ], [ 0, %318 ]
  %326 = phi ptr [ %330, %329 ], [ %1, %318 ]
  %327 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %324, i64 noundef 32) #16
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %334, label %329

329:                                              ; preds = %323
  %330 = getelementptr inbounds %struct.BMOpSlot, ptr %326, i64 1
  %331 = add nuw nsw i32 %325, 1
  %332 = load ptr, ptr %330, align 8, !tbaa !89
  %333 = icmp eq ptr %332, null
  br i1 %333, label %334, label %323, !llvm.loop !97

334:                                              ; preds = %329, %323, %318
  %335 = phi i32 [ -1, %318 ], [ %325, %323 ], [ -1, %329 ]
  %336 = icmp slt i32 %335, 0
  br i1 %336, label %337, label %340

337:                                              ; preds = %334
  %338 = load ptr, ptr @stderr, align 8, !tbaa !80
  %339 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %338, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef nonnull %6) #17
  br label %340

340:                                              ; preds = %334, %337
  %341 = zext nneg i32 %335 to i64
  %342 = getelementptr inbounds %struct.BMOpSlot, ptr %1, i64 %341
  %343 = select i1 %336, ptr null, ptr %342
  %344 = getelementptr inbounds %struct.BMOpSlot, ptr %343, i64 0, i32 1
  %345 = load i32, ptr %344, align 8, !tbaa !91
  %346 = icmp eq i32 %345, 1
  br i1 %346, label %347, label %543

347:                                              ; preds = %340
  %348 = and i32 %320, 255
  %349 = getelementptr inbounds %struct.BMOpSlot, ptr %343, i64 0, i32 4
  store i32 %348, ptr %349, align 8, !tbaa !57
  br label %543

350:                                              ; preds = %116
  %351 = load i32, ptr %4, align 8
  %352 = icmp ult i32 %351, 41
  br i1 %352, label %353, label %358

353:                                              ; preds = %350
  %354 = load ptr, ptr %58, align 8
  %355 = zext nneg i32 %351 to i64
  %356 = getelementptr i8, ptr %354, i64 %355
  %357 = add nuw nsw i32 %351, 8
  store i32 %357, ptr %4, align 8
  br label %361

358:                                              ; preds = %350
  %359 = load ptr, ptr %57, align 8
  %360 = getelementptr i8, ptr %359, i64 8
  store ptr %360, ptr %57, align 8
  br label %361

361:                                              ; preds = %358, %353
  %362 = phi ptr [ %356, %353 ], [ %359, %358 ]
  %363 = load ptr, ptr %362, align 8
  %364 = load ptr, ptr %1, align 8, !tbaa !89
  %365 = icmp eq ptr %364, null
  br i1 %365, label %377, label %366

366:                                              ; preds = %361, %372
  %367 = phi ptr [ %375, %372 ], [ %364, %361 ]
  %368 = phi i32 [ %374, %372 ], [ 0, %361 ]
  %369 = phi ptr [ %373, %372 ], [ %1, %361 ]
  %370 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %367, i64 noundef 32) #16
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %377, label %372

372:                                              ; preds = %366
  %373 = getelementptr inbounds %struct.BMOpSlot, ptr %369, i64 1
  %374 = add nuw nsw i32 %368, 1
  %375 = load ptr, ptr %373, align 8, !tbaa !89
  %376 = icmp eq ptr %375, null
  br i1 %376, label %377, label %366, !llvm.loop !97

377:                                              ; preds = %372, %366, %361
  %378 = phi i32 [ -1, %361 ], [ %368, %366 ], [ -1, %372 ]
  %379 = icmp slt i32 %378, 0
  br i1 %379, label %380, label %383

380:                                              ; preds = %377
  %381 = load ptr, ptr @stderr, align 8, !tbaa !80
  %382 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %381, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef nonnull %6) #17
  br label %383

383:                                              ; preds = %377, %380
  %384 = zext nneg i32 %378 to i64
  %385 = getelementptr inbounds %struct.BMOpSlot, ptr %1, i64 %384
  %386 = select i1 %379, ptr null, ptr %385
  %387 = getelementptr inbounds %struct.BMOpSlot, ptr %386, i64 0, i32 1
  %388 = load i32, ptr %387, align 8, !tbaa !91
  %389 = icmp eq i32 %388, 4
  br i1 %389, label %390, label %543

390:                                              ; preds = %383
  %391 = getelementptr inbounds %struct.BMOpSlot, ptr %386, i64 0, i32 4
  store ptr %363, ptr %391, align 8, !tbaa !57
  br label %543

392:                                              ; preds = %116, %116, %116, %116, %116
  %393 = getelementptr inbounds i8, ptr %79, i64 1
  %394 = load i8, ptr %393, align 1, !tbaa !57
  %395 = icmp eq i8 %394, 32
  br i1 %395, label %400, label %396

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %79, i64 1
  %398 = load i8, ptr %397, align 1, !tbaa !57
  %399 = icmp eq i8 %398, 0
  br i1 %399, label %400, label %443

400:                                              ; preds = %396, %392
  %401 = load i32, ptr %54, align 4
  %402 = icmp ult i32 %401, 161
  br i1 %402, label %403, label %408

403:                                              ; preds = %400
  %404 = load ptr, ptr %56, align 8
  %405 = zext nneg i32 %401 to i64
  %406 = getelementptr i8, ptr %404, i64 %405
  %407 = add nuw nsw i32 %401, 16
  store i32 %407, ptr %54, align 4
  br label %411

408:                                              ; preds = %400
  %409 = load ptr, ptr %55, align 8
  %410 = getelementptr i8, ptr %409, i64 8
  store ptr %410, ptr %55, align 8
  br label %411

411:                                              ; preds = %408, %403
  %412 = phi ptr [ %406, %403 ], [ %409, %408 ]
  %413 = load double, ptr %412, align 8
  %414 = load ptr, ptr %1, align 8, !tbaa !89
  %415 = icmp eq ptr %414, null
  br i1 %415, label %427, label %416

416:                                              ; preds = %411, %422
  %417 = phi ptr [ %425, %422 ], [ %414, %411 ]
  %418 = phi i32 [ %424, %422 ], [ 0, %411 ]
  %419 = phi ptr [ %423, %422 ], [ %1, %411 ]
  %420 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %417, i64 noundef 32) #16
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %427, label %422

422:                                              ; preds = %416
  %423 = getelementptr inbounds %struct.BMOpSlot, ptr %419, i64 1
  %424 = add nuw nsw i32 %418, 1
  %425 = load ptr, ptr %423, align 8, !tbaa !89
  %426 = icmp eq ptr %425, null
  br i1 %426, label %427, label %416, !llvm.loop !97

427:                                              ; preds = %422, %416, %411
  %428 = phi i32 [ -1, %411 ], [ %418, %416 ], [ -1, %422 ]
  %429 = icmp slt i32 %428, 0
  br i1 %429, label %430, label %433

430:                                              ; preds = %427
  %431 = load ptr, ptr @stderr, align 8, !tbaa !80
  %432 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %431, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef nonnull %6) #17
  br label %433

433:                                              ; preds = %427, %430
  %434 = zext nneg i32 %428 to i64
  %435 = getelementptr inbounds %struct.BMOpSlot, ptr %1, i64 %434
  %436 = select i1 %429, ptr null, ptr %435
  %437 = getelementptr inbounds %struct.BMOpSlot, ptr %436, i64 0, i32 1
  %438 = load i32, ptr %437, align 8, !tbaa !91
  %439 = icmp eq i32 %438, 3
  br i1 %439, label %440, label %543

440:                                              ; preds = %433
  %441 = fptrunc double %413 to float
  %442 = getelementptr inbounds %struct.BMOpSlot, ptr %436, i64 0, i32 4
  store float %441, ptr %442, align 8, !tbaa !57
  br label %543

443:                                              ; preds = %396, %466
  %444 = phi i32 [ %468, %466 ], [ %82, %396 ]
  %445 = phi ptr [ %469, %466 ], [ %81, %396 ]
  %446 = phi i8 [ %470, %466 ], [ 0, %396 ]
  %447 = phi ptr [ %471, %466 ], [ %79, %396 ]
  %448 = load i8, ptr %447, align 1, !tbaa !57
  %449 = icmp eq i8 %448, 0
  br i1 %449, label %453, label %450

450:                                              ; preds = %443
  %451 = getelementptr inbounds i8, ptr %447, i64 1
  %452 = load i8, ptr %451, align 1, !tbaa !57
  br label %453

453:                                              ; preds = %443, %450
  %454 = phi i8 [ %452, %450 ], [ 0, %443 ]
  switch i8 %454, label %466 [
    i8 102, label %457
    i8 101, label %455
    i8 118, label %456
  ]

455:                                              ; preds = %453
  br label %457

456:                                              ; preds = %453
  br label %457

457:                                              ; preds = %453, %455, %456
  %458 = phi i32 [ 2, %455 ], [ 1, %456 ], [ 8, %453 ]
  %459 = zext nneg i8 %446 to i32
  %460 = and i32 %458, %459
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %462, label %466

462:                                              ; preds = %457
  %463 = trunc i32 %458 to i8
  %464 = or i8 %446, %463
  %465 = getelementptr inbounds i8, ptr %447, i64 1
  br label %466

466:                                              ; preds = %457, %453, %462
  %467 = phi i32 [ 0, %462 ], [ 7, %453 ], [ 4, %457 ]
  %468 = phi i32 [ %444, %462 ], [ %444, %453 ], [ 1850, %457 ]
  %469 = phi ptr [ %445, %462 ], [ %445, %453 ], [ @.str.8, %457 ]
  %470 = phi i8 [ %464, %462 ], [ %446, %453 ], [ %446, %457 ]
  %471 = phi ptr [ %465, %462 ], [ %447, %453 ], [ %447, %457 ]
  switch i32 %467, label %534 [
    i32 0, label %443
    i32 7, label %472
  ], !llvm.loop !155

472:                                              ; preds = %466
  switch i8 %78, label %534 [
    i8 104, label %473
    i8 72, label %488
    i8 97, label %503
    i8 102, label %504
    i8 70, label %519
  ]

473:                                              ; preds = %472
  %474 = load i32, ptr %4, align 8
  %475 = icmp ult i32 %474, 41
  br i1 %475, label %476, label %481

476:                                              ; preds = %473
  %477 = load ptr, ptr %53, align 8
  %478 = zext nneg i32 %474 to i64
  %479 = getelementptr i8, ptr %477, i64 %478
  %480 = add nuw nsw i32 %474, 8
  store i32 %480, ptr %4, align 8
  br label %484

481:                                              ; preds = %473
  %482 = load ptr, ptr %52, align 8
  %483 = getelementptr i8, ptr %482, i64 8
  store ptr %483, ptr %52, align 8
  br label %484

484:                                              ; preds = %481, %476
  %485 = phi ptr [ %479, %476 ], [ %482, %481 ]
  %486 = load i32, ptr %485, align 4
  %487 = trunc i32 %486 to i8
  call fastcc void @bmo_slot_buffer_from_hflag(ptr noundef %0, ptr noundef %1, ptr noundef %1, ptr noundef nonnull %6, i8 noundef zeroext %470, i8 noundef zeroext %487, i8 noundef zeroext 1)
  br label %534

488:                                              ; preds = %472
  %489 = load i32, ptr %4, align 8
  %490 = icmp ult i32 %489, 41
  br i1 %490, label %491, label %496

491:                                              ; preds = %488
  %492 = load ptr, ptr %51, align 8
  %493 = zext nneg i32 %489 to i64
  %494 = getelementptr i8, ptr %492, i64 %493
  %495 = add nuw nsw i32 %489, 8
  store i32 %495, ptr %4, align 8
  br label %499

496:                                              ; preds = %488
  %497 = load ptr, ptr %50, align 8
  %498 = getelementptr i8, ptr %497, i64 8
  store ptr %498, ptr %50, align 8
  br label %499

499:                                              ; preds = %496, %491
  %500 = phi ptr [ %494, %491 ], [ %497, %496 ]
  %501 = load i32, ptr %500, align 4
  %502 = trunc i32 %501 to i8
  call fastcc void @bmo_slot_buffer_from_hflag(ptr noundef %0, ptr noundef %1, ptr noundef %1, ptr noundef nonnull %6, i8 noundef zeroext %470, i8 noundef zeroext %502, i8 noundef zeroext 0)
  br label %534

503:                                              ; preds = %472
  call void @BMO_slot_buffer_from_all(ptr noundef %0, ptr noundef %1, ptr noundef %1, ptr noundef nonnull %6, i8 noundef zeroext %470)
  br label %534

504:                                              ; preds = %472
  %505 = load i32, ptr %4, align 8
  %506 = icmp ult i32 %505, 41
  br i1 %506, label %507, label %512

507:                                              ; preds = %504
  %508 = load ptr, ptr %49, align 8
  %509 = zext nneg i32 %505 to i64
  %510 = getelementptr i8, ptr %508, i64 %509
  %511 = add nuw nsw i32 %505, 8
  store i32 %511, ptr %4, align 8
  br label %515

512:                                              ; preds = %504
  %513 = load ptr, ptr %48, align 8
  %514 = getelementptr i8, ptr %513, i64 8
  store ptr %514, ptr %48, align 8
  br label %515

515:                                              ; preds = %512, %507
  %516 = phi ptr [ %510, %507 ], [ %513, %512 ]
  %517 = load i32, ptr %516, align 4
  %518 = trunc i32 %517 to i16
  call fastcc void @bmo_slot_buffer_from_flag(ptr noundef %0, ptr noundef %1, ptr noundef %1, ptr noundef nonnull %6, i8 noundef zeroext %470, i16 noundef signext %518, i8 noundef zeroext 1)
  br label %534

519:                                              ; preds = %472
  %520 = load i32, ptr %4, align 8
  %521 = icmp ult i32 %520, 41
  br i1 %521, label %522, label %527

522:                                              ; preds = %519
  %523 = load ptr, ptr %47, align 8
  %524 = zext nneg i32 %520 to i64
  %525 = getelementptr i8, ptr %523, i64 %524
  %526 = add nuw nsw i32 %520, 8
  store i32 %526, ptr %4, align 8
  br label %530

527:                                              ; preds = %519
  %528 = load ptr, ptr %46, align 8
  %529 = getelementptr i8, ptr %528, i64 8
  store ptr %529, ptr %46, align 8
  br label %530

530:                                              ; preds = %527, %522
  %531 = phi ptr [ %525, %522 ], [ %528, %527 ]
  %532 = load i32, ptr %531, align 4
  %533 = trunc i32 %532 to i16
  call fastcc void @bmo_slot_buffer_from_flag(ptr noundef %0, ptr noundef %1, ptr noundef %1, ptr noundef nonnull %6, i8 noundef zeroext %470, i16 noundef signext %533, i8 noundef zeroext 0)
  br label %534

534:                                              ; preds = %466, %484, %503, %530, %515, %499, %472
  %535 = phi i32 [ 0, %472 ], [ 0, %499 ], [ 0, %515 ], [ 0, %530 ], [ 0, %503 ], [ 0, %484 ], [ %467, %466 ]
  switch i32 %535, label %582 [
    i32 0, label %543
    i32 4, label %553
  ]

536:                                              ; preds = %116
  %537 = zext i8 %78 to i32
  %538 = load ptr, ptr @stderr, align 8, !tbaa !80
  %539 = ptrtoint ptr %79 to i64
  %540 = sub i64 %539, %76
  %541 = trunc i64 %540 to i32
  %542 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %538, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.BMO_op_vinitf, i32 noundef %537, i32 noundef %541, ptr noundef %7) #17
  br label %543

543:                                              ; preds = %440, %433, %390, %383, %347, %340, %305, %298, %181, %174, %534, %260, %262, %136, %223, %536, %116, %116, %116, %114
  %544 = phi i32 [ %82, %114 ], [ %82, %536 ], [ %82, %223 ], [ %138, %136 ], [ %82, %116 ], [ %82, %116 ], [ %82, %116 ], [ %82, %262 ], [ %82, %260 ], [ %468, %534 ], [ %82, %174 ], [ %82, %181 ], [ %82, %298 ], [ %82, %305 ], [ %82, %340 ], [ %82, %347 ], [ %82, %383 ], [ %82, %390 ], [ %82, %433 ], [ %82, %440 ]
  %545 = phi ptr [ %81, %114 ], [ %81, %536 ], [ %81, %223 ], [ %139, %136 ], [ %81, %116 ], [ %81, %116 ], [ %81, %116 ], [ %81, %262 ], [ %81, %260 ], [ %469, %534 ], [ %81, %174 ], [ %81, %181 ], [ %81, %298 ], [ %81, %305 ], [ %81, %340 ], [ %81, %347 ], [ %81, %383 ], [ %81, %390 ], [ %81, %433 ], [ %81, %440 ]
  %546 = phi i8 [ 0, %114 ], [ 0, %536 ], [ 1, %223 ], [ %140, %136 ], [ 0, %116 ], [ 0, %116 ], [ 0, %116 ], [ 1, %262 ], [ 1, %260 ], [ 1, %534 ], [ 1, %174 ], [ 1, %181 ], [ 1, %298 ], [ 1, %305 ], [ 1, %340 ], [ 1, %347 ], [ 1, %383 ], [ 1, %390 ], [ 1, %433 ], [ 1, %440 ]
  %547 = phi ptr [ %96, %114 ], [ %79, %536 ], [ %79, %223 ], [ %118, %136 ], [ %79, %116 ], [ %79, %116 ], [ %79, %116 ], [ %79, %262 ], [ %79, %260 ], [ %471, %534 ], [ %79, %174 ], [ %79, %181 ], [ %79, %298 ], [ %79, %305 ], [ %79, %340 ], [ %79, %347 ], [ %79, %383 ], [ %79, %390 ], [ %79, %433 ], [ %79, %440 ]
  %548 = getelementptr inbounds i8, ptr %547, i64 1
  %549 = load i8, ptr %548, align 1, !tbaa !57
  %550 = icmp eq i8 %549, 0
  br i1 %550, label %551, label %77, !llvm.loop !156

551:                                              ; preds = %543, %84, %36
  %552 = load ptr, ptr @MEM_freeN, align 8, !tbaa !80
  call void %552(ptr noundef %7) #15
  br label %582

553:                                              ; preds = %136, %92, %534, %111
  %554 = phi i32 [ 1751, %111 ], [ %468, %534 ], [ %138, %136 ], [ 1745, %92 ]
  %555 = phi ptr [ @.str.6, %111 ], [ %469, %534 ], [ %139, %136 ], [ @.str.5, %92 ]
  %556 = phi ptr [ %88, %111 ], [ %471, %534 ], [ %118, %136 ], [ %88, %92 ]
  %557 = load ptr, ptr @stderr, align 8, !tbaa !80
  %558 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %557, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.BMO_op_vinitf) #17
  %559 = load ptr, ptr @stderr, align 8, !tbaa !80
  %560 = ptrtoint ptr %556 to i64
  %561 = ptrtoint ptr %7 to i64
  %562 = sub i64 %560, %561
  %563 = trunc i64 %562 to i32
  %564 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %559, ptr noundef nonnull @.str.11, ptr noundef %3, i32 noundef %563) #17
  %565 = load ptr, ptr @stderr, align 8, !tbaa !80
  %566 = call i64 @fwrite(ptr nonnull @.str.12, i64 9, i64 1, ptr %565) #17
  %567 = icmp sgt i32 %563, 0
  br i1 %567, label %568, label %574

568:                                              ; preds = %553, %568
  %569 = phi i32 [ %572, %568 ], [ 0, %553 ]
  %570 = load ptr, ptr @stderr, align 8, !tbaa !80
  %571 = call i32 @fputc(i32 32, ptr %570)
  %572 = add nuw nsw i32 %569, 1
  %573 = icmp eq i32 %572, %563
  br i1 %573, label %574, label %568, !llvm.loop !157

574:                                              ; preds = %568, %553
  %575 = load ptr, ptr @stderr, align 8, !tbaa !80
  %576 = call i64 @fwrite(ptr nonnull @.str.13, i64 2, i64 1, ptr %575) #17
  %577 = load ptr, ptr @stderr, align 8, !tbaa !80
  %578 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %577, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %554) #17
  %579 = load ptr, ptr @stderr, align 8, !tbaa !80
  %580 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %579, ptr noundef nonnull @.str.16, ptr noundef %555) #17
  %581 = load ptr, ptr @MEM_freeN, align 8, !tbaa !80
  call void %581(ptr noundef %7) #15
  call void @BMO_op_finish(ptr poison, ptr noundef %1)
  br label %582

582:                                              ; preds = %534, %574, %551, %32
  %583 = phi i8 [ 0, %32 ], [ 0, %574 ], [ 1, %551 ], [ undef, %534 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #15
  ret i8 %583
}

declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BMO_op_initf(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ...) local_unnamed_addr #1 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  call void @llvm.va_start(ptr nonnull %5)
  %6 = call zeroext i8 @BMO_op_vinitf(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5)
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef nonnull @__func__.BMO_op_initf)
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi i8 [ 0, %8 ], [ 1, %4 ]
  call void @llvm.va_end(ptr %5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  ret i8 %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #13

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #13

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BMO_op_callf(ptr noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #1 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca %struct.BMOperator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %5) #15
  call void @llvm.va_start(ptr nonnull %4)
  %6 = call zeroext i8 @BMO_op_vinitf(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef nonnull @__func__.BMO_op_callf, ptr noundef %2)
  br label %26

10:                                               ; preds = %3
  call void @BM_mesh_elem_toolflags_ensure(ptr noundef %0) #15
  call void @BMO_push(ptr noundef %0, ptr nonnull poison)
  %11 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %12 = load i32, ptr %11, align 8, !tbaa !40
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.BMOperator, ptr %5, i64 0, i32 5
  %16 = load i32, ptr %15, align 4, !tbaa !86
  call void @bmesh_edit_begin(ptr noundef %0, i32 noundef %16) #15
  br label %17

17:                                               ; preds = %14, %10
  %18 = getelementptr inbounds %struct.BMOperator, ptr %5, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !94
  call void %19(ptr noundef %0, ptr noundef nonnull %5) #15
  %20 = load i32, ptr %11, align 8, !tbaa !40
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.BMOperator, ptr %5, i64 0, i32 5
  %24 = load i32, ptr %23, align 4, !tbaa !86
  call void @bmesh_edit_end(ptr noundef %0, i32 noundef %24) #15
  br label %25

25:                                               ; preds = %17, %22
  call void @BMO_pop(ptr noundef %0)
  call void @BMO_op_finish(ptr poison, ptr noundef nonnull %5)
  br label %26

26:                                               ; preds = %25, %8
  %27 = phi i8 [ 1, %25 ], [ 0, %8 ]
  call void @llvm.va_end(ptr %4)
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  ret i8 %27
}

declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #5

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #5

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #5

declare void @bmiter__edge_of_vert_begin(ptr noundef) #5

declare ptr @bmiter__edge_of_vert_step(ptr noundef) #5

declare void @bmiter__face_of_vert_begin(ptr noundef) #5

declare ptr @bmiter__face_of_vert_step(ptr noundef) #5

declare void @bmiter__loop_of_vert_begin(ptr noundef) #5

declare ptr @bmiter__loop_of_vert_step(ptr noundef) #5

declare void @bmiter__vert_of_edge_begin(ptr noundef) #5

declare ptr @bmiter__vert_of_edge_step(ptr noundef) #5

declare void @bmiter__face_of_edge_begin(ptr noundef) #5

declare ptr @bmiter__face_of_edge_step(ptr noundef) #5

declare void @bmiter__vert_of_face_begin(ptr noundef) #5

declare ptr @bmiter__vert_of_face_step(ptr noundef) #5

declare void @bmiter__edge_of_face_begin(ptr noundef) #5

declare ptr @bmiter__edge_of_face_step(ptr noundef) #5

declare void @bmiter__loop_of_face_begin(ptr noundef) #5

declare ptr @bmiter__loop_of_face_step(ptr noundef) #5

declare void @bmiter__loop_of_loop_begin(ptr noundef) #5

declare ptr @bmiter__loop_of_loop_step(ptr noundef) #5

declare void @bmiter__loop_of_edge_begin(ptr noundef) #5

declare ptr @bmiter__loop_of_edge_step(ptr noundef) #5

declare ptr @BLI_ghash_lookup_p(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @BM_mesh_elem_hflag_count_enabled(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

declare i32 @BM_mesh_elem_hflag_count_disabled(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare ptr @BLI_mempool_calloc(ptr noundef) local_unnamed_addr #5

declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #5

declare ptr @BLI_mempool_alloc(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #14 = { nofree nounwind }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { cold }

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
!34 = !{!35, !39, i64 1304}
!35 = !{!"BMOperator", !36, i64 0, !36, i64 640, !38, i64 1280, !38, i64 1288, !39, i64 1296, !39, i64 1300, !39, i64 1304}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!"any pointer", !36, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = !{!41, !39, i64 128}
!41 = !{!"BMesh", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !36, i64 28, !36, i64 29, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !38, i64 80, !39, i64 88, !39, i64 92, !39, i64 96, !38, i64 104, !38, i64 112, !38, i64 120, !39, i64 128, !38, i64 136, !42, i64 144, !42, i64 344, !42, i64 544, !42, i64 744, !43, i64 944, !39, i64 948, !39, i64 952, !39, i64 956, !44, i64 960, !38, i64 976, !44, i64 984, !38, i64 1000}
!42 = !{!"CustomData", !38, i64 0, !36, i64 8, !39, i64 172, !39, i64 176, !39, i64 180, !38, i64 184, !38, i64 192}
!43 = !{!"short", !36, i64 0}
!44 = !{!"ListBase", !38, i64 0, !38, i64 8}
!45 = !{!41, !38, i64 104}
!46 = !{!41, !38, i64 112}
!47 = !{!41, !38, i64 120}
!48 = !{!41, !39, i64 956}
!49 = !{!41, !39, i64 0}
!50 = !{!41, !39, i64 4}
!51 = !{!41, !39, i64 12}
!52 = !{!53, !36, i64 60}
!53 = !{!"BMIter", !36, i64 0, !38, i64 40, !38, i64 48, !39, i64 56, !36, i64 60}
!54 = !{!53, !38, i64 40}
!55 = !{!53, !38, i64 48}
!56 = !{!41, !38, i64 32}
!57 = !{!36, !36, i64 0}
!58 = !{!59, !38, i64 16}
!59 = !{!"BMElemF", !60, i64 0, !38, i64 16}
!60 = !{!"BMHeader", !38, i64 0, !39, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!61 = !{!60, !39, i64 8}
!62 = !{!59, !36, i64 14}
!63 = distinct !{!63, !64, !65}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = !{!41, !38, i64 40}
!67 = distinct !{!67, !64, !65}
!68 = !{!41, !38, i64 56}
!69 = distinct !{!69, !64, !65}
!70 = !{i64 0, i64 2, !71}
!71 = !{!43, !43, i64 0}
!72 = distinct !{!72, !64, !65}
!73 = distinct !{!73, !64, !65}
!74 = distinct !{!74, !64, !65}
!75 = !{!41, !36, i64 28}
!76 = distinct !{!76, !64, !65}
!77 = distinct !{!77, !64, !65}
!78 = distinct !{!78, !64, !65}
!79 = !{!39, !39, i64 0}
!80 = !{!38, !38, i64 0}
!81 = !{!82, !38, i64 0}
!82 = !{!"BMOpDefine", !38, i64 0, !36, i64 8, !36, i64 648, !38, i64 1288, !39, i64 1296}
!83 = distinct !{!83, !64, !65}
!84 = !{!35, !39, i64 1296}
!85 = !{!82, !39, i64 1296}
!86 = !{!35, !39, i64 1300}
!87 = !{!88, !39, i64 32}
!88 = !{!"BMOSlotType", !36, i64 0, !39, i64 32, !36, i64 36}
!89 = !{!90, !38, i64 0}
!90 = !{!"BMOpSlot", !38, i64 0, !39, i64 8, !36, i64 12, !39, i64 16, !36, i64 24}
!91 = !{!90, !39, i64 8}
!92 = distinct !{!92, !64, !65}
!93 = !{!82, !38, i64 1288}
!94 = !{!35, !38, i64 1280}
!95 = !{!35, !38, i64 1288}
!96 = distinct !{!96, !64, !65}
!97 = distinct !{!97, !64, !65}
!98 = !{!90, !39, i64 16}
!99 = !{!100, !36, i64 12}
!100 = !{!"BMElem", !60, i64 0}
!101 = distinct !{!101, !64, !65}
!102 = distinct !{!102, !64, !65}
!103 = !{!104, !38, i64 8}
!104 = !{!"GHashIterator", !38, i64 0, !38, i64 8, !39, i64 16}
!105 = !{!106, !38, i64 8}
!106 = !{!"_gh_Entry", !38, i64 0, !38, i64 8, !38, i64 16}
!107 = !{!106, !38, i64 16}
!108 = distinct !{!108, !64, !65}
!109 = !{i64 0, i64 4, !79, i64 0, i64 4, !110, i64 0, i64 8, !80, i64 0, i64 12, !57, i64 0, i64 8, !80, i64 0, i64 8, !80}
!110 = !{!111, !111, i64 0}
!111 = !{!"float", !36, i64 0}
!112 = !{!113, !43, i64 0}
!113 = !{!"BMFlagLayer", !43, i64 0}
!114 = distinct !{!114, !64, !65}
!115 = distinct !{!115, !64, !65}
!116 = distinct !{!116, !64, !65}
!117 = distinct !{!117, !64, !65}
!118 = !{!41, !38, i64 960}
!119 = !{!120, !38, i64 0}
!120 = !{!"BMEditSelection", !38, i64 0, !38, i64 8, !38, i64 16, !36, i64 24}
!121 = !{!120, !36, i64 24}
!122 = !{!120, !38, i64 16}
!123 = !{!60, !36, i64 13}
!124 = distinct !{!124, !64, !65}
!125 = !{!41, !38, i64 976}
!126 = !{!59, !36, i64 12}
!127 = distinct !{!127, !64, !65}
!128 = distinct !{!128, !64, !65}
!129 = distinct !{!129, !64, !65}
!130 = distinct !{!130, !64, !65}
!131 = distinct !{!131, !64, !65}
!132 = distinct !{!132, !64, !65}
!133 = distinct !{!133, !64, !65}
!134 = distinct !{!134, !64, !65}
!135 = distinct !{!135, !64, !65}
!136 = distinct !{!136, !64, !65}
!137 = distinct !{!137, !64, !65}
!138 = distinct !{!138, !64, !65}
!139 = !{!60, !36, i64 12}
!140 = distinct !{!140, !64, !65}
!141 = distinct !{!141, !64, !65}
!142 = !{!143, !38, i64 0}
!143 = !{!"BMOIter", !38, i64 0, !39, i64 8, !104, i64 16, !38, i64 40, !36, i64 48}
!144 = !{!143, !39, i64 8}
!145 = !{!143, !36, i64 48}
!146 = distinct !{!146, !64, !65}
!147 = !{!143, !38, i64 40}
!148 = !{!41, !38, i64 984}
!149 = !{!150, !39, i64 16}
!150 = !{!"BMOpError", !38, i64 0, !38, i64 8, !39, i64 16, !38, i64 24, !38, i64 32}
!151 = distinct !{!151, !64, !65}
!152 = !{!150, !38, i64 32}
!153 = !{!150, !38, i64 24}
!154 = !{!44, !38, i64 0}
!155 = distinct !{!155, !65}
!156 = distinct !{!156, !64, !65}
!157 = distinct !{!157, !64, !65}
