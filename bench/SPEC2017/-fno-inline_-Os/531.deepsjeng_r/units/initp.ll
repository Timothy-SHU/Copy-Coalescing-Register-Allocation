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
define dso_local void @_Z15init_parametersP11gamestate_t(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 !prof !37 {
  store i32 15000000, ptr @TTSize, align 4, !tbaa !38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) @cfg_logfile, ptr noundef nonnull align 1 dereferenceable(10) @.str, i64 10, i1 false) #3
  store i32 0, ptr @cfg_logging, align 4, !tbaa !38
  store i32 0, ptr @contempt, align 4, !tbaa !38
  %2 = getelementptr inbounds %struct.gamestate_t, ptr %0, i64 0, i32 14
  store i32 60, ptr %2, align 8, !tbaa !42
  store i32 0, ptr @uci_mode, align 4, !tbaa !38
  store i32 0, ptr @uci_chess960_mode, align 4, !tbaa !38
  store i32 0, ptr @uci_showcurrline, align 4, !tbaa !38
  store i32 0, ptr @uci_showrefutations, align 4, !tbaa !38
  store i32 0, ptr @uci_limitstrength, align 4, !tbaa !38
  store i32 3000, ptr @uci_elo, align 4, !tbaa !38
  store i32 1, ptr @uci_multipv, align 4, !tbaa !38
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!36}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 126727826429}
!4 = !{!"MaxCount", i64 7592818589}
!5 = !{!"MaxInternalCount", i64 4612963787}
!6 = !{!"MaxFunctionCount", i64 7592818589}
!7 = !{!"NumCounts", i64 1321}
!8 = !{!"NumFunctions", i64 93}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 7592818589, i32 1}
!14 = !{i32 100000, i64 5393808666, i32 2}
!15 = !{i32 200000, i64 3322262585, i32 6}
!16 = !{i32 300000, i64 2468518944, i32 10}
!17 = !{i32 400000, i64 1837796421, i32 16}
!18 = !{i32 500000, i64 887660800, i32 29}
!19 = !{i32 600000, i64 608930740, i32 46}
!20 = !{i32 700000, i64 396110762, i32 71}
!21 = !{i32 800000, i64 205990918, i32 118}
!22 = !{i32 900000, i64 105535903, i32 199}
!23 = !{i32 950000, i64 66857471, i32 270}
!24 = !{i32 990000, i64 20633230, i32 388}
!25 = !{i32 999000, i64 3210553, i32 503}
!26 = !{i32 999900, i64 480625, i32 581}
!27 = !{i32 999990, i64 63262, i32 633}
!28 = !{i32 999999, i64 5111, i32 689}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35}
!35 = !{ptr @_Z15init_parametersP11gamestate_t, ptr @_Z10alloc_hashv, i64 1}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 1}
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!43, !39, i64 56}
!43 = !{!"_ZTS11gamestate_t", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !40, i64 64, !40, i64 4064, !44, i64 36064, !39, i64 36072, !39, i64 36076, !39, i64 36080, !39, i64 36084, !39, i64 36088, !39, i64 36092, !39, i64 36096, !39, i64 36100}
!44 = !{!"long long", !40, i64 0}
