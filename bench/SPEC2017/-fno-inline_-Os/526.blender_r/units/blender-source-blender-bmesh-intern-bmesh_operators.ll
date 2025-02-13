; ModuleID = 'blender/source/blender/bmesh/intern/bmesh_operators.c'
source_filename = "blender/source/blender/bmesh/intern/bmesh_operators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMIter = type { %union.anon.0, ptr, ptr, i32, i8 }
%union.anon.0 = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BMO_op_flag_enable(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = or i32 %5, %2
  store i32 %6, ptr %4, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BMO_op_flag_disable(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = xor i32 %2, -1
  %5 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = and i32 %6, %4
  store i32 %7, ptr %5, align 8, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BMO_push(ptr nocapture noundef %0, ptr nocapture readnone %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %4 = load i32, ptr %3, align 8, !tbaa !40
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr %3, align 8, !tbaa !40
  %6 = icmp sgt i32 %4, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call fastcc void @bmo_flag_layer_alloc(ptr noundef nonnull %0) #16
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @bmo_flag_layer_clear(ptr noundef nonnull %0) #16
  br label %9

9:                                                ; preds = %8, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bmo_flag_layer_alloc(ptr nocapture noundef %0) unnamed_addr #1 !PGOFuncName !45 {
  %2 = alloca %struct.BMIter, align 8
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 21
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  %11 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 31
  %12 = load i32, ptr %11, align 4, !tbaa !49
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 1
  %15 = add nsw i32 %12, 1
  store i32 %15, ptr %11, align 4, !tbaa !49
  %16 = shl i32 %15, 1
  %17 = load i32, ptr %0, align 8, !tbaa !50
  %18 = tail call ptr @BLI_mempool_create(i32 noundef %16, i32 noundef %17, i32 noundef 512, i32 noundef 0) #17
  store ptr %18, ptr %5, align 8, !tbaa !46
  %19 = load i32, ptr %11, align 4, !tbaa !49
  %20 = shl i32 %19, 1
  %21 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !51
  %23 = tail call ptr @BLI_mempool_create(i32 noundef %20, i32 noundef %22, i32 noundef 512, i32 noundef 0) #17
  store ptr %23, ptr %7, align 8, !tbaa !47
  %24 = load i32, ptr %11, align 4, !tbaa !49
  %25 = shl i32 %24, 1
  %26 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !52
  %28 = tail call ptr @BLI_mempool_create(i32 noundef %25, i32 noundef %27, i32 noundef 512, i32 noundef 0) #17
  store ptr %28, ptr %9, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #18
  %29 = load ptr, ptr %5, align 8, !tbaa !46
  %30 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef nonnull %0, i8 noundef zeroext 1) #16
  %31 = icmp eq ptr %30, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %1, %32
  %33 = phi ptr [ %39, %32 ], [ %30, %1 ]
  %34 = phi i32 [ %40, %32 ], [ 0, %1 ]
  %35 = getelementptr inbounds %struct.BMElemF, ptr %33, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !53
  %37 = call ptr @BLI_mempool_calloc(ptr noundef %29) #17
  store ptr %37, ptr %35, align 8, !tbaa !53
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %37, ptr align 1 %36, i64 %14, i1 false)
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %33, i32 noundef %34) #16
  %38 = getelementptr inbounds %struct.BMHeader, ptr %33, i64 0, i32 4
  store i8 0, ptr %38, align 2, !tbaa !56
  %39 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #16
  %40 = add nuw nsw i32 %34, 1
  %41 = icmp eq ptr %39, null
  br i1 %41, label %42, label %32, !llvm.loop !57

42:                                               ; preds = %32, %1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #18
  %43 = load ptr, ptr %7, align 8, !tbaa !47
  %44 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef nonnull %0, i8 noundef zeroext 2) #16
  %45 = icmp eq ptr %44, null
  br i1 %45, label %56, label %46

46:                                               ; preds = %42, %46
  %47 = phi ptr [ %53, %46 ], [ %44, %42 ]
  %48 = phi i32 [ %54, %46 ], [ 0, %42 ]
  %49 = getelementptr inbounds %struct.BMElemF, ptr %47, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !53
  %51 = call ptr @BLI_mempool_calloc(ptr noundef %43) #17
  store ptr %51, ptr %49, align 8, !tbaa !53
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %51, ptr align 1 %50, i64 %14, i1 false)
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %47, i32 noundef %48) #16
  %52 = getelementptr inbounds %struct.BMHeader, ptr %47, i64 0, i32 4
  store i8 0, ptr %52, align 2, !tbaa !56
  %53 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #16
  %54 = add nuw nsw i32 %48, 1
  %55 = icmp eq ptr %53, null
  br i1 %55, label %56, label %46, !llvm.loop !59

56:                                               ; preds = %46, %42
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #18
  %57 = load ptr, ptr %9, align 8, !tbaa !48
  %58 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %0, i8 noundef zeroext 3) #16
  %59 = icmp eq ptr %58, null
  br i1 %59, label %70, label %60

60:                                               ; preds = %56, %60
  %61 = phi i32 [ %68, %60 ], [ 0, %56 ]
  %62 = phi ptr [ %67, %60 ], [ %58, %56 ]
  %63 = getelementptr inbounds %struct.BMElemF, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !53
  %65 = call ptr @BLI_mempool_calloc(ptr noundef %57) #17
  store ptr %65, ptr %63, align 8, !tbaa !53
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %65, ptr align 1 %64, i64 %14, i1 false)
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %62, i32 noundef %61) #16
  %66 = getelementptr inbounds %struct.BMHeader, ptr %62, i64 0, i32 4
  store i8 0, ptr %66, align 2, !tbaa !56
  %67 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #16
  %68 = add nuw nsw i32 %61, 1
  %69 = icmp eq ptr %67, null
  br i1 %69, label %70, label %60, !llvm.loop !60

70:                                               ; preds = %60, %56
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #18
  call void @BLI_mempool_destroy(ptr noundef %6) #17
  call void @BLI_mempool_destroy(ptr noundef %8) #17
  call void @BLI_mempool_destroy(ptr noundef %10) #17
  %71 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %72 = load i8, ptr %71, align 4, !tbaa !61
  %73 = and i8 %72, -12
  store i8 %73, ptr %71, align 4, !tbaa !61
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bmo_flag_layer_clear(ptr nocapture noundef %0) unnamed_addr #1 !PGOFuncName !62 {
  %2 = alloca %struct.BMIter, align 8
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 31
  %6 = load i32, ptr %5, align 4, !tbaa !49
  %7 = add nsw i32 %6, -1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #18
  %8 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef %0, i8 noundef zeroext 1) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %1
  %11 = sext i32 %7 to i64
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ 0, %10 ], [ %19, %12 ]
  %14 = phi ptr [ %8, %10 ], [ %18, %12 ]
  %15 = getelementptr inbounds %struct.BMElemF, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !53
  %17 = getelementptr inbounds %struct.BMFlagLayer, ptr %16, i64 %11
  store i16 0, ptr %17, align 2, !tbaa.struct !63
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %14, i32 noundef %13) #16
  %18 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #16
  %19 = add nuw nsw i32 %13, 1
  %20 = icmp eq ptr %18, null
  br i1 %20, label %21, label %12, !llvm.loop !65

21:                                               ; preds = %12, %1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #18
  %22 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 2) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %21
  %25 = sext i32 %7 to i64
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i32 [ 0, %24 ], [ %33, %26 ]
  %28 = phi ptr [ %22, %24 ], [ %32, %26 ]
  %29 = getelementptr inbounds %struct.BMElemF, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !53
  %31 = getelementptr inbounds %struct.BMFlagLayer, ptr %30, i64 %25
  store i16 0, ptr %31, align 2, !tbaa.struct !63
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %28, i32 noundef %27) #16
  %32 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #16
  %33 = add nuw nsw i32 %27, 1
  %34 = icmp eq ptr %32, null
  br i1 %34, label %35, label %26, !llvm.loop !66

35:                                               ; preds = %26, %21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #18
  %36 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %0, i8 noundef zeroext 3) #16
  %37 = icmp eq ptr %36, null
  br i1 %37, label %49, label %38

38:                                               ; preds = %35
  %39 = sext i32 %7 to i64
  br label %40

40:                                               ; preds = %38, %40
  %41 = phi i32 [ 0, %38 ], [ %47, %40 ]
  %42 = phi ptr [ %36, %38 ], [ %46, %40 ]
  %43 = getelementptr inbounds %struct.BMElemF, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !53
  %45 = getelementptr inbounds %struct.BMFlagLayer, ptr %44, i64 %39
  store i16 0, ptr %45, align 2, !tbaa.struct !63
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %42, i32 noundef %41) #16
  %46 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #16
  %47 = add nuw nsw i32 %41, 1
  %48 = icmp eq ptr %46, null
  br i1 %48, label %49, label %40, !llvm.loop !67

49:                                               ; preds = %40, %35
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #18
  %50 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %51 = load i8, ptr %50, align 4, !tbaa !61
  %52 = and i8 %51, -12
  store i8 %52, ptr %50, align 4, !tbaa !61
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BMO_pop(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %3 = load i32, ptr %2, align 8, !tbaa !40
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  tail call fastcc void @bmo_flag_layer_free(ptr noundef nonnull %0) #16
  %6 = load i32, ptr %2, align 8, !tbaa !40
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ %3, %1 ]
  %9 = add nsw i32 %8, -1
  store i32 %9, ptr %2, align 8, !tbaa !40
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bmo_flag_layer_free(ptr nocapture noundef %0) unnamed_addr #1 !PGOFuncName !68 {
  %2 = alloca %struct.BMIter, align 8
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 21
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  %11 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 31
  %12 = load i32, ptr %11, align 4, !tbaa !49
  %13 = add nsw i32 %12, -1
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 1
  store i32 %13, ptr %11, align 4, !tbaa !49
  %16 = trunc i64 %15 to i32
  %17 = load i32, ptr %0, align 8, !tbaa !50
  %18 = tail call ptr @BLI_mempool_create(i32 noundef %16, i32 noundef %17, i32 noundef 512, i32 noundef 0) #17
  store ptr %18, ptr %5, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !51
  %21 = tail call ptr @BLI_mempool_create(i32 noundef %16, i32 noundef %20, i32 noundef 512, i32 noundef 0) #17
  store ptr %21, ptr %7, align 8, !tbaa !47
  %22 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !52
  %24 = tail call ptr @BLI_mempool_create(i32 noundef %16, i32 noundef %23, i32 noundef 512, i32 noundef 0) #17
  store ptr %24, ptr %9, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #18
  %25 = load ptr, ptr %5, align 8, !tbaa !46
  %26 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef nonnull %0, i8 noundef zeroext 1) #16
  %27 = icmp eq ptr %26, null
  br i1 %27, label %38, label %28

28:                                               ; preds = %1, %28
  %29 = phi ptr [ %35, %28 ], [ %26, %1 ]
  %30 = phi i32 [ %36, %28 ], [ 0, %1 ]
  %31 = getelementptr inbounds %struct.BMElemF, ptr %29, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !53
  %33 = call ptr @BLI_mempool_alloc(ptr noundef %25) #17
  store ptr %33, ptr %31, align 8, !tbaa !53
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %33, ptr align 1 %32, i64 %15, i1 false)
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %29, i32 noundef %30) #16
  %34 = getelementptr inbounds %struct.BMHeader, ptr %29, i64 0, i32 4
  store i8 0, ptr %34, align 2, !tbaa !56
  %35 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #16
  %36 = add nuw nsw i32 %30, 1
  %37 = icmp eq ptr %35, null
  br i1 %37, label %38, label %28, !llvm.loop !69

38:                                               ; preds = %28, %1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #18
  %39 = load ptr, ptr %7, align 8, !tbaa !47
  %40 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef nonnull %0, i8 noundef zeroext 2) #16
  %41 = icmp eq ptr %40, null
  br i1 %41, label %52, label %42

42:                                               ; preds = %38, %42
  %43 = phi ptr [ %49, %42 ], [ %40, %38 ]
  %44 = phi i32 [ %50, %42 ], [ 0, %38 ]
  %45 = getelementptr inbounds %struct.BMElemF, ptr %43, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !53
  %47 = call ptr @BLI_mempool_alloc(ptr noundef %39) #17
  store ptr %47, ptr %45, align 8, !tbaa !53
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %47, ptr align 1 %46, i64 %15, i1 false)
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %43, i32 noundef %44) #16
  %48 = getelementptr inbounds %struct.BMHeader, ptr %43, i64 0, i32 4
  store i8 0, ptr %48, align 2, !tbaa !56
  %49 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #16
  %50 = add nuw nsw i32 %44, 1
  %51 = icmp eq ptr %49, null
  br i1 %51, label %52, label %42, !llvm.loop !70

52:                                               ; preds = %42, %38
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #18
  %53 = load ptr, ptr %9, align 8, !tbaa !48
  %54 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %0, i8 noundef zeroext 3) #16
  %55 = icmp eq ptr %54, null
  br i1 %55, label %66, label %56

56:                                               ; preds = %52, %56
  %57 = phi i32 [ %64, %56 ], [ 0, %52 ]
  %58 = phi ptr [ %63, %56 ], [ %54, %52 ]
  %59 = getelementptr inbounds %struct.BMElemF, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !53
  %61 = call ptr @BLI_mempool_alloc(ptr noundef %53) #17
  store ptr %61, ptr %59, align 8, !tbaa !53
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %61, ptr align 1 %60, i64 %15, i1 false)
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %58, i32 noundef %57) #16
  %62 = getelementptr inbounds %struct.BMHeader, ptr %58, i64 0, i32 4
  store i8 0, ptr %62, align 2, !tbaa !56
  %63 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #16
  %64 = add nuw nsw i32 %57, 1
  %65 = icmp eq ptr %63, null
  br i1 %65, label %66, label %56, !llvm.loop !71

66:                                               ; preds = %56, %52
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #18
  call void @BLI_mempool_destroy(ptr noundef %6) #17
  call void @BLI_mempool_destroy(ptr noundef %8) #17
  call void @BLI_mempool_destroy(ptr noundef %10) #17
  %67 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %68 = load i8, ptr %67, align 4, !tbaa !61
  %69 = and i8 %68, -12
  store i8 %69, ptr %67, align 4, !tbaa !61
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BMO_op_init(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 {
  %5 = tail call i32 @BMO_opcode_from_opname(ptr noundef %3) #16
  %6 = icmp eq i32 %5, -1
  %7 = select i1 %6, i32 0, i32 %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1312) %1, i8 0, i64 1312, i1 false)
  %8 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 4
  store i32 %7, ptr %8, align 8, !tbaa !72
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds [0 x ptr], ptr @bmo_opdefines, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !73
  %12 = getelementptr inbounds %struct.BMOpDefine, ptr %11, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !74
  %14 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 5
  store i32 %13, ptr %14, align 4, !tbaa !76
  %15 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  store i32 %2, ptr %15, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.BMOpDefine, ptr %11, i64 0, i32 1
  tail call fastcc void @bmo_op_slots_init(ptr noundef nonnull %16, ptr noundef %1) #16
  %17 = load ptr, ptr %10, align 8, !tbaa !73
  %18 = getelementptr inbounds %struct.BMOpDefine, ptr %17, i64 0, i32 2
  %19 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  tail call fastcc void @bmo_op_slots_init(ptr noundef nonnull %18, ptr noundef nonnull %19) #16
  %20 = load ptr, ptr %10, align 8, !tbaa !73
  %21 = getelementptr inbounds %struct.BMOpDefine, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !77
  %23 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 2
  store ptr %22, ptr %23, align 8, !tbaa !78
  %24 = tail call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @__func__.BMO_op_init) #17
  %25 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 3
  store ptr %24, ptr %25, align 8, !tbaa !79
  tail call void @BLI_memarena_use_calloc(ptr noundef %24) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BMO_opcode_from_opname(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load i32, ptr @bmo_opdefines_total, align 4, !tbaa !80
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = zext i32 %2 to i64
  br label %6

6:                                                ; preds = %4, %13
  %7 = phi i64 [ 0, %4 ], [ %14, %13 ]
  %8 = getelementptr inbounds [0 x ptr], ptr @bmo_opdefines, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !73
  %10 = load ptr, ptr %9, align 8, !tbaa !81
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %0) #19
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %6
  %14 = add nuw nsw i64 %7, 1
  %15 = icmp eq i64 %14, %5
  br i1 %15, label %18, label %6, !llvm.loop !82

16:                                               ; preds = %6
  %17 = trunc i64 %7 to i32
  br label %18

18:                                               ; preds = %13, %16, %1
  %19 = phi i32 [ -1, %1 ], [ %17, %16 ], [ -1, %13 ]
  ret i32 %19
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bmo_op_slots_init(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 !PGOFuncName !83 {
  %3 = getelementptr inbounds %struct.BMOSlotType, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !84
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %26, label %6

6:                                                ; preds = %2, %20
  %7 = phi i32 [ %24, %20 ], [ %4, %2 ]
  %8 = phi i64 [ %22, %20 ], [ 0, %2 ]
  %9 = phi i32 [ %21, %20 ], [ 0, %2 ]
  %10 = getelementptr inbounds %struct.BMOSlotType, ptr %0, i64 %8
  %11 = getelementptr inbounds %struct.BMOpSlot, ptr %1, i64 %8
  store ptr %10, ptr %11, align 8, !tbaa !86
  %12 = getelementptr inbounds %struct.BMOpSlot, ptr %1, i64 %8, i32 1
  store i32 %7, ptr %12, align 8, !tbaa !88
  %13 = getelementptr inbounds %struct.BMOpSlot, ptr %1, i64 %8, i32 2
  %14 = getelementptr inbounds %struct.BMOSlotType, ptr %0, i64 %8, i32 2
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %13, align 4
  %16 = icmp eq i32 %7, 10
  br i1 %16, label %17, label %20

17:                                               ; preds = %6
  %18 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.19) #17
  %19 = getelementptr inbounds %struct.BMOpSlot, ptr %1, i64 %8, i32 4
  store ptr %18, ptr %19, align 8, !tbaa !89
  br label %20

20:                                               ; preds = %17, %6
  %21 = add i32 %9, 1
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.BMOSlotType, ptr %0, i64 %22, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !84
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %6, !llvm.loop !90

26:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_memarena_use_calloc(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BMO_op_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  tail call void @BM_mesh_elem_toolflags_ensure(ptr noundef %0) #17
  tail call void @BMO_push(ptr noundef %0, ptr poison) #16
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %4 = load i32, ptr %3, align 8, !tbaa !40
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !76
  tail call void @bmesh_edit_begin(ptr noundef nonnull %0, i32 noundef %8) #17
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !78
  tail call void %11(ptr noundef nonnull %0, ptr noundef %1) #17
  %12 = load i32, ptr %3, align 8, !tbaa !40
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 5
  %16 = load i32, ptr %15, align 4, !tbaa !76
  tail call void @bmesh_edit_end(ptr noundef nonnull %0, i32 noundef %16) #17
  br label %17

17:                                               ; preds = %14, %9
  tail call void @BMO_pop(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: optsize
declare void @BM_mesh_elem_toolflags_ensure(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @bmesh_edit_begin(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @bmesh_edit_end(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BMO_op_finish(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !72
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [0 x ptr], ptr @bmo_opdefines, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !73
  %8 = getelementptr inbounds %struct.BMOpDefine, ptr %7, i64 0, i32 1
  tail call fastcc void @bmo_op_slots_free(ptr noundef nonnull %8, ptr noundef %1) #16
  %9 = load i32, ptr %3, align 8, !tbaa !72
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [0 x ptr], ptr @bmo_opdefines, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !73
  %13 = getelementptr inbounds %struct.BMOpDefine, ptr %12, i64 0, i32 2
  %14 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  tail call fastcc void @bmo_op_slots_free(ptr noundef nonnull %13, ptr noundef nonnull %14) #16
  %15 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !79
  tail call void @BLI_memarena_free(ptr noundef %16) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bmo_op_slots_free(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !91 {
  %3 = getelementptr inbounds %struct.BMOSlotType, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !84
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %2, %15
  %7 = phi i64 [ %17, %15 ], [ 0, %2 ]
  %8 = phi i32 [ %16, %15 ], [ 0, %2 ]
  %9 = getelementptr inbounds %struct.BMOpSlot, ptr %1, i64 %7, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !88
  %11 = icmp eq i32 %10, 10
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.BMOpSlot, ptr %1, i64 %7, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !89
  tail call void @BLI_ghash_free(ptr noundef %14, ptr noundef null, ptr noundef null) #17
  br label %15

15:                                               ; preds = %12, %6
  %16 = add i32 %8, 1
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.BMOSlotType, ptr %0, i64 %17, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !84
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %6, !llvm.loop !92

21:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: optsize
declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BMO_slot_exists(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = tail call fastcc i32 @bmo_name_to_slotcode(ptr noundef %0, ptr noundef %1) #16
  %4 = icmp sgt i32 %3, -1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @bmo_name_to_slotcode(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !93 {
  %3 = load ptr, ptr %0, align 8, !tbaa !86
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2, %11
  %6 = phi ptr [ %14, %11 ], [ %3, %2 ]
  %7 = phi i32 [ %13, %11 ], [ 0, %2 ]
  %8 = phi ptr [ %12, %11 ], [ %0, %2 ]
  %9 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %6, i64 noundef 32) #19
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.BMOpSlot, ptr %8, i64 1
  %13 = add nuw nsw i32 %7, 1
  %14 = load ptr, ptr %12, align 8, !tbaa !86
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5, !llvm.loop !94

16:                                               ; preds = %5, %11, %2
  %17 = phi i32 [ -1, %2 ], [ -1, %11 ], [ %7, %5 ]
  ret i32 %17
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local ptr @BMO_slot_get(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = tail call fastcc i32 @bmo_name_to_slotcode_check(ptr noundef %0, ptr noundef %1) #16
  %4 = icmp slt i32 %3, 0
  %5 = zext nneg i32 %3 to i64
  %6 = getelementptr inbounds %struct.BMOpSlot, ptr %0, i64 %5
  %7 = select i1 %4, ptr null, ptr %6
  ret ptr %7
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc i32 @bmo_name_to_slotcode_check(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #6 !PGOFuncName !95 {
  %3 = tail call fastcc i32 @bmo_name_to_slotcode(ptr noundef %0, ptr noundef %1) #16
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !73
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.bmo_name_to_slotcode_check, ptr noundef %1) #20
  br label %8

8:                                                ; preds = %5, %2
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_bmo_slot_copy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 {
  %6 = alloca %struct.GHashIterator, align 8
  %7 = tail call ptr @BMO_slot_get(ptr noundef %0, ptr noundef %1) #16
  %8 = tail call ptr @BMO_slot_get(ptr noundef %2, ptr noundef %3) #16
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %104, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.BMOpSlot, ptr %7, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !88
  %13 = getelementptr inbounds %struct.BMOpSlot, ptr %8, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !88
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %104

16:                                               ; preds = %10
  switch i32 %12, label %101 [
    i32 9, label %17
    i32 10, label %87
  ]

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.BMOpSlot, ptr %8, i64 0, i32 4
  store ptr null, ptr %18, align 8, !tbaa !89
  %19 = getelementptr inbounds %struct.BMOpSlot, ptr %7, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !96
  %21 = getelementptr inbounds %struct.BMOpSlot, ptr %8, i64 0, i32 3
  store i32 %20, ptr %21, align 8, !tbaa !96
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %104, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.BMOpSlot, ptr %7, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !89
  %26 = getelementptr inbounds %struct.BMOpSlot, ptr %8, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !89
  %28 = and i32 %27, 11
  %29 = or i32 %27, %25
  %30 = and i32 %29, 11
  %31 = icmp eq i32 %30, %28
  br i1 %31, label %54, label %32

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.BMOpSlot, ptr %7, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !89
  br label %35

35:                                               ; preds = %32, %35
  %36 = phi i32 [ %47, %35 ], [ 0, %32 ]
  %37 = phi i32 [ %46, %35 ], [ 0, %32 ]
  %38 = phi ptr [ %48, %35 ], [ %34, %32 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !73
  %40 = getelementptr inbounds %struct.BMHeader, ptr %39, i64 0, i32 2
  %41 = load i8, ptr %40, align 4, !tbaa !97
  %42 = zext i8 %41 to i32
  %43 = and i32 %28, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = add i32 %37, %45
  %47 = add nuw i32 %36, 1
  %48 = getelementptr inbounds ptr, ptr %38, i64 1
  %49 = icmp eq i32 %47, %20
  br i1 %49, label %50, label %35, !llvm.loop !99

50:                                               ; preds = %35
  %51 = icmp eq i32 %46, %20
  br i1 %51, label %54, label %52

52:                                               ; preds = %50
  store i32 %46, ptr %21, align 8, !tbaa !96
  %53 = icmp eq i32 %46, 0
  br i1 %53, label %104, label %54

54:                                               ; preds = %50, %23, %52
  %55 = phi i32 [ %46, %52 ], [ %20, %23 ], [ %20, %50 ]
  %56 = shl nsw i32 %55, 3
  %57 = sext i32 %56 to i64
  %58 = tail call ptr @BLI_memarena_alloc(ptr noundef %4, i64 noundef %57) #17
  store ptr %58, ptr %18, align 8, !tbaa !89
  %59 = load i32, ptr %19, align 8, !tbaa !96
  %60 = load i32, ptr %21, align 8, !tbaa !96
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.BMOpSlot, ptr %7, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %58, ptr align 8 %64, i64 %57, i1 false)
  br label %104

65:                                               ; preds = %54
  %66 = icmp eq i32 %59, 0
  br i1 %66, label %104, label %67

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.BMOpSlot, ptr %7, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !89
  br label %70

70:                                               ; preds = %67, %82
  %71 = phi ptr [ %83, %82 ], [ %58, %67 ]
  %72 = phi ptr [ %85, %82 ], [ %69, %67 ]
  %73 = phi i32 [ %84, %82 ], [ 0, %67 ]
  %74 = load ptr, ptr %72, align 8, !tbaa !73
  %75 = getelementptr inbounds %struct.BMHeader, ptr %74, i64 0, i32 2
  %76 = load i8, ptr %75, align 4, !tbaa !97
  %77 = zext i8 %76 to i32
  %78 = and i32 %28, %77
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %70
  store ptr %74, ptr %71, align 8, !tbaa !73
  %81 = getelementptr inbounds ptr, ptr %71, i64 1
  br label %82

82:                                               ; preds = %70, %80
  %83 = phi ptr [ %81, %80 ], [ %71, %70 ]
  %84 = add nuw i32 %73, 1
  %85 = getelementptr inbounds ptr, ptr %72, i64 1
  %86 = icmp eq i32 %84, %59
  br i1 %86, label %104, label %70, !llvm.loop !100

87:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #18
  %88 = getelementptr inbounds %struct.BMOpSlot, ptr %7, i64 0, i32 4
  %89 = load ptr, ptr %88, align 8, !tbaa !89
  call void @BLI_ghashIterator_init(ptr noundef nonnull %6, ptr noundef %89) #17
  %90 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %6) #16, !range !101
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.BMOpSlot, ptr %8, i64 0, i32 4
  br label %94

94:                                               ; preds = %92, %94
  %95 = call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef nonnull %6) #16
  %96 = call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef nonnull %6) #16
  %97 = load ptr, ptr %93, align 8, !tbaa !89
  call void @BLI_ghash_insert(ptr noundef %97, ptr noundef %95, ptr noundef %96) #17
  call void @BLI_ghashIterator_step(ptr noundef nonnull %6) #17
  %98 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %6) #16, !range !101
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %94, label %100, !llvm.loop !102

100:                                              ; preds = %94, %87
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #18
  br label %104

101:                                              ; preds = %16
  %102 = getelementptr inbounds %struct.BMOpSlot, ptr %8, i64 0, i32 4
  %103 = getelementptr inbounds %struct.BMOpSlot, ptr %7, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %102, ptr noundef nonnull align 8 dereferenceable(16) %103, i64 16, i1 false), !tbaa.struct !103
  br label %104

104:                                              ; preds = %82, %65, %17, %101, %100, %62, %52, %10, %5
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: optsize
declare void @BLI_ghashIterator_init(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_ghashIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !106 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getKey(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !109 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !110
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getValue(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !112 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !113
  ret ptr %5
}

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @BMO_slot_float_set(ptr noundef %0, ptr noundef %1, float noundef %2) local_unnamed_addr #6 {
  %4 = tail call ptr @BMO_slot_get(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.BMOpSlot, ptr %4, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !88
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.BMOpSlot, ptr %4, i64 0, i32 4
  store float %2, ptr %9, align 8, !tbaa !89
  br label %10

10:                                               ; preds = %3, %8
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @BMO_slot_int_set(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = tail call ptr @BMO_slot_get(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.BMOpSlot, ptr %4, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !88
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.BMOpSlot, ptr %4, i64 0, i32 4
  store i32 %2, ptr %9, align 8, !tbaa !89
  br label %10

10:                                               ; preds = %3, %8
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @BMO_slot_bool_set(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #6 {
  %4 = tail call ptr @BMO_slot_get(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.BMOpSlot, ptr %4, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !88
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = zext i8 %2 to i32
  %10 = getelementptr inbounds %struct.BMOpSlot, ptr %4, i64 0, i32 4
  store i32 %9, ptr %10, align 8, !tbaa !89
  br label %11

11:                                               ; preds = %3, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BMO_slot_mat_set(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = tail call ptr @BMO_slot_get(ptr noundef %1, ptr noundef %2) #16
  %7 = getelementptr inbounds %struct.BMOpSlot, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !88
  %9 = icmp eq i32 %8, 5
  br i1 %9, label %10, label %22

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.BMOpSlot, ptr %6, i64 0, i32 3
  store i32 4, ptr %11, align 8, !tbaa !96
  %12 = getelementptr inbounds %struct.BMOperator, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !79
  %14 = tail call ptr @BLI_memarena_alloc(ptr noundef %13, i64 noundef 64) #17
  %15 = getelementptr inbounds %struct.BMOpSlot, ptr %6, i64 0, i32 4
  store ptr %14, ptr %15, align 8, !tbaa !89
  switch i32 %4, label %18 [
    i32 4, label %16
    i32 3, label %17
  ]

16:                                               ; preds = %10
  tail call void @copy_m4_m4(ptr noundef %14, ptr noundef %3) #17
  br label %22

17:                                               ; preds = %10
  tail call void @copy_m4_m3(ptr noundef %14, ptr noundef %3) #17
  br label %22

18:                                               ; preds = %10
  %19 = load ptr, ptr @stderr, align 8, !tbaa !73
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.BMO_slot_mat_set, i32 noundef %4) #20
  %21 = load ptr, ptr %15, align 8, !tbaa !89
  tail call void @zero_m4(ptr noundef %21) #17
  br label %22

22:                                               ; preds = %16, %18, %17, %5
  ret void
}

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @copy_m4_m3(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: optsize
declare void @zero_m4(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BMO_slot_mat4_get(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = tail call ptr @BMO_slot_get(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.BMOpSlot, ptr %4, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !88
  %7 = icmp eq i32 %6, 5
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.BMOpSlot, ptr %4, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !89
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @copy_m4_m4(ptr noundef %2, ptr noundef nonnull %10) #17
  br label %14

13:                                               ; preds = %8
  tail call void @unit_m4(ptr noundef %2) #17
  br label %14

14:                                               ; preds = %12, %13, %3
  ret void
}

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BMO_slot_mat3_get(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = tail call ptr @BMO_slot_get(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.BMOpSlot, ptr %4, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !88
  %7 = icmp eq i32 %6, 5
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.BMOpSlot, ptr %4, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !89
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @copy_m3_m4(ptr noundef %2, ptr noundef nonnull %10) #17
  br label %14

13:                                               ; preds = %8
  tail call void @unit_m3(ptr noundef %2) #17
  br label %14

14:                                               ; preds = %12, %13, %3
  ret void
}

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @unit_m3(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @BMO_slot_ptr_set(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 {
  %4 = tail call ptr @BMO_slot_get(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.BMOpSlot, ptr %4, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !88
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.BMOpSlot, ptr %4, i64 0, i32 4
  store ptr %2, ptr %9, align 8, !tbaa !89
  br label %10

10:                                               ; preds = %3, %8
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @BMO_slot_vec_set(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #6 {
  %4 = tail call ptr @BMO_slot_get(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.BMOpSlot, ptr %4, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !88
  %7 = icmp eq i32 %6, 8
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.BMOpSlot, ptr %4, i64 0, i32 4
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef %2) #16
  br label %10

10:                                               ; preds = %3, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !114 {
  %3 = load float, ptr %1, align 4, !tbaa !104
  store float %3, ptr %0, align 4, !tbaa !104
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !104
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !104
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !104
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !104
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local float @BMO_slot_float_get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = tail call ptr @BMO_slot_get(ptr noundef %0, ptr noundef %1) #16
  %4 = getelementptr inbounds %struct.BMOpSlot, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !88
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BMOpSlot, ptr %3, i64 0, i32 4
  %9 = load float, ptr %8, align 8, !tbaa !89
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi float [ %9, %7 ], [ 0.000000e+00, %2 ]
  ret float %11
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local i32 @BMO_slot_int_get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = tail call ptr @BMO_slot_get(ptr noundef %0, ptr noundef %1) #16
  %4 = getelementptr inbounds %struct.BMOpSlot, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !88
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BMOpSlot, ptr %3, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !89
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi i32 [ %9, %7 ], [ 0, %2 ]
  ret i32 %11
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local zeroext i8 @BMO_slot_bool_get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = tail call ptr @BMO_slot_get(ptr noundef %0, ptr noundef %1) #16
  %4 = getelementptr inbounds %struct.BMOpSlot, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !88
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BMOpSlot, ptr %3, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !89
  %10 = trunc i32 %9 to i8
  br label %11

11:                                               ; preds = %2, %7
  %12 = phi i8 [ %10, %7 ], [ 0, %2 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BMO_slot_as_arrayN(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #1 {
  %4 = tail call ptr @BMO_slot_get(ptr noundef %0, ptr noundef %1) #16
  %5 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !73
  %6 = getelementptr inbounds %struct.BMOpSlot, ptr %4, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !96
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 3
  %10 = tail call ptr %5(i64 noundef %9, ptr noundef nonnull @__func__.BMO_slot_as_arrayN) #17
  %11 = getelementptr inbounds %struct.BMOpSlot, ptr %4, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !89
  %13 = load i32, ptr %6, align 8, !tbaa !96
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %12, i64 %15, i1 false)
  %16 = load i32, ptr %6, align 8, !tbaa !96
  store i32 %16, ptr %2, align 4, !tbaa !80
  ret ptr %10
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local ptr @BMO_slot_ptr_get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = tail call ptr @BMO_slot_get(ptr noundef %0, ptr noundef %1) #16
  %4 = getelementptr inbounds %struct.BMOpSlot, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !88
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BMOpSlot, ptr %3, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !89
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi ptr [ %9, %7 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @BMO_slot_vec_get(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #6 {
  %4 = tail call ptr @BMO_slot_get(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.BMOpSlot, ptr %4, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !88
  %7 = icmp eq i32 %6, 8
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.BMOpSlot, ptr %4, i64 0, i32 4
  tail call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %9) #16
  br label %10

10:                                               ; preds = %3, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BMO_mesh_enabled_flag_count(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i16 noundef signext %2) local_unnamed_addr #1 {
  %4 = tail call fastcc i32 @bmo_mesh_flag_count(ptr noundef %0, i8 noundef zeroext %1, i16 noundef signext %2, i8 noundef zeroext 1) #16
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @bmo_mesh_flag_count(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i16 noundef signext %2, i8 noundef zeroext %3) unnamed_addr #1 !PGOFuncName !115 {
  %5 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #18
  br label %6

6:                                                ; preds = %4, %29
  %7 = phi i64 [ 0, %4 ], [ %31, %29 ]
  %8 = phi i32 [ 0, %4 ], [ %30, %29 ]
  %9 = getelementptr inbounds [3 x i8], ptr @__const.bmo_mesh_flag_count.flag_types, i64 0, i64 %7
  %10 = load i8, ptr %9, align 1, !tbaa !89
  %11 = and i8 %10, %1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds [3 x i8], ptr @__const.bmo_mesh_flag_count.iter_types, i64 0, i64 %7
  %15 = load i8, ptr %14, align 1, !tbaa !89
  %16 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %0, i8 noundef zeroext %15) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %13, %18
  %19 = phi ptr [ %27, %18 ], [ %16, %13 ]
  %20 = phi i32 [ %26, %18 ], [ %8, %13 ]
  %21 = getelementptr inbounds %struct.BMElemF, ptr %19, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !53
  %23 = call fastcc zeroext i8 @_bmo_elem_flag_test_bool(ptr noundef %0, ptr noundef %22, i16 noundef signext %2) #16, !range !101
  %24 = icmp eq i8 %23, %3
  %25 = zext i1 %24 to i32
  %26 = add nsw i32 %20, %25
  %27 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #16
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %18, !llvm.loop !116

29:                                               ; preds = %18, %13, %6
  %30 = phi i32 [ %8, %6 ], [ %8, %13 ], [ %26, %18 ]
  %31 = add nuw nsw i64 %7, 1
  %32 = icmp eq i64 %31, 3
  br i1 %32, label %33, label %6, !llvm.loop !117

33:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #18
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BMO_mesh_disabled_flag_count(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i16 noundef signext %2) local_unnamed_addr #1 {
  %4 = tail call fastcc i32 @bmo_mesh_flag_count(ptr noundef %0, i8 noundef zeroext %1, i16 noundef signext %2, i8 noundef zeroext 0) #16
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BMO_mesh_flag_disable_all(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i8 noundef zeroext %2, i16 noundef signext %3) local_unnamed_addr #1 {
  %5 = alloca %struct.BMIter, align 8
  br label %6

6:                                                ; preds = %4, %24
  %7 = phi i64 [ 0, %4 ], [ %25, %24 ]
  %8 = getelementptr inbounds [3 x i8], ptr @__const.bmo_mesh_flag_count.flag_types, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !89
  %10 = and i8 %9, %2
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #18
  %13 = getelementptr inbounds [3 x i8], ptr @__const.bmo_mesh_flag_count.iter_types, i64 0, i64 %7
  %14 = load i8, ptr %13, align 1, !tbaa !89
  %15 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %0, i8 noundef zeroext %14) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %12, %17
  %18 = phi ptr [ %21, %17 ], [ %15, %12 ]
  %19 = getelementptr inbounds %struct.BMElemF, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !53
  call fastcc void @_bmo_elem_flag_disable(ptr noundef %0, ptr noundef %20, i16 noundef signext %3) #16
  %21 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %17, !llvm.loop !118

23:                                               ; preds = %17, %12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #18
  br label %24

24:                                               ; preds = %6, %23
  %25 = add nuw nsw i64 %7, 1
  %26 = icmp eq i64 %25, 3
  br i1 %26, label %27, label %6, !llvm.loop !119

27:                                               ; preds = %24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #1 !PGOFuncName !120 {
  %4 = tail call fastcc zeroext i8 @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #16
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_disable(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i16 noundef signext %2) unnamed_addr #0 !PGOFuncName !121 {
  %4 = xor i16 %2, -1
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %6 = load i32, ptr %5, align 8, !tbaa !40
  %7 = sext i32 %6 to i64
  %8 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %7
  %9 = getelementptr %struct.BMFlagLayer, ptr %8, i64 -1
  %10 = load i16, ptr %9, align 2, !tbaa !122
  %11 = and i16 %10, %4
  store i16 %11, ptr %9, align 2, !tbaa !122
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #1 !PGOFuncName !124 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !125
  %4 = tail call ptr %3(ptr noundef %0) #17
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BMO_mesh_selected_remap(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4) local_unnamed_addr #1 {
  %6 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32
  %7 = load ptr, ptr %6, align 8, !tbaa !127
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %5
  %10 = icmp eq i8 %4, 0
  br label %11

11:                                               ; preds = %9, %30
  %12 = phi ptr [ %7, %9 ], [ %13, %30 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !128
  %14 = getelementptr inbounds %struct.BMEditSelection, ptr %12, i64 0, i32 3
  %15 = load i8, ptr %14, align 8, !tbaa !130
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
  %21 = load ptr, ptr %20, align 8, !tbaa !131
  %22 = tail call fastcc ptr @BMO_slot_map_elem_get(ptr noundef %19, ptr noundef %21) #16
  store ptr %22, ptr %20, align 8, !tbaa !131
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  br i1 %10, label %30, label %25

25:                                               ; preds = %24
  %26 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %22, i8 noundef zeroext 1) #16, !range !132
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25, %18
  tail call void @BLI_remlink(ptr noundef nonnull %6, ptr noundef nonnull %12) #17
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !73
  tail call void %29(ptr noundef nonnull %12) #17
  br label %30

30:                                               ; preds = %24, %25, %28
  %31 = icmp eq ptr %13, null
  br i1 %31, label %32, label %11, !llvm.loop !133

32:                                               ; preds = %30, %5
  %33 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 33
  %34 = load ptr, ptr %33, align 8, !tbaa !134
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = tail call fastcc ptr @BMO_slot_map_elem_get(ptr noundef %3, ptr noundef nonnull %34) #16
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  store ptr %37, ptr %33, align 8, !tbaa !134
  br label %40

40:                                               ; preds = %36, %39, %32
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BMO_slot_map_elem_get(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #1 !PGOFuncName !135 {
  %3 = tail call fastcc ptr @BMO_slot_map_data_get(ptr noundef %0, ptr noundef %1) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !73
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #8 !PGOFuncName !136 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !137
  %5 = and i8 %4, %1
  ret i8 %5
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local i32 @BMO_slot_buffer_count(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = tail call ptr @BMO_slot_get(ptr noundef %0, ptr noundef %1) #16
  %4 = getelementptr inbounds %struct.BMOpSlot, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !88
  %6 = icmp eq i32 %5, 9
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BMOpSlot, ptr %3, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !96
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi i32 [ %9, %7 ], [ 0, %2 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BMO_slot_map_count(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = tail call ptr @BMO_slot_get(ptr noundef %0, ptr noundef %1) #16
  %4 = getelementptr inbounds %struct.BMOpSlot, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !89
  %6 = tail call i32 @BLI_ghash_size(ptr noundef %5) #17
  ret i32 %6
}

; Function Attrs: optsize
declare i32 @BLI_ghash_size(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BMO_slot_map_insert(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.BMOpSlot, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !89
  tail call void @BLI_ghash_insert(ptr noundef %6, ptr noundef %2, ptr noundef %3) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BMO_slot_map_to_flag(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i16 noundef signext %4) local_unnamed_addr #1 {
  %6 = alloca %struct.GHashIterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #18
  %7 = tail call ptr @BMO_slot_get(ptr noundef %1, ptr noundef %2) #16
  %8 = getelementptr inbounds %struct.BMOpSlot, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !89
  call void @BLI_ghashIterator_init(ptr noundef nonnull %6, ptr noundef %9) #17
  %10 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %6) #16, !range !101
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %5, %21
  %13 = call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef nonnull %6) #16
  %14 = getelementptr inbounds %struct.BMHeader, ptr %13, i64 0, i32 2
  %15 = load i8, ptr %14, align 4, !tbaa !138
  %16 = and i8 %15, %3
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.BMElemF, ptr %13, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !53
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %20, i16 noundef signext %4) #16
  br label %21

21:                                               ; preds = %12, %18
  call void @BLI_ghashIterator_step(ptr noundef nonnull %6) #17
  %22 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %6) #16, !range !101
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %12, label %24, !llvm.loop !139

24:                                               ; preds = %21, %5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i16 noundef signext %2) unnamed_addr #0 !PGOFuncName !140 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !40
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %6
  %8 = getelementptr %struct.BMFlagLayer, ptr %7, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !122
  %10 = or i16 %9, %2
  store i16 %10, ptr %8, align 2, !tbaa !122
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BMO_slot_buffer_alloc(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = tail call ptr @BMO_slot_get(ptr noundef %1, ptr noundef %2) #16
  %6 = getelementptr inbounds %struct.BMOpSlot, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !88
  %8 = icmp eq i32 %7, 9
  br i1 %8, label %9, label %21

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.BMOpSlot, ptr %5, i64 0, i32 3
  store i32 %3, ptr %10, align 8, !tbaa !96
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.BMOperator, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !79
  %15 = shl nsw i32 %3, 3
  %16 = sext i32 %15 to i64
  %17 = tail call ptr @BLI_memarena_alloc(ptr noundef %14, i64 noundef %16) #17
  br label %18

18:                                               ; preds = %9, %12
  %19 = phi ptr [ %17, %12 ], [ null, %9 ]
  %20 = getelementptr inbounds %struct.BMOpSlot, ptr %5, i64 0, i32 4
  store ptr %19, ptr %20, align 8
  br label %21

21:                                               ; preds = %4, %18
  %22 = phi ptr [ %19, %18 ], [ null, %4 ]
  ret ptr %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BMO_slot_buffer_from_all(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #1 {
  %6 = alloca %struct.BMIter, align 8
  %7 = tail call ptr @BMO_slot_get(ptr noundef %2, ptr noundef %3) #16
  %8 = zext i8 %4 to i32
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = load i32, ptr %0, align 8, !tbaa !50
  br label %13

13:                                               ; preds = %11, %5
  %14 = phi i32 [ %12, %11 ], [ 0, %5 ]
  %15 = and i32 %8, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !51
  %20 = add nsw i32 %19, %14
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i32 [ %20, %17 ], [ %14, %13 ]
  %23 = and i32 %8, 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !52
  %28 = add nsw i32 %27, %22
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i32 [ %28, %25 ], [ %22, %21 ]
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %84, label %32

32:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #18
  %33 = tail call ptr @BMO_slot_buffer_alloc(ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %30) #16
  br i1 %10, label %49, label %34

34:                                               ; preds = %32
  %35 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef %0, i8 noundef zeroext 1) #16
  %36 = icmp eq ptr %35, null
  br i1 %36, label %49, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.BMOpSlot, ptr %7, i64 0, i32 4
  br label %39

39:                                               ; preds = %37, %39
  %40 = phi i64 [ 0, %37 ], [ %44, %39 ]
  %41 = phi ptr [ %35, %37 ], [ %45, %39 ]
  %42 = load ptr, ptr %38, align 8, !tbaa !89
  %43 = getelementptr inbounds ptr, ptr %42, i64 %40
  store ptr %41, ptr %43, align 8, !tbaa !73
  %44 = add nuw i64 %40, 1
  %45 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #16
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %39, !llvm.loop !141

47:                                               ; preds = %39
  %48 = trunc i64 %44 to i32
  br label %49

49:                                               ; preds = %47, %34, %32
  %50 = phi i32 [ 0, %32 ], [ 0, %34 ], [ %48, %47 ]
  br i1 %16, label %67, label %51

51:                                               ; preds = %49
  %52 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef %0, i8 noundef zeroext 2) #16
  %53 = icmp eq ptr %52, null
  br i1 %53, label %67, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.BMOpSlot, ptr %7, i64 0, i32 4
  %56 = zext i32 %50 to i64
  br label %57

57:                                               ; preds = %54, %57
  %58 = phi i64 [ %56, %54 ], [ %62, %57 ]
  %59 = phi ptr [ %52, %54 ], [ %63, %57 ]
  %60 = load ptr, ptr %55, align 8, !tbaa !89
  %61 = getelementptr inbounds ptr, ptr %60, i64 %58
  store ptr %59, ptr %61, align 8, !tbaa !73
  %62 = add nuw i64 %58, 1
  %63 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #16
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %57, !llvm.loop !142

65:                                               ; preds = %57
  %66 = trunc i64 %62 to i32
  br label %67

67:                                               ; preds = %65, %51, %49
  %68 = phi i32 [ %50, %49 ], [ %50, %51 ], [ %66, %65 ]
  br i1 %24, label %83, label %69

69:                                               ; preds = %67
  %70 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef %0, i8 noundef zeroext 3) #16
  %71 = icmp eq ptr %70, null
  br i1 %71, label %83, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.BMOpSlot, ptr %7, i64 0, i32 4
  %74 = sext i32 %68 to i64
  br label %75

75:                                               ; preds = %72, %75
  %76 = phi i64 [ %74, %72 ], [ %80, %75 ]
  %77 = phi ptr [ %70, %72 ], [ %81, %75 ]
  %78 = load ptr, ptr %73, align 8, !tbaa !89
  %79 = getelementptr inbounds ptr, ptr %78, i64 %76
  store ptr %77, ptr %79, align 8, !tbaa !73
  %80 = add i64 %76, 1
  %81 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #16
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %75, !llvm.loop !143

83:                                               ; preds = %75, %69, %67
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #18
  br label %84

84:                                               ; preds = %83, %29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BMO_slot_buffer_from_enabled_hflag(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #1 {
  tail call fastcc void @bmo_slot_buffer_from_hflag(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext 1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bmo_slot_buffer_from_hflag(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6) unnamed_addr #1 !PGOFuncName !144 {
  %8 = alloca %struct.BMIter, align 8
  %9 = tail call ptr @BMO_slot_get(ptr noundef %2, ptr noundef %3) #16
  %10 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  %14 = and i8 %5, 2
  %15 = icmp eq i8 %14, 0
  %16 = and i1 %15, %13
  %17 = zext i1 %16 to i8
  %18 = icmp eq i8 %6, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %7
  %20 = tail call i32 @BM_mesh_elem_hflag_count_enabled(ptr noundef %0, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %17) #17
  br label %23

21:                                               ; preds = %7
  %22 = tail call i32 @BM_mesh_elem_hflag_count_disabled(ptr noundef %0, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %17) #17
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %109, label %26

26:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #18
  %27 = tail call ptr @BMO_slot_buffer_alloc(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %24) #16
  %28 = zext i8 %4 to i32
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %54, label %31

31:                                               ; preds = %26
  %32 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef %0, i8 noundef zeroext 1) #16
  %33 = icmp eq ptr %32, null
  br i1 %33, label %54, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.BMOpSlot, ptr %9, i64 0, i32 4
  br label %36

36:                                               ; preds = %34, %50
  %37 = phi ptr [ %32, %34 ], [ %52, %50 ]
  %38 = phi i32 [ 0, %34 ], [ %51, %50 ]
  br i1 %16, label %39, label %42

39:                                               ; preds = %36
  %40 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %37, i8 noundef zeroext 2) #16, !range !132
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %39, %36
  %43 = call fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr noundef nonnull %37, i8 noundef zeroext %5) #16, !range !101
  %44 = icmp eq i8 %43, %6
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load ptr, ptr %35, align 8, !tbaa !89
  %47 = sext i32 %38 to i64
  %48 = getelementptr inbounds ptr, ptr %46, i64 %47
  store ptr %37, ptr %48, align 8, !tbaa !73
  %49 = add nsw i32 %38, 1
  br label %50

50:                                               ; preds = %39, %42, %45
  %51 = phi i32 [ %38, %39 ], [ %49, %45 ], [ %38, %42 ]
  %52 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #16
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %36, !llvm.loop !145

54:                                               ; preds = %50, %31, %26
  %55 = phi i32 [ 0, %26 ], [ 0, %31 ], [ %51, %50 ]
  %56 = and i32 %28, 2
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %81, label %58

58:                                               ; preds = %54
  %59 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef %0, i8 noundef zeroext 2) #16
  %60 = icmp eq ptr %59, null
  br i1 %60, label %81, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.BMOpSlot, ptr %9, i64 0, i32 4
  br label %63

63:                                               ; preds = %61, %77
  %64 = phi ptr [ %59, %61 ], [ %79, %77 ]
  %65 = phi i32 [ %55, %61 ], [ %78, %77 ]
  br i1 %16, label %66, label %69

66:                                               ; preds = %63
  %67 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %64, i8 noundef zeroext 2) #16, !range !132
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %66, %63
  %70 = call fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr noundef nonnull %64, i8 noundef zeroext %5) #16, !range !101
  %71 = icmp eq i8 %70, %6
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load ptr, ptr %62, align 8, !tbaa !89
  %74 = sext i32 %65 to i64
  %75 = getelementptr inbounds ptr, ptr %73, i64 %74
  store ptr %64, ptr %75, align 8, !tbaa !73
  %76 = add nsw i32 %65, 1
  br label %77

77:                                               ; preds = %66, %69, %72
  %78 = phi i32 [ %65, %66 ], [ %76, %72 ], [ %65, %69 ]
  %79 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #16
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %63, !llvm.loop !146

81:                                               ; preds = %77, %58, %54
  %82 = phi i32 [ %55, %54 ], [ %55, %58 ], [ %78, %77 ]
  %83 = and i32 %28, 8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %108, label %85

85:                                               ; preds = %81
  %86 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef %0, i8 noundef zeroext 3) #16
  %87 = icmp eq ptr %86, null
  br i1 %87, label %108, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.BMOpSlot, ptr %9, i64 0, i32 4
  br label %90

90:                                               ; preds = %88, %104
  %91 = phi ptr [ %86, %88 ], [ %106, %104 ]
  %92 = phi i32 [ %82, %88 ], [ %105, %104 ]
  br i1 %16, label %93, label %96

93:                                               ; preds = %90
  %94 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %91, i8 noundef zeroext 2) #16, !range !132
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %93, %90
  %97 = call fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr noundef nonnull %91, i8 noundef zeroext %5) #16, !range !101
  %98 = icmp eq i8 %97, %6
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load ptr, ptr %89, align 8, !tbaa !89
  %101 = sext i32 %92 to i64
  %102 = getelementptr inbounds ptr, ptr %100, i64 %101
  store ptr %91, ptr %102, align 8, !tbaa !73
  %103 = add nsw i32 %92, 1
  br label %104

104:                                              ; preds = %93, %96, %99
  %105 = phi i32 [ %92, %93 ], [ %103, %99 ], [ %92, %96 ]
  %106 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #16
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %90, !llvm.loop !147

108:                                              ; preds = %104, %85, %81
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #18
  br label %111

109:                                              ; preds = %23
  %110 = getelementptr inbounds %struct.BMOpSlot, ptr %9, i64 0, i32 3
  store i32 0, ptr %110, align 8, !tbaa !96
  br label %111

111:                                              ; preds = %109, %108
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BMO_slot_buffer_from_disabled_hflag(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #1 {
  tail call fastcc void @bmo_slot_buffer_from_hflag(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext 0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BMO_slot_buffer_from_single(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.BMOperator, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !79
  %6 = tail call ptr @BLI_memarena_alloc(ptr noundef %5, i64 noundef 32) #17
  %7 = getelementptr inbounds %struct.BMOpSlot, ptr %1, i64 0, i32 4
  store ptr %6, ptr %7, align 8, !tbaa !89
  %8 = getelementptr inbounds %struct.BMOpSlot, ptr %1, i64 0, i32 3
  store i32 1, ptr %8, align 8, !tbaa !96
  store ptr %2, ptr %6, align 8, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BMO_slot_buffer_get_single(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.BMOpSlot, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !96
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMOpSlot, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !89
  %8 = load ptr, ptr %7, align 8, !tbaa !73
  br label %9

9:                                                ; preds = %1, %5
  %10 = phi ptr [ %8, %5 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_bmo_slot_buffer_append(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 {
  %6 = tail call ptr @BMO_slot_get(ptr noundef %0, ptr noundef %1) #16
  %7 = tail call ptr @BMO_slot_get(ptr noundef %2, ptr noundef %3) #16
  %8 = getelementptr inbounds %struct.BMOpSlot, ptr %6, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !96
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  tail call void @_bmo_slot_copy(ptr noundef %2, ptr noundef %3, ptr noundef %0, ptr noundef %1, ptr noundef %4) #16
  br label %43

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.BMOpSlot, ptr %7, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !96
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %43, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.BMOpSlot, ptr %6, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !88
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [11 x i32], ptr @BMO_OPSLOT_TYPEINFO, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !80
  %22 = add nsw i32 %14, %9
  %23 = mul nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = tail call ptr @BLI_memarena_alloc(ptr noundef %4, i64 noundef %24) #17
  %26 = getelementptr inbounds %struct.BMOpSlot, ptr %6, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !89
  %28 = load i32, ptr %8, align 8, !tbaa !96
  %29 = mul nsw i32 %28, %21
  %30 = sext i32 %29 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %25, ptr align 8 %27, i64 %30, i1 false)
  %31 = load i32, ptr %8, align 8, !tbaa !96
  %32 = mul nsw i32 %31, %21
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, ptr %25, i64 %33
  %35 = getelementptr inbounds %struct.BMOpSlot, ptr %7, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !89
  %37 = load i32, ptr %13, align 8, !tbaa !96
  %38 = mul nsw i32 %37, %21
  %39 = sext i32 %38 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %34, ptr align 8 %36, i64 %39, i1 false)
  store ptr %25, ptr %26, align 8, !tbaa !89
  %40 = load i32, ptr %13, align 8, !tbaa !96
  %41 = load i32, ptr %8, align 8, !tbaa !96
  %42 = add nsw i32 %41, %40
  store i32 %42, ptr %8, align 8, !tbaa !96
  br label %43

43:                                               ; preds = %12, %16, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BMO_slot_buffer_from_enabled_flag(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i16 noundef signext %5) local_unnamed_addr #1 {
  tail call fastcc void @bmo_slot_buffer_from_flag(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i16 noundef signext %5, i8 noundef zeroext 1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bmo_slot_buffer_from_flag(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i16 noundef signext %5, i8 noundef zeroext %6) unnamed_addr #1 !PGOFuncName !148 {
  %8 = alloca %struct.BMIter, align 8
  %9 = tail call ptr @BMO_slot_get(ptr noundef %2, ptr noundef %3) #16
  %10 = icmp eq i8 %6, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @BMO_mesh_enabled_flag_count(ptr noundef %0, i8 noundef zeroext %4, i16 noundef signext %5) #16
  br label %15

13:                                               ; preds = %7
  %14 = tail call i32 @BMO_mesh_disabled_flag_count(ptr noundef %0, i8 noundef zeroext %4, i16 noundef signext %5) #16
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %88, label %18

18:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #18
  %19 = tail call ptr @BMO_slot_buffer_alloc(ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %16) #16
  %20 = getelementptr inbounds %struct.BMOpSlot, ptr %9, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !89
  %22 = zext i8 %4 to i32
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %18
  %26 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef %0, i8 noundef zeroext 1) #16
  %27 = icmp eq ptr %26, null
  br i1 %27, label %43, label %28

28:                                               ; preds = %25, %39
  %29 = phi ptr [ %41, %39 ], [ %26, %25 ]
  %30 = phi i32 [ %40, %39 ], [ 0, %25 ]
  %31 = getelementptr inbounds %struct.BMElemF, ptr %29, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !53
  %33 = call fastcc zeroext i8 @_bmo_elem_flag_test_bool(ptr noundef %0, ptr noundef %32, i16 noundef signext %5) #16, !range !101
  %34 = icmp eq i8 %33, %6
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = sext i32 %30 to i64
  %37 = getelementptr inbounds ptr, ptr %21, i64 %36
  store ptr %29, ptr %37, align 8, !tbaa !73
  %38 = add nsw i32 %30, 1
  br label %39

39:                                               ; preds = %28, %35
  %40 = phi i32 [ %38, %35 ], [ %30, %28 ]
  %41 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #16
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %28, !llvm.loop !149

43:                                               ; preds = %39, %25, %18
  %44 = phi i32 [ 0, %18 ], [ 0, %25 ], [ %40, %39 ]
  %45 = and i32 %22, 2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %65, label %47

47:                                               ; preds = %43
  %48 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef %0, i8 noundef zeroext 2) #16
  %49 = icmp eq ptr %48, null
  br i1 %49, label %65, label %50

50:                                               ; preds = %47, %61
  %51 = phi ptr [ %63, %61 ], [ %48, %47 ]
  %52 = phi i32 [ %62, %61 ], [ %44, %47 ]
  %53 = getelementptr inbounds %struct.BMElemF, ptr %51, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !53
  %55 = call fastcc zeroext i8 @_bmo_elem_flag_test_bool(ptr noundef %0, ptr noundef %54, i16 noundef signext %5) #16, !range !101
  %56 = icmp eq i8 %55, %6
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = sext i32 %52 to i64
  %59 = getelementptr inbounds ptr, ptr %21, i64 %58
  store ptr %51, ptr %59, align 8, !tbaa !73
  %60 = add nsw i32 %52, 1
  br label %61

61:                                               ; preds = %50, %57
  %62 = phi i32 [ %60, %57 ], [ %52, %50 ]
  %63 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #16
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %50, !llvm.loop !150

65:                                               ; preds = %61, %47, %43
  %66 = phi i32 [ %44, %43 ], [ %44, %47 ], [ %62, %61 ]
  %67 = and i32 %22, 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %87, label %69

69:                                               ; preds = %65
  %70 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef %0, i8 noundef zeroext 3) #16
  %71 = icmp eq ptr %70, null
  br i1 %71, label %87, label %72

72:                                               ; preds = %69, %83
  %73 = phi ptr [ %85, %83 ], [ %70, %69 ]
  %74 = phi i32 [ %84, %83 ], [ %66, %69 ]
  %75 = getelementptr inbounds %struct.BMElemF, ptr %73, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !53
  %77 = call fastcc zeroext i8 @_bmo_elem_flag_test_bool(ptr noundef %0, ptr noundef %76, i16 noundef signext %5) #16, !range !101
  %78 = icmp eq i8 %77, %6
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = sext i32 %74 to i64
  %81 = getelementptr inbounds ptr, ptr %21, i64 %80
  store ptr %73, ptr %81, align 8, !tbaa !73
  %82 = add nsw i32 %74, 1
  br label %83

83:                                               ; preds = %72, %79
  %84 = phi i32 [ %82, %79 ], [ %74, %72 ]
  %85 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #16
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %72, !llvm.loop !151

87:                                               ; preds = %83, %69, %65
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #18
  br label %90

88:                                               ; preds = %15
  %89 = getelementptr inbounds %struct.BMOpSlot, ptr %9, i64 0, i32 3
  store i32 0, ptr %89, align 8, !tbaa !96
  br label %90

90:                                               ; preds = %88, %87
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BMO_slot_buffer_from_disabled_flag(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i16 noundef signext %5) local_unnamed_addr #1 {
  tail call fastcc void @bmo_slot_buffer_from_flag(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i16 noundef signext %5, i8 noundef zeroext 0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BMO_slot_buffer_hflag_enable(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #1 {
  %7 = tail call ptr @BMO_slot_get(ptr noundef %1, ptr noundef %2) #16
  %8 = icmp ne i8 %5, 0
  %9 = zext i8 %4 to i32
  %10 = and i32 %9, 1
  %11 = icmp ne i32 %10, 0
  %12 = and i1 %8, %11
  %13 = and i32 %9, 2
  %14 = icmp ne i32 %13, 0
  %15 = and i1 %8, %14
  %16 = getelementptr inbounds %struct.BMOpSlot, ptr %7, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !96
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.BMOpSlot, ptr %7, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !89
  br label %22

22:                                               ; preds = %19, %41
  %23 = phi i32 [ %42, %41 ], [ %17, %19 ]
  %24 = phi ptr [ %44, %41 ], [ %21, %19 ]
  %25 = phi i32 [ %43, %41 ], [ 0, %19 ]
  %26 = load ptr, ptr %24, align 8, !tbaa !73
  %27 = getelementptr inbounds %struct.BMHeader, ptr %26, i64 0, i32 2
  %28 = load i8, ptr %27, align 4, !tbaa !97
  %29 = and i8 %28, %3
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %22
  br i1 %12, label %32, label %34

32:                                               ; preds = %31
  tail call void @BM_elem_select_set(ptr noundef %0, ptr noundef nonnull %26, i8 noundef zeroext 1) #17
  %33 = load ptr, ptr %24, align 8, !tbaa !73
  br label %34

34:                                               ; preds = %32, %31
  %35 = phi ptr [ %33, %32 ], [ %26, %31 ]
  br i1 %15, label %36, label %38

36:                                               ; preds = %34
  tail call void @_bm_elem_hide_set(ptr noundef %0, ptr noundef %35, i8 noundef zeroext 0) #17
  %37 = load ptr, ptr %24, align 8, !tbaa !73
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi ptr [ %37, %36 ], [ %35, %34 ]
  tail call fastcc void @_bm_elem_flag_enable(ptr noundef %39, i8 noundef zeroext %4) #16
  %40 = load i32, ptr %16, align 8, !tbaa !96
  br label %41

41:                                               ; preds = %22, %38
  %42 = phi i32 [ %23, %22 ], [ %40, %38 ]
  %43 = add nuw nsw i32 %25, 1
  %44 = getelementptr inbounds ptr, ptr %24, i64 1
  %45 = icmp slt i32 %43, %42
  br i1 %45, label %22, label %46, !llvm.loop !152

46:                                               ; preds = %41, %6
  ret void
}

; Function Attrs: optsize
declare void @BM_elem_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_bm_elem_hide_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !PGOFuncName !153 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !137
  %5 = or i8 %4, %1
  store i8 %5, ptr %3, align 1, !tbaa !137
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BMO_slot_buffer_hflag_disable(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #1 {
  %7 = tail call ptr @BMO_slot_get(ptr noundef %1, ptr noundef %2) #16
  %8 = icmp ne i8 %5, 0
  %9 = zext i8 %4 to i32
  %10 = and i32 %9, 1
  %11 = icmp ne i32 %10, 0
  %12 = and i1 %8, %11
  %13 = and i32 %9, 2
  %14 = icmp ne i32 %13, 0
  %15 = and i1 %8, %14
  %16 = getelementptr inbounds %struct.BMOpSlot, ptr %7, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !96
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.BMOpSlot, ptr %7, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !89
  br label %22

22:                                               ; preds = %19, %41
  %23 = phi i32 [ %42, %41 ], [ %17, %19 ]
  %24 = phi ptr [ %44, %41 ], [ %21, %19 ]
  %25 = phi i32 [ %43, %41 ], [ 0, %19 ]
  %26 = load ptr, ptr %24, align 8, !tbaa !73
  %27 = getelementptr inbounds %struct.BMHeader, ptr %26, i64 0, i32 2
  %28 = load i8, ptr %27, align 4, !tbaa !97
  %29 = and i8 %28, %3
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %22
  br i1 %12, label %32, label %34

32:                                               ; preds = %31
  tail call void @BM_elem_select_set(ptr noundef %0, ptr noundef nonnull %26, i8 noundef zeroext 0) #17
  %33 = load ptr, ptr %24, align 8, !tbaa !73
  br label %34

34:                                               ; preds = %32, %31
  %35 = phi ptr [ %33, %32 ], [ %26, %31 ]
  br i1 %15, label %36, label %38

36:                                               ; preds = %34
  tail call void @_bm_elem_hide_set(ptr noundef %0, ptr noundef %35, i8 noundef zeroext 0) #17
  %37 = load ptr, ptr %24, align 8, !tbaa !73
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi ptr [ %37, %36 ], [ %35, %34 ]
  tail call fastcc void @_bm_elem_flag_disable(ptr noundef %39, i8 noundef zeroext %4) #16
  %40 = load i32, ptr %16, align 8, !tbaa !96
  br label %41

41:                                               ; preds = %22, %38
  %42 = phi i32 [ %23, %22 ], [ %40, %38 ]
  %43 = add nuw nsw i32 %25, 1
  %44 = getelementptr inbounds ptr, ptr %24, i64 1
  %45 = icmp slt i32 %43, %42
  br i1 %45, label %22, label %46, !llvm.loop !154

46:                                               ; preds = %41, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !PGOFuncName !155 {
  %3 = xor i8 %1, -1
  %4 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %5 = load i8, ptr %4, align 1, !tbaa !137
  %6 = and i8 %5, %3
  store i8 %6, ptr %4, align 1, !tbaa !137
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @BMO_slot_buffer_flag_enable(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i16 noundef signext %4) local_unnamed_addr #6 {
  %6 = tail call ptr @BMO_slot_get(ptr noundef %1, ptr noundef %2) #16
  %7 = getelementptr inbounds %struct.BMOpSlot, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !89
  %9 = getelementptr inbounds %struct.BMOpSlot, ptr %6, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !96
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %5, %25
  %13 = phi i32 [ %26, %25 ], [ %10, %5 ]
  %14 = phi i64 [ %27, %25 ], [ 0, %5 ]
  %15 = getelementptr inbounds ptr, ptr %8, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !73
  %17 = getelementptr inbounds %struct.BMHeader, ptr %16, i64 0, i32 2
  %18 = load i8, ptr %17, align 4, !tbaa !156
  %19 = and i8 %18, %3
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.BMElemF, ptr %16, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !53
  tail call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %23, i16 noundef signext %4) #16
  %24 = load i32, ptr %9, align 8, !tbaa !96
  br label %25

25:                                               ; preds = %12, %21
  %26 = phi i32 [ %13, %12 ], [ %24, %21 ]
  %27 = add nuw nsw i64 %14, 1
  %28 = sext i32 %26 to i64
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %12, label %30, !llvm.loop !157

30:                                               ; preds = %25, %5
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @BMO_slot_buffer_flag_disable(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i16 noundef signext %4) local_unnamed_addr #6 {
  %6 = tail call ptr @BMO_slot_get(ptr noundef %1, ptr noundef %2) #16
  %7 = getelementptr inbounds %struct.BMOpSlot, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !89
  %9 = getelementptr inbounds %struct.BMOpSlot, ptr %6, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !96
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %5, %25
  %13 = phi i32 [ %26, %25 ], [ %10, %5 ]
  %14 = phi i64 [ %27, %25 ], [ 0, %5 ]
  %15 = getelementptr inbounds ptr, ptr %8, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !73
  %17 = getelementptr inbounds %struct.BMHeader, ptr %16, i64 0, i32 2
  %18 = load i8, ptr %17, align 4, !tbaa !156
  %19 = and i8 %18, %3
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.BMElemF, ptr %16, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !53
  tail call fastcc void @_bmo_elem_flag_disable(ptr noundef %0, ptr noundef %23, i16 noundef signext %4) #16
  %24 = load i32, ptr %9, align 8, !tbaa !96
  br label %25

25:                                               ; preds = %12, %21
  %26 = phi i32 [ %13, %12 ], [ %24, %21 ]
  %27 = add nuw nsw i64 %14, 1
  %28 = sext i32 %26 to i64
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %12, label %30, !llvm.loop !158

30:                                               ; preds = %25, %5
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local ptr @BMO_slot_buffer_get_first(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = tail call ptr @BMO_slot_get(ptr noundef %0, ptr noundef %1) #16
  %4 = getelementptr inbounds %struct.BMOpSlot, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !88
  %6 = icmp eq i32 %5, 9
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BMOpSlot, ptr %3, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !89
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %9, align 8, !tbaa !73
  br label %13

13:                                               ; preds = %11, %7, %2
  %14 = phi ptr [ null, %2 ], [ %12, %11 ], [ null, %7 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BMO_iter_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #1 {
  %5 = tail call ptr @BMO_slot_get(ptr noundef %1, ptr noundef %2) #16
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 48, i1 false)
  store ptr %5, ptr %0, align 8, !tbaa !159
  %7 = getelementptr inbounds %struct.BMOIter, ptr %0, i64 0, i32 4
  store i8 %3, ptr %7, align 8, !tbaa !161
  %8 = getelementptr inbounds %struct.BMOpSlot, ptr %5, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !88
  %10 = icmp eq i32 %9, 10
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.BMOIter, ptr %0, i64 0, i32 2
  %13 = getelementptr inbounds %struct.BMOpSlot, ptr %5, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !89
  tail call void @BLI_ghashIterator_init(ptr noundef nonnull %12, ptr noundef %14) #17
  br label %15

15:                                               ; preds = %4, %11
  %16 = tail call ptr @BMO_iter_step(ptr noundef nonnull %0) #16
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BMO_iter_step(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !159
  %3 = getelementptr inbounds %struct.BMOpSlot, ptr %2, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !88
  switch i32 %4, label %47 [
    i32 9, label %5
    i32 10, label %37
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMOIter, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !162
  %8 = getelementptr inbounds %struct.BMOpSlot, ptr %2, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !96
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %47

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.BMOpSlot, ptr %2, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !89
  %14 = add nsw i32 %7, 1
  store i32 %14, ptr %6, align 8, !tbaa !162
  %15 = sext i32 %7 to i64
  %16 = getelementptr inbounds ptr, ptr %13, i64 %15
  %17 = getelementptr inbounds %struct.BMOIter, ptr %0, i64 0, i32 4
  %18 = load i8, ptr %17, align 8, !tbaa !161
  %19 = load ptr, ptr %16, align 8, !tbaa !73
  %20 = getelementptr inbounds %struct.BMHeader, ptr %19, i64 0, i32 2
  %21 = load i8, ptr %20, align 4, !tbaa !156
  %22 = and i8 %21, %18
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %11, %27
  %25 = phi i32 [ %29, %27 ], [ %14, %11 ]
  %26 = icmp slt i32 %25, %9
  br i1 %26, label %27, label %47

27:                                               ; preds = %24
  %28 = load ptr, ptr %12, align 8, !tbaa !89
  %29 = add nsw i32 %25, 1
  store i32 %29, ptr %6, align 8, !tbaa !162
  %30 = sext i32 %25 to i64
  %31 = getelementptr inbounds ptr, ptr %28, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !73
  %33 = getelementptr inbounds %struct.BMHeader, ptr %32, i64 0, i32 2
  %34 = load i8, ptr %33, align 4, !tbaa !156
  %35 = and i8 %34, %18
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %24, label %47, !llvm.loop !163

37:                                               ; preds = %1
  %38 = getelementptr inbounds %struct.BMOIter, ptr %0, i64 0, i32 2
  %39 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %38) #16, !range !101
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = tail call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef nonnull %38) #16
  %43 = tail call fastcc ptr @BLI_ghashIterator_getValue_p(ptr noundef nonnull %38) #16
  %44 = getelementptr inbounds %struct.BMOIter, ptr %0, i64 0, i32 3
  store ptr %43, ptr %44, align 8, !tbaa !164
  tail call void @BLI_ghashIterator_step(ptr noundef nonnull %38) #17
  br label %47

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.BMOIter, ptr %0, i64 0, i32 3
  store ptr null, ptr %46, align 8, !tbaa !164
  br label %47

47:                                               ; preds = %27, %24, %11, %1, %41, %45, %5
  %48 = phi ptr [ null, %5 ], [ %42, %41 ], [ null, %45 ], [ null, %1 ], [ %19, %11 ], [ %32, %27 ], [ null, %24 ]
  ret ptr %48
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @BLI_ghashIterator_getValue_p(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !165 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 2
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @BMO_iter_map_value_p(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.BMOIter, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !164
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BMO_iter_map_value_ptr(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.BMOIter, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !164
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !73
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BMO_iter_map_value_float(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.BMOIter, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !164
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = load float, ptr %4, align 4, !tbaa !104
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BMO_iter_map_value_int(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.BMOIter, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !164
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = load i32, ptr %4, align 4, !tbaa !80
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BMO_iter_map_value_bool(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.BMOIter, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !164
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = load i8, ptr %4, align 1, !tbaa !89
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BMO_error_clear(ptr noundef %0) local_unnamed_addr #1 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = tail call i32 @BMO_error_pop(ptr noundef %0, ptr noundef null, ptr noundef null) #16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %2, !llvm.loop !166

5:                                                ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BMO_error_pop(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = tail call i32 @BMO_error_get(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 34
  %8 = load ptr, ptr %7, align 8, !tbaa !167
  tail call void @BLI_remlink(ptr noundef nonnull %7, ptr noundef %8) #17
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !73
  tail call void %9(ptr noundef %8) #17
  br label %10

10:                                               ; preds = %6, %3
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BMO_error_raise(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !73
  %6 = tail call ptr %5(i64 noundef 40, ptr noundef nonnull @.str.1) #17
  %7 = getelementptr inbounds %struct.BMOpError, ptr %6, i64 0, i32 2
  store i32 %2, ptr %7, align 8, !tbaa !168
  %8 = icmp eq ptr %3, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = sext i32 %2 to i64
  %11 = getelementptr inbounds [10 x ptr], ptr @bmo_error_messages, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !73
  br label %13

13:                                               ; preds = %9, %4
  %14 = phi ptr [ %3, %4 ], [ %12, %9 ]
  %15 = getelementptr inbounds %struct.BMOpError, ptr %6, i64 0, i32 4
  store ptr %14, ptr %15, align 8, !tbaa !170
  %16 = getelementptr inbounds %struct.BMOpError, ptr %6, i64 0, i32 3
  store ptr %1, ptr %16, align 8, !tbaa !171
  %17 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 34
  tail call void @BLI_addhead(ptr noundef nonnull %17, ptr noundef nonnull %6) #17
  ret void
}

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BMO_error_occurred(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 34
  %3 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %2) #16, !range !101
  %4 = xor i8 %3, 1
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !172 {
  %2 = load ptr, ptr %0, align 8, !tbaa !173
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @BMO_error_get(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #11 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 34
  %5 = load ptr, ptr %4, align 8, !tbaa !167
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %1, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.BMOpError, ptr %5, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !170
  store ptr %11, ptr %1, align 8, !tbaa !73
  br label %12

12:                                               ; preds = %9, %7
  %13 = icmp eq ptr %2, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.BMOpError, ptr %5, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !171
  store ptr %16, ptr %2, align 8, !tbaa !73
  br label %17

17:                                               ; preds = %14, %12
  %18 = getelementptr inbounds %struct.BMOpError, ptr %5, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !168
  br label %20

20:                                               ; preds = %3, %17
  %21 = phi i32 [ %19, %17 ], [ 0, %3 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BMO_op_vinitf(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #1 {
  %6 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %6, i8 0, i64 64, i1 false)
  %7 = tail call ptr @BLI_strdup(ptr noundef %3) #17
  %8 = tail call i64 @strcspn(ptr noundef %7, ptr noundef nonnull @.str.3) #19
  %9 = shl i64 %8, 32
  %10 = ashr exact i64 %9, 32
  %11 = getelementptr inbounds i8, ptr %7, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !89
  store i8 0, ptr %11, align 1, !tbaa !89
  %13 = tail call fastcc i32 @BMO_opcode_from_opname_check(ptr noundef %7) #16
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !73
  tail call void %16(ptr noundef nonnull %7) #17
  br label %321

17:                                               ; preds = %5
  %18 = icmp ne i8 %12, 0
  %19 = zext i1 %18 to i64
  %20 = add i64 %8, %19
  %21 = shl i64 %20, 32
  %22 = ashr exact i64 %21, 32
  %23 = getelementptr inbounds i8, ptr %7, i64 %22
  tail call void @BMO_op_init(ptr poison, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %7) #16
  %24 = load i8, ptr %23, align 1, !tbaa !89
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %291, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %28 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %29 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 1
  %30 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 3
  %31 = ptrtoint ptr %7 to i64
  br label %32

32:                                               ; preds = %26, %285
  %33 = phi i8 [ %24, %26 ], [ %289, %285 ]
  %34 = phi ptr [ %23, %26 ], [ %288, %285 ]
  %35 = phi i8 [ 1, %26 ], [ %286, %285 ]
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %57, label %37

37:                                               ; preds = %32
  %38 = call i64 @strspn(ptr noundef nonnull %34, ptr noundef nonnull @.str.3) #19
  %39 = shl i64 %38, 32
  %40 = ashr exact i64 %39, 32
  %41 = getelementptr inbounds i8, ptr %34, i64 %40
  %42 = getelementptr inbounds i8, ptr %41, i64 %40
  %43 = load i8, ptr %42, align 1, !tbaa !89
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %291, label %45

45:                                               ; preds = %37
  %46 = call i64 @strcspn(ptr noundef nonnull %41, ptr noundef nonnull @.str.4) #19
  %47 = shl i64 %46, 32
  %48 = ashr exact i64 %47, 32
  %49 = getelementptr inbounds i8, ptr %41, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !89
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %293, label %52

52:                                               ; preds = %45
  store i8 0, ptr %49, align 1, !tbaa !89
  %53 = call fastcc i32 @bmo_name_to_slotcode_check(ptr noundef %1, ptr noundef nonnull %41) #16
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %293, label %55

55:                                               ; preds = %52
  %56 = call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef nonnull %41, i64 noundef 64) #17
  br label %285

57:                                               ; preds = %32
  switch i8 %33, label %278 [
    i8 32, label %285
    i8 61, label %285
    i8 37, label %285
    i8 109, label %58
    i8 118, label %77
    i8 101, label %91
    i8 115, label %106
    i8 83, label %106
    i8 105, label %140
    i8 98, label %154
    i8 112, label %169
    i8 102, label %183
    i8 70, label %183
    i8 104, label %183
    i8 72, label %183
    i8 97, label %183
  ]

58:                                               ; preds = %57
  %59 = getelementptr inbounds i8, ptr %34, i64 1
  %60 = load i8, ptr %59, align 1, !tbaa !89
  switch i8 %60, label %293 [
    i8 51, label %62
    i8 52, label %61
  ]

61:                                               ; preds = %58
  br label %62

62:                                               ; preds = %58, %61
  %63 = phi i32 [ 4, %61 ], [ 3, %58 ]
  %64 = load i32, ptr %4, align 8
  %65 = icmp ult i32 %64, 41
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load ptr, ptr %28, align 8
  %68 = zext nneg i32 %64 to i64
  %69 = getelementptr i8, ptr %67, i64 %68
  %70 = add nuw nsw i32 %64, 8
  store i32 %70, ptr %4, align 8
  br label %74

71:                                               ; preds = %62
  %72 = load ptr, ptr %27, align 8
  %73 = getelementptr i8, ptr %72, i64 8
  store ptr %73, ptr %27, align 8
  br label %74

74:                                               ; preds = %66, %71
  %75 = phi ptr [ %69, %66 ], [ %72, %71 ]
  %76 = load ptr, ptr %75, align 8
  call void @BMO_slot_mat_set(ptr noundef %1, ptr noundef %1, ptr noundef nonnull %6, ptr noundef %76, i32 noundef %63) #16
  br label %285

77:                                               ; preds = %57
  %78 = load i32, ptr %4, align 8
  %79 = icmp ult i32 %78, 41
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load ptr, ptr %28, align 8
  %82 = zext nneg i32 %78 to i64
  %83 = getelementptr i8, ptr %81, i64 %82
  %84 = add nuw nsw i32 %78, 8
  store i32 %84, ptr %4, align 8
  br label %88

85:                                               ; preds = %77
  %86 = load ptr, ptr %27, align 8
  %87 = getelementptr i8, ptr %86, i64 8
  store ptr %87, ptr %27, align 8
  br label %88

88:                                               ; preds = %85, %80
  %89 = phi ptr [ %83, %80 ], [ %86, %85 ]
  %90 = load ptr, ptr %89, align 8
  call void @BMO_slot_vec_set(ptr noundef %1, ptr noundef nonnull %6, ptr noundef %90) #16
  br label %285

91:                                               ; preds = %57
  %92 = load i32, ptr %4, align 8
  %93 = icmp ult i32 %92, 41
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load ptr, ptr %28, align 8
  %96 = zext nneg i32 %92 to i64
  %97 = getelementptr i8, ptr %95, i64 %96
  %98 = add nuw nsw i32 %92, 8
  store i32 %98, ptr %4, align 8
  br label %102

99:                                               ; preds = %91
  %100 = load ptr, ptr %27, align 8
  %101 = getelementptr i8, ptr %100, i64 8
  store ptr %101, ptr %27, align 8
  br label %102

102:                                              ; preds = %99, %94
  %103 = phi ptr [ %97, %94 ], [ %100, %99 ]
  %104 = load ptr, ptr %103, align 8
  %105 = call ptr @BMO_slot_get(ptr noundef %1, ptr noundef nonnull %6) #16
  call void @BMO_slot_buffer_from_single(ptr noundef %1, ptr noundef %105, ptr noundef %104) #16
  br label %285

106:                                              ; preds = %57, %57
  %107 = load i32, ptr %4, align 8
  %108 = icmp ult i32 %107, 41
  br i1 %108, label %113, label %109

109:                                              ; preds = %106
  %110 = load ptr, ptr %27, align 8
  %111 = getelementptr i8, ptr %110, i64 8
  store ptr %111, ptr %27, align 8
  %112 = load ptr, ptr %110, align 8
  br label %125

113:                                              ; preds = %106
  %114 = load ptr, ptr %28, align 8
  %115 = zext nneg i32 %107 to i64
  %116 = getelementptr i8, ptr %114, i64 %115
  %117 = add nuw nsw i32 %107, 8
  store i32 %117, ptr %4, align 8
  %118 = load ptr, ptr %116, align 8
  %119 = icmp ult i32 %107, 33
  br i1 %119, label %120, label %125

120:                                              ; preds = %113
  %121 = load ptr, ptr %28, align 8
  %122 = zext nneg i32 %117 to i64
  %123 = getelementptr i8, ptr %121, i64 %122
  %124 = add nuw nsw i32 %107, 16
  store i32 %124, ptr %4, align 8
  br label %129

125:                                              ; preds = %109, %113
  %126 = phi ptr [ %112, %109 ], [ %118, %113 ]
  %127 = load ptr, ptr %27, align 8
  %128 = getelementptr i8, ptr %127, i64 8
  store ptr %128, ptr %27, align 8
  br label %129

129:                                              ; preds = %125, %120
  %130 = phi ptr [ %118, %120 ], [ %126, %125 ]
  %131 = phi ptr [ %123, %120 ], [ %127, %125 ]
  %132 = load ptr, ptr %131, align 8
  %133 = load i8, ptr %34, align 1, !tbaa !89
  %134 = icmp eq i8 %133, 115
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = load ptr, ptr %30, align 8, !tbaa !79
  call void @_bmo_slot_copy(ptr noundef %130, ptr noundef %132, ptr noundef %1, ptr noundef nonnull %6, ptr noundef %136) #16
  br label %285

137:                                              ; preds = %129
  %138 = getelementptr inbounds %struct.BMOperator, ptr %130, i64 0, i32 1
  %139 = load ptr, ptr %30, align 8, !tbaa !79
  call void @_bmo_slot_copy(ptr noundef nonnull %138, ptr noundef %132, ptr noundef %1, ptr noundef nonnull %6, ptr noundef %139) #16
  br label %285

140:                                              ; preds = %57
  %141 = load i32, ptr %4, align 8
  %142 = icmp ult i32 %141, 41
  br i1 %142, label %143, label %148

143:                                              ; preds = %140
  %144 = load ptr, ptr %28, align 8
  %145 = zext nneg i32 %141 to i64
  %146 = getelementptr i8, ptr %144, i64 %145
  %147 = add nuw nsw i32 %141, 8
  store i32 %147, ptr %4, align 8
  br label %151

148:                                              ; preds = %140
  %149 = load ptr, ptr %27, align 8
  %150 = getelementptr i8, ptr %149, i64 8
  store ptr %150, ptr %27, align 8
  br label %151

151:                                              ; preds = %148, %143
  %152 = phi ptr [ %146, %143 ], [ %149, %148 ]
  %153 = load i32, ptr %152, align 4
  call void @BMO_slot_int_set(ptr noundef %1, ptr noundef nonnull %6, i32 noundef %153) #16
  br label %285

154:                                              ; preds = %57
  %155 = load i32, ptr %4, align 8
  %156 = icmp ult i32 %155, 41
  br i1 %156, label %157, label %162

157:                                              ; preds = %154
  %158 = load ptr, ptr %28, align 8
  %159 = zext nneg i32 %155 to i64
  %160 = getelementptr i8, ptr %158, i64 %159
  %161 = add nuw nsw i32 %155, 8
  store i32 %161, ptr %4, align 8
  br label %165

162:                                              ; preds = %154
  %163 = load ptr, ptr %27, align 8
  %164 = getelementptr i8, ptr %163, i64 8
  store ptr %164, ptr %27, align 8
  br label %165

165:                                              ; preds = %162, %157
  %166 = phi ptr [ %160, %157 ], [ %163, %162 ]
  %167 = load i32, ptr %166, align 4
  %168 = trunc i32 %167 to i8
  call void @BMO_slot_bool_set(ptr noundef %1, ptr noundef nonnull %6, i8 noundef zeroext %168) #16
  br label %285

169:                                              ; preds = %57
  %170 = load i32, ptr %4, align 8
  %171 = icmp ult i32 %170, 41
  br i1 %171, label %172, label %177

172:                                              ; preds = %169
  %173 = load ptr, ptr %28, align 8
  %174 = zext nneg i32 %170 to i64
  %175 = getelementptr i8, ptr %173, i64 %174
  %176 = add nuw nsw i32 %170, 8
  store i32 %176, ptr %4, align 8
  br label %180

177:                                              ; preds = %169
  %178 = load ptr, ptr %27, align 8
  %179 = getelementptr i8, ptr %178, i64 8
  store ptr %179, ptr %27, align 8
  br label %180

180:                                              ; preds = %177, %172
  %181 = phi ptr [ %175, %172 ], [ %178, %177 ]
  %182 = load ptr, ptr %181, align 8
  call void @BMO_slot_ptr_set(ptr noundef %1, ptr noundef nonnull %6, ptr noundef %182) #16
  br label %285

183:                                              ; preds = %57, %57, %57, %57, %57
  %184 = getelementptr inbounds i8, ptr %34, i64 1
  %185 = load i8, ptr %184, align 1, !tbaa !89
  switch i8 %185, label %201 [
    i8 32, label %186
    i8 0, label %186
  ]

186:                                              ; preds = %183, %183
  %187 = load i32, ptr %29, align 4
  %188 = icmp ult i32 %187, 161
  br i1 %188, label %189, label %194

189:                                              ; preds = %186
  %190 = load ptr, ptr %28, align 8
  %191 = zext nneg i32 %187 to i64
  %192 = getelementptr i8, ptr %190, i64 %191
  %193 = add nuw nsw i32 %187, 16
  store i32 %193, ptr %29, align 4
  br label %197

194:                                              ; preds = %186
  %195 = load ptr, ptr %27, align 8
  %196 = getelementptr i8, ptr %195, i64 8
  store ptr %196, ptr %27, align 8
  br label %197

197:                                              ; preds = %194, %189
  %198 = phi ptr [ %192, %189 ], [ %195, %194 ]
  %199 = load double, ptr %198, align 8
  %200 = fptrunc double %199 to float
  call void @BMO_slot_float_set(ptr noundef %1, ptr noundef nonnull %6, float noundef %200) #16
  br label %285

201:                                              ; preds = %183, %213
  %202 = phi ptr [ %204, %213 ], [ %34, %183 ]
  %203 = phi i8 [ %215, %213 ], [ 0, %183 ]
  %204 = getelementptr inbounds i8, ptr %202, i64 1
  %205 = load i8, ptr %204, align 1, !tbaa !89
  switch i8 %205, label %216 [
    i8 102, label %208
    i8 101, label %206
    i8 118, label %207
  ]

206:                                              ; preds = %201
  br label %208

207:                                              ; preds = %201
  br label %208

208:                                              ; preds = %201, %206, %207
  %209 = phi i32 [ 2, %206 ], [ 1, %207 ], [ 8, %201 ]
  %210 = zext nneg i8 %203 to i32
  %211 = and i32 %209, %210
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %293

213:                                              ; preds = %208
  %214 = trunc i32 %209 to i8
  %215 = or i8 %203, %214
  br label %201

216:                                              ; preds = %201
  switch i8 %33, label %285 [
    i8 104, label %217
    i8 72, label %232
    i8 97, label %247
    i8 102, label %248
    i8 70, label %263
  ]

217:                                              ; preds = %216
  %218 = load i32, ptr %4, align 8
  %219 = icmp ult i32 %218, 41
  br i1 %219, label %220, label %225

220:                                              ; preds = %217
  %221 = load ptr, ptr %28, align 8
  %222 = zext nneg i32 %218 to i64
  %223 = getelementptr i8, ptr %221, i64 %222
  %224 = add nuw nsw i32 %218, 8
  store i32 %224, ptr %4, align 8
  br label %228

225:                                              ; preds = %217
  %226 = load ptr, ptr %27, align 8
  %227 = getelementptr i8, ptr %226, i64 8
  store ptr %227, ptr %27, align 8
  br label %228

228:                                              ; preds = %225, %220
  %229 = phi ptr [ %223, %220 ], [ %226, %225 ]
  %230 = load i32, ptr %229, align 4
  %231 = trunc i32 %230 to i8
  call void @BMO_slot_buffer_from_enabled_hflag(ptr noundef %0, ptr noundef %1, ptr noundef %1, ptr noundef nonnull %6, i8 noundef zeroext %203, i8 noundef zeroext %231) #16
  br label %285

232:                                              ; preds = %216
  %233 = load i32, ptr %4, align 8
  %234 = icmp ult i32 %233, 41
  br i1 %234, label %235, label %240

235:                                              ; preds = %232
  %236 = load ptr, ptr %28, align 8
  %237 = zext nneg i32 %233 to i64
  %238 = getelementptr i8, ptr %236, i64 %237
  %239 = add nuw nsw i32 %233, 8
  store i32 %239, ptr %4, align 8
  br label %243

240:                                              ; preds = %232
  %241 = load ptr, ptr %27, align 8
  %242 = getelementptr i8, ptr %241, i64 8
  store ptr %242, ptr %27, align 8
  br label %243

243:                                              ; preds = %240, %235
  %244 = phi ptr [ %238, %235 ], [ %241, %240 ]
  %245 = load i32, ptr %244, align 4
  %246 = trunc i32 %245 to i8
  call void @BMO_slot_buffer_from_disabled_hflag(ptr noundef %0, ptr noundef %1, ptr noundef %1, ptr noundef nonnull %6, i8 noundef zeroext %203, i8 noundef zeroext %246) #16
  br label %285

247:                                              ; preds = %216
  call void @BMO_slot_buffer_from_all(ptr noundef %0, ptr noundef %1, ptr noundef %1, ptr noundef nonnull %6, i8 noundef zeroext %203) #16
  br label %285

248:                                              ; preds = %216
  %249 = load i32, ptr %4, align 8
  %250 = icmp ult i32 %249, 41
  br i1 %250, label %251, label %256

251:                                              ; preds = %248
  %252 = load ptr, ptr %28, align 8
  %253 = zext nneg i32 %249 to i64
  %254 = getelementptr i8, ptr %252, i64 %253
  %255 = add nuw nsw i32 %249, 8
  store i32 %255, ptr %4, align 8
  br label %259

256:                                              ; preds = %248
  %257 = load ptr, ptr %27, align 8
  %258 = getelementptr i8, ptr %257, i64 8
  store ptr %258, ptr %27, align 8
  br label %259

259:                                              ; preds = %256, %251
  %260 = phi ptr [ %254, %251 ], [ %257, %256 ]
  %261 = load i32, ptr %260, align 4
  %262 = trunc i32 %261 to i16
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef %1, ptr noundef nonnull %6, i8 noundef zeroext %203, i16 noundef signext %262) #16
  br label %285

263:                                              ; preds = %216
  %264 = load i32, ptr %4, align 8
  %265 = icmp ult i32 %264, 41
  br i1 %265, label %266, label %271

266:                                              ; preds = %263
  %267 = load ptr, ptr %28, align 8
  %268 = zext nneg i32 %264 to i64
  %269 = getelementptr i8, ptr %267, i64 %268
  %270 = add nuw nsw i32 %264, 8
  store i32 %270, ptr %4, align 8
  br label %274

271:                                              ; preds = %263
  %272 = load ptr, ptr %27, align 8
  %273 = getelementptr i8, ptr %272, i64 8
  store ptr %273, ptr %27, align 8
  br label %274

274:                                              ; preds = %271, %266
  %275 = phi ptr [ %269, %266 ], [ %272, %271 ]
  %276 = load i32, ptr %275, align 4
  %277 = trunc i32 %276 to i16
  call void @BMO_slot_buffer_from_disabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef %1, ptr noundef nonnull %6, i8 noundef zeroext %203, i16 noundef signext %277) #16
  br label %285

278:                                              ; preds = %57
  %279 = zext i8 %33 to i32
  %280 = load ptr, ptr @stderr, align 8, !tbaa !73
  %281 = ptrtoint ptr %34 to i64
  %282 = sub i64 %281, %31
  %283 = trunc i64 %282 to i32
  %284 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %280, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.BMO_op_vinitf, i32 noundef %279, i32 noundef %283, ptr noundef %7) #20
  br label %285

285:                                              ; preds = %228, %247, %274, %259, %243, %216, %74, %197, %135, %137, %88, %102, %151, %165, %180, %278, %57, %57, %57, %55
  %286 = phi i8 [ 0, %55 ], [ 0, %278 ], [ 1, %180 ], [ 1, %165 ], [ 1, %151 ], [ 1, %102 ], [ 1, %88 ], [ 0, %57 ], [ 0, %57 ], [ 0, %57 ], [ 1, %137 ], [ 1, %135 ], [ 1, %197 ], [ 1, %74 ], [ 1, %216 ], [ 1, %243 ], [ 1, %259 ], [ 1, %274 ], [ 1, %247 ], [ 1, %228 ]
  %287 = phi ptr [ %49, %55 ], [ %34, %278 ], [ %34, %180 ], [ %34, %165 ], [ %34, %151 ], [ %34, %102 ], [ %34, %88 ], [ %34, %57 ], [ %34, %57 ], [ %34, %57 ], [ %34, %137 ], [ %34, %135 ], [ %34, %197 ], [ %59, %74 ], [ %202, %216 ], [ %202, %243 ], [ %202, %259 ], [ %202, %274 ], [ %202, %247 ], [ %202, %228 ]
  %288 = getelementptr inbounds i8, ptr %287, i64 1
  %289 = load i8, ptr %288, align 1, !tbaa !89
  %290 = icmp eq i8 %289, 0
  br i1 %290, label %291, label %32, !llvm.loop !174

291:                                              ; preds = %285, %37, %17
  %292 = load ptr, ptr @MEM_freeN, align 8, !tbaa !73
  call void %292(ptr noundef %7) #17
  br label %321

293:                                              ; preds = %58, %52, %45, %208
  %294 = phi i32 [ 1850, %208 ], [ 1773, %58 ], [ 1751, %52 ], [ 1745, %45 ]
  %295 = phi ptr [ @.str.8, %208 ], [ @.str.7, %58 ], [ @.str.6, %52 ], [ @.str.5, %45 ]
  %296 = phi ptr [ %202, %208 ], [ %59, %58 ], [ %41, %52 ], [ %41, %45 ]
  %297 = load ptr, ptr @stderr, align 8, !tbaa !73
  %298 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %297, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.BMO_op_vinitf) #20
  %299 = load ptr, ptr @stderr, align 8, !tbaa !73
  %300 = ptrtoint ptr %296 to i64
  %301 = sub i64 %300, %31
  %302 = trunc i64 %301 to i32
  %303 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %299, ptr noundef nonnull @.str.11, ptr noundef %3, i32 noundef %302) #20
  %304 = load ptr, ptr @stderr, align 8, !tbaa !73
  %305 = call i64 @fwrite(ptr nonnull @.str.12, i64 9, i64 1, ptr %304) #21
  %306 = icmp sgt i32 %302, 0
  br i1 %306, label %307, label %313

307:                                              ; preds = %293, %307
  %308 = phi i32 [ %311, %307 ], [ 0, %293 ]
  %309 = load ptr, ptr @stderr, align 8, !tbaa !73
  %310 = call i32 @fputc(i32 32, ptr %309)
  %311 = add nuw nsw i32 %308, 1
  %312 = icmp eq i32 %311, %302
  br i1 %312, label %313, label %307, !llvm.loop !175

313:                                              ; preds = %307, %293
  %314 = load ptr, ptr @stderr, align 8, !tbaa !73
  %315 = call i64 @fwrite(ptr nonnull @.str.13, i64 2, i64 1, ptr %314) #21
  %316 = load ptr, ptr @stderr, align 8, !tbaa !73
  %317 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %316, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %294) #20
  %318 = load ptr, ptr @stderr, align 8, !tbaa !73
  %319 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %318, ptr noundef nonnull @.str.16, ptr noundef nonnull %295) #20
  %320 = load ptr, ptr @MEM_freeN, align 8, !tbaa !73
  call void %320(ptr noundef %7) #17
  call void @BMO_op_finish(ptr poison, ptr noundef %1) #16
  br label %321

321:                                              ; preds = %313, %291, %15
  %322 = phi i8 [ 0, %15 ], [ 0, %313 ], [ 1, %291 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #18
  ret i8 %322
}

; Function Attrs: optsize
declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc i32 @BMO_opcode_from_opname_check(ptr noundef %0) unnamed_addr #6 !PGOFuncName !176 {
  %2 = tail call i32 @BMO_opcode_from_opname(ptr noundef %0) #16
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load ptr, ptr @stderr, align 8, !tbaa !73
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.BMO_opcode_from_opname_check, ptr noundef %0) #20
  br label %7

7:                                                ; preds = %4, %1
  ret i32 %2
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BMO_op_initf(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ...) local_unnamed_addr #1 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  call void @llvm.va_start(ptr nonnull %5)
  %6 = call zeroext i8 @BMO_op_vinitf(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5) #16
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef nonnull @__func__.BMO_op_initf) #16
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi i8 [ 0, %8 ], [ 1, %4 ]
  call void @llvm.va_end(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  ret i8 %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #13

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #13

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BMO_op_callf(ptr noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #1 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca %struct.BMOperator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %5) #18
  call void @llvm.va_start(ptr nonnull %4)
  %6 = call zeroext i8 @BMO_op_vinitf(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #16
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef nonnull @__func__.BMO_op_callf, ptr noundef %2) #16
  br label %11

10:                                               ; preds = %3
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %5) #16
  call void @BMO_op_finish(ptr poison, ptr noundef nonnull %5) #16
  br label %11

11:                                               ; preds = %10, %8
  %12 = phi i8 [ 1, %10 ], [ 0, %8 ]
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  ret i8 %12
}

; Function Attrs: optsize
declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bmo_elem_flag_test_bool(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) unnamed_addr #8 !PGOFuncName !177 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !40
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %6
  %8 = getelementptr %struct.BMFlagLayer, ptr %7, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !122
  %10 = and i16 %9, %2
  %11 = icmp ne i16 %10, 0
  %12 = zext i1 %11 to i8
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #1 !PGOFuncName !178 {
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %4, align 4, !tbaa !179
  switch i8 %2, label %53 [
    i8 1, label %5
    i8 2, label %10
    i8 3, label %15
    i8 4, label %20
    i8 5, label %23
    i8 6, label %26
    i8 7, label %29
    i8 8, label %32
    i8 9, label %35
    i8 10, label %38
    i8 11, label %41
    i8 13, label %44
    i8 14, label %47
  ]

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !180
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !125
  %8 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !181
  br label %50

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %11, align 8, !tbaa !180
  %12 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %12, align 8, !tbaa !125
  %13 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !182
  br label %50

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %16, align 8, !tbaa !180
  %17 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %17, align 8, !tbaa !125
  %18 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %19 = load ptr, ptr %18, align 8, !tbaa !183
  br label %50

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %21, align 8, !tbaa !180
  %22 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %22, align 8, !tbaa !125
  br label %50

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__face_of_vert_begin, ptr %24, align 8, !tbaa !180
  %25 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__face_of_vert_step, ptr %25, align 8, !tbaa !125
  br label %50

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__loop_of_vert_begin, ptr %27, align 8, !tbaa !180
  %28 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__loop_of_vert_step, ptr %28, align 8, !tbaa !125
  br label %50

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__vert_of_edge_begin, ptr %30, align 8, !tbaa !180
  %31 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__vert_of_edge_step, ptr %31, align 8, !tbaa !125
  br label %50

32:                                               ; preds = %3
  %33 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__face_of_edge_begin, ptr %33, align 8, !tbaa !180
  %34 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__face_of_edge_step, ptr %34, align 8, !tbaa !125
  br label %50

35:                                               ; preds = %3
  %36 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__vert_of_face_begin, ptr %36, align 8, !tbaa !180
  %37 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__vert_of_face_step, ptr %37, align 8, !tbaa !125
  br label %50

38:                                               ; preds = %3
  %39 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__edge_of_face_begin, ptr %39, align 8, !tbaa !180
  %40 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__edge_of_face_step, ptr %40, align 8, !tbaa !125
  br label %50

41:                                               ; preds = %3
  %42 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__loop_of_face_begin, ptr %42, align 8, !tbaa !180
  %43 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__loop_of_face_step, ptr %43, align 8, !tbaa !125
  br label %50

44:                                               ; preds = %3
  %45 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__loop_of_loop_begin, ptr %45, align 8, !tbaa !180
  %46 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__loop_of_loop_step, ptr %46, align 8, !tbaa !125
  br label %50

47:                                               ; preds = %3
  %48 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__loop_of_edge_begin, ptr %48, align 8, !tbaa !180
  %49 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__loop_of_edge_step, ptr %49, align 8, !tbaa !125
  br label %50

50:                                               ; preds = %47, %44, %41, %38, %35, %32, %29, %26, %23, %20, %15, %10, %5
  %51 = phi ptr [ null, %47 ], [ null, %44 ], [ null, %41 ], [ null, %38 ], [ null, %35 ], [ null, %32 ], [ null, %29 ], [ null, %26 ], [ null, %23 ], [ null, %20 ], [ %19, %15 ], [ %14, %10 ], [ %9, %5 ]
  %52 = phi ptr [ @bmiter__loop_of_edge_begin, %47 ], [ @bmiter__loop_of_loop_begin, %44 ], [ @bmiter__loop_of_face_begin, %41 ], [ @bmiter__edge_of_face_begin, %38 ], [ @bmiter__vert_of_face_begin, %35 ], [ @bmiter__face_of_edge_begin, %32 ], [ @bmiter__vert_of_edge_begin, %29 ], [ @bmiter__loop_of_vert_begin, %26 ], [ @bmiter__face_of_vert_begin, %23 ], [ @bmiter__edge_of_vert_begin, %20 ], [ @bmiter__elem_of_mesh_begin, %15 ], [ @bmiter__elem_of_mesh_begin, %10 ], [ @bmiter__elem_of_mesh_begin, %5 ]
  store ptr %51, ptr %0, align 8, !tbaa !89
  tail call void %52(ptr noundef nonnull %0) #17
  br label %53

53:                                               ; preds = %3, %50
  %54 = phi i8 [ 1, %50 ], [ 0, %3 ]
  ret i8 %54
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #5

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #5

; Function Attrs: optsize
declare void @bmiter__edge_of_vert_begin(ptr noundef) #5

; Function Attrs: optsize
declare ptr @bmiter__edge_of_vert_step(ptr noundef) #5

; Function Attrs: optsize
declare void @bmiter__face_of_vert_begin(ptr noundef) #5

; Function Attrs: optsize
declare ptr @bmiter__face_of_vert_step(ptr noundef) #5

; Function Attrs: optsize
declare void @bmiter__loop_of_vert_begin(ptr noundef) #5

; Function Attrs: optsize
declare ptr @bmiter__loop_of_vert_step(ptr noundef) #5

; Function Attrs: optsize
declare void @bmiter__vert_of_edge_begin(ptr noundef) #5

; Function Attrs: optsize
declare ptr @bmiter__vert_of_edge_step(ptr noundef) #5

; Function Attrs: optsize
declare void @bmiter__face_of_edge_begin(ptr noundef) #5

; Function Attrs: optsize
declare ptr @bmiter__face_of_edge_step(ptr noundef) #5

; Function Attrs: optsize
declare void @bmiter__vert_of_face_begin(ptr noundef) #5

; Function Attrs: optsize
declare ptr @bmiter__vert_of_face_step(ptr noundef) #5

; Function Attrs: optsize
declare void @bmiter__edge_of_face_begin(ptr noundef) #5

; Function Attrs: optsize
declare ptr @bmiter__edge_of_face_step(ptr noundef) #5

; Function Attrs: optsize
declare void @bmiter__loop_of_face_begin(ptr noundef) #5

; Function Attrs: optsize
declare ptr @bmiter__loop_of_face_step(ptr noundef) #5

; Function Attrs: optsize
declare void @bmiter__loop_of_loop_begin(ptr noundef) #5

; Function Attrs: optsize
declare ptr @bmiter__loop_of_loop_step(ptr noundef) #5

; Function Attrs: optsize
declare void @bmiter__loop_of_edge_begin(ptr noundef) #5

; Function Attrs: optsize
declare ptr @bmiter__loop_of_edge_step(ptr noundef) #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BMO_slot_map_data_get(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #1 !PGOFuncName !184 {
  %3 = getelementptr inbounds %struct.BMOpSlot, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !89
  %5 = tail call ptr @BLI_ghash_lookup_p(ptr noundef %4, ptr noundef %1) #17
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup_p(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @BM_mesh_elem_hflag_count_enabled(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @BM_mesh_elem_hflag_count_disabled(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #8 !PGOFuncName !185 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !137
  %5 = and i8 %4, %1
  %6 = icmp ne i8 %5, 0
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: optsize
declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BLI_mempool_calloc(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @_bm_elem_index_set(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #14 !PGOFuncName !186 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !187
  ret void
}

; Function Attrs: optsize
declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BLI_mempool_alloc(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #15

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize }
attributes #18 = { nounwind }
attributes #19 = { nounwind optsize willreturn memory(read) }
attributes #20 = { cold optsize }
attributes #21 = { cold }

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
!45 = !{!"bmesh_operators.c:bmo_flag_layer_alloc"}
!46 = !{!41, !38, i64 104}
!47 = !{!41, !38, i64 112}
!48 = !{!41, !38, i64 120}
!49 = !{!41, !39, i64 956}
!50 = !{!41, !39, i64 0}
!51 = !{!41, !39, i64 4}
!52 = !{!41, !39, i64 12}
!53 = !{!54, !38, i64 16}
!54 = !{!"BMElemF", !55, i64 0, !38, i64 16}
!55 = !{!"BMHeader", !38, i64 0, !39, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!56 = !{!54, !36, i64 14}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.mustprogress"}
!59 = distinct !{!59, !58}
!60 = distinct !{!60, !58}
!61 = !{!41, !36, i64 28}
!62 = !{!"bmesh_operators.c:bmo_flag_layer_clear"}
!63 = !{i64 0, i64 2, !64}
!64 = !{!43, !43, i64 0}
!65 = distinct !{!65, !58}
!66 = distinct !{!66, !58}
!67 = distinct !{!67, !58}
!68 = !{!"bmesh_operators.c:bmo_flag_layer_free"}
!69 = distinct !{!69, !58}
!70 = distinct !{!70, !58}
!71 = distinct !{!71, !58}
!72 = !{!35, !39, i64 1296}
!73 = !{!38, !38, i64 0}
!74 = !{!75, !39, i64 1296}
!75 = !{!"BMOpDefine", !38, i64 0, !36, i64 8, !36, i64 648, !38, i64 1288, !39, i64 1296}
!76 = !{!35, !39, i64 1300}
!77 = !{!75, !38, i64 1288}
!78 = !{!35, !38, i64 1280}
!79 = !{!35, !38, i64 1288}
!80 = !{!39, !39, i64 0}
!81 = !{!75, !38, i64 0}
!82 = distinct !{!82, !58}
!83 = !{!"bmesh_operators.c:bmo_op_slots_init"}
!84 = !{!85, !39, i64 32}
!85 = !{!"BMOSlotType", !36, i64 0, !39, i64 32, !36, i64 36}
!86 = !{!87, !38, i64 0}
!87 = !{!"BMOpSlot", !38, i64 0, !39, i64 8, !36, i64 12, !39, i64 16, !36, i64 24}
!88 = !{!87, !39, i64 8}
!89 = !{!36, !36, i64 0}
!90 = distinct !{!90, !58}
!91 = !{!"bmesh_operators.c:bmo_op_slots_free"}
!92 = distinct !{!92, !58}
!93 = !{!"bmesh_operators.c:bmo_name_to_slotcode"}
!94 = distinct !{!94, !58}
!95 = !{!"bmesh_operators.c:bmo_name_to_slotcode_check"}
!96 = !{!87, !39, i64 16}
!97 = !{!98, !36, i64 12}
!98 = !{!"BMElem", !55, i64 0}
!99 = distinct !{!99, !58}
!100 = distinct !{!100, !58}
!101 = !{i8 0, i8 2}
!102 = distinct !{!102, !58}
!103 = !{i64 0, i64 4, !80, i64 0, i64 4, !104, i64 0, i64 8, !73, i64 0, i64 12, !89, i64 0, i64 8, !73, i64 0, i64 8, !73}
!104 = !{!105, !105, i64 0}
!105 = !{!"float", !36, i64 0}
!106 = !{!"bmesh_operators.c:BLI_ghashIterator_done"}
!107 = !{!108, !38, i64 8}
!108 = !{!"GHashIterator", !38, i64 0, !38, i64 8, !39, i64 16}
!109 = !{!"bmesh_operators.c:BLI_ghashIterator_getKey"}
!110 = !{!111, !38, i64 8}
!111 = !{!"_gh_Entry", !38, i64 0, !38, i64 8, !38, i64 16}
!112 = !{!"bmesh_operators.c:BLI_ghashIterator_getValue"}
!113 = !{!111, !38, i64 16}
!114 = !{!"bmesh_operators.c:copy_v3_v3"}
!115 = !{!"bmesh_operators.c:bmo_mesh_flag_count"}
!116 = distinct !{!116, !58}
!117 = distinct !{!117, !58}
!118 = distinct !{!118, !58}
!119 = distinct !{!119, !58}
!120 = !{!"bmesh_operators.c:BM_iter_new"}
!121 = !{!"bmesh_operators.c:_bmo_elem_flag_disable"}
!122 = !{!123, !43, i64 0}
!123 = !{!"BMFlagLayer", !43, i64 0}
!124 = !{!"bmesh_operators.c:BM_iter_step"}
!125 = !{!126, !38, i64 48}
!126 = !{!"BMIter", !36, i64 0, !38, i64 40, !38, i64 48, !39, i64 56, !36, i64 60}
!127 = !{!41, !38, i64 960}
!128 = !{!129, !38, i64 0}
!129 = !{!"BMEditSelection", !38, i64 0, !38, i64 8, !38, i64 16, !36, i64 24}
!130 = !{!129, !36, i64 24}
!131 = !{!129, !38, i64 16}
!132 = !{i8 0, i8 3}
!133 = distinct !{!133, !58}
!134 = !{!41, !38, i64 976}
!135 = !{!"bmesh_operators.c:BMO_slot_map_elem_get"}
!136 = !{!"bmesh_operators.c:_bm_elem_flag_test"}
!137 = !{!55, !36, i64 13}
!138 = !{!54, !36, i64 12}
!139 = distinct !{!139, !58}
!140 = !{!"bmesh_operators.c:_bmo_elem_flag_enable"}
!141 = distinct !{!141, !58}
!142 = distinct !{!142, !58}
!143 = distinct !{!143, !58}
!144 = !{!"bmesh_operators.c:bmo_slot_buffer_from_hflag"}
!145 = distinct !{!145, !58}
!146 = distinct !{!146, !58}
!147 = distinct !{!147, !58}
!148 = !{!"bmesh_operators.c:bmo_slot_buffer_from_flag"}
!149 = distinct !{!149, !58}
!150 = distinct !{!150, !58}
!151 = distinct !{!151, !58}
!152 = distinct !{!152, !58}
!153 = !{!"bmesh_operators.c:_bm_elem_flag_enable"}
!154 = distinct !{!154, !58}
!155 = !{!"bmesh_operators.c:_bm_elem_flag_disable"}
!156 = !{!55, !36, i64 12}
!157 = distinct !{!157, !58}
!158 = distinct !{!158, !58}
!159 = !{!160, !38, i64 0}
!160 = !{!"BMOIter", !38, i64 0, !39, i64 8, !108, i64 16, !38, i64 40, !36, i64 48}
!161 = !{!160, !36, i64 48}
!162 = !{!160, !39, i64 8}
!163 = distinct !{!163, !58}
!164 = !{!160, !38, i64 40}
!165 = !{!"bmesh_operators.c:BLI_ghashIterator_getValue_p"}
!166 = distinct !{!166, !58}
!167 = !{!41, !38, i64 984}
!168 = !{!169, !39, i64 16}
!169 = !{!"BMOpError", !38, i64 0, !38, i64 8, !39, i64 16, !38, i64 24, !38, i64 32}
!170 = !{!169, !38, i64 32}
!171 = !{!169, !38, i64 24}
!172 = !{!"bmesh_operators.c:BLI_listbase_is_empty"}
!173 = !{!44, !38, i64 0}
!174 = distinct !{!174, !58}
!175 = distinct !{!175, !58}
!176 = !{!"bmesh_operators.c:BMO_opcode_from_opname_check"}
!177 = !{!"bmesh_operators.c:_bmo_elem_flag_test_bool"}
!178 = !{!"bmesh_operators.c:BM_iter_init"}
!179 = !{!126, !36, i64 60}
!180 = !{!126, !38, i64 40}
!181 = !{!41, !38, i64 32}
!182 = !{!41, !38, i64 40}
!183 = !{!41, !38, i64 56}
!184 = !{!"bmesh_operators.c:BMO_slot_map_data_get"}
!185 = !{!"bmesh_operators.c:_bm_elem_flag_test_bool"}
!186 = !{!"bmesh_operators.c:_bm_elem_index_set"}
!187 = !{!55, !39, i64 8}
