; ModuleID = 'blender/source/blender/blenkernel/intern/writeavi.c'
source_filename = "blender/source/blender/blenkernel/intern/writeavi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bMovieHandle = type { ptr, ptr, ptr, ptr, ptr }

@BKE_movie_handle_get.mh = internal global %struct.bMovieHandle zeroinitializer, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef nonnull ptr @BKE_movie_handle_get(i8 zeroext %0) local_unnamed_addr #0 {
  store ptr @start_stub, ptr @BKE_movie_handle_get.mh, align 8, !tbaa !34
  store ptr @append_stub, ptr getelementptr inbounds (%struct.bMovieHandle, ptr @BKE_movie_handle_get.mh, i64 0, i32 1), align 8, !tbaa !39
  store ptr @end_stub, ptr getelementptr inbounds (%struct.bMovieHandle, ptr @BKE_movie_handle_get.mh, i64 0, i32 2), align 8, !tbaa !40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.bMovieHandle, ptr @BKE_movie_handle_get.mh, i64 0, i32 3), i8 0, i64 16, i1 false)
  ret ptr @BKE_movie_handle_get.mh
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @start_stub(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 %2, i32 %3, ptr nocapture readnone %4) #1 !PGOFuncName !41 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @append_stub(ptr nocapture readnone %0, i32 %1, i32 %2, ptr nocapture readnone %3, i32 %4, i32 %5, ptr nocapture readnone %6) #1 !PGOFuncName !42 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @end_stub() #1 !PGOFuncName !43 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_movie_filepath_get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call ptr @BKE_movie_handle_get(i8 zeroext poison) #4
  %4 = load ptr, ptr getelementptr inbounds (%struct.bMovieHandle, ptr @BKE_movie_handle_get.mh, i64 0, i32 4), align 8, !tbaa !44
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void %4(ptr noundef %0, ptr noundef nonnull %1) #5
  br label %8

7:                                                ; preds = %2
  store i8 0, ptr %0, align 1, !tbaa !45
  br label %8

8:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { optsize }
attributes #5 = { nounwind optsize }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"bMovieHandle", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!35, !36, i64 8}
!40 = !{!35, !36, i64 16}
!41 = !{!"writeavi.c:start_stub"}
!42 = !{!"writeavi.c:append_stub"}
!43 = !{!"writeavi.c:end_stub"}
!44 = !{!35, !36, i64 32}
!45 = !{!37, !37, i64 0}
