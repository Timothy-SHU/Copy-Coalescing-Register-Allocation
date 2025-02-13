; ModuleID = 'reorg.c'
source_filename = "reorg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.addr_space, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.calls, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { ptr, ptr, ptr, %struct.asm_int_op, %struct.asm_int_op, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.asm_int_op = type { ptr, ptr, ptr, ptr }
%struct.sched = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vectorize = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.addr_space = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.calls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.c = type { ptr }
%struct.cxx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.emutls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.target_option_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr }

@pass_delay_slots = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_handle_delay_slots, ptr @rest_of_handle_delay_slots, ptr null, ptr null, i32 0, i32 161, i32 0, i32 0, i32 0, i32 0, i32 3 } }, align 8
@.str = private unnamed_addr constant [4 x i8] c"dbr\00", align 1
@pass_machine_reorg = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.1, ptr @gate_handle_machine_reorg, ptr @rest_of_handle_machine_reorg, ptr null, ptr null, i32 0, i32 160, i32 0, i32 0, i32 0, i32 0, i32 3 } }, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"mach\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @gate_handle_delay_slots() #0 !prof !35 !PGOFuncName !36 {
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @rest_of_handle_delay_slots() #0 !prof !37 !PGOFuncName !38 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_machine_reorg() #1 !prof !35 !PGOFuncName !39 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 68), align 8, !tbaa !40
  %2 = icmp ne ptr %1, null
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_machine_reorg() #2 !prof !35 !PGOFuncName !57 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 68), align 8, !tbaa !40
  tail call void %1() #3
  ret i32 0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 82626029451}
!4 = !{!"MaxCount", i64 1293550144}
!5 = !{!"MaxInternalCount", i64 1293550144}
!6 = !{!"MaxFunctionCount", i64 1044599277}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1293550144, i32 1}
!14 = !{i32 100000, i64 238791438, i32 19}
!15 = !{i32 200000, i64 112342198, i32 73}
!16 = !{i32 300000, i64 73330888, i32 164}
!17 = !{i32 400000, i64 47991750, i32 301}
!18 = !{i32 500000, i64 28421743, i32 535}
!19 = !{i32 600000, i64 17738858, i32 910}
!20 = !{i32 700000, i64 10364112, i32 1511}
!21 = !{i32 800000, i64 5164088, i32 2659}
!22 = !{i32 900000, i64 1953302, i32 5305}
!23 = !{i32 950000, i64 847371, i32 8456}
!24 = !{i32 990000, i64 164662, i32 16525}
!25 = !{i32 999000, i64 16513, i32 27926}
!26 = !{i32 999900, i64 2384, i32 37409}
!27 = !{i32 999990, i64 310, i32 44222}
!28 = !{i32 999999, i64 42, i32 49712}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 6652}
!36 = !{!"reorg.c:gate_handle_delay_slots"}
!37 = !{!"function_entry_count", i64 0}
!38 = !{!"reorg.c:rest_of_handle_delay_slots"}
!39 = !{!"reorg.c:gate_handle_machine_reorg"}
!40 = !{!41, !43, i64 1312}
!41 = !{!"gcc_target", !42, i64 0, !47, i64 368, !48, i64 664, !49, i64 744, !43, i64 752, !43, i64 760, !43, i64 768, !43, i64 776, !43, i64 784, !43, i64 792, !43, i64 800, !43, i64 808, !43, i64 816, !43, i64 824, !43, i64 832, !43, i64 840, !43, i64 848, !43, i64 856, !43, i64 864, !43, i64 872, !43, i64 880, !43, i64 888, !43, i64 896, !43, i64 904, !43, i64 912, !43, i64 920, !43, i64 928, !43, i64 936, !43, i64 944, !43, i64 952, !43, i64 960, !43, i64 968, !43, i64 976, !43, i64 984, !43, i64 992, !43, i64 1000, !43, i64 1008, !43, i64 1016, !43, i64 1024, !43, i64 1032, !43, i64 1040, !43, i64 1048, !43, i64 1056, !50, i64 1064, !50, i64 1072, !43, i64 1080, !43, i64 1088, !43, i64 1096, !43, i64 1104, !43, i64 1112, !43, i64 1120, !43, i64 1128, !43, i64 1136, !43, i64 1144, !43, i64 1152, !43, i64 1160, !43, i64 1168, !51, i64 1176, !43, i64 1232, !43, i64 1240, !43, i64 1248, !43, i64 1256, !43, i64 1264, !43, i64 1272, !43, i64 1280, !43, i64 1288, !43, i64 1296, !43, i64 1304, !43, i64 1312, !43, i64 1320, !43, i64 1328, !43, i64 1336, !43, i64 1344, !43, i64 1352, !43, i64 1360, !43, i64 1368, !43, i64 1376, !43, i64 1384, !43, i64 1392, !43, i64 1400, !43, i64 1408, !43, i64 1416, !43, i64 1424, !43, i64 1432, !43, i64 1440, !43, i64 1448, !43, i64 1456, !50, i64 1464, !52, i64 1472, !43, i64 1664, !43, i64 1672, !43, i64 1680, !43, i64 1688, !43, i64 1696, !43, i64 1704, !43, i64 1712, !43, i64 1720, !43, i64 1728, !43, i64 1736, !43, i64 1744, !43, i64 1752, !43, i64 1760, !43, i64 1768, !43, i64 1776, !53, i64 1784, !54, i64 1792, !55, i64 1896, !56, i64 1968, !43, i64 2016, !44, i64 2024, !44, i64 2025, !44, i64 2026, !44, i64 2027, !44, i64 2028, !44, i64 2029, !44, i64 2030, !44, i64 2031, !44, i64 2032, !44, i64 2033, !44, i64 2034, !44, i64 2035}
!42 = !{!"asm_out", !43, i64 0, !43, i64 8, !43, i64 16, !46, i64 24, !46, i64 56, !43, i64 88, !43, i64 96, !43, i64 104, !43, i64 112, !43, i64 120, !43, i64 128, !43, i64 136, !43, i64 144, !43, i64 152, !43, i64 160, !43, i64 168, !43, i64 176, !43, i64 184, !43, i64 192, !43, i64 200, !43, i64 208, !43, i64 216, !43, i64 224, !43, i64 232, !43, i64 240, !43, i64 248, !43, i64 256, !43, i64 264, !43, i64 272, !43, i64 280, !43, i64 288, !43, i64 296, !43, i64 304, !43, i64 312, !43, i64 320, !43, i64 328, !43, i64 336, !43, i64 344, !43, i64 352, !43, i64 360}
!43 = !{!"any pointer", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !{!"asm_int_op", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24}
!47 = !{!"sched", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !43, i64 104, !43, i64 112, !43, i64 120, !43, i64 128, !43, i64 136, !43, i64 144, !43, i64 152, !43, i64 160, !43, i64 168, !43, i64 176, !43, i64 184, !43, i64 192, !43, i64 200, !43, i64 208, !43, i64 216, !43, i64 224, !43, i64 232, !43, i64 240, !43, i64 248, !43, i64 256, !43, i64 264, !43, i64 272, !43, i64 280, !43, i64 288}
!48 = !{!"vectorize", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72}
!49 = !{!"int", !44, i64 0}
!50 = !{!"long", !44, i64 0}
!51 = !{!"addr_space", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48}
!52 = !{!"calls", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !43, i64 104, !43, i64 112, !43, i64 120, !43, i64 128, !43, i64 136, !43, i64 144, !43, i64 152, !43, i64 160, !43, i64 168, !43, i64 176, !43, i64 184}
!53 = !{!"c", !43, i64 0}
!54 = !{!"cxx", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96}
!55 = !{!"emutls", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !44, i64 64, !44, i64 65}
!56 = !{!"target_option_hooks", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40}
!57 = !{!"reorg.c:rest_of_handle_machine_reorg"}
