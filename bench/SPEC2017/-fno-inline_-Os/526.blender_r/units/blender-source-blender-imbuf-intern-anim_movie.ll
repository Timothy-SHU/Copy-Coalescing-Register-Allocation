; ModuleID = 'blender/source/blender/imbuf/intern/anim_movie.c'
source_filename = "blender/source/blender/imbuf/intern/anim_movie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anim = type { i32, i32, i32, i32, i16, float, i32, i32, [1024 x i8], [1024 x i8], ptr, ptr, ptr, i32, i64, i32, i32, i32, ptr, [768 x i8], i32, i32, [4 x ptr], [4 x ptr], [64 x i8] }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"anim struct\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s.%04d\00", align 1
@str = private unnamed_addr constant [24 x i8] c"free anim, anim == NULL\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @ismovie(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_free_anim(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %7

5:                                                ; preds = %1
  tail call void @IMB_free_indices(ptr noundef nonnull %0) #13
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %6(ptr noundef nonnull %0) #13
  br label %7

7:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: optsize
declare void @IMB_free_indices(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_close_anim(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @IMB_free_anim(ptr noundef nonnull %0) #14
  br label %4

4:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_close_anim_proxies(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @IMB_free_indices(ptr noundef nonnull %0) #13
  br label %4

4:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IMB_open_anim(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 3048, ptr noundef nonnull @.str.1) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %3, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %8
  tail call void @colorspace_set_default_role(ptr noundef nonnull %3, i32 noundef 64, i32 noundef 4) #13
  %11 = getelementptr inbounds %struct.anim, ptr %6, i64 0, i32 24
  %12 = tail call ptr @BLI_strncpy(ptr noundef nonnull %11, ptr noundef nonnull %3, i64 noundef 64) #13
  br label %15

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.anim, ptr %6, i64 0, i32 24
  tail call void @colorspace_set_default_role(ptr noundef nonnull %14, i32 noundef 64, i32 noundef 4) #13
  br label %15

15:                                               ; preds = %13, %10
  %16 = getelementptr inbounds %struct.anim, ptr %6, i64 0, i32 8
  %17 = tail call ptr @BLI_strncpy(ptr noundef nonnull %16, ptr noundef %0, i64 noundef 1024) #13
  store i32 %1, ptr %6, align 8, !tbaa !38
  %18 = getelementptr inbounds %struct.anim, ptr %6, i64 0, i32 17
  store i32 %2, ptr %18, align 8, !tbaa !44
  br label %19

19:                                               ; preds = %15, %4
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare void @colorspace_set_default_role(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IMB_anim_previewframe(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call ptr @IMB_anim_absolute(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  tail call void @IMB_freeImBuf(ptr noundef nonnull %2) #13
  %5 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !45
  %7 = sdiv i32 %6, 2
  %8 = tail call ptr @IMB_anim_absolute(ptr noundef %0, i32 noundef %7, i32 noundef 0, i32 noundef 0) #14
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi ptr [ %8, %4 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IMB_anim_absolute(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = alloca [256 x i8], align 16
  %6 = alloca [256 x i8], align 16
  %7 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #15
  %8 = icmp eq ptr %0, null
  br i1 %8, label %55, label %9

9:                                                ; preds = %4
  %10 = load i32, ptr %0, align 8, !tbaa !38
  %11 = and i32 %10, 512
  %12 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !46
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = tail call fastcc ptr @anim_getnew(ptr noundef nonnull %0) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %55, label %18

18:                                               ; preds = %15
  tail call void @IMB_freeImBuf(ptr noundef nonnull %16) #13
  br label %19

19:                                               ; preds = %18, %9
  %20 = icmp slt i32 %1, 0
  br i1 %20, label %55, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !45
  %24 = icmp sgt i32 %23, %1
  br i1 %24, label %25, label %55

25:                                               ; preds = %21
  %26 = icmp eq i32 %3, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %25
  %28 = tail call ptr @IMB_anim_open_proxy(ptr noundef nonnull %0, i32 noundef %3) #13
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = tail call i32 @IMB_anim_index_get_frame_index(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %1) #13
  %32 = tail call ptr @IMB_anim_absolute(ptr noundef nonnull %28, i32 noundef %31, i32 noundef 0, i32 noundef 0) #14
  br label %55

33:                                               ; preds = %27, %25
  %34 = load i32, ptr %12, align 4, !tbaa !46
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %55

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 9
  %38 = call fastcc i32 @an_stringdec(ptr noundef nonnull %37, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #14
  %39 = add nsw i32 %38, %1
  %40 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 8
  %41 = load i16, ptr %7, align 2, !tbaa !47
  call fastcc void @an_stringenc(ptr noundef nonnull %40, ptr noundef nonnull %5, ptr noundef nonnull %6, i16 noundef zeroext %41, i32 noundef %39) #14
  %42 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 24
  %43 = call ptr @IMB_loadiffname(ptr noundef nonnull %40, i32 noundef 1, ptr noundef nonnull %42) #13
  %44 = icmp eq ptr %43, null
  br i1 %44, label %55, label %45

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 2
  store i32 %1, ptr %46, align 8, !tbaa !48
  %47 = icmp eq i32 %11, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  call void @IMB_filtery(ptr noundef nonnull %43) #13
  %49 = load i32, ptr %46, align 8, !tbaa !48
  br label %50

50:                                               ; preds = %48, %45
  %51 = phi i32 [ %49, %48 ], [ %1, %45 ]
  %52 = getelementptr inbounds %struct.ImBuf, ptr %43, i64 0, i32 27
  %53 = add nsw i32 %51, 1
  %54 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %52, i64 noundef 1024, ptr noundef nonnull @.str.2, ptr noundef nonnull %40, i32 noundef %53) #13
  br label %55

55:                                               ; preds = %33, %36, %30, %50, %21, %19, %15, %4
  %56 = phi ptr [ %32, %30 ], [ null, %4 ], [ null, %15 ], [ null, %19 ], [ null, %21 ], [ %43, %50 ], [ null, %33 ], [ null, %36 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #15
  ret ptr %56
}

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @anim_getnew(ptr noundef %0) unnamed_addr #1 !PGOFuncName !49 {
  %2 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !46
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 8
  %7 = tail call i32 @imb_get_anim_type(ptr noundef nonnull %6) #13
  store i32 %7, ptr %2, align 4, !tbaa !46
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = load i32, ptr %0, align 8, !tbaa !38
  %11 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 24
  %12 = tail call ptr @IMB_loadiffname(ptr noundef nonnull %6, i32 noundef %10, ptr noundef nonnull %11) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 9
  %16 = tail call ptr @BLI_strncpy(ptr noundef nonnull %15, ptr noundef nonnull %6, i64 noundef 1024) #13
  %17 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 3
  store i32 1, ptr %17, align 4, !tbaa !45
  br label %18

18:                                               ; preds = %5, %14, %9, %1
  %19 = phi ptr [ null, %1 ], [ %12, %14 ], [ null, %9 ], [ null, %5 ]
  ret ptr %19
}

; Function Attrs: optsize
declare ptr @IMB_anim_open_proxy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @IMB_anim_index_get_frame_index(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize memory(read, argmem: readwrite) uwtable
define internal fastcc i32 @an_stringdec(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #4 !PGOFuncName !50 {
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16
  %6 = trunc i64 %5 to i16
  %7 = add i16 %6, -1
  %8 = icmp sgt i16 %7, -1
  br i1 %8, label %9, label %55

9:                                                ; preds = %4, %30
  %10 = phi i16 [ %34, %30 ], [ %7, %4 ]
  %11 = phi i8 [ %33, %30 ], [ 0, %4 ]
  %12 = phi i16 [ %32, %30 ], [ 0, %4 ]
  %13 = phi i16 [ %31, %30 ], [ %6, %4 ]
  %14 = zext nneg i16 %10 to i64
  %15 = getelementptr inbounds i8, ptr %0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !51
  %17 = icmp eq i8 %16, 47
  br i1 %17, label %36, label %18

18:                                               ; preds = %9
  %19 = tail call ptr @__ctype_b_loc() #17
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = zext i8 %16 to i64
  %22 = getelementptr inbounds i16, ptr %20, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !47
  %24 = and i16 %23, 2048
  %25 = icmp eq i16 %24, 0
  %26 = icmp eq i8 %11, 0
  br i1 %25, label %29, label %27

27:                                               ; preds = %18
  %28 = select i1 %26, i16 %10, i16 %13
  br label %30

29:                                               ; preds = %18
  br i1 %26, label %30, label %41

30:                                               ; preds = %29, %27
  %31 = phi i16 [ %13, %29 ], [ %28, %27 ]
  %32 = phi i16 [ %12, %29 ], [ %10, %27 ]
  %33 = phi i8 [ 0, %29 ], [ 1, %27 ]
  %34 = add nsw i16 %10, -1
  %35 = icmp sgt i16 %10, 0
  br i1 %35, label %9, label %36, !llvm.loop !52

36:                                               ; preds = %30, %9
  %37 = phi i16 [ %31, %30 ], [ %13, %9 ]
  %38 = phi i16 [ %32, %30 ], [ %12, %9 ]
  %39 = phi i8 [ %33, %30 ], [ %11, %9 ]
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %29, %36
  %42 = phi i16 [ %37, %36 ], [ %13, %29 ]
  %43 = phi i16 [ %38, %36 ], [ %12, %29 ]
  %44 = zext i16 %42 to i64
  %45 = getelementptr i8, ptr %0, i64 %44
  %46 = getelementptr i8, ptr %45, i64 1
  %47 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %46) #13
  %48 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %0) #13
  %49 = zext i16 %43 to i64
  %50 = getelementptr inbounds i8, ptr %1, i64 %49
  store i8 0, ptr %50, align 1, !tbaa !51
  %51 = add i16 %42, 1
  %52 = sub i16 %51, %43
  store i16 %52, ptr %3, align 2, !tbaa !47
  %53 = getelementptr inbounds i8, ptr %0, i64 %49
  %54 = tail call i32 @atoi(ptr nocapture noundef %53) #16
  br label %57

55:                                               ; preds = %4, %36
  store i8 0, ptr %2, align 1, !tbaa !51
  %56 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %0) #13
  store i16 0, ptr %3, align 2, !tbaa !47
  br label %57

57:                                               ; preds = %55, %41
  %58 = phi i32 [ %54, %41 ], [ 1, %55 ]
  ret i32 %58
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @an_stringenc(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, i32 noundef %4) unnamed_addr #1 !PGOFuncName !54 {
  tail call void @BLI_stringenc(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, i32 noundef %4) #13
  ret void
}

; Function Attrs: optsize
declare ptr @IMB_loadiffname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_filtery(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @IMB_anim_get_duration(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !45
  br label %15

7:                                                ; preds = %2
  %8 = tail call ptr @IMB_anim_open_index(ptr noundef %0, i32 noundef %1) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !45
  br label %15

13:                                               ; preds = %7
  %14 = tail call i32 @IMB_indexer_get_duration(ptr noundef nonnull %8) #13
  br label %15

15:                                               ; preds = %13, %10, %4
  %16 = phi i32 [ %6, %4 ], [ %14, %13 ], [ %12, %10 ]
  ret i32 %16
}

; Function Attrs: optsize
declare ptr @IMB_anim_open_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @IMB_indexer_get_duration(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @IMB_anim_get_fps(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 4
  %5 = load i16, ptr %4, align 8, !tbaa !55
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  store i16 %5, ptr %1, align 2, !tbaa !47
  %8 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 5
  %9 = load float, ptr %8, align 4, !tbaa !56
  store float %9, ptr %2, align 4, !tbaa !57
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi i8 [ 1, %7 ], [ 0, %3 ]
  ret i8 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @IMB_anim_set_preseek(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 16
  store i32 %1, ptr %3, align 4, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @IMB_anim_get_preseek(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 16
  %3 = load i32, ptr %2, align 4, !tbaa !58
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @imb_get_anim_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare void @BLI_stringenc(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #12

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree noinline nounwind optsize memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }
attributes #15 = { nounwind }
attributes #16 = { nounwind optsize willreturn memory(read) }
attributes #17 = { nounwind optsize willreturn memory(none) }

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
!38 = !{!39, !40, i64 0}
!39 = !{!"anim", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !41, i64 16, !42, i64 20, !40, i64 24, !40, i64 28, !36, i64 32, !36, i64 1056, !35, i64 2080, !35, i64 2088, !35, i64 2096, !40, i64 2104, !43, i64 2112, !40, i64 2120, !40, i64 2124, !40, i64 2128, !35, i64 2136, !36, i64 2144, !40, i64 2912, !40, i64 2916, !36, i64 2920, !36, i64 2952, !36, i64 2984}
!40 = !{!"int", !36, i64 0}
!41 = !{!"short", !36, i64 0}
!42 = !{!"float", !36, i64 0}
!43 = !{!"long", !36, i64 0}
!44 = !{!39, !40, i64 2128}
!45 = !{!39, !40, i64 12}
!46 = !{!39, !40, i64 4}
!47 = !{!41, !41, i64 0}
!48 = !{!39, !40, i64 8}
!49 = !{!"anim_movie.c:anim_getnew"}
!50 = !{!"anim_movie.c:an_stringdec"}
!51 = !{!36, !36, i64 0}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"anim_movie.c:an_stringenc"}
!55 = !{!39, !41, i64 16}
!56 = !{!39, !42, i64 20}
!57 = !{!42, !42, i64 0}
!58 = !{!39, !40, i64 2124}
