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

; Function Attrs: mustprogress noinline norecurse optsize uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !49 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !50
  tail call void @setbuf(ptr noundef %3, ptr noundef null) #4
  %4 = load ptr, ptr @stdin, align 8, !tbaa !50
  tail call void @setbuf(ptr noundef %4, ptr noundef null) #4
  tail call void @_Z8start_upv() #5
  tail call void @_Z15init_parametersP11gamestate_t(ptr noundef nonnull @gamestate) #5
  tail call void @_Z18initialize_zobristP7state_t(ptr noundef nonnull @state) #5
  tail call void @_Z22SetupPrecalculatedDatav() #5
  tail call void @_Z18preprocess_preparev() #5
  tail call void @_Z7mysrandj(i32 noundef 12345) #5
  tail call void @_Z9init_gameP11gamestate_tP7state_t(ptr noundef nonnull @gamestate, ptr noundef nonnull @state) #5
  tail call void @_Z15initialize_hashP7state_t(ptr noundef nonnull @state) #5
  tail call void @_Z8clear_ttv() #5
  tail call void @_Z13clear_pawn_ttv() #5
  store i32 0, ptr getelementptr inbounds (%struct.state_t, ptr @state, i64 0, i32 14), align 8, !tbaa !54
  store i32 40, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 6), align 8, !tbaa !58
  store i32 15, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 7), align 4, !tbaa !60
  store i32 0, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 8), align 8, !tbaa !61
  store i32 90000, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 10), align 8, !tbaa !62
  store i32 0, ptr @contempt, align 4, !tbaa !63
  store i32 0, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 3), align 4, !tbaa !64
  store i32 0, ptr @is_pondering, align 4, !tbaa !63
  store i32 1, ptr @allow_pondering, align 4, !tbaa !63
  store i32 0, ptr @is_analyzing, align 4, !tbaa !63
  store i32 0, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 13), align 4, !tbaa !65
  store i32 0, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 1), align 4, !tbaa !66
  store i32 0, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 2), align 8, !tbaa !67
  store i32 14, ptr @time_check_log, align 4, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36004) getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 15), i8 0, i64 36004, i1 false)
  %5 = load i64, ptr getelementptr inbounds (%struct.state_t, ptr @state, i64 0, i32 16), align 8, !tbaa !68
  store i64 %5, ptr getelementptr inbounds (%struct.state_t, ptr @state, i64 0, i32 36), align 8, !tbaa !69
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(163840) @buffered_command, i8 0, i64 163840, i1 false)
  store i32 0, ptr @buffered_count, align 4, !tbaa !63
  %6 = icmp eq i32 %0, 2
  br i1 %6, label %7, label %10, !prof !70

7:                                                ; preds = %2
  %8 = getelementptr inbounds ptr, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  tail call void @_Z17run_epd_testsuiteP11gamestate_tP7state_tPKc(ptr noundef nonnull @gamestate, ptr noundef nonnull @state, ptr noundef %9) #5
  br label %11

10:                                               ; preds = %2
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str) #5
  br label %11

11:                                               ; preds = %7, %10
  %12 = phi i32 [ 0, %7 ], [ 1, %10 ]
  ret i32 %12
}

; Function Attrs: nofree nounwind optsize
declare void @setbuf(ptr nocapture noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_Z8start_upv() local_unnamed_addr #2

; Function Attrs: optsize
declare void @_Z15init_parametersP11gamestate_t(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_Z18initialize_zobristP7state_t(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_Z22SetupPrecalculatedDatav() local_unnamed_addr #2

; Function Attrs: optsize
declare void @_Z18preprocess_preparev() local_unnamed_addr #2

; Function Attrs: optsize
declare void @_Z7mysrandj(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_Z9init_gameP11gamestate_tP7state_t(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_Z15initialize_hashP7state_t(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_Z8clear_ttv() local_unnamed_addr #2

; Function Attrs: optsize
declare void @_Z13clear_pawn_ttv() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: optsize
declare void @_Z17run_epd_testsuiteP11gamestate_tP7state_tPKc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_Z8myprintfPKcz(ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { mustprogress noinline norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!48}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!36 = !{ptr @main, ptr @setbuf, i64 2}
!37 = !{ptr @main, ptr @_Z8start_upv, i64 1}
!38 = !{ptr @main, ptr @_Z15init_parametersP11gamestate_t, i64 1}
!39 = !{ptr @main, ptr @_Z18initialize_zobristP7state_t, i64 1}
!40 = !{ptr @main, ptr @_Z22SetupPrecalculatedDatav, i64 1}
!41 = !{ptr @main, ptr @_Z18preprocess_preparev, i64 1}
!42 = !{ptr @main, ptr @_Z7mysrandj, i64 1}
!43 = !{ptr @main, ptr @_Z9init_gameP11gamestate_tP7state_t, i64 1}
!44 = !{ptr @main, ptr @_Z15initialize_hashP7state_t, i64 1}
!45 = !{ptr @main, ptr @_Z8clear_ttv, i64 1}
!46 = !{ptr @main, ptr @_Z13clear_pawn_ttv, i64 1}
!47 = !{ptr @main, ptr @_Z17run_epd_testsuiteP11gamestate_tP7state_tPKc, i64 1}
!48 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!49 = !{!"function_entry_count", i64 1}
!50 = !{!51, !51, i64 0}
!51 = !{!"any pointer", !52, i64 0}
!52 = !{!"omnipotent char", !53, i64 0}
!53 = !{!"Simple C++ TBAA"}
!54 = !{!55, !56, i64 472}
!55 = !{!"_ZTS7state_t", !56, i64 0, !52, i64 4, !57, i64 264, !57, i64 272, !57, i64 280, !52, i64 288, !56, i64 392, !56, i64 396, !52, i64 400, !56, i64 452, !56, i64 456, !56, i64 460, !56, i64 464, !56, i64 468, !56, i64 472, !56, i64 476, !57, i64 480, !57, i64 488, !52, i64 496, !52, i64 2544, !52, i64 2800, !52, i64 3056, !57, i64 4080, !57, i64 4088, !56, i64 4096, !52, i64 4100, !56, i64 4356, !56, i64 4360, !56, i64 4364, !56, i64 4368, !56, i64 4372, !56, i64 4376, !56, i64 4380, !56, i64 4384, !56, i64 4388, !56, i64 4392, !52, i64 4400}
!56 = !{!"int", !52, i64 0}
!57 = !{!"long long", !52, i64 0}
!58 = !{!59, !56, i64 24}
!59 = !{!"_ZTS11gamestate_t", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !56, i64 24, !56, i64 28, !56, i64 32, !56, i64 36, !56, i64 40, !56, i64 44, !56, i64 48, !56, i64 52, !56, i64 56, !56, i64 60, !52, i64 64, !52, i64 4064, !57, i64 36064, !56, i64 36072, !56, i64 36076, !56, i64 36080, !56, i64 36084, !56, i64 36088, !56, i64 36092, !56, i64 36096, !56, i64 36100}
!60 = !{!59, !56, i64 28}
!61 = !{!59, !56, i64 32}
!62 = !{!59, !56, i64 40}
!63 = !{!56, !56, i64 0}
!64 = !{!59, !56, i64 12}
!65 = !{!59, !56, i64 52}
!66 = !{!59, !56, i64 4}
!67 = !{!59, !56, i64 8}
!68 = !{!55, !57, i64 480}
!69 = !{!57, !57, i64 0}
!70 = !{!"branch_weights", i32 2, i32 1}
