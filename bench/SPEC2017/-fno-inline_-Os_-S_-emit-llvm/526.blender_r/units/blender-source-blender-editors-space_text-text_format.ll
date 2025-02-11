; ModuleID = 'blender/source/blender/editors/space_text/text_format.c'
source_filename = "blender/source/blender/editors/space_text/text_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ListBase = type { ptr, ptr }
%struct.FlattenString = type { [256 x i8], [256 x i32], ptr, ptr, i32, i32 }
%struct.SpaceText = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], ptr, i32, i32, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, float, %struct.rcti, %struct.rcti, i32, i32, [256 x i8], [256 x i8], i16, i16, [4 x i8], ptr, [2 x float] }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.TextLine = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.TextFormatType = type { ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"SyntaxFormat\00", align 1
@tft_lb = internal global %struct.ListBase zeroinitializer, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"fs->buf\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"fs->accum\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @flatten_string(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1304) %1, i8 0, i64 1304, i1 false)
  %4 = getelementptr inbounds %struct.FlattenString, ptr %1, i64 0, i32 2
  store ptr %1, ptr %4, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.FlattenString, ptr %1, i64 0, i32 1
  %6 = getelementptr inbounds %struct.FlattenString, ptr %1, i64 0, i32 3
  store ptr %5, ptr %6, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct.FlattenString, ptr %1, i64 0, i32 5
  store i32 256, ptr %7, align 4, !tbaa !12
  %8 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 16
  br label %9

9:                                                ; preds = %26, %3
  %10 = phi i32 [ 0, %3 ], [ %31, %26 ]
  %11 = phi i32 [ 0, %3 ], [ %30, %26 ]
  %12 = phi ptr [ %2, %3 ], [ %29, %26 ]
  %13 = load i8, ptr %12, align 1, !tbaa !13
  switch i8 %13, label %23 [
    i8 0, label %32
    i8 9, label %14
  ]

14:                                               ; preds = %9
  %15 = load i32, ptr %8, align 8, !tbaa !14
  %16 = srem i32 %11, %15
  %17 = sub nsw i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %14, %19
  %20 = phi i32 [ %21, %19 ], [ %17, %14 ]
  %21 = add nsw i32 %20, -1
  tail call fastcc void @flatten_string_append(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %10, i32 noundef 1) #7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %19, !llvm.loop !20

23:                                               ; preds = %9
  %24 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %12) #8
  %25 = sext i32 %24 to i64
  tail call fastcc void @flatten_string_append(ptr noundef %1, ptr noundef nonnull %12, i32 noundef %10, i32 noundef %24) #7
  br label %26

26:                                               ; preds = %19, %14, %23
  %27 = phi i64 [ %25, %23 ], [ 1, %14 ], [ 1, %19 ]
  %28 = phi i32 [ 1, %23 ], [ %17, %14 ], [ %17, %19 ]
  %29 = getelementptr inbounds i8, ptr %12, i64 %27
  %30 = add nsw i32 %28, %11
  %31 = add nuw nsw i32 %10, 1
  br label %9, !llvm.loop !22

32:                                               ; preds = %9
  tail call fastcc void @flatten_string_append(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %10, i32 noundef 1) #7
  ret i32 %11
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @flatten_string_append(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.FlattenString, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !23
  %7 = add nsw i32 %6, %3
  %8 = getelementptr inbounds %struct.FlattenString, ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !12
  %10 = icmp sgt i32 %7, %9
  br i1 %10, label %11, label %37

11:                                               ; preds = %4
  %12 = shl nsw i32 %9, 1
  store i32 %12, ptr %8, align 4, !tbaa !12
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !24
  %14 = sext i32 %12 to i64
  %15 = tail call ptr %13(i64 noundef %14, ptr noundef nonnull @.str.3) #8
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !24
  %17 = load i32, ptr %8, align 4, !tbaa !12
  %18 = sext i32 %17 to i64
  %19 = shl nsw i64 %18, 2
  %20 = tail call ptr %16(i64 noundef %19, ptr noundef nonnull @.str.4) #8
  %21 = getelementptr inbounds %struct.FlattenString, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !5
  %23 = load i32, ptr %5, align 8, !tbaa !23
  %24 = sext i32 %23 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr align 1 %22, i64 %24, i1 false)
  %25 = getelementptr inbounds %struct.FlattenString, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !11
  %27 = load i32, ptr %5, align 8, !tbaa !23
  %28 = sext i32 %27 to i64
  %29 = shl nsw i64 %28, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %20, ptr align 4 %26, i64 %29, i1 false)
  %30 = load ptr, ptr %21, align 8, !tbaa !5
  %31 = icmp eq ptr %30, %0
  br i1 %31, label %36, label %32

32:                                               ; preds = %11
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !24
  tail call void %33(ptr noundef %30) #8
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !24
  %35 = load ptr, ptr %25, align 8, !tbaa !11
  tail call void %34(ptr noundef %35) #8
  br label %36

36:                                               ; preds = %32, %11
  store ptr %15, ptr %21, align 8, !tbaa !5
  store ptr %20, ptr %25, align 8, !tbaa !11
  br label %37

37:                                               ; preds = %36, %4
  %38 = icmp sgt i32 %3, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.FlattenString, ptr %0, i64 0, i32 2
  %41 = getelementptr inbounds %struct.FlattenString, ptr %0, i64 0, i32 3
  %42 = zext nneg i32 %3 to i64
  br label %43

43:                                               ; preds = %39, %43
  %44 = phi i64 [ 0, %39 ], [ %58, %43 ]
  %45 = getelementptr inbounds i8, ptr %1, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !13
  %47 = load ptr, ptr %40, align 8, !tbaa !5
  %48 = load i32, ptr %5, align 8, !tbaa !23
  %49 = trunc i64 %44 to i32
  %50 = add nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %47, i64 %51
  store i8 %46, ptr %52, align 1, !tbaa !13
  %53 = load ptr, ptr %41, align 8, !tbaa !11
  %54 = load i32, ptr %5, align 8, !tbaa !23
  %55 = add nsw i32 %54, %49
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, ptr %53, i64 %56
  store i32 %2, ptr %57, align 4, !tbaa !25
  %58 = add nuw nsw i64 %44, 1
  %59 = icmp eq i64 %58, %42
  br i1 %59, label %60, label %43, !llvm.loop !26

60:                                               ; preds = %43, %37
  %61 = load i32, ptr %5, align 8, !tbaa !23
  %62 = add nsw i32 %61, %3
  store i32 %62, ptr %5, align 8, !tbaa !23
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_str_utf8_size_safe(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @flatten_string_free(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.FlattenString, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !24
  tail call void %6(ptr noundef %3) #8
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.FlattenString, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = getelementptr inbounds %struct.FlattenString, ptr %0, i64 0, i32 1
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !24
  tail call void %13(ptr noundef %9) #8
  br label %14

14:                                               ; preds = %12, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @flatten_string_strlen(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.FlattenString, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !23
  %5 = getelementptr inbounds %struct.FlattenString, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %8, %7
  %10 = trunc i64 %9 to i32
  %11 = add i32 %4, -1
  %12 = add i32 %11, %10
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @text_check_format_len(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.TextLine, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !27
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #9
  %8 = zext i32 %1 to i64
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !24
  tail call void %11(ptr noundef nonnull %4) #8
  %12 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !24
  %13 = add i32 %1, 2
  %14 = zext i32 %13 to i64
  %15 = tail call ptr %12(i64 noundef %14, ptr noundef nonnull @.str.2) #8
  store ptr %15, ptr %3, align 8, !tbaa !27
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %23

17:                                               ; preds = %2
  %18 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !24
  %19 = add i32 %1, 2
  %20 = zext i32 %19 to i64
  %21 = tail call ptr %18(i64 noundef %20, ptr noundef nonnull @.str.2) #8
  store ptr %21, ptr %3, align 8, !tbaa !27
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17, %6, %10
  br label %24

24:                                               ; preds = %17, %10, %23
  %25 = phi i32 [ 1, %23 ], [ 0, %10 ], [ 0, %17 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @text_format_fill(ptr nocapture noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !24
  %6 = load ptr, ptr %1, align 8, !tbaa !24
  %7 = icmp sgt i32 %3, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %4, %8
  %9 = phi ptr [ %15, %8 ], [ %5, %4 ]
  %10 = phi i32 [ %16, %8 ], [ 0, %4 ]
  %11 = phi ptr [ %13, %8 ], [ %6, %4 ]
  %12 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef %9) #8
  %13 = getelementptr inbounds i8, ptr %11, i64 1
  store i8 %2, ptr %11, align 1, !tbaa !13
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds i8, ptr %9, i64 %14
  %16 = add nuw nsw i32 %10, 1
  %17 = icmp eq i32 %16, %3
  br i1 %17, label %18, label %8, !llvm.loop !29

18:                                               ; preds = %8, %4
  %19 = phi ptr [ %6, %4 ], [ %13, %8 ]
  %20 = phi ptr [ %5, %4 ], [ %15, %8 ]
  %21 = getelementptr inbounds i8, ptr %20, i64 -1
  %22 = getelementptr inbounds i8, ptr %19, i64 -1
  store ptr %21, ptr %0, align 8, !tbaa !24
  store ptr %22, ptr %1, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @text_format_fill_ascii(ptr nocapture noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = load ptr, ptr %0, align 8, !tbaa !24
  %6 = load ptr, ptr %1, align 8, !tbaa !24
  %7 = sext i32 %3 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %6, i8 %2, i64 %7, i1 false)
  %8 = add nsw i32 %3, -1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %5, i64 %9
  %11 = getelementptr inbounds i8, ptr %6, i64 %9
  store ptr %10, ptr %0, align 8, !tbaa !24
  store ptr %11, ptr %1, align 8, !tbaa !24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_text_format_register(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BLI_addtail(ptr noundef nonnull @tft_lb, ptr noundef %0) #8
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ED_text_format_get(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %31, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  %5 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 46) #9
  %6 = icmp eq ptr %5, null
  %7 = load ptr, ptr @tft_lb, align 8, !tbaa !24
  br i1 %6, label %33, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds i8, ptr %5, i64 1
  %10 = icmp eq ptr %7, null
  br i1 %10, label %33, label %14

11:                                               ; preds = %20, %14
  %12 = load ptr, ptr %15, align 8, !tbaa !24
  %13 = icmp eq ptr %12, null
  br i1 %13, label %29, label %14, !llvm.loop !30

14:                                               ; preds = %8, %11
  %15 = phi ptr [ %12, %11 ], [ %7, %8 ]
  %16 = getelementptr inbounds %struct.TextFormatType, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !31
  %18 = load ptr, ptr %17, align 8, !tbaa !24
  %19 = icmp eq ptr %18, null
  br i1 %19, label %11, label %24

20:                                               ; preds = %24
  %21 = getelementptr inbounds ptr, ptr %26, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !24
  %23 = icmp eq ptr %22, null
  br i1 %23, label %11, label %24, !llvm.loop !33

24:                                               ; preds = %14, %20
  %25 = phi ptr [ %22, %20 ], [ %18, %14 ]
  %26 = phi ptr [ %21, %20 ], [ %17, %14 ]
  %27 = tail call i32 @BLI_strcasecmp(ptr noundef nonnull %9, ptr noundef nonnull %25) #8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %20

29:                                               ; preds = %11
  %30 = load ptr, ptr @tft_lb, align 8, !tbaa !34
  br label %33

31:                                               ; preds = %1
  %32 = load ptr, ptr @tft_lb, align 8, !tbaa !34
  br label %33

33:                                               ; preds = %24, %3, %8, %29, %31
  %34 = phi ptr [ %32, %31 ], [ %30, %29 ], [ null, %8 ], [ %7, %3 ], [ %15, %24 ]
  ret ptr %34
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @BLI_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !9, i64 1280}
!6 = !{!"FlattenString", !7, i64 0, !7, i64 256, !9, i64 1280, !9, i64 1288, !10, i64 1296, !10, i64 1300}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!6, !9, i64 1288}
!12 = !{!6, !10, i64 1300}
!13 = !{!7, !7, i64 0}
!14 = !{!15, !10, i64 88}
!15 = !{!"SpaceText", !9, i64 0, !9, i64 8, !16, i64 16, !10, i64 32, !17, i64 36, !7, i64 40, !9, i64 56, !10, i64 64, !10, i64 68, !18, i64 72, !18, i64 74, !18, i64 76, !7, i64 78, !7, i64 79, !10, i64 80, !10, i64 84, !10, i64 88, !18, i64 92, !18, i64 94, !18, i64 96, !18, i64 98, !17, i64 100, !19, i64 104, !19, i64 120, !10, i64 136, !10, i64 140, !7, i64 144, !7, i64 400, !18, i64 656, !18, i64 658, !7, i64 660, !9, i64 664, !7, i64 672}
!16 = !{!"ListBase", !9, i64 0, !9, i64 8}
!17 = !{!"float", !7, i64 0}
!18 = !{!"short", !7, i64 0}
!19 = !{!"rcti", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, !21}
!23 = !{!6, !10, i64 1296}
!24 = !{!9, !9, i64 0}
!25 = !{!10, !10, i64 0}
!26 = distinct !{!26, !21}
!27 = !{!28, !9, i64 24}
!28 = !{!"TextLine", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !10, i64 32, !10, i64 36}
!29 = distinct !{!29, !21}
!30 = distinct !{!30, !21}
!31 = !{!32, !9, i64 32}
!32 = !{!"TextFormatType", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32}
!33 = distinct !{!33, !21}
!34 = !{!16, !9, i64 0}
