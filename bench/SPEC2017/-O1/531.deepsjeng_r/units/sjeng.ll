; ModuleID = 'sjeng.cpp'
source_filename = "sjeng.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gamestate_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i32], [1000 x %struct.move_x], i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.move_x = type { i32, i32, i32, i32, i64, i64 }
%struct.state_t = type { i32, [64 x i32], i64, i64, i64, [13 x i64], i32, i32, [13 x i32], i32, i32, i32, i32, i32, i32, i32, i64, i64, [64 x %struct.move_x], [64 x i32], [64 x i32], [64 x %struct.anon], i64, i64, i32, [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i64] }
%struct.anon = type { i32, i32, i32, i32 }

@buffered_command = dso_local local_unnamed_addr global [20 x [8192 x i8]] zeroinitializer, align 16
@buffered_count = dso_local local_unnamed_addr global i32 0, align 4
@is_pondering = dso_local local_unnamed_addr global i32 0, align 4
@allow_pondering = dso_local local_unnamed_addr global i32 0, align 4
@is_analyzing = dso_local local_unnamed_addr global i32 0, align 4
@TTSize = dso_local local_unnamed_addr global i32 0, align 4
@uci_mode = dso_local local_unnamed_addr global i32 0, align 4
@uci_chess960_mode = dso_local local_unnamed_addr global i32 0, align 4
@uci_showcurrline = dso_local local_unnamed_addr global i32 0, align 4
@uci_showrefutations = dso_local local_unnamed_addr global i32 0, align 4
@uci_limitstrength = dso_local local_unnamed_addr global i32 0, align 4
@uci_elo = dso_local local_unnamed_addr global i32 0, align 4
@uci_multipv = dso_local local_unnamed_addr global i32 0, align 4
@cfg_logging = dso_local local_unnamed_addr global i32 0, align 4
@cfg_logfile = dso_local local_unnamed_addr global [512 x i8] zeroinitializer, align 16
@contempt = dso_local local_unnamed_addr global i32 0, align 4
@time_check_log = dso_local local_unnamed_addr global i32 0, align 4
@global_id = dso_local local_unnamed_addr global i32 0, align 4
@EGTBHits = dso_local local_unnamed_addr global i32 0, align 4
@EGTBProbes = dso_local local_unnamed_addr global i32 0, align 4
@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@gamestate = external global %struct.gamestate_t, align 8
@state = external global %struct.state_t, align 8
@.str = private unnamed_addr constant [30 x i8] c"Please specify the workfile.\0A\00", align 1

; Function Attrs: cold mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !48 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !49
  tail call void @setbuf(ptr noundef %3, ptr noundef null) #4
  %4 = load ptr, ptr @stdin, align 8, !tbaa !49
  tail call void @setbuf(ptr noundef %4, ptr noundef null) #4
  tail call void @_Z8start_upv()
  tail call void @_Z15init_parametersP11gamestate_t(ptr noundef nonnull @gamestate)
  tail call void @_Z18initialize_zobristP7state_t(ptr noundef nonnull @state)
  tail call void @_Z22SetupPrecalculatedDatav()
  tail call void @_Z18preprocess_preparev()
  tail call void @_Z7mysrandj(i32 noundef 12345)
  tail call void @_Z9init_gameP11gamestate_tP7state_t(ptr noundef nonnull @gamestate, ptr noundef nonnull @state)
  tail call void @_Z15initialize_hashP7state_t(ptr noundef nonnull @state)
  tail call void @_Z8clear_ttv()
  tail call void @_Z13clear_pawn_ttv()
  store i32 0, ptr getelementptr inbounds (%struct.state_t, ptr @state, i64 0, i32 14), align 8, !tbaa !53
  store i32 40, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 6), align 8, !tbaa !57
  store i32 15, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 7), align 4, !tbaa !59
  store i32 0, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 8), align 8, !tbaa !60
  store i32 90000, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 10), align 8, !tbaa !61
  store i32 0, ptr @contempt, align 4, !tbaa !62
  store i32 0, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 3), align 4, !tbaa !63
  store i32 0, ptr @is_pondering, align 4, !tbaa !62
  store i32 1, ptr @allow_pondering, align 4, !tbaa !62
  store i32 0, ptr @is_analyzing, align 4, !tbaa !62
  store i32 0, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 13), align 4, !tbaa !64
  store i32 0, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 1), align 4, !tbaa !65
  store i32 0, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 2), align 8, !tbaa !66
  store i32 14, ptr @time_check_log, align 4, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36004) getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 15), i8 0, i64 36004, i1 false)
  %5 = load i64, ptr getelementptr inbounds (%struct.state_t, ptr @state, i64 0, i32 16), align 8, !tbaa !67
  store i64 %5, ptr getelementptr inbounds (%struct.state_t, ptr @state, i64 0, i32 36), align 8, !tbaa !68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(163840) @buffered_command, i8 0, i64 163840, i1 false)
  store i32 0, ptr @buffered_count, align 4, !tbaa !62
  %6 = icmp eq i32 %0, 2
  br i1 %6, label %7, label %10, !prof !69

7:                                                ; preds = %2
  %8 = getelementptr inbounds ptr, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  tail call void @_Z17run_epd_testsuiteP11gamestate_tP7state_tPKc(ptr noundef nonnull @gamestate, ptr noundef nonnull @state, ptr noundef %9)
  br label %11

10:                                               ; preds = %2
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str)
  br label %11

11:                                               ; preds = %7, %10
  %12 = phi i32 [ 0, %7 ], [ 1, %10 ]
  ret i32 %12
}

; Function Attrs: nofree nounwind
declare void @setbuf(ptr nocapture noundef, ptr noundef) local_unnamed_addr #1

declare void @_Z8start_upv() local_unnamed_addr #2

declare void @_Z15init_parametersP11gamestate_t(ptr noundef) local_unnamed_addr #2

declare void @_Z18initialize_zobristP7state_t(ptr noundef) local_unnamed_addr #2

declare void @_Z22SetupPrecalculatedDatav() local_unnamed_addr #2

declare void @_Z18preprocess_preparev() local_unnamed_addr #2

declare void @_Z7mysrandj(i32 noundef) local_unnamed_addr #2

declare void @_Z9init_gameP11gamestate_tP7state_t(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_Z15initialize_hashP7state_t(ptr noundef) local_unnamed_addr #2

declare void @_Z8clear_ttv() local_unnamed_addr #2

declare void @_Z13clear_pawn_ttv() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare void @_Z17run_epd_testsuiteP11gamestate_tP7state_tPKc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_Z8myprintfPKcz(ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { cold mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!47}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 128361366639}
!8 = !{!"MaxCount", i64 7592818589}
!9 = !{!"MaxInternalCount", i64 5393808666}
!10 = !{!"MaxFunctionCount", i64 7592818589}
!11 = !{!"NumCounts", i64 1723}
!12 = !{!"NumFunctions", i64 109}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 7592818589, i32 1}
!18 = !{i32 100000, i64 5393808666, i32 2}
!19 = !{i32 200000, i64 2869551984, i32 6}
!20 = !{i32 300000, i64 1728514292, i32 11}
!21 = !{i32 400000, i64 824050972, i32 24}
!22 = !{i32 500000, i64 588473769, i32 42}
!23 = !{i32 600000, i64 446369574, i32 68}
!24 = !{i32 700000, i64 286932458, i32 105}
!25 = !{i32 800000, i64 196614852, i32 160}
!26 = !{i32 900000, i64 107044397, i32 249}
!27 = !{i32 950000, i64 60101921, i32 326}
!28 = !{i32 990000, i64 15736932, i32 482}
!29 = !{i32 999000, i64 2025695, i32 659}
!30 = !{i32 999900, i64 318185, i32 779}
!31 = !{i32 999990, i64 50049, i32 848}
!32 = !{i32 999999, i64 3896, i32 923}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!35 = !{ptr @main, ptr @setbuf, i64 2}
!36 = !{ptr @main, ptr @_Z8start_upv, i64 1}
!37 = !{ptr @main, ptr @_Z15init_parametersP11gamestate_t, i64 1}
!38 = !{ptr @main, ptr @_Z18initialize_zobristP7state_t, i64 1}
!39 = !{ptr @main, ptr @_Z22SetupPrecalculatedDatav, i64 1}
!40 = !{ptr @main, ptr @_Z18preprocess_preparev, i64 1}
!41 = !{ptr @main, ptr @_Z7mysrandj, i64 1}
!42 = !{ptr @main, ptr @_Z9init_gameP11gamestate_tP7state_t, i64 1}
!43 = !{ptr @main, ptr @_Z15initialize_hashP7state_t, i64 1}
!44 = !{ptr @main, ptr @_Z8clear_ttv, i64 1}
!45 = !{ptr @main, ptr @_Z13clear_pawn_ttv, i64 1}
!46 = !{ptr @main, ptr @_Z17run_epd_testsuiteP11gamestate_tP7state_tPKc, i64 1}
!47 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!48 = !{!"function_entry_count", i64 1}
!49 = !{!50, !50, i64 0}
!50 = !{!"any pointer", !51, i64 0}
!51 = !{!"omnipotent char", !52, i64 0}
!52 = !{!"Simple C++ TBAA"}
!53 = !{!54, !55, i64 472}
!54 = !{!"_ZTS7state_t", !55, i64 0, !51, i64 4, !56, i64 264, !56, i64 272, !56, i64 280, !51, i64 288, !55, i64 392, !55, i64 396, !51, i64 400, !55, i64 452, !55, i64 456, !55, i64 460, !55, i64 464, !55, i64 468, !55, i64 472, !55, i64 476, !56, i64 480, !56, i64 488, !51, i64 496, !51, i64 2544, !51, i64 2800, !51, i64 3056, !56, i64 4080, !56, i64 4088, !55, i64 4096, !51, i64 4100, !55, i64 4356, !55, i64 4360, !55, i64 4364, !55, i64 4368, !55, i64 4372, !55, i64 4376, !55, i64 4380, !55, i64 4384, !55, i64 4388, !55, i64 4392, !51, i64 4400}
!55 = !{!"int", !51, i64 0}
!56 = !{!"long long", !51, i64 0}
!57 = !{!58, !55, i64 24}
!58 = !{!"_ZTS11gamestate_t", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !55, i64 16, !55, i64 20, !55, i64 24, !55, i64 28, !55, i64 32, !55, i64 36, !55, i64 40, !55, i64 44, !55, i64 48, !55, i64 52, !55, i64 56, !55, i64 60, !51, i64 64, !51, i64 4064, !56, i64 36064, !55, i64 36072, !55, i64 36076, !55, i64 36080, !55, i64 36084, !55, i64 36088, !55, i64 36092, !55, i64 36096, !55, i64 36100}
!59 = !{!58, !55, i64 28}
!60 = !{!58, !55, i64 32}
!61 = !{!58, !55, i64 40}
!62 = !{!55, !55, i64 0}
!63 = !{!58, !55, i64 12}
!64 = !{!58, !55, i64 52}
!65 = !{!58, !55, i64 4}
!66 = !{!58, !55, i64 8}
!67 = !{!54, !56, i64 480}
!68 = !{!56, !56, i64 0}
!69 = !{!"branch_weights", i32 1, i32 0}
