; ModuleID = 'blender/source/blender/blenfont/intern/blf_lang.c'
source_filename = "blender/source/blender/blenfont/intern/blf_lang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @BLF_RNA_lang_enum_properties() local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @BLF_lang_init() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @BLF_lang_free() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @BLF_lang_set(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @BLF_lang_get() local_unnamed_addr #0 {
  ret ptr @.str
}

; Function Attrs: nounwind uwtable
define dso_local void @BLF_locale_explode(ptr noundef %0, ptr noundef writeonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4, ptr noundef writeonly %5) local_unnamed_addr #1 {
  %7 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 95) #4
  %8 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 64) #4
  %9 = icmp ne ptr %1, null
  %10 = icmp ne ptr %5, null
  %11 = or i1 %9, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %6
  %13 = icmp ne ptr %7, null
  %14 = icmp ne ptr %8, null
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = ptrtoint ptr %0 to i64
  %18 = select i1 %13, ptr %7, ptr %8
  %19 = ptrtoint ptr %18 to i64
  %20 = sub i64 %19, %17
  %21 = tail call ptr @BLI_strdupn(ptr noundef %0, i64 noundef %20) #5
  br i1 %9, label %25, label %28

22:                                               ; preds = %12
  br i1 %9, label %23, label %28

23:                                               ; preds = %22
  %24 = tail call ptr @BLI_strdup(ptr noundef %0) #5
  br label %25

25:                                               ; preds = %16, %23
  %26 = phi ptr [ %24, %23 ], [ %21, %16 ]
  %27 = phi ptr [ null, %23 ], [ %21, %16 ]
  store ptr %26, ptr %1, align 8, !tbaa !34
  br label %28

28:                                               ; preds = %25, %16, %22, %6
  %29 = phi ptr [ %21, %16 ], [ null, %22 ], [ null, %6 ], [ %27, %25 ]
  %30 = icmp eq ptr %2, null
  br i1 %30, label %45, label %31

31:                                               ; preds = %28
  %32 = icmp eq ptr %7, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %31
  %34 = icmp eq ptr %8, null
  %35 = getelementptr inbounds i8, ptr %7, i64 1
  br i1 %34, label %41, label %36

36:                                               ; preds = %33
  %37 = ptrtoint ptr %8 to i64
  %38 = ptrtoint ptr %35 to i64
  %39 = sub i64 %37, %38
  %40 = tail call ptr @BLI_strdupn(ptr noundef nonnull %35, i64 noundef %39) #5
  br label %43

41:                                               ; preds = %33
  %42 = tail call ptr @BLI_strdup(ptr noundef nonnull %35) #5
  br label %43

43:                                               ; preds = %31, %36, %41
  %44 = phi ptr [ %40, %36 ], [ %42, %41 ], [ null, %31 ]
  store ptr %44, ptr %2, align 8, !tbaa !34
  br label %45

45:                                               ; preds = %43, %28
  %46 = icmp eq ptr %3, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %45
  %48 = icmp eq ptr %8, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds i8, ptr %8, i64 1
  %51 = tail call ptr @BLI_strdup(ptr noundef nonnull %50) #5
  br label %52

52:                                               ; preds = %47, %49
  %53 = phi ptr [ %51, %49 ], [ null, %47 ]
  store ptr %53, ptr %3, align 8, !tbaa !34
  br label %54

54:                                               ; preds = %52, %45
  %55 = icmp eq ptr %4, null
  br i1 %55, label %69, label %56

56:                                               ; preds = %54
  %57 = icmp eq ptr %7, null
  br i1 %57, label %67, label %58

58:                                               ; preds = %56
  %59 = icmp eq ptr %8, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %58
  %61 = ptrtoint ptr %8 to i64
  %62 = ptrtoint ptr %0 to i64
  %63 = sub i64 %61, %62
  %64 = tail call ptr @BLI_strdupn(ptr noundef %0, i64 noundef %63) #5
  br label %67

65:                                               ; preds = %58
  %66 = tail call ptr @BLI_strdup(ptr noundef %0) #5
  br label %67

67:                                               ; preds = %56, %60, %65
  %68 = phi ptr [ %64, %60 ], [ %66, %65 ], [ null, %56 ]
  store ptr %68, ptr %4, align 8, !tbaa !34
  br label %69

69:                                               ; preds = %67, %54
  br i1 %10, label %70, label %80

70:                                               ; preds = %69
  %71 = icmp eq ptr %8, null
  br i1 %71, label %78, label %72

72:                                               ; preds = %70
  %73 = icmp eq ptr %7, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %72
  %75 = tail call ptr @BLI_strdupcat(ptr noundef %29, ptr noundef nonnull %8) #5
  br label %78

76:                                               ; preds = %72
  %77 = tail call ptr @BLI_strdup(ptr noundef %0) #5
  br label %78

78:                                               ; preds = %70, %74, %76
  %79 = phi ptr [ %75, %74 ], [ %77, %76 ], [ null, %70 ]
  store ptr %79, ptr %5, align 8, !tbaa !34
  br label %80

80:                                               ; preds = %78, %69
  %81 = icmp eq ptr %29, null
  %82 = or i1 %9, %81
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %84(ptr noundef %29) #5
  br label %85

85:                                               ; preds = %83, %80
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BLI_strdupn(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #3

declare ptr @BLI_strdupcat(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) }
attributes #5 = { nounwind }

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
