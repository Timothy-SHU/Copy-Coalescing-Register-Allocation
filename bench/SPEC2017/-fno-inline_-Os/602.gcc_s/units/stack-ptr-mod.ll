; ModuleID = 'stack-ptr-mod.c'
source_filename = "stack-ptr-mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }

@pass_stack_ptr_mod = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr null, ptr @rest_of_handle_stack_ptr_mod, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str = private unnamed_addr constant [15 x i8] c"*stack_ptr_mod\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@current_function_sp_is_unchanging = external local_unnamed_addr global i32, align 4
@df = external local_unnamed_addr global ptr, align 8
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_stack_ptr_mod() #0 !prof !40 !PGOFuncName !41 {
  tail call fastcc void @notice_stack_pointer_modification() #3
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @notice_stack_pointer_modification() unnamed_addr #0 !prof !40 !PGOFuncName !42 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !43
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 20
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 524288
  %5 = icmp eq i32 %4, 0
  %6 = lshr exact i32 %4, 19
  %7 = xor i32 %6, 1
  store i32 %7, ptr @current_function_sp_is_unchanging, align 4, !tbaa !47
  br i1 %5, label %8, label %62, !prof !49

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = load ptr, ptr %10, align 8, !tbaa !52
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !54
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !57
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %62, label %17, !prof !58

17:                                               ; preds = %8, %52
  %18 = phi i32 [ %53, %52 ], [ %7, %8 ]
  %19 = phi ptr [ %54, %52 ], [ %1, %8 ]
  %20 = phi ptr [ %56, %52 ], [ %13, %8 ]
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !59
  %23 = load ptr, ptr %22, align 8, !tbaa !59
  %24 = icmp eq ptr %23, null
  br i1 %24, label %52, label %25, !prof !60

25:                                               ; preds = %17, %44
  %26 = phi i32 [ %45, %44 ], [ %18, %17 ]
  %27 = phi ptr [ %47, %44 ], [ %23, %17 ]
  %28 = load ptr, ptr %21, align 8, !tbaa !59
  %29 = getelementptr inbounds %struct.rtl_bb_info, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !61
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 2
  %32 = load ptr, ptr %31, align 8, !tbaa !59
  %33 = icmp eq ptr %27, %32
  br i1 %33, label %49, label %34, !prof !63

34:                                               ; preds = %25
  %35 = load i32, ptr %27, align 8
  %36 = and i32 %35, 65535
  %37 = add nsw i32 %36, -7
  %38 = icmp ult i32 %37, 4
  br i1 %38, label %39, label %44, !prof !64

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !59
  tail call void @note_stores(ptr noundef %41, ptr noundef nonnull @notice_stack_pointer_modification_1, ptr noundef null) #4
  %42 = load i32, ptr @current_function_sp_is_unchanging, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %69, label %44, !prof !65

44:                                               ; preds = %34, %39
  %45 = phi i32 [ %26, %34 ], [ %42, %39 ]
  %46 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 2
  %47 = load ptr, ptr %46, align 8, !tbaa !59
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %25, !prof !66, !llvm.loop !67

49:                                               ; preds = %25, %44
  %50 = phi i32 [ %26, %25 ], [ %45, %44 ]
  %51 = load ptr, ptr @cfun, align 8, !tbaa !43
  br label %52

52:                                               ; preds = %49, %17
  %53 = phi i32 [ %50, %49 ], [ %18, %17 ]
  %54 = phi ptr [ %51, %49 ], [ %19, %17 ]
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !54
  %57 = getelementptr inbounds %struct.function, ptr %54, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !50
  %59 = getelementptr inbounds %struct.control_flow_graph, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !57
  %61 = icmp eq ptr %56, %60
  br i1 %61, label %62, label %17, !prof !69, !llvm.loop !70

62:                                               ; preds = %52, %8, %0
  %63 = phi i32 [ %7, %8 ], [ %7, %0 ], [ %53, %52 ]
  %64 = load ptr, ptr @df, align 8, !tbaa !43
  %65 = icmp ne ptr %64, null
  %66 = icmp ne i32 %63, 0
  %67 = select i1 %65, i1 %66, i1 false
  br i1 %67, label %68, label %69, !prof !71

68:                                               ; preds = %62
  tail call void @df_update_exit_block_uses() #4
  br label %69

69:                                               ; preds = %39, %62, %68
  ret void
}

; Function Attrs: optsize
declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal void @notice_stack_pointer_modification_1(ptr noundef readonly %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #2 !prof !72 !PGOFuncName !73 {
  %4 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !43
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %23, label %6, !prof !74

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 43
  br i1 %9, label %10, label %24, !prof !75

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !47
  %18 = icmp eq i32 %17, 12
  br i1 %18, label %19, label %24, !prof !76

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !59
  %22 = icmp eq ptr %21, %4
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %3
  store i32 0, ptr @current_function_sp_is_unchanging, align 4, !tbaa !47
  br label %24

24:                                               ; preds = %23, %19, %10, %6
  ret void
}

; Function Attrs: optsize
declare void @df_update_exit_block_uses() local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize }
attributes #4 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!39}

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
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38}
!36 = !{ptr @rest_of_handle_stack_ptr_mod, ptr @notice_stack_pointer_modification, i64 6652}
!37 = !{ptr @notice_stack_pointer_modification, ptr @note_stores, i64 1021062}
!38 = !{ptr @notice_stack_pointer_modification, ptr @df_update_exit_block_uses, i64 6547}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 6652}
!41 = !{!"stack-ptr-mod.c:rest_of_handle_stack_ptr_mod"}
!42 = !{!"stack-ptr-mod.c:notice_stack_pointer_modification"}
!43 = !{!44, !44, i64 0}
!44 = !{!"any pointer", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
!47 = !{!48, !48, i64 0}
!48 = !{!"int", !45, i64 0}
!49 = !{!"branch_weights", i32 6558, i32 96}
!50 = !{!51, !44, i64 8}
!51 = !{!"function", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48, !44, i64 56, !44, i64 64, !44, i64 72, !44, i64 80, !44, i64 88, !44, i64 96, !48, i64 104, !48, i64 108, !48, i64 112, !48, i64 116, !48, i64 120, !48, i64 124, !44, i64 128, !48, i64 136, !48, i64 137, !48, i64 138, !48, i64 138, !48, i64 138, !48, i64 138, !48, i64 138, !48, i64 138, !48, i64 138, !48, i64 139, !48, i64 139, !48, i64 139, !48, i64 139, !48, i64 139, !48, i64 139, !48, i64 139}
!52 = !{!53, !44, i64 0}
!53 = !{!"control_flow_graph", !44, i64 0, !44, i64 8, !44, i64 16, !48, i64 24, !48, i64 28, !48, i64 32, !44, i64 40, !48, i64 48, !45, i64 52, !45, i64 60, !48, i64 68, !48, i64 72}
!54 = !{!55, !44, i64 56}
!55 = !{!"basic_block_def", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !45, i64 32, !44, i64 48, !44, i64 56, !45, i64 64, !56, i64 72, !48, i64 80, !48, i64 84, !48, i64 88, !48, i64 92, !48, i64 96}
!56 = !{!"long", !45, i64 0}
!57 = !{!53, !44, i64 8}
!58 = !{!"branch_weights", i32 1, i32 6550}
!59 = !{!45, !45, i64 0}
!60 = !{!"branch_weights", i32 1, i32 5613}
!61 = !{!62, !44, i64 8}
!62 = !{!"rtl_bb_info", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !48, i64 32}
!63 = !{!"branch_weights", i32 247907, i32 1481994}
!64 = !{!"branch_weights", i32 -128068730, i32 1762154876}
!65 = !{!"branch_weights", i32 8, i32 1041527}
!66 = !{!"branch_weights", i32 5613, i32 1718674}
!67 = distinct !{!67, !68}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!"branch_weights", i32 6550, i32 241364}
!70 = distinct !{!70, !68}
!71 = !{!"branch_weights", i32 43537946, i32 644663}
!72 = !{!"function_entry_count", i64 1081322}
!73 = !{!"stack-ptr-mod.c:notice_stack_pointer_modification_1"}
!74 = !{!"branch_weights", i32 8, i32 1081316}
!75 = !{!"branch_weights", i32 225505, i32 855812}
!76 = !{!"branch_weights", i32 1, i32 225505}
