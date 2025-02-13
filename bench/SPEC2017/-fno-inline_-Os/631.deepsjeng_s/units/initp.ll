; ModuleID = 'initp.cpp'
source_filename = "initp.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gamestate_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i32], [1000 x %struct.move_x], i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.move_x = type { i32, i32, i32, i32, i64, i64 }

@TTSize = external local_unnamed_addr global i32, align 4
@cfg_logfile = external local_unnamed_addr global [512 x i8], align 16
@.str = private unnamed_addr constant [10 x i8] c"sjeng.log\00", align 1
@cfg_logging = external local_unnamed_addr global i32, align 4
@contempt = external local_unnamed_addr global i32, align 4
@uci_mode = external local_unnamed_addr global i32, align 4
@uci_chess960_mode = external local_unnamed_addr global i32, align 4
@uci_showcurrline = external local_unnamed_addr global i32, align 4
@uci_showrefutations = external local_unnamed_addr global i32, align 4
@uci_limitstrength = external local_unnamed_addr global i32, align 4
@uci_elo = external local_unnamed_addr global i32, align 4
@uci_multipv = external local_unnamed_addr global i32, align 4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z15init_parametersP11gamestate_t(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 !prof !38 {
  store i32 150000000, ptr @TTSize, align 4, !tbaa !39
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) @cfg_logfile, ptr noundef nonnull align 1 dereferenceable(10) @.str, i64 10, i1 false) #3
  store i32 0, ptr @cfg_logging, align 4, !tbaa !39
  store i32 0, ptr @contempt, align 4, !tbaa !39
  %2 = getelementptr inbounds %struct.gamestate_t, ptr %0, i64 0, i32 14
  store i32 60, ptr %2, align 8, !tbaa !43
  store i32 0, ptr @uci_mode, align 4, !tbaa !39
  store i32 0, ptr @uci_chess960_mode, align 4, !tbaa !39
  store i32 0, ptr @uci_showcurrline, align 4, !tbaa !39
  store i32 0, ptr @uci_showrefutations, align 4, !tbaa !39
  store i32 0, ptr @uci_limitstrength, align 4, !tbaa !39
  store i32 3000, ptr @uci_elo, align 4, !tbaa !39
  store i32 1, ptr @uci_multipv, align 4, !tbaa !39
  tail call void @_Z10alloc_hashv() #4
  ret void
}

; Function Attrs: optsize
declare void @_Z10alloc_hashv() local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!37}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 146496756232}
!4 = !{!"MaxCount", i64 8721648212}
!5 = !{!"MaxInternalCount", i64 5141736311}
!6 = !{!"MaxFunctionCount", i64 8721648212}
!7 = !{!"NumCounts", i64 1321}
!8 = !{!"NumFunctions", i64 93}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 8721648212, i32 1}
!14 = !{i32 100000, i64 6254650610, i32 2}
!15 = !{i32 200000, i64 3869890121, i32 6}
!16 = !{i32 300000, i64 2709579086, i32 11}
!17 = !{i32 400000, i64 2122664977, i32 16}
!18 = !{i32 500000, i64 1035201207, i32 30}
!19 = !{i32 600000, i64 738030122, i32 46}
!20 = !{i32 700000, i64 447394011, i32 71}
!21 = !{i32 800000, i64 240014260, i32 118}
!22 = !{i32 900000, i64 123608408, i32 197}
!23 = !{i32 950000, i64 77992234, i32 270}
!24 = !{i32 990000, i64 24047101, i32 388}
!25 = !{i32 999000, i64 3805030, i32 501}
!26 = !{i32 999900, i64 637179, i32 578}
!27 = !{i32 999990, i64 66341, i32 629}
!28 = !{i32 999999, i64 5762, i32 686}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36}
!36 = !{ptr @_Z15init_parametersP11gamestate_t, ptr @_Z10alloc_hashv, i64 1}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 1}
!39 = !{!40, !40, i64 0}
!40 = !{!"int", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C++ TBAA"}
!43 = !{!44, !40, i64 56}
!44 = !{!"_ZTS11gamestate_t", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !41, i64 64, !41, i64 4064, !45, i64 36064, !40, i64 36072, !40, i64 36076, !40, i64 36080, !40, i64 36084, !40, i64 36088, !40, i64 36092, !40, i64 36096, !40, i64 36100}
!45 = !{!"long long", !41, i64 0}
