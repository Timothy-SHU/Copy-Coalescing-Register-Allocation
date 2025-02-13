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

@.str = private unnamed_addr constant [4 x i8] c"dbr\00", align 1
@pass_delay_slots = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_handle_delay_slots, ptr @rest_of_handle_delay_slots, ptr null, ptr null, i32 0, i32 161, i32 0, i32 0, i32 0, i32 0, i32 3 } }, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"mach\00", align 1
@pass_machine_reorg = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.1, ptr @gate_handle_machine_reorg, ptr @rest_of_handle_machine_reorg, ptr null, ptr null, i32 0, i32 160, i32 0, i32 0, i32 0, i32 0, i32 3 } }, align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @gate_handle_delay_slots() #0 !prof !34 !PGOFuncName !35 {
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @rest_of_handle_delay_slots() #0 !prof !36 !PGOFuncName !37 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_machine_reorg() #1 !prof !34 !PGOFuncName !38 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 68), align 8, !tbaa !39
  %2 = icmp ne ptr %1, null
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_machine_reorg() #2 !prof !34 !PGOFuncName !56 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 68), align 8, !tbaa !39
  tail call void %1() #3
  ret i32 0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 38}
!35 = !{!"reorg.c:gate_handle_delay_slots"}
!36 = !{!"function_entry_count", i64 0}
!37 = !{!"reorg.c:rest_of_handle_delay_slots"}
!38 = !{!"reorg.c:gate_handle_machine_reorg"}
!39 = !{!40, !42, i64 1312}
!40 = !{!"gcc_target", !41, i64 0, !46, i64 368, !47, i64 664, !48, i64 744, !42, i64 752, !42, i64 760, !42, i64 768, !42, i64 776, !42, i64 784, !42, i64 792, !42, i64 800, !42, i64 808, !42, i64 816, !42, i64 824, !42, i64 832, !42, i64 840, !42, i64 848, !42, i64 856, !42, i64 864, !42, i64 872, !42, i64 880, !42, i64 888, !42, i64 896, !42, i64 904, !42, i64 912, !42, i64 920, !42, i64 928, !42, i64 936, !42, i64 944, !42, i64 952, !42, i64 960, !42, i64 968, !42, i64 976, !42, i64 984, !42, i64 992, !42, i64 1000, !42, i64 1008, !42, i64 1016, !42, i64 1024, !42, i64 1032, !42, i64 1040, !42, i64 1048, !42, i64 1056, !49, i64 1064, !49, i64 1072, !42, i64 1080, !42, i64 1088, !42, i64 1096, !42, i64 1104, !42, i64 1112, !42, i64 1120, !42, i64 1128, !42, i64 1136, !42, i64 1144, !42, i64 1152, !42, i64 1160, !42, i64 1168, !50, i64 1176, !42, i64 1232, !42, i64 1240, !42, i64 1248, !42, i64 1256, !42, i64 1264, !42, i64 1272, !42, i64 1280, !42, i64 1288, !42, i64 1296, !42, i64 1304, !42, i64 1312, !42, i64 1320, !42, i64 1328, !42, i64 1336, !42, i64 1344, !42, i64 1352, !42, i64 1360, !42, i64 1368, !42, i64 1376, !42, i64 1384, !42, i64 1392, !42, i64 1400, !42, i64 1408, !42, i64 1416, !42, i64 1424, !42, i64 1432, !42, i64 1440, !42, i64 1448, !42, i64 1456, !49, i64 1464, !51, i64 1472, !42, i64 1664, !42, i64 1672, !42, i64 1680, !42, i64 1688, !42, i64 1696, !42, i64 1704, !42, i64 1712, !42, i64 1720, !42, i64 1728, !42, i64 1736, !42, i64 1744, !42, i64 1752, !42, i64 1760, !42, i64 1768, !42, i64 1776, !52, i64 1784, !53, i64 1792, !54, i64 1896, !55, i64 1968, !42, i64 2016, !43, i64 2024, !43, i64 2025, !43, i64 2026, !43, i64 2027, !43, i64 2028, !43, i64 2029, !43, i64 2030, !43, i64 2031, !43, i64 2032, !43, i64 2033, !43, i64 2034, !43, i64 2035}
!41 = !{!"asm_out", !42, i64 0, !42, i64 8, !42, i64 16, !45, i64 24, !45, i64 56, !42, i64 88, !42, i64 96, !42, i64 104, !42, i64 112, !42, i64 120, !42, i64 128, !42, i64 136, !42, i64 144, !42, i64 152, !42, i64 160, !42, i64 168, !42, i64 176, !42, i64 184, !42, i64 192, !42, i64 200, !42, i64 208, !42, i64 216, !42, i64 224, !42, i64 232, !42, i64 240, !42, i64 248, !42, i64 256, !42, i64 264, !42, i64 272, !42, i64 280, !42, i64 288, !42, i64 296, !42, i64 304, !42, i64 312, !42, i64 320, !42, i64 328, !42, i64 336, !42, i64 344, !42, i64 352, !42, i64 360}
!42 = !{!"any pointer", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !{!"asm_int_op", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24}
!46 = !{!"sched", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !42, i64 104, !42, i64 112, !42, i64 120, !42, i64 128, !42, i64 136, !42, i64 144, !42, i64 152, !42, i64 160, !42, i64 168, !42, i64 176, !42, i64 184, !42, i64 192, !42, i64 200, !42, i64 208, !42, i64 216, !42, i64 224, !42, i64 232, !42, i64 240, !42, i64 248, !42, i64 256, !42, i64 264, !42, i64 272, !42, i64 280, !42, i64 288}
!47 = !{!"vectorize", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72}
!48 = !{!"int", !43, i64 0}
!49 = !{!"long", !43, i64 0}
!50 = !{!"addr_space", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48}
!51 = !{!"calls", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !42, i64 104, !42, i64 112, !42, i64 120, !42, i64 128, !42, i64 136, !42, i64 144, !42, i64 152, !42, i64 160, !42, i64 168, !42, i64 176, !42, i64 184}
!52 = !{!"c", !42, i64 0}
!53 = !{!"cxx", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96}
!54 = !{!"emutls", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !43, i64 64, !43, i64 65}
!55 = !{!"target_option_hooks", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40}
!56 = !{!"reorg.c:rest_of_handle_machine_reorg"}
