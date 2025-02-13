; ModuleID = 'blender/source/blender/imbuf/intern/indexer.c'
source_filename = "blender/source/blender/imbuf/intern/indexer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anim_index_builder = type { ptr, [1024 x i8], [1024 x i8], ptr, ptr, ptr }
%struct.anim_index_entry = type { i32, i64, i64, i64 }
%struct.anim_index = type { [1024 x i8], i32, ptr }
%struct.anim = type { i32, i32, i32, i32, i16, float, i32, i32, [1024 x i8], [1024 x i8], ptr, ptr, ptr, i32, i64, i32, i32, i32, ptr, [768 x i8], i32, i32, [4 x ptr], [4 x ptr], [64 x i8] }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [14 x i8] c"index builder\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Starting work on index: %s\0A\00", align 1
@temp_ext = internal unnamed_addr constant [6 x i8] c"_part\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Couldn't open index target: %s! Index build broken!\0A\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"%s%c%.3d\00", align 1
@magic = internal constant [9 x i8] c"BlenMIdx\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"anim_index\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"anim_index_entries\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"_st%d\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"proxy_%d%s.avi\00", align 1
@proxy_fac = internal unnamed_addr constant [4 x float] [float 2.500000e-01, float 5.000000e-01, float 7.500000e-01, float 1.000000e+00], align 16
@.str.10 = private unnamed_addr constant [20 x i8] c"proxy_%d%s_part.avi\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"BL_proxy\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"record_run%s.blen_tc\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"free_run%s.blen_tc\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"interp_free_run%s.blen_tc\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"record_run_no_gaps%s.blen_tc\00", align 1
@reltable.get_tc_filename = private unnamed_addr constant [4 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.12 to i64), i64 ptrtoint (ptr @reltable.get_tc_filename to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.13 to i64), i64 ptrtoint (ptr @reltable.get_tc_filename to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.14 to i64), i64 ptrtoint (ptr @reltable.get_tc_filename to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.15 to i64), i64 ptrtoint (ptr @reltable.get_tc_filename to i64)) to i32)], align 4
@switch.table.IMB_timecode_to_array_index = private unnamed_addr constant [7 x i32] [i32 1, i32 0, i32 2, i32 0, i32 0, i32 0, i32 3], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IMB_index_builder_create(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 2080, ptr noundef nonnull @.str) #15
  %4 = load ptr, ptr @stderr, align 8, !tbaa !34
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef %0) #16
  %6 = getelementptr inbounds %struct.anim_index_builder, ptr %3, i64 0, i32 1
  %7 = tail call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef %0, i64 noundef 1024) #15
  %8 = getelementptr inbounds %struct.anim_index_builder, ptr %3, i64 0, i32 2
  %9 = tail call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef %0, i64 noundef 1024) #15
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8)
  %11 = getelementptr inbounds i8, ptr %8, i64 %10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %11, ptr noundef nonnull align 1 dereferenceable(6) @temp_ext, i64 6, i1 false)
  tail call void @BLI_make_existing_file(ptr noundef nonnull %8) #15
  %12 = tail call ptr @BLI_fopen(ptr noundef nonnull %8, ptr noundef nonnull @.str.2) #15
  store ptr %12, ptr %3, align 8, !tbaa !38
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load ptr, ptr @stderr, align 8, !tbaa !34
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.3, ptr noundef nonnull %8) #16
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %17(ptr noundef nonnull %3) #15
  br label %20

18:                                               ; preds = %1
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %12, ptr noundef nonnull @.str.4, ptr noundef nonnull @magic, i32 noundef 118, i32 noundef 1) #17
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi ptr [ %3, %18 ], [ null, %14 ]
  ret ptr %21
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_make_existing_file(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_fopen(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @IMB_index_builder_add_entry(ptr nocapture noundef readonly %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #4 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %1, ptr %6, align 4, !tbaa !40
  store i64 %2, ptr %7, align 8, !tbaa !42
  store i64 %3, ptr %8, align 8, !tbaa !42
  store i64 %4, ptr %9, align 8, !tbaa !42
  %10 = load ptr, ptr %0, align 8, !tbaa !38
  %11 = call i64 @fwrite(ptr noundef nonnull %6, i64 noundef 4, i64 noundef 1, ptr noundef %10) #17
  %12 = load ptr, ptr %0, align 8, !tbaa !38
  %13 = call i64 @fwrite(ptr noundef nonnull %7, i64 noundef 8, i64 noundef 1, ptr noundef %12) #17
  %14 = load ptr, ptr %0, align 8, !tbaa !38
  %15 = call i64 @fwrite(ptr noundef nonnull %8, i64 noundef 8, i64 noundef 1, ptr noundef %14) #17
  %16 = load ptr, ptr %0, align 8, !tbaa !38
  %17 = call i64 @fwrite(ptr noundef nonnull %9, i64 noundef 8, i64 noundef 1, ptr noundef %16) #17
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_index_builder_proc_frame(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.anim_index_entry, align 8
  %9 = getelementptr inbounds %struct.anim_index_builder, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #18
  store i32 %3, ptr %8, align 8, !tbaa !45
  %13 = getelementptr inbounds %struct.anim_index_entry, ptr %8, i64 0, i32 1
  store i64 %4, ptr %13, align 8, !tbaa !47
  %14 = getelementptr inbounds %struct.anim_index_entry, ptr %8, i64 0, i32 2
  store i64 %5, ptr %14, align 8, !tbaa !48
  %15 = getelementptr inbounds %struct.anim_index_entry, ptr %8, i64 0, i32 3
  store i64 %6, ptr %15, align 8, !tbaa !49
  call void %10(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #18
  br label %17

16:                                               ; preds = %7
  tail call void @IMB_index_builder_add_entry(ptr noundef nonnull %0, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) #17
  br label %17

17:                                               ; preds = %16, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_index_builder_finish(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.anim_index_builder, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void %4(ptr noundef nonnull %0) #15
  br label %7

7:                                                ; preds = %6, %2
  %8 = load ptr, ptr %0, align 8, !tbaa !38
  %9 = tail call i32 @fclose(ptr noundef %8) #17
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.anim_index_builder, ptr %0, i64 0, i32 2
  %13 = tail call i32 @unlink(ptr noundef nonnull %12) #15
  br label %19

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.anim_index_builder, ptr %0, i64 0, i32 1
  %16 = tail call i32 @unlink(ptr noundef nonnull %15) #15
  %17 = getelementptr inbounds %struct.anim_index_builder, ptr %0, i64 0, i32 2
  %18 = tail call i32 @BLI_rename(ptr noundef nonnull %17, ptr noundef nonnull %15) #15
  br label %19

19:                                               ; preds = %14, %11
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %20(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_rename(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @IMB_indexer_open(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [13 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %2) #18
  %3 = tail call ptr @BLI_fopen(ptr noundef %0, ptr noundef nonnull @.str.5) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %76, label %5

5:                                                ; preds = %1
  %6 = call i64 @fread(ptr noundef nonnull %2, i64 noundef 12, i64 noundef 1, ptr noundef nonnull %3) #17
  %7 = icmp eq i64 %6, 1
  br i1 %7, label %8, label %73

8:                                                ; preds = %5
  %9 = getelementptr inbounds [13 x i8], ptr %2, i64 0, i64 12
  store i8 0, ptr %9, align 1, !tbaa !51
  %10 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %2, ptr noundef nonnull dereferenceable(8) @magic, i64 8)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %73

12:                                               ; preds = %8
  %13 = getelementptr inbounds i8, ptr %2, i64 9
  %14 = call i32 @atoi(ptr nocapture noundef nonnull %13) #19
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %73

16:                                               ; preds = %12
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %18 = tail call ptr %17(i64 noundef 1040, ptr noundef nonnull @.str.6) #15
  %19 = tail call ptr @BLI_strncpy(ptr noundef %18, ptr noundef %0, i64 noundef 1024) #15
  %20 = tail call i32 @fseek(ptr noundef nonnull %3, i64 noundef 0, i32 noundef 2) #17
  %21 = tail call i64 @ftell(ptr noundef nonnull %3) #17
  %22 = add nsw i64 %21, -12
  %23 = udiv i64 %22, 28
  %24 = trunc i64 %23 to i32
  %25 = getelementptr inbounds %struct.anim_index, ptr %18, i64 0, i32 1
  store i32 %24, ptr %25, align 8, !tbaa !52
  %26 = tail call i32 @fseek(ptr noundef nonnull %3, i64 noundef 12, i32 noundef 0) #17
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %28 = load i32, ptr %25, align 8, !tbaa !52
  %29 = sext i32 %28 to i64
  %30 = shl nsw i64 %29, 5
  %31 = tail call ptr %27(i64 noundef %30, ptr noundef nonnull @.str.7) #15
  %32 = getelementptr inbounds %struct.anim_index, ptr %18, i64 0, i32 2
  store ptr %31, ptr %32, align 8, !tbaa !54
  %33 = load i32, ptr %25, align 8, !tbaa !52
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %73

35:                                               ; preds = %16, %35
  %36 = phi i64 [ %49, %35 ], [ 0, %16 ]
  %37 = load ptr, ptr %32, align 8, !tbaa !54
  %38 = getelementptr inbounds %struct.anim_index_entry, ptr %37, i64 %36
  %39 = tail call i64 @fread(ptr noundef %38, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %3) #17
  %40 = load ptr, ptr %32, align 8, !tbaa !54
  %41 = getelementptr inbounds %struct.anim_index_entry, ptr %40, i64 %36, i32 1
  %42 = tail call i64 @fread(ptr noundef nonnull %41, i64 noundef 8, i64 noundef 1, ptr noundef nonnull %3) #17
  %43 = load ptr, ptr %32, align 8, !tbaa !54
  %44 = getelementptr inbounds %struct.anim_index_entry, ptr %43, i64 %36, i32 2
  %45 = tail call i64 @fread(ptr noundef nonnull %44, i64 noundef 8, i64 noundef 1, ptr noundef nonnull %3) #17
  %46 = load ptr, ptr %32, align 8, !tbaa !54
  %47 = getelementptr inbounds %struct.anim_index_entry, ptr %46, i64 %36, i32 3
  %48 = tail call i64 @fread(ptr noundef nonnull %47, i64 noundef 8, i64 noundef 1, ptr noundef nonnull %3) #17
  %49 = add nuw nsw i64 %36, 1
  %50 = load i32, ptr %25, align 8, !tbaa !52
  %51 = sext i32 %50 to i64
  %52 = icmp slt i64 %49, %51
  br i1 %52, label %35, label %53, !llvm.loop !55

53:                                               ; preds = %35
  %54 = icmp slt i32 %50, 1
  %55 = getelementptr inbounds [13 x i8], ptr %2, i64 0, i64 8
  %56 = load i8, ptr %55, align 1, !tbaa !51
  %57 = icmp ne i8 %56, 86
  %58 = or i1 %57, %54
  br i1 %58, label %73, label %59

59:                                               ; preds = %53, %59
  %60 = phi i64 [ %69, %59 ], [ 0, %53 ]
  %61 = load ptr, ptr %32, align 8, !tbaa !54
  %62 = getelementptr inbounds %struct.anim_index_entry, ptr %61, i64 %60
  tail call fastcc void @BLI_endian_switch_int32(ptr noundef %62) #17
  %63 = load ptr, ptr %32, align 8, !tbaa !54
  %64 = getelementptr inbounds %struct.anim_index_entry, ptr %63, i64 %60, i32 1
  tail call fastcc void @BLI_endian_switch_int64(ptr noundef nonnull %64) #17
  %65 = load ptr, ptr %32, align 8, !tbaa !54
  %66 = getelementptr inbounds %struct.anim_index_entry, ptr %65, i64 %60, i32 2
  tail call fastcc void @BLI_endian_switch_int64(ptr noundef nonnull %66) #17
  %67 = load ptr, ptr %32, align 8, !tbaa !54
  %68 = getelementptr inbounds %struct.anim_index_entry, ptr %67, i64 %60, i32 3
  tail call fastcc void @BLI_endian_switch_int64(ptr noundef nonnull %68) #17
  %69 = add nuw nsw i64 %60, 1
  %70 = load i32, ptr %25, align 8, !tbaa !52
  %71 = sext i32 %70 to i64
  %72 = icmp slt i64 %69, %71
  br i1 %72, label %59, label %73, !llvm.loop !57

73:                                               ; preds = %59, %16, %53, %12, %8, %5
  %74 = phi ptr [ null, %5 ], [ null, %8 ], [ null, %12 ], [ %18, %53 ], [ %18, %16 ], [ %18, %59 ]
  %75 = tail call i32 @fclose(ptr noundef nonnull %3) #17
  br label %76

76:                                               ; preds = %73, %1
  %77 = phi ptr [ null, %1 ], [ %74, %73 ]
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %2) #18
  ret ptr %77
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @BLI_endian_switch_int32(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !58 {
  tail call fastcc void @BLI_endian_switch_uint32(ptr noundef %0) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @BLI_endian_switch_int64(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !59 {
  tail call fastcc void @BLI_endian_switch_uint64(ptr noundef %0) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @IMB_indexer_get_seek_pos(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %4 = getelementptr inbounds %struct.anim_index, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !52
  %6 = icmp slt i32 %3, %5
  %7 = add nsw i32 %5, -1
  %8 = select i1 %6, i32 %3, i32 %7
  %9 = getelementptr inbounds %struct.anim_index, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  %11 = sext i32 %8 to i64
  %12 = getelementptr inbounds %struct.anim_index_entry, ptr %10, i64 %11, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !47
  ret i64 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @IMB_indexer_get_seek_pos_dts(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %4 = getelementptr inbounds %struct.anim_index, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !52
  %6 = icmp slt i32 %3, %5
  %7 = add nsw i32 %5, -1
  %8 = select i1 %6, i32 %3, i32 %7
  %9 = getelementptr inbounds %struct.anim_index, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  %11 = sext i32 %8 to i64
  %12 = getelementptr inbounds %struct.anim_index_entry, ptr %10, i64 %11, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !48
  ret i64 %13
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @IMB_indexer_get_frame_index(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.anim_index, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.anim_index, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  br label %9

9:                                                ; preds = %6, %9
  %10 = phi i32 [ 0, %6 ], [ %22, %9 ]
  %11 = phi i32 [ %4, %6 ], [ %21, %9 ]
  %12 = lshr i32 %11, 1
  %13 = add nsw i32 %10, %12
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.anim_index_entry, ptr %8, i64 %14
  %16 = load i32, ptr %15, align 8, !tbaa !45
  %17 = icmp slt i32 %16, %1
  %18 = add nsw i32 %13, 1
  %19 = xor i32 %12, -1
  %20 = add nsw i32 %11, %19
  %21 = select i1 %17, i32 %20, i32 %12
  %22 = select i1 %17, i32 %18, i32 %10
  %23 = icmp sgt i32 %21, 0
  br i1 %23, label %9, label %24, !llvm.loop !60

24:                                               ; preds = %9, %2
  %25 = phi i32 [ 0, %2 ], [ %22, %9 ]
  %26 = icmp eq i32 %25, %4
  %27 = add nsw i32 %4, -1
  %28 = select i1 %26, i32 %27, i32 %25
  ret i32 %28
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @IMB_indexer_get_pts(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %4 = getelementptr inbounds %struct.anim_index, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !52
  %6 = icmp slt i32 %3, %5
  %7 = add nsw i32 %5, -1
  %8 = select i1 %6, i32 %3, i32 %7
  %9 = getelementptr inbounds %struct.anim_index, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  %11 = sext i32 %8 to i64
  %12 = getelementptr inbounds %struct.anim_index_entry, ptr %10, i64 %11, i32 3
  %13 = load i64, ptr %12, align 8, !tbaa !49
  ret i64 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @IMB_indexer_get_duration(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.anim_index, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !52
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.anim_index, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = sext i32 %3 to i64
  %9 = getelementptr %struct.anim_index_entry, ptr %7, i64 %8
  %10 = getelementptr %struct.anim_index_entry, ptr %9, i64 -1
  %11 = load i32, ptr %10, align 8, !tbaa !45
  %12 = add nsw i32 %11, 1
  br label %13

13:                                               ; preds = %1, %5
  %14 = phi i32 [ %12, %5 ], [ 0, %1 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @IMB_indexer_can_scan(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = tail call i64 @IMB_indexer_get_seek_pos(ptr noundef %0, i32 noundef %1) #17
  %5 = tail call i64 @IMB_indexer_get_seek_pos(ptr noundef %0, i32 noundef %2) #17
  %6 = icmp eq i64 %4, %5
  %7 = icmp slt i32 %1, %2
  %8 = and i1 %7, %6
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_indexer_close(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.anim_index, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  tail call void %2(ptr noundef %4) #15
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %5(ptr noundef %0) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @IMB_proxy_size_to_array_index(i32 noundef %0) local_unnamed_addr #9 {
  %2 = add i32 %0, -2
  %3 = icmp ult i32 %2, 7
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = zext nneg i32 %2 to i64
  %6 = getelementptr inbounds [7 x i32], ptr @switch.table.IMB_timecode_to_array_index, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i32 [ 0, %1 ], [ %7, %4 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @IMB_timecode_to_array_index(i32 noundef %0) local_unnamed_addr #9 {
  %2 = add i32 %0, -2
  %3 = icmp ult i32 %2, 7
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = zext nneg i32 %2 to i64
  %6 = getelementptr inbounds [7 x i32], ptr @switch.table.IMB_timecode_to_array_index, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i32 [ 0, %1 ], [ %7, %4 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @IMB_anim_index_rebuild_context(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @IMB_anim_index_rebuild(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) local_unnamed_addr #9 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @IMB_anim_index_rebuild_finish(ptr nocapture noundef readnone %0, i16 noundef signext %1) local_unnamed_addr #9 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_free_indices(ptr nocapture noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %8
  %3 = phi i64 [ 0, %1 ], [ %9, %8 ]
  %4 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 22, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @IMB_close_anim(ptr noundef nonnull %5) #15
  store ptr null, ptr %4, align 8, !tbaa !34
  br label %8

8:                                                ; preds = %2, %7
  %9 = add nuw nsw i64 %3, 1
  %10 = icmp eq i64 %9, 4
  br i1 %10, label %11, label %2, !llvm.loop !61

11:                                               ; preds = %8, %17
  %12 = phi i64 [ %18, %17 ], [ 0, %8 ]
  %13 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 23, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call void @IMB_indexer_close(ptr noundef nonnull %14) #17
  store ptr null, ptr %13, align 8, !tbaa !34
  br label %17

17:                                               ; preds = %11, %16
  %18 = add nuw nsw i64 %12, 1
  %19 = icmp eq i64 %18, 4
  br i1 %19, label %20, label %11, !llvm.loop !62

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 20
  store i32 0, ptr %21, align 8, !tbaa !63
  %22 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 21
  store i32 0, ptr %22, align 4, !tbaa !68
  ret void
}

; Function Attrs: optsize
declare void @IMB_close_anim(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_anim_set_index_dir(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 19
  %4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %1) #19
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef %1, i64 noundef 768) #15
  tail call void @IMB_free_indices(ptr noundef %0) #17
  br label %8

8:                                                ; preds = %2, %6
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IMB_anim_open_proxy(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #18
  %4 = tail call i32 @IMB_proxy_size_to_array_index(i32 noundef %1) #17, !range !69
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 22, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 20
  %11 = load i32, ptr %10, align 8, !tbaa !63
  %12 = and i32 %11, %1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  call fastcc void @get_proxy_filename(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %3) #17
  %15 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 24
  %16 = call ptr @IMB_open_anim(ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %15) #15
  store ptr %16, ptr %6, align 8, !tbaa !34
  %17 = load i32, ptr %10, align 8, !tbaa !63
  %18 = or i32 %17, %1
  store i32 %18, ptr %10, align 8, !tbaa !63
  br label %19

19:                                               ; preds = %9, %2, %14
  %20 = phi ptr [ %16, %14 ], [ %7, %2 ], [ null, %9 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #18
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_proxy_filename(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !70 {
  %4 = alloca [768 x i8], align 16
  %5 = alloca [256 x i8], align 16
  %6 = alloca [256 x i8], align 16
  %7 = alloca [20 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 768, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #18
  store i8 0, ptr %7, align 16, !tbaa !51
  %8 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 17
  %9 = load i32, ptr %8, align 8, !tbaa !71
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 20, ptr noundef nonnull @.str.8, i32 noundef %9) #15
  br label %13

13:                                               ; preds = %11, %3
  %14 = call i32 @IMB_proxy_size_to_array_index(i32 noundef %1) #17, !range !69
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds [4 x float], ptr @proxy_fac, i64 0, i64 %15
  %17 = load float, ptr %16, align 4, !tbaa !72
  %18 = fmul float %17, 1.000000e+02
  %19 = fptosi float %18 to i32
  %20 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 256, ptr noundef nonnull @.str.9, i32 noundef %19, ptr noundef nonnull %7) #15
  %21 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 256, ptr noundef nonnull @.str.10, i32 noundef %19, ptr noundef nonnull %7) #15
  call fastcc void @get_index_dir(ptr noundef nonnull %0, ptr noundef nonnull %4) #17
  call void @BLI_join_dirfile(ptr noundef %2, i64 noundef 1024, ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 768, ptr nonnull %4) #18
  ret void
}

; Function Attrs: optsize
declare ptr @IMB_open_anim(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IMB_anim_open_index(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #18
  %4 = tail call i32 @IMB_timecode_to_array_index(i32 noundef %1) #17, !range !69
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 23, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 21
  %11 = load i32, ptr %10, align 4, !tbaa !68
  %12 = and i32 %11, %1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  call fastcc void @get_tc_filename(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %3) #17
  %15 = call ptr @IMB_indexer_open(ptr noundef nonnull %3) #17
  store ptr %15, ptr %6, align 8, !tbaa !34
  %16 = load i32, ptr %10, align 4, !tbaa !68
  %17 = or i32 %16, %1
  store i32 %17, ptr %10, align 4, !tbaa !68
  br label %18

18:                                               ; preds = %9, %2, %14
  %19 = phi ptr [ %15, %14 ], [ %7, %2 ], [ null, %9 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #18
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_tc_filename(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !73 {
  %4 = alloca [768 x i8], align 16
  %5 = alloca [20 x i8], align 16
  %6 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 768, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #18
  store i8 0, ptr %5, align 16, !tbaa !51
  %7 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 17
  %8 = load i32, ptr %7, align 8, !tbaa !71
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 20, ptr noundef nonnull @.str.8, i32 noundef %8) #15
  br label %12

12:                                               ; preds = %10, %3
  %13 = call i32 @IMB_timecode_to_array_index(i32 noundef %1) #17, !range !69
  %14 = zext nneg i32 %13 to i64
  %15 = shl i64 %14, 2
  %16 = call ptr @llvm.load.relative.i64(ptr @reltable.get_tc_filename, i64 %15)
  %17 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 256, ptr noundef %16, ptr noundef nonnull %5) #15
  call fastcc void @get_index_dir(ptr noundef nonnull %0, ptr noundef nonnull %4) #17
  call void @BLI_join_dirfile(ptr noundef %2, i64 noundef 1024, ptr noundef nonnull %4, ptr noundef nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 768, ptr nonnull %4) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @IMB_anim_index_get_frame_index(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @IMB_anim_open_index(ptr noundef %0, i32 noundef %1) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @IMB_indexer_get_frame_index(ptr noundef nonnull %4, i32 noundef %2) #17
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ %2, %3 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @BLI_endian_switch_uint32(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !74 {
  %2 = load i32, ptr %0, align 4, !tbaa !40
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  store i32 %3, ptr %0, align 4, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @BLI_endian_switch_uint64(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !75 {
  %2 = load i64, ptr %0, align 8, !tbaa !76
  %3 = tail call i64 @llvm.bswap.i64(i64 %2)
  store i64 %3, ptr %0, align 8, !tbaa !76
  ret void
}

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_index_dir(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !77 {
  %3 = alloca [256 x i8], align 16
  %4 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 19
  %5 = load i8, ptr %4, align 8, !tbaa !51
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #18
  %8 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 8
  call void @BLI_split_dirfile(ptr noundef nonnull %8, ptr noundef %1, ptr noundef nonnull %3, i64 noundef 768, i64 noundef 256) #15
  call void @BLI_path_append(ptr noundef %1, i64 noundef 768, ptr noundef nonnull @.str.11) #15
  call void @BLI_path_append(ptr noundef %1, i64 noundef 768, ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #18
  br label %11

9:                                                ; preds = %2
  %10 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef nonnull %4, i64 noundef 768) #15
  br label %11

11:                                               ; preds = %9, %7
  ret void
}

; Function Attrs: optsize
declare void @BLI_join_dirfile(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_split_dirfile(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_path_append(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture) local_unnamed_addr #12

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nofree nounwind willreturn memory(argmem: read) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #15 = { nounwind optsize }
attributes #16 = { cold optsize }
attributes #17 = { optsize }
attributes #18 = { nounwind }
attributes #19 = { nounwind optsize willreturn memory(read) }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 0}
!39 = !{!"anim_index_builder", !35, i64 0, !36, i64 8, !36, i64 1032, !35, i64 2056, !35, i64 2064, !35, i64 2072}
!40 = !{!41, !41, i64 0}
!41 = !{!"int", !36, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"long long", !36, i64 0}
!44 = !{!39, !35, i64 2072}
!45 = !{!46, !41, i64 0}
!46 = !{!"anim_index_entry", !41, i64 0, !43, i64 8, !43, i64 16, !43, i64 24}
!47 = !{!46, !43, i64 8}
!48 = !{!46, !43, i64 16}
!49 = !{!46, !43, i64 24}
!50 = !{!39, !35, i64 2064}
!51 = !{!36, !36, i64 0}
!52 = !{!53, !41, i64 1024}
!53 = !{!"anim_index", !36, i64 0, !41, i64 1024, !35, i64 1032}
!54 = !{!53, !35, i64 1032}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.mustprogress"}
!57 = distinct !{!57, !56}
!58 = !{!"indexer.c:BLI_endian_switch_int32"}
!59 = !{!"indexer.c:BLI_endian_switch_int64"}
!60 = distinct !{!60, !56}
!61 = distinct !{!61, !56}
!62 = distinct !{!62, !56}
!63 = !{!64, !41, i64 2912}
!64 = !{!"anim", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !65, i64 16, !66, i64 20, !41, i64 24, !41, i64 28, !36, i64 32, !36, i64 1056, !35, i64 2080, !35, i64 2088, !35, i64 2096, !41, i64 2104, !67, i64 2112, !41, i64 2120, !41, i64 2124, !41, i64 2128, !35, i64 2136, !36, i64 2144, !41, i64 2912, !41, i64 2916, !36, i64 2920, !36, i64 2952, !36, i64 2984}
!65 = !{!"short", !36, i64 0}
!66 = !{!"float", !36, i64 0}
!67 = !{!"long", !36, i64 0}
!68 = !{!64, !41, i64 2916}
!69 = !{i32 0, i32 4}
!70 = !{!"indexer.c:get_proxy_filename"}
!71 = !{!64, !41, i64 2128}
!72 = !{!66, !66, i64 0}
!73 = !{!"indexer.c:get_tc_filename"}
!74 = !{!"indexer.c:BLI_endian_switch_uint32"}
!75 = !{!"indexer.c:BLI_endian_switch_uint64"}
!76 = !{!67, !67, i64 0}
!77 = !{!"indexer.c:get_index_dir"}
