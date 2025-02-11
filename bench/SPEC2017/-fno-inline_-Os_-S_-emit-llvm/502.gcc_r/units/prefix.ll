; ModuleID = 'prefix.c'
source_filename = "prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@std_prefix = internal unnamed_addr global ptr @.str.1, align 8
@.str = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"_ROOT\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @update_path(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @std_prefix, align 8, !tbaa !5
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #8
  %5 = shl i64 %4, 32
  %6 = ashr exact i64 %5, 32
  %7 = tail call i32 @strncmp(ptr noundef %0, ptr noundef %3, i64 noundef %6) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %2
  %10 = getelementptr inbounds i8, ptr %0, i64 %6
  %11 = load i8, ptr %10, align 1, !tbaa !9
  %12 = icmp eq i8 %11, 47
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = icmp eq i8 %11, 0
  %15 = icmp ne ptr %1, null
  %16 = and i1 %15, %14
  br i1 %16, label %19, label %30

17:                                               ; preds = %9
  %18 = icmp eq ptr %1, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %13, %17
  %20 = load i8, ptr %1, align 1, !tbaa !9
  %21 = icmp eq i8 %20, 36
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull %1, ptr noundef nonnull %10, ptr noundef null) #9
  br label %27

24:                                               ; preds = %19
  %25 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str, ptr noundef nonnull %1, ptr noundef null) #9
  %26 = tail call ptr (ptr, ...) @concat(ptr noundef %25, ptr noundef nonnull %10, ptr noundef null) #9
  tail call void @free(ptr noundef %25) #8
  br label %27

27:                                               ; preds = %22, %24
  %28 = phi ptr [ %23, %22 ], [ %26, %24 ]
  %29 = tail call fastcc ptr @translate_name(ptr noundef %28) #8
  br label %32

30:                                               ; preds = %17, %13, %2
  %31 = tail call ptr @xstrdup(ptr noundef %0) #9
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi ptr [ %31, %30 ], [ %29, %27 ]
  %34 = ptrtoint ptr %33 to i64
  %35 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %33, i32 noundef 46) #8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %112, label %37

37:                                               ; preds = %32, %107
  %38 = phi ptr [ %109, %107 ], [ %35, %32 ]
  %39 = getelementptr inbounds i8, ptr %38, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !9
  %41 = icmp eq i8 %40, 46
  br i1 %41, label %42, label %107

42:                                               ; preds = %37
  %43 = getelementptr inbounds i8, ptr %38, i64 2
  %44 = load i8, ptr %43, align 1, !tbaa !9
  %45 = icmp ne i8 %44, 47
  %46 = icmp eq ptr %38, %33
  %47 = or i1 %45, %46
  br i1 %47, label %107, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds i8, ptr %38, i64 -1
  %50 = load i8, ptr %49, align 1, !tbaa !9
  %51 = icmp eq i8 %50, 47
  br i1 %51, label %52, label %107

52:                                               ; preds = %48
  store i8 0, ptr %38, align 1, !tbaa !9
  %53 = tail call i32 @access(ptr noundef %33, i32 noundef 1) #8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %111, label %55

55:                                               ; preds = %52, %77
  %56 = phi ptr [ %71, %77 ], [ %38, %52 ]
  %57 = getelementptr i8, ptr %56, i64 %34
  %58 = ptrtoint ptr %56 to i64
  %59 = sub i64 0, %58
  %60 = getelementptr i8, ptr %57, i64 %59
  br label %61

61:                                               ; preds = %65, %55
  %62 = phi ptr [ %56, %55 ], [ %63, %65 ]
  %63 = getelementptr inbounds i8, ptr %62, i64 -1
  %64 = icmp eq ptr %63, %33
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = load i8, ptr %63, align 1, !tbaa !9
  %67 = icmp eq i8 %66, 47
  br i1 %67, label %61, label %68, !llvm.loop !10

68:                                               ; preds = %61, %65
  %69 = phi ptr [ %60, %61 ], [ %63, %65 ]
  br label %70

70:                                               ; preds = %73, %68
  %71 = phi ptr [ %69, %68 ], [ %74, %73 ]
  %72 = icmp eq ptr %71, %33
  br i1 %72, label %80, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds i8, ptr %71, i64 -1
  %75 = load i8, ptr %74, align 1, !tbaa !9
  %76 = icmp eq i8 %75, 47
  br i1 %76, label %77, label %70, !llvm.loop !12

77:                                               ; preds = %73
  %78 = load i8, ptr %71, align 1, !tbaa !9
  %79 = icmp eq i8 %78, 46
  br i1 %79, label %55, label %86, !llvm.loop !13

80:                                               ; preds = %70
  %81 = getelementptr i8, ptr %69, i64 %34
  %82 = ptrtoint ptr %69 to i64
  %83 = sub i64 0, %82
  %84 = getelementptr i8, ptr %81, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !9
  br label %86

86:                                               ; preds = %77, %80
  %87 = phi i8 [ %85, %80 ], [ %78, %77 ]
  %88 = phi ptr [ %84, %80 ], [ %71, %77 ]
  %89 = and i8 %87, -2
  %90 = icmp eq i8 %89, 46
  br i1 %90, label %111, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds i8, ptr %38, i64 3
  br label %93

93:                                               ; preds = %93, %91
  %94 = phi ptr [ %92, %91 ], [ %97, %93 ]
  %95 = load i8, ptr %94, align 1, !tbaa !9
  %96 = icmp eq i8 %95, 47
  %97 = getelementptr inbounds i8, ptr %94, i64 1
  br i1 %96, label %93, label %98, !llvm.loop !14

98:                                               ; preds = %93
  store i8 %95, ptr %88, align 1, !tbaa !9
  %99 = icmp eq i8 %95, 0
  br i1 %99, label %107, label %100, !llvm.loop !15

100:                                              ; preds = %98, %100
  %101 = phi ptr [ %103, %100 ], [ %88, %98 ]
  %102 = phi ptr [ %104, %100 ], [ %94, %98 ]
  %103 = getelementptr inbounds i8, ptr %101, i64 1
  %104 = getelementptr inbounds i8, ptr %102, i64 1
  %105 = load i8, ptr %104, align 1, !tbaa !9
  store i8 %105, ptr %103, align 1, !tbaa !9
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %100, !llvm.loop !15

107:                                              ; preds = %100, %98, %48, %42, %37
  %108 = phi ptr [ %39, %48 ], [ %39, %42 ], [ %39, %37 ], [ %88, %98 ], [ %88, %100 ]
  %109 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %108, i32 noundef 46) #8
  %110 = icmp eq ptr %109, null
  br i1 %110, label %112, label %37

111:                                              ; preds = %86, %52
  store i8 46, ptr %38, align 1, !tbaa !9
  br label %112

112:                                              ; preds = %107, %111, %32
  ret ptr %33
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @concat(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @translate_name(ptr noundef %0) unnamed_addr #0 {
  br label %2

2:                                                ; preds = %26, %1
  %3 = phi ptr [ %0, %1 ], [ %30, %26 ]
  %4 = load i8, ptr %3, align 1, !tbaa !9
  switch i8 %4, label %31 [
    i8 64, label %5
    i8 36, label %5
  ]

5:                                                ; preds = %2, %2
  br label %6

6:                                                ; preds = %5, %6
  %7 = phi i64 [ %8, %6 ], [ 0, %5 ]
  %8 = add nuw nsw i64 %7, 1
  %9 = getelementptr inbounds i8, ptr %3, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !9
  switch i8 %10, label %6 [
    i8 0, label %11
    i8 47, label %11
  ], !llvm.loop !16

11:                                               ; preds = %6, %6
  %12 = getelementptr inbounds i8, ptr %3, i64 %8
  %13 = alloca i8, i64 %8, align 16
  %14 = getelementptr inbounds i8, ptr %3, i64 1
  %15 = and i64 %7, 4294967295
  %16 = call ptr @strncpy(ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef %15) #8
  %17 = getelementptr inbounds i8, ptr %13, i64 %15
  store i8 0, ptr %17, align 1, !tbaa !9
  %18 = icmp eq i8 %4, 64
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = call fastcc ptr @get_key_value(ptr noundef nonnull %13) #8
  %21 = icmp eq ptr %20, null
  %22 = load ptr, ptr @std_prefix, align 8
  %23 = select i1 %21, ptr %22, ptr %20
  br label %26

24:                                               ; preds = %11
  %25 = call ptr @getenv(ptr noundef nonnull %13) #8
  br label %26

26:                                               ; preds = %19, %24
  %27 = phi ptr [ %25, %24 ], [ %23, %19 ]
  %28 = icmp eq ptr %27, null
  %29 = select i1 %28, ptr @.str.1, ptr %27
  %30 = call ptr (ptr, ...) @concat(ptr noundef nonnull %29, ptr noundef nonnull %12, ptr noundef null) #9
  call void @free(ptr noundef nonnull %3) #8
  br label %2

31:                                               ; preds = %2
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @xstrdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @access(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_std_prefix(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @save_string(ptr noundef %0, i32 noundef %1) #8
  store ptr %3, ptr @std_prefix, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @save_string(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = add nsw i32 %1, 1
  %4 = sext i32 %3 to i64
  %5 = tail call ptr @xmalloc(i64 noundef %4) #9
  %6 = sext i32 %1 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %0, i64 %6, i1 false)
  %7 = getelementptr inbounds i8, ptr %5, i64 %6
  store i8 0, ptr %7, align 1, !tbaa !9
  ret ptr %5
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_key_value(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr (ptr, ...) @concat(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef null) #9
  %3 = tail call ptr @getenv(ptr noundef %2) #8
  %4 = load ptr, ptr @std_prefix, align 8
  %5 = icmp eq ptr %2, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #8
  br label %7

7:                                                ; preds = %6, %1
  %8 = icmp eq ptr %3, null
  %9 = select i1 %8, ptr %4, ptr %3
  ret ptr %9
}

; Function Attrs: nofree nounwind optsize memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
