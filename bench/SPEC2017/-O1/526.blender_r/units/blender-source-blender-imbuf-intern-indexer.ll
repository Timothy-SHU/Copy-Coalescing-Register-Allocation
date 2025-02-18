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
@reltable.IMB_anim_open_index = private unnamed_addr constant [4 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.12 to i64), i64 ptrtoint (ptr @reltable.IMB_anim_open_index to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.13 to i64), i64 ptrtoint (ptr @reltable.IMB_anim_open_index to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.14 to i64), i64 ptrtoint (ptr @reltable.IMB_anim_open_index to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.15 to i64), i64 ptrtoint (ptr @reltable.IMB_anim_open_index to i64)) to i32)], align 4
@switch.table.IMB_timecode_to_array_index = private unnamed_addr constant [7 x i32] [i32 1, i32 0, i32 2, i32 0, i32 0, i32 0, i32 3], align 4
@switch.table.IMB_anim_open_index.17 = private unnamed_addr constant [7 x i64] [i64 1, i64 0, i64 2, i64 0, i64 0, i64 0, i64 3], align 8

; Function Attrs: nounwind uwtable
define dso_local ptr @IMB_index_builder_create(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 2080, ptr noundef nonnull @.str) #14
  %4 = load ptr, ptr @stderr, align 8, !tbaa !34
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.anim_index_builder, ptr %3, i64 0, i32 1
  %7 = tail call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef %0, i64 noundef 1024) #14
  %8 = getelementptr inbounds %struct.anim_index_builder, ptr %3, i64 0, i32 2
  %9 = tail call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef %0, i64 noundef 1024) #14
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8)
  %11 = getelementptr inbounds i8, ptr %8, i64 %10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %11, ptr noundef nonnull align 1 dereferenceable(6) @temp_ext, i64 6, i1 false)
  tail call void @BLI_make_existing_file(ptr noundef nonnull %8) #14
  %12 = tail call ptr @BLI_fopen(ptr noundef nonnull %8, ptr noundef nonnull @.str.2) #14
  store ptr %12, ptr %3, align 8, !tbaa !38
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load ptr, ptr @stderr, align 8, !tbaa !34
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.3, ptr noundef nonnull %8) #15
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %17(ptr noundef nonnull %3) #14
  br label %20

18:                                               ; preds = %1
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %12, ptr noundef nonnull @.str.4, ptr noundef nonnull @magic, i32 noundef 118, i32 noundef 1)
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi ptr [ %3, %18 ], [ null, %14 ]
  ret ptr %21
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @BLI_make_existing_file(ptr noundef) local_unnamed_addr #3

declare ptr @BLI_fopen(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind uwtable
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
  %11 = call i64 @fwrite(ptr noundef nonnull %6, i64 noundef 4, i64 noundef 1, ptr noundef %10)
  %12 = load ptr, ptr %0, align 8, !tbaa !38
  %13 = call i64 @fwrite(ptr noundef nonnull %7, i64 noundef 8, i64 noundef 1, ptr noundef %12)
  %14 = load ptr, ptr %0, align 8, !tbaa !38
  %15 = call i64 @fwrite(ptr noundef nonnull %8, i64 noundef 8, i64 noundef 1, ptr noundef %14)
  %16 = load ptr, ptr %0, align 8, !tbaa !38
  %17 = call i64 @fwrite(ptr noundef nonnull %9, i64 noundef 8, i64 noundef 1, ptr noundef %16)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @IMB_index_builder_proc_frame(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.anim_index_entry, align 8
  %13 = getelementptr inbounds %struct.anim_index_builder, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #14
  store i32 %3, ptr %12, align 8, !tbaa !45
  %17 = getelementptr inbounds %struct.anim_index_entry, ptr %12, i64 0, i32 1
  store i64 %4, ptr %17, align 8, !tbaa !47
  %18 = getelementptr inbounds %struct.anim_index_entry, ptr %12, i64 0, i32 2
  store i64 %5, ptr %18, align 8, !tbaa !48
  %19 = getelementptr inbounds %struct.anim_index_entry, ptr %12, i64 0, i32 3
  store i64 %6, ptr %19, align 8, !tbaa !49
  call void %14(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #14
  br label %29

20:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11)
  store i32 %3, ptr %8, align 4, !tbaa !40
  store i64 %4, ptr %9, align 8, !tbaa !42
  store i64 %5, ptr %10, align 8, !tbaa !42
  store i64 %6, ptr %11, align 8, !tbaa !42
  %21 = load ptr, ptr %0, align 8, !tbaa !38
  %22 = call i64 @fwrite(ptr noundef nonnull %8, i64 noundef 4, i64 noundef 1, ptr noundef %21)
  %23 = load ptr, ptr %0, align 8, !tbaa !38
  %24 = call i64 @fwrite(ptr noundef nonnull %9, i64 noundef 8, i64 noundef 1, ptr noundef %23)
  %25 = load ptr, ptr %0, align 8, !tbaa !38
  %26 = call i64 @fwrite(ptr noundef nonnull %10, i64 noundef 8, i64 noundef 1, ptr noundef %25)
  %27 = load ptr, ptr %0, align 8, !tbaa !38
  %28 = call i64 @fwrite(ptr noundef nonnull %11, i64 noundef 8, i64 noundef 1, ptr noundef %27)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11)
  br label %29

29:                                               ; preds = %20, %16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_index_builder_finish(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.anim_index_builder, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void %4(ptr noundef %0) #14
  br label %7

7:                                                ; preds = %6, %2
  %8 = load ptr, ptr %0, align 8, !tbaa !38
  %9 = tail call i32 @fclose(ptr noundef %8)
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.anim_index_builder, ptr %0, i64 0, i32 2
  %13 = tail call i32 @unlink(ptr noundef nonnull %12) #14
  br label %19

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.anim_index_builder, ptr %0, i64 0, i32 1
  %16 = tail call i32 @unlink(ptr noundef nonnull %15) #14
  %17 = getelementptr inbounds %struct.anim_index_builder, ptr %0, i64 0, i32 2
  %18 = tail call i32 @BLI_rename(ptr noundef nonnull %17, ptr noundef nonnull %15) #14
  br label %19

19:                                               ; preds = %14, %11
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %20(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #2

declare i32 @BLI_rename(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @IMB_indexer_open(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [13 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %2) #14
  %3 = tail call ptr @BLI_fopen(ptr noundef %0, ptr noundef nonnull @.str.5) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %84, label %5

5:                                                ; preds = %1
  %6 = call i64 @fread(ptr noundef nonnull %2, i64 noundef 12, i64 noundef 1, ptr noundef nonnull %3)
  %7 = icmp eq i64 %6, 1
  br i1 %7, label %8, label %81

8:                                                ; preds = %5
  %9 = getelementptr inbounds [13 x i8], ptr %2, i64 0, i64 12
  store i8 0, ptr %9, align 1, !tbaa !51
  %10 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %2, ptr noundef nonnull dereferenceable(8) @magic, i64 8)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %81

12:                                               ; preds = %8
  %13 = getelementptr inbounds i8, ptr %2, i64 9
  %14 = call i64 @strtol(ptr nocapture noundef nonnull %13, ptr noundef null, i32 noundef 10) #14
  %15 = and i64 %14, 4294967295
  %16 = icmp eq i64 %15, 1
  br i1 %16, label %17, label %81

17:                                               ; preds = %12
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %19 = tail call ptr %18(i64 noundef 1040, ptr noundef nonnull @.str.6) #14
  %20 = tail call ptr @BLI_strncpy(ptr noundef %19, ptr noundef %0, i64 noundef 1024) #14
  %21 = tail call i32 @fseek(ptr noundef nonnull %3, i64 noundef 0, i32 noundef 2)
  %22 = tail call i64 @ftell(ptr noundef nonnull %3)
  %23 = add nsw i64 %22, -12
  %24 = udiv i64 %23, 28
  %25 = trunc i64 %24 to i32
  %26 = getelementptr inbounds %struct.anim_index, ptr %19, i64 0, i32 1
  store i32 %25, ptr %26, align 8, !tbaa !52
  %27 = tail call i32 @fseek(ptr noundef nonnull %3, i64 noundef 12, i32 noundef 0)
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %29 = load i32, ptr %26, align 8, !tbaa !52
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 5
  %32 = tail call ptr %28(i64 noundef %31, ptr noundef nonnull @.str.7) #14
  %33 = getelementptr inbounds %struct.anim_index, ptr %19, i64 0, i32 2
  store ptr %32, ptr %33, align 8, !tbaa !54
  %34 = load i32, ptr %26, align 8, !tbaa !52
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %17, %36
  %37 = phi i64 [ %50, %36 ], [ 0, %17 ]
  %38 = load ptr, ptr %33, align 8, !tbaa !54
  %39 = getelementptr inbounds %struct.anim_index_entry, ptr %38, i64 %37
  %40 = tail call i64 @fread(ptr noundef %39, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %3)
  %41 = load ptr, ptr %33, align 8, !tbaa !54
  %42 = getelementptr inbounds %struct.anim_index_entry, ptr %41, i64 %37, i32 1
  %43 = tail call i64 @fread(ptr noundef nonnull %42, i64 noundef 8, i64 noundef 1, ptr noundef nonnull %3)
  %44 = load ptr, ptr %33, align 8, !tbaa !54
  %45 = getelementptr inbounds %struct.anim_index_entry, ptr %44, i64 %37, i32 2
  %46 = tail call i64 @fread(ptr noundef nonnull %45, i64 noundef 8, i64 noundef 1, ptr noundef nonnull %3)
  %47 = load ptr, ptr %33, align 8, !tbaa !54
  %48 = getelementptr inbounds %struct.anim_index_entry, ptr %47, i64 %37, i32 3
  %49 = tail call i64 @fread(ptr noundef nonnull %48, i64 noundef 8, i64 noundef 1, ptr noundef nonnull %3)
  %50 = add nuw nsw i64 %37, 1
  %51 = load i32, ptr %26, align 8, !tbaa !52
  %52 = sext i32 %51 to i64
  %53 = icmp slt i64 %50, %52
  br i1 %53, label %36, label %54, !llvm.loop !55

54:                                               ; preds = %36, %17
  %55 = getelementptr inbounds [13 x i8], ptr %2, i64 0, i64 8
  %56 = load i8, ptr %55, align 1, !tbaa !51
  %57 = icmp eq i8 %56, 86
  br i1 %57, label %58, label %81

58:                                               ; preds = %54
  %59 = load i32, ptr %26, align 8, !tbaa !52
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %58
  %62 = load ptr, ptr %33, align 8, !tbaa !54
  br label %63

63:                                               ; preds = %61, %63
  %64 = phi i64 [ 0, %61 ], [ %77, %63 ]
  %65 = getelementptr inbounds %struct.anim_index_entry, ptr %62, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !40
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  store i32 %67, ptr %65, align 4, !tbaa !40
  %68 = getelementptr inbounds %struct.anim_index_entry, ptr %62, i64 %64, i32 1
  %69 = load i64, ptr %68, align 8, !tbaa !58
  %70 = tail call i64 @llvm.bswap.i64(i64 %69)
  store i64 %70, ptr %68, align 8, !tbaa !58
  %71 = getelementptr inbounds %struct.anim_index_entry, ptr %62, i64 %64, i32 2
  %72 = load i64, ptr %71, align 8, !tbaa !58
  %73 = tail call i64 @llvm.bswap.i64(i64 %72)
  store i64 %73, ptr %71, align 8, !tbaa !58
  %74 = getelementptr inbounds %struct.anim_index_entry, ptr %62, i64 %64, i32 3
  %75 = load i64, ptr %74, align 8, !tbaa !58
  %76 = tail call i64 @llvm.bswap.i64(i64 %75)
  store i64 %76, ptr %74, align 8, !tbaa !58
  %77 = add nuw nsw i64 %64, 1
  %78 = load i32, ptr %26, align 8, !tbaa !52
  %79 = sext i32 %78 to i64
  %80 = icmp slt i64 %77, %79
  br i1 %80, label %63, label %81, !llvm.loop !60

81:                                               ; preds = %63, %54, %58, %12, %8, %5
  %82 = phi ptr [ null, %5 ], [ null, %8 ], [ null, %12 ], [ %19, %58 ], [ %19, %54 ], [ %19, %63 ]
  %83 = tail call i32 @fclose(ptr noundef nonnull %3)
  br label %84

84:                                               ; preds = %81, %1
  %85 = phi ptr [ null, %1 ], [ %82, %81 ]
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %2) #14
  ret ptr %85
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @IMB_indexer_get_seek_pos(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @IMB_indexer_get_seek_pos_dts(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 {
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

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @IMB_indexer_get_frame_index(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 {
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
  br i1 %23, label %9, label %24, !llvm.loop !61

24:                                               ; preds = %9, %2
  %25 = phi i32 [ 0, %2 ], [ %22, %9 ]
  %26 = icmp eq i32 %25, %4
  %27 = add nsw i32 %4, -1
  %28 = select i1 %26, i32 %27, i32 %25
  ret i32 %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @IMB_indexer_get_pts(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @IMB_indexer_get_duration(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @IMB_indexer_can_scan(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %5 = getelementptr inbounds %struct.anim_index, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp slt i32 %4, %6
  %8 = add nsw i32 %6, -1
  %9 = select i1 %7, i32 %4, i32 %8
  %10 = getelementptr inbounds %struct.anim_index, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds %struct.anim_index_entry, ptr %11, i64 %12, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !47
  %15 = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  %16 = icmp slt i32 %15, %6
  %17 = select i1 %16, i32 %15, i32 %8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.anim_index_entry, ptr %11, i64 %18, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !47
  %21 = icmp eq i64 %14, %20
  %22 = icmp slt i32 %1, %2
  %23 = and i1 %22, %21
  %24 = zext i1 %23 to i32
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_indexer_close(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.anim_index, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  tail call void %2(ptr noundef %4) #14
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %5(ptr noundef %0) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @IMB_proxy_size_to_array_index(i32 noundef %0) local_unnamed_addr #7 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @IMB_timecode_to_array_index(i32 noundef %0) local_unnamed_addr #7 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @IMB_anim_index_rebuild_context(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 {
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @IMB_anim_index_rebuild(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) local_unnamed_addr #7 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @IMB_anim_index_rebuild_finish(ptr nocapture noundef readnone %0, i16 noundef signext %1) local_unnamed_addr #7 {
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_free_indices(ptr nocapture noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %8
  %3 = phi i64 [ 0, %1 ], [ %9, %8 ]
  %4 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 22, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @IMB_close_anim(ptr noundef nonnull %5) #14
  store ptr null, ptr %4, align 8, !tbaa !34
  br label %8

8:                                                ; preds = %2, %7
  %9 = add nuw nsw i64 %3, 1
  %10 = icmp eq i64 %9, 4
  br i1 %10, label %11, label %2, !llvm.loop !62

11:                                               ; preds = %8, %21
  %12 = phi i64 [ %22, %21 ], [ 0, %8 ]
  %13 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 23, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %18 = getelementptr inbounds %struct.anim_index, ptr %14, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !54
  tail call void %17(ptr noundef %19) #14
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %20(ptr noundef nonnull %14) #14
  store ptr null, ptr %13, align 8, !tbaa !34
  br label %21

21:                                               ; preds = %11, %16
  %22 = add nuw nsw i64 %12, 1
  %23 = icmp eq i64 %22, 4
  br i1 %23, label %24, label %11, !llvm.loop !63

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 20
  store i32 0, ptr %25, align 8, !tbaa !64
  %26 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 21
  store i32 0, ptr %26, align 4, !tbaa !68
  ret void
}

declare void @IMB_close_anim(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @IMB_anim_set_index_dir(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 19
  %4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %1) #16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %33, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef %1, i64 noundef 768) #14
  br label %8

8:                                                ; preds = %14, %6
  %9 = phi i64 [ 0, %6 ], [ %15, %14 ]
  %10 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 22, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @IMB_close_anim(ptr noundef nonnull %11) #14
  store ptr null, ptr %10, align 8, !tbaa !34
  br label %14

14:                                               ; preds = %13, %8
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, 4
  br i1 %16, label %17, label %8, !llvm.loop !62

17:                                               ; preds = %14, %27
  %18 = phi i64 [ %28, %27 ], [ 0, %14 ]
  %19 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 23, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %24 = getelementptr inbounds %struct.anim_index, ptr %20, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !54
  tail call void %23(ptr noundef %25) #14
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %26(ptr noundef nonnull %20) #14
  store ptr null, ptr %19, align 8, !tbaa !34
  br label %27

27:                                               ; preds = %22, %17
  %28 = add nuw nsw i64 %18, 1
  %29 = icmp eq i64 %28, 4
  br i1 %29, label %30, label %17, !llvm.loop !63

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 20
  store i32 0, ptr %31, align 8, !tbaa !64
  %32 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 21
  store i32 0, ptr %32, align 4, !tbaa !68
  br label %33

33:                                               ; preds = %2, %30
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local ptr @IMB_anim_open_proxy(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca [768 x i8], align 16
  %5 = alloca [256 x i8], align 16
  %6 = alloca [256 x i8], align 16
  %7 = alloca [20 x i8], align 16
  %8 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %8) #14
  %9 = add i32 %1, -2
  %10 = icmp ult i32 %9, 7
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = zext nneg i32 %9 to i64
  %13 = getelementptr inbounds [7 x i64], ptr @switch.table.IMB_anim_open_index.17, i64 0, i64 %12
  %14 = load i64, ptr %13, align 8
  br label %15

15:                                               ; preds = %11, %2
  %16 = phi i64 [ 0, %2 ], [ %14, %11 ]
  %17 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 22, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %58

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 20
  %22 = load i32, ptr %21, align 8, !tbaa !64
  %23 = and i32 %22, %1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 768, ptr nonnull %4) #14
  %26 = add i32 %1, -2
  %27 = icmp ult i32 %26, 7
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = zext nneg i32 %26 to i64
  %30 = getelementptr inbounds [7 x i64], ptr @switch.table.IMB_anim_open_index.17, i64 0, i64 %29
  %31 = load i64, ptr %30, align 8
  br label %32

32:                                               ; preds = %28, %25
  %33 = phi i64 [ 0, %25 ], [ %31, %28 ]
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #14
  store i8 0, ptr %7, align 16, !tbaa !51
  %34 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 17
  %35 = load i32, ptr %34, align 8, !tbaa !69
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 20, ptr noundef nonnull @.str.8, i32 noundef %35) #14
  br label %39

39:                                               ; preds = %32, %37
  %40 = getelementptr inbounds [4 x float], ptr @proxy_fac, i64 0, i64 %33
  %41 = load float, ptr %40, align 4, !tbaa !70
  %42 = fmul float %41, 1.000000e+02
  %43 = fptosi float %42 to i32
  %44 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 256, ptr noundef nonnull @.str.9, i32 noundef %43, ptr noundef nonnull %7) #14
  %45 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 256, ptr noundef nonnull @.str.10, i32 noundef %43, ptr noundef nonnull %7) #14
  %46 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 19
  %47 = load i8, ptr %46, align 8, !tbaa !51
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #14
  %50 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 8
  call void @BLI_split_dirfile(ptr noundef nonnull %50, ptr noundef nonnull %4, ptr noundef nonnull %3, i64 noundef 768, i64 noundef 256) #14
  call void @BLI_path_append(ptr noundef nonnull %4, i64 noundef 768, ptr noundef nonnull @.str.11) #14
  call void @BLI_path_append(ptr noundef nonnull %4, i64 noundef 768, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #14
  br label %53

51:                                               ; preds = %39
  %52 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %46, i64 noundef 768) #14
  br label %53

53:                                               ; preds = %49, %51
  call void @BLI_join_dirfile(ptr noundef nonnull %8, i64 noundef 1024, ptr noundef nonnull %4, ptr noundef nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 768, ptr nonnull %4) #14
  %54 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 24
  %55 = call ptr @IMB_open_anim(ptr noundef nonnull %8, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %54) #14
  store ptr %55, ptr %17, align 8, !tbaa !34
  %56 = load i32, ptr %21, align 8, !tbaa !64
  %57 = or i32 %56, %1
  store i32 %57, ptr %21, align 8, !tbaa !64
  br label %58

58:                                               ; preds = %20, %15, %53
  %59 = phi ptr [ %55, %53 ], [ %18, %15 ], [ null, %20 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %8) #14
  ret ptr %59
}

declare ptr @IMB_open_anim(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @IMB_anim_open_index(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca [768 x i8], align 16
  %5 = alloca [20 x i8], align 16
  %6 = alloca [256 x i8], align 16
  %7 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #14
  %8 = add i32 %1, -2
  %9 = icmp ult i32 %8, 7
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = zext nneg i32 %8 to i64
  %12 = getelementptr inbounds [7 x i64], ptr @switch.table.IMB_anim_open_index.17, i64 0, i64 %11
  %13 = load i64, ptr %12, align 8
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi i64 [ 0, %2 ], [ %13, %10 ]
  %16 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 23, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %53

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 21
  %21 = load i32, ptr %20, align 4, !tbaa !68
  %22 = and i32 %21, %1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %53

24:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 768, ptr nonnull %4) #14
  %25 = add i32 %1, -2
  %26 = icmp ult i32 %25, 7
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = zext nneg i32 %25 to i64
  %29 = getelementptr inbounds [7 x i64], ptr @switch.table.IMB_anim_open_index.17, i64 0, i64 %28
  %30 = load i64, ptr %29, align 8
  br label %31

31:                                               ; preds = %27, %24
  %32 = phi i64 [ 0, %24 ], [ %30, %27 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #14
  store i8 0, ptr %5, align 16, !tbaa !51
  %33 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 17
  %34 = load i32, ptr %33, align 8, !tbaa !69
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 20, ptr noundef nonnull @.str.8, i32 noundef %34) #14
  br label %38

38:                                               ; preds = %31, %36
  %39 = shl i64 %32, 2
  %40 = call ptr @llvm.load.relative.i64(ptr @reltable.IMB_anim_open_index, i64 %39)
  %41 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 256, ptr noundef %40, ptr noundef nonnull %5) #14
  %42 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 19
  %43 = load i8, ptr %42, align 8, !tbaa !51
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #14
  %46 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 8
  call void @BLI_split_dirfile(ptr noundef nonnull %46, ptr noundef nonnull %4, ptr noundef nonnull %3, i64 noundef 768, i64 noundef 256) #14
  call void @BLI_path_append(ptr noundef nonnull %4, i64 noundef 768, ptr noundef nonnull @.str.11) #14
  call void @BLI_path_append(ptr noundef nonnull %4, i64 noundef 768, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #14
  br label %49

47:                                               ; preds = %38
  %48 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %42, i64 noundef 768) #14
  br label %49

49:                                               ; preds = %45, %47
  call void @BLI_join_dirfile(ptr noundef nonnull %7, i64 noundef 1024, ptr noundef nonnull %4, ptr noundef nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 768, ptr nonnull %4) #14
  %50 = call ptr @IMB_indexer_open(ptr noundef nonnull %7)
  store ptr %50, ptr %16, align 8, !tbaa !34
  %51 = load i32, ptr %20, align 4, !tbaa !68
  %52 = or i32 %51, %1
  store i32 %52, ptr %20, align 4, !tbaa !68
  br label %53

53:                                               ; preds = %19, %14, %49
  %54 = phi ptr [ %50, %49 ], [ %17, %14 ], [ null, %19 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #14
  ret ptr %54
}

; Function Attrs: nounwind uwtable
define dso_local i32 @IMB_anim_index_get_frame_index(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @IMB_anim_open_index(ptr noundef %0, i32 noundef %1)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.anim_index, ptr %4, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !52
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.anim_index, ptr %4, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  br label %13

13:                                               ; preds = %10, %13
  %14 = phi i32 [ 0, %10 ], [ %26, %13 ]
  %15 = phi i32 [ %8, %10 ], [ %25, %13 ]
  %16 = lshr i32 %15, 1
  %17 = add nsw i32 %14, %16
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.anim_index_entry, ptr %12, i64 %18
  %20 = load i32, ptr %19, align 8, !tbaa !45
  %21 = icmp slt i32 %20, %2
  %22 = add nsw i32 %17, 1
  %23 = xor i32 %16, -1
  %24 = add nsw i32 %15, %23
  %25 = select i1 %21, i32 %24, i32 %16
  %26 = select i1 %21, i32 %22, i32 %14
  %27 = icmp sgt i32 %25, 0
  br i1 %27, label %13, label %28, !llvm.loop !61

28:                                               ; preds = %13, %6
  %29 = phi i32 [ 0, %6 ], [ %26, %13 ]
  %30 = icmp eq i32 %29, %8
  %31 = add nsw i32 %8, -1
  %32 = select i1 %30, i32 %31, i32 %29
  br label %33

33:                                               ; preds = %3, %28
  %34 = phi i32 [ %32, %28 ], [ %2, %3 ]
  ret i32 %34
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @BLI_join_dirfile(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_split_dirfile(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @BLI_path_append(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture) local_unnamed_addr #11

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nofree nounwind willreturn memory(argmem: read) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #14 = { nounwind }
attributes #15 = { cold }
attributes #16 = { nounwind willreturn memory(read) }

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
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!59, !59, i64 0}
!59 = !{!"long", !36, i64 0}
!60 = distinct !{!60, !56, !57}
!61 = distinct !{!61, !56, !57}
!62 = distinct !{!62, !56, !57}
!63 = distinct !{!63, !56, !57}
!64 = !{!65, !41, i64 2912}
!65 = !{!"anim", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !66, i64 16, !67, i64 20, !41, i64 24, !41, i64 28, !36, i64 32, !36, i64 1056, !35, i64 2080, !35, i64 2088, !35, i64 2096, !41, i64 2104, !59, i64 2112, !41, i64 2120, !41, i64 2124, !41, i64 2128, !35, i64 2136, !36, i64 2144, !41, i64 2912, !41, i64 2916, !36, i64 2920, !36, i64 2952, !36, i64 2984}
!66 = !{!"short", !36, i64 0}
!67 = !{!"float", !36, i64 0}
!68 = !{!65, !41, i64 2916}
!69 = !{!65, !41, i64 2128}
!70 = !{!67, !67, i64 0}
