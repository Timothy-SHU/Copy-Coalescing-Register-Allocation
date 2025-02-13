; ModuleID = 'ipa.c'
source_filename = "ipa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.simple_ipa_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.ipa_opt_pass_d = type { %struct.opt_pass, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.cgraph_edge = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i8 }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.varpool_node = type { ptr, ptr, ptr, ptr, i32, i8 }
%struct.cgraph_node_set_def = type { ptr, ptr, ptr }
%struct.cgraph_node_set_element_def = type { ptr, i64 }
%struct.VEC_cgraph_node_ptr_base = type { i32, i32, [1 x ptr] }
%struct.cgraph_node_set_iterator = type { ptr, i32 }

@cgraph_n_nodes = external local_unnamed_addr global i32, align 4
@cgraph_nodes = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"\0AReclaiming functions:\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ipa.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@pass_ipa_function_and_variable_visibility = dso_local local_unnamed_addr global %struct.simple_ipa_opt_pass { %struct.opt_pass { i32 2, ptr @.str.4, ptr null, ptr @local_function_and_variable_visibility, ptr null, ptr null, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 384 } }, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"visibility\00", align 1
@flag_whole_program = external local_unnamed_addr global i32, align 4
@flag_lto = external local_unnamed_addr global i32, align 4
@flag_whopr = external local_unnamed_addr global i32, align 4
@varpool_nodes = external local_unnamed_addr global ptr, align 8
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@varpool_nodes_queue = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"externally_visible\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"\0AMarking local functions:\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"\0AMarking externally visible functions:\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"\0AMarking externally visible variables:\00", align 1
@cgraph_function_flags_ready = external local_unnamed_addr global i8, align 1
@pass_ipa_whole_program_visibility = dso_local local_unnamed_addr global %struct.ipa_opt_pass_d { %struct.opt_pass { i32 3, ptr @.str.10, ptr @gate_whole_program_function_and_variable_visibility, ptr @whole_program_function_and_variable_visibility, ptr null, ptr null, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 384 }, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null }, align 8
@.str.10 = private unnamed_addr constant [14 x i8] c"whole-program\00", align 1
@flag_ltrans = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"\0ANeeded variables:\00", align 1
@htab_hash_pointer = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @cgraph_postorder(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 !prof !63 {
  %2 = alloca %struct.cgraph_edge, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #13
  %3 = load i32, ptr @cgraph_n_nodes, align 4, !tbaa !64
  %4 = sext i32 %3 to i64
  %5 = tail call ptr @xcalloc(i64 noundef %4, i64 noundef 8) #14
  %6 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !68
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8, !prof !70

8:                                                ; preds = %1, %8
  %9 = phi ptr [ %12, %8 ], [ %6, %1 ]
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 16
  store ptr null, ptr %10, align 8, !tbaa !71
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !68
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %8, !prof !80, !llvm.loop !81

14:                                               ; preds = %8, %1
  br label %15

15:                                               ; preds = %14, %98
  %16 = phi i1 [ false, %98 ], [ true, %14 ]
  %17 = phi i32 [ %100, %98 ], [ 0, %14 ]
  %18 = phi i32 [ %99, %98 ], [ 0, %14 ]
  %19 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !68
  %20 = icmp eq ptr %19, null
  br i1 %20, label %98, label %21, !prof !83

21:                                               ; preds = %15, %92
  %22 = phi ptr [ %96, %92 ], [ %19, %15 ]
  %23 = phi i32 [ %94, %92 ], [ %17, %15 ]
  %24 = phi i32 [ %93, %92 ], [ %18, %15 ]
  %25 = getelementptr inbounds %struct.cgraph_node, ptr %22, i64 0, i32 16
  %26 = load ptr, ptr %25, align 8, !tbaa !71
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %92, !prof !84

28:                                               ; preds = %21
  br i1 %16, label %29, label %37, !prof !85

29:                                               ; preds = %28
  %30 = call fastcc zeroext i8 @cgraph_only_called_directly_p(ptr noundef nonnull %22) #15, !range !86
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %92, !prof !87

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.cgraph_node, ptr %22, i64 0, i32 27
  %34 = load i16, ptr %33, align 4
  %35 = and i16 %34, 2
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %92, !prof !88

37:                                               ; preds = %32, %28
  %38 = getelementptr inbounds %struct.cgraph_node, ptr %22, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !89
  %40 = icmp eq ptr %39, null
  %41 = select i1 %40, ptr %2, ptr %39, !prof !90
  store ptr %41, ptr %25, align 8, !tbaa !71
  br label %42

42:                                               ; preds = %37, %87
  %43 = phi ptr [ %22, %37 ], [ %90, %87 ]
  %44 = phi i32 [ %23, %37 ], [ %89, %87 ]
  %45 = phi i32 [ %24, %37 ], [ %88, %87 ]
  %46 = getelementptr inbounds %struct.cgraph_node, ptr %43, i64 0, i32 16
  %47 = load ptr, ptr %46, align 8, !tbaa !71
  br label %48

48:                                               ; preds = %42, %51
  %49 = phi ptr [ %47, %42 ], [ %55, %51 ]
  %50 = icmp eq ptr %49, %2
  br i1 %50, label %75, label %51, !prof !91

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.cgraph_edge, ptr %49, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !92
  %54 = icmp eq ptr %53, null
  %55 = select i1 %54, ptr %2, ptr %53, !prof !95
  store ptr %55, ptr %46, align 8, !tbaa !71
  %56 = getelementptr inbounds %struct.cgraph_edge, ptr %49, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !96
  %58 = getelementptr inbounds %struct.cgraph_node, ptr %57, i64 0, i32 16
  %59 = load ptr, ptr %58, align 8, !tbaa !71
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %48, !prof !97, !llvm.loop !98

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.cgraph_edge, ptr %49, i64 0, i32 1
  %63 = getelementptr inbounds %struct.cgraph_node, ptr %57, i64 0, i32 16
  %64 = getelementptr inbounds %struct.cgraph_node, ptr %57, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !89
  %66 = icmp eq ptr %65, null
  %67 = select i1 %66, ptr %2, ptr %65, !prof !99
  store ptr %67, ptr %63, align 8, !tbaa !71
  %68 = add nsw i32 %45, 1
  %69 = sext i32 %45 to i64
  %70 = getelementptr inbounds ptr, ptr %5, i64 %69
  store ptr %43, ptr %70, align 8, !tbaa !68
  %71 = load ptr, ptr %62, align 8, !tbaa !96
  %72 = getelementptr inbounds %struct.cgraph_node, ptr %71, i64 0, i32 16
  %73 = load ptr, ptr %72, align 8, !tbaa !71
  %74 = icmp eq ptr %73, %2
  br i1 %74, label %75, label %87, !prof !100

75:                                               ; preds = %48, %61
  %76 = phi ptr [ %71, %61 ], [ %43, %48 ]
  %77 = phi i32 [ %68, %61 ], [ %45, %48 ]
  %78 = add nsw i32 %44, 1
  %79 = sext i32 %44 to i64
  %80 = getelementptr inbounds ptr, ptr %0, i64 %79
  store ptr %76, ptr %80, align 8, !tbaa !68
  %81 = icmp eq i32 %77, 0
  br i1 %81, label %92, label %82, !prof !101

82:                                               ; preds = %75
  %83 = add nsw i32 %77, -1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds ptr, ptr %5, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !68
  br label %87

87:                                               ; preds = %82, %61
  %88 = phi i32 [ %83, %82 ], [ %68, %61 ]
  %89 = phi i32 [ %78, %82 ], [ %44, %61 ]
  %90 = phi ptr [ %86, %82 ], [ %71, %61 ]
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %42, !prof !102, !llvm.loop !103

92:                                               ; preds = %75, %87, %21, %29, %32
  %93 = phi i32 [ %24, %21 ], [ %24, %29 ], [ %24, %32 ], [ 0, %75 ], [ %88, %87 ]
  %94 = phi i32 [ %23, %21 ], [ %23, %29 ], [ %23, %32 ], [ %78, %75 ], [ %89, %87 ]
  %95 = getelementptr inbounds %struct.cgraph_node, ptr %22, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !68
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %21, !prof !104, !llvm.loop !105

98:                                               ; preds = %92, %15
  %99 = phi i32 [ %18, %15 ], [ %93, %92 ]
  %100 = phi i32 [ %17, %15 ], [ %94, %92 ]
  br i1 %16, label %15, label %101, !prof !106, !llvm.loop !107

101:                                              ; preds = %98
  call void @free(ptr noundef %5) #15
  %102 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !68
  %103 = icmp eq ptr %102, null
  br i1 %103, label %110, label %104, !prof !70

104:                                              ; preds = %101, %104
  %105 = phi ptr [ %108, %104 ], [ %102, %101 ]
  %106 = getelementptr inbounds %struct.cgraph_node, ptr %105, i64 0, i32 16
  store ptr null, ptr %106, align 8, !tbaa !71
  %107 = getelementptr inbounds %struct.cgraph_node, ptr %105, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !68
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %104, !prof !80, !llvm.loop !108

110:                                              ; preds = %104, %101
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #13
  ret i32 %100
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @cgraph_only_called_directly_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !109 !PGOFuncName !110 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %12, !prof !111

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 2
  %8 = load i8, ptr %7, align 8
  %9 = lshr i8 %8, 1
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi i8 [ 0, %1 ], [ %11, %6 ]
  ret i8 %13
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @cgraph_remove_unreachable_nodes(i8 noundef zeroext %0, ptr noundef %1) local_unnamed_addr #0 !prof !112 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4, !prof !113

4:                                                ; preds = %2
  %5 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr nonnull %1)
  br label %6

6:                                                ; preds = %4, %2
  %7 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !68
  %8 = icmp eq ptr %7, null
  br i1 %8, label %298, label %9, !prof !114

9:                                                ; preds = %6
  %10 = icmp ne i8 %0, 0
  br label %13

11:                                               ; preds = %49
  %12 = icmp eq ptr %50, inttoptr (i64 1 to ptr)
  br i1 %12, label %167, label %54, !prof !115

13:                                               ; preds = %9, %49
  %14 = phi ptr [ %7, %9 ], [ %52, %49 ]
  %15 = phi ptr [ inttoptr (i64 1 to ptr), %9 ], [ %50, %49 ]
  %16 = tail call fastcc zeroext i8 @cgraph_can_remove_if_no_direct_calls_p(ptr noundef nonnull %14) #15, !range !86
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %40, !prof !116

18:                                               ; preds = %13
  %19 = load ptr, ptr %14, align 8, !tbaa !117
  %20 = getelementptr inbounds %struct.tree_decl_common, ptr %19, i64 0, i32 2
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 33554432
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %30, label %24, !prof !118

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 27
  %26 = load i16, ptr %25, align 4
  %27 = and i16 %26, 32
  %28 = icmp eq i16 %27, 0
  %29 = or i1 %10, %28
  br i1 %29, label %30, label %40, !prof !119

30:                                               ; preds = %24, %18
  %31 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 19, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !120
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34, !prof !121

34:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 143, ptr noundef nonnull @.str.2) #14
  br label %35

35:                                               ; preds = %30, %34
  %36 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 16
  store ptr %15, ptr %36, align 8, !tbaa !71
  %37 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 27
  %38 = load i16, ptr %37, align 4
  %39 = or i16 %38, 8
  store i16 %39, ptr %37, align 4
  br label %49

40:                                               ; preds = %24, %13
  %41 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 16
  %42 = load ptr, ptr %41, align 8, !tbaa !71
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44, !prof !122

44:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 150, ptr noundef nonnull @.str.2) #14
  br label %45

45:                                               ; preds = %40, %44
  %46 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 27
  %47 = load i16, ptr %46, align 4
  %48 = and i16 %47, -9
  store i16 %48, ptr %46, align 4
  br label %49

49:                                               ; preds = %35, %45
  %50 = phi ptr [ %15, %45 ], [ %14, %35 ]
  %51 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !68
  %53 = icmp eq ptr %52, null
  br i1 %53, label %11, label %13, !prof !123, !llvm.loop !124

54:                                               ; preds = %11, %164
  %55 = phi ptr [ %165, %164 ], [ %50, %11 ]
  %56 = getelementptr inbounds %struct.cgraph_node, ptr %55, i64 0, i32 16
  %57 = load ptr, ptr %56, align 8, !tbaa !71
  store ptr inttoptr (i64 2 to ptr), ptr %56, align 8, !tbaa !71
  %58 = getelementptr inbounds %struct.cgraph_node, ptr %55, i64 0, i32 27
  %59 = load i16, ptr %58, align 4
  %60 = and i16 %59, 8
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %112, label %62, !prof !125

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.cgraph_node, ptr %55, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !68
  %65 = icmp eq ptr %64, null
  br i1 %65, label %112, label %66, !prof !126

66:                                               ; preds = %62, %107
  %67 = phi ptr [ %110, %107 ], [ %64, %62 ]
  %68 = phi ptr [ %108, %107 ], [ %57, %62 ]
  %69 = getelementptr inbounds %struct.cgraph_edge, ptr %67, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !127
  %71 = getelementptr inbounds %struct.cgraph_node, ptr %70, i64 0, i32 27
  %72 = load i16, ptr %71, align 4
  %73 = and i16 %72, 8
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %75, label %107, !prof !128

75:                                               ; preds = %66
  %76 = load i16, ptr %58, align 4
  %77 = and i16 %76, 32
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %107, label %79, !prof !129

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.cgraph_edge, ptr %67, i64 0, i32 9
  %81 = load i32, ptr %80, align 8, !tbaa !130
  %82 = icmp eq i32 %81, 0
  %83 = and i16 %72, 32
  %84 = icmp eq i16 %83, 0
  %85 = or i1 %84, %82
  br i1 %85, label %94, label %86, !prof !131

86:                                               ; preds = %79
  %87 = load ptr, ptr %70, align 8, !tbaa !117
  %88 = getelementptr inbounds %struct.tree_decl_common, ptr %87, i64 0, i32 2
  %89 = load i64, ptr %88, align 8
  %90 = and i64 %89, 33554432
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %94, label %92, !prof !132

92:                                               ; preds = %86
  %93 = icmp eq i8 %0, 0
  br i1 %93, label %107, label %94

94:                                               ; preds = %92, %86, %79
  %95 = and i16 %76, 8
  %96 = or disjoint i16 %95, %72
  store i16 %96, ptr %71, align 4
  %97 = load ptr, ptr %69, align 8, !tbaa !127
  %98 = getelementptr inbounds %struct.cgraph_node, ptr %97, i64 0, i32 16
  %99 = load ptr, ptr %98, align 8, !tbaa !71
  %100 = ptrtoint ptr %99 to i64
  switch i64 %100, label %107 [
    i64 0, label %106
    i64 2, label %101
  ], !prof !133

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.cgraph_node, ptr %97, i64 0, i32 27
  %103 = load i16, ptr %102, align 4
  %104 = and i16 %103, 8
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %107, label %106, !prof !134

106:                                              ; preds = %94, %101
  store ptr %68, ptr %98, align 8, !tbaa !71
  br label %107

107:                                              ; preds = %101, %106, %94, %66, %75, %92
  %108 = phi ptr [ %68, %66 ], [ %68, %92 ], [ %68, %75 ], [ %97, %106 ], [ %68, %101 ], [ %68, %94 ]
  %109 = getelementptr inbounds %struct.cgraph_edge, ptr %67, i64 0, i32 6
  %110 = load ptr, ptr %109, align 8, !tbaa !68
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %66, !prof !135, !llvm.loop !136

112:                                              ; preds = %107, %62, %54
  %113 = phi ptr [ %57, %54 ], [ %57, %62 ], [ %108, %107 ]
  %114 = getelementptr inbounds %struct.cgraph_node, ptr %55, i64 0, i32 14
  %115 = load ptr, ptr %114, align 8, !tbaa !137
  %116 = icmp eq ptr %115, null
  br i1 %116, label %142, label %117, !prof !138

117:                                              ; preds = %112
  %118 = load i16, ptr %58, align 4
  %119 = and i16 %118, 8
  %120 = icmp eq i16 %119, 0
  br i1 %120, label %142, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.cgraph_node, ptr %55, i64 0, i32 19, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !120
  %124 = icmp ne ptr %123, null
  %125 = icmp eq ptr %115, %55
  %126 = or i1 %124, %125
  br i1 %126, label %142, label %127

127:                                              ; preds = %121, %137
  %128 = phi ptr [ %138, %137 ], [ %113, %121 ]
  %129 = phi ptr [ %140, %137 ], [ %115, %121 ]
  %130 = getelementptr inbounds %struct.cgraph_node, ptr %129, i64 0, i32 27
  %131 = load i16, ptr %130, align 4
  %132 = and i16 %131, 8
  %133 = icmp eq i16 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %127
  %135 = getelementptr inbounds %struct.cgraph_node, ptr %129, i64 0, i32 16
  store ptr %128, ptr %135, align 8, !tbaa !71
  %136 = or disjoint i16 %131, 8
  store i16 %136, ptr %130, align 4
  br label %137

137:                                              ; preds = %127, %134
  %138 = phi ptr [ %128, %127 ], [ %129, %134 ]
  %139 = getelementptr inbounds %struct.cgraph_node, ptr %129, i64 0, i32 14
  %140 = load ptr, ptr %139, align 8, !tbaa !137
  %141 = icmp eq ptr %140, %55
  br i1 %141, label %142, label %127, !llvm.loop !139

142:                                              ; preds = %137, %121, %117, %112
  %143 = phi ptr [ %113, %121 ], [ %113, %117 ], [ %113, %112 ], [ %138, %137 ]
  br label %144

144:                                              ; preds = %157, %142
  %145 = phi ptr [ %55, %142 ], [ %158, %157 ]
  %146 = getelementptr inbounds %struct.cgraph_node, ptr %145, i64 0, i32 12
  %147 = load ptr, ptr %146, align 8, !tbaa !140
  %148 = icmp eq ptr %147, null
  br i1 %148, label %164, label %149, !prof !141

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.cgraph_node, ptr %147, i64 0, i32 16
  %151 = load ptr, ptr %150, align 8, !tbaa !71
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %164, !prof !142

153:                                              ; preds = %149
  %154 = load ptr, ptr %145, align 8, !tbaa !117
  %155 = tail call zeroext i8 @gimple_has_body_p(ptr noundef %154) #14
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %164, !prof !143

157:                                              ; preds = %153
  %158 = load ptr, ptr %146, align 8, !tbaa !140
  %159 = load ptr, ptr %158, align 8, !tbaa !117
  %160 = load ptr, ptr %145, align 8, !tbaa !117
  %161 = icmp eq ptr %159, %160
  br i1 %161, label %144, label %162, !prof !144

162:                                              ; preds = %157
  %163 = getelementptr inbounds %struct.cgraph_node, ptr %158, i64 0, i32 16
  store ptr %143, ptr %163, align 8, !tbaa !71
  br label %164

164:                                              ; preds = %149, %144, %153, %162
  %165 = phi ptr [ %158, %162 ], [ %143, %153 ], [ %143, %144 ], [ %143, %149 ]
  %166 = icmp eq ptr %165, inttoptr (i64 1 to ptr)
  br i1 %166, label %167, label %54, !prof !145, !llvm.loop !146

167:                                              ; preds = %164, %11
  %168 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !68
  %169 = icmp eq ptr %168, null
  br i1 %169, label %298, label %173, !prof !115

170:                                              ; preds = %275
  %171 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !68
  %172 = icmp eq ptr %171, null
  br i1 %172, label %298, label %278, !prof !115

173:                                              ; preds = %167, %275
  %174 = phi ptr [ %177, %275 ], [ %168, %167 ]
  %175 = phi i8 [ %276, %275 ], [ 0, %167 ]
  %176 = getelementptr inbounds %struct.cgraph_node, ptr %174, i64 0, i32 3
  %177 = load ptr, ptr %176, align 8, !tbaa !147
  %178 = getelementptr inbounds %struct.cgraph_node, ptr %174, i64 0, i32 16
  %179 = load ptr, ptr %178, align 8, !tbaa !71
  %180 = icmp eq ptr %179, null
  br i1 %180, label %194, label %181, !prof !148

181:                                              ; preds = %173
  %182 = getelementptr inbounds %struct.cgraph_node, ptr %174, i64 0, i32 27
  %183 = load i16, ptr %182, align 4
  %184 = and i16 %183, 8
  %185 = icmp eq i16 %184, 0
  br i1 %185, label %186, label %275, !prof !149

186:                                              ; preds = %181
  tail call void @cgraph_node_remove_callees(ptr noundef nonnull %174) #14
  %187 = load i16, ptr %182, align 4
  %188 = and i16 %187, -33
  store i16 %188, ptr %182, align 4
  %189 = getelementptr inbounds %struct.cgraph_node, ptr %174, i64 0, i32 18, i32 2
  %190 = load i8, ptr %189, align 8
  %191 = and i8 %190, -9
  store i8 %191, ptr %189, align 8
  %192 = load ptr, ptr %178, align 8, !tbaa !71
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %275, !prof !115

194:                                              ; preds = %173, %186
  %195 = getelementptr inbounds %struct.cgraph_node, ptr %174, i64 0, i32 19, i32 2
  store ptr null, ptr %195, align 8, !tbaa !120
  br i1 %3, label %199, label %196, !prof !150

196:                                              ; preds = %194
  %197 = tail call ptr @cgraph_node_name(ptr noundef nonnull %174) #14
  %198 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef %197) #15
  br label %199

199:                                              ; preds = %196, %194
  %200 = getelementptr inbounds %struct.cgraph_node, ptr %174, i64 0, i32 27
  %201 = load i16, ptr %200, align 4
  %202 = and i16 %201, 32
  %203 = icmp eq i16 %202, 0
  br i1 %203, label %212, label %204, !prof !151

204:                                              ; preds = %199
  %205 = icmp ne i8 %0, 0
  %206 = load ptr, ptr %174, align 8, !tbaa !117
  %207 = getelementptr inbounds %struct.tree_decl_common, ptr %206, i64 0, i32 2
  %208 = load i64, ptr %207, align 8
  %209 = and i64 %208, 33554432
  %210 = icmp eq i64 %209, 0
  %211 = or i1 %205, %210
  br i1 %211, label %212, label %213, !prof !152

212:                                              ; preds = %204, %199
  tail call void @cgraph_remove_node(ptr noundef nonnull %174) #14
  br label %275

213:                                              ; preds = %204
  %214 = getelementptr inbounds %struct.cgraph_node, ptr %174, i64 0, i32 2
  %215 = load ptr, ptr %214, align 8, !tbaa !68
  %216 = icmp eq ptr %215, null
  br i1 %216, label %228, label %221

217:                                              ; preds = %221
  %218 = getelementptr inbounds %struct.cgraph_edge, ptr %222, i64 0, i32 4
  %219 = load ptr, ptr %218, align 8, !tbaa !68
  %220 = icmp eq ptr %219, null
  br i1 %220, label %228, label %221, !llvm.loop !153

221:                                              ; preds = %213, %217
  %222 = phi ptr [ %219, %217 ], [ %215, %213 ]
  %223 = getelementptr inbounds %struct.cgraph_edge, ptr %222, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !96
  %225 = getelementptr inbounds %struct.cgraph_node, ptr %224, i64 0, i32 16
  %226 = load ptr, ptr %225, align 8, !tbaa !71
  %227 = icmp eq ptr %226, null
  br i1 %227, label %217, label %231

228:                                              ; preds = %217, %213
  %229 = and i16 %201, 1
  %230 = icmp eq i16 %229, 0
  br i1 %230, label %274, label %231

231:                                              ; preds = %221, %228
  %232 = getelementptr inbounds %struct.cgraph_node, ptr %174, i64 0, i32 11
  %233 = load ptr, ptr %232, align 8, !tbaa !68
  %234 = icmp eq ptr %233, null
  br i1 %234, label %244, label %239

235:                                              ; preds = %239
  %236 = getelementptr inbounds %struct.cgraph_node, ptr %240, i64 0, i32 9
  %237 = load ptr, ptr %236, align 8, !tbaa !68
  %238 = icmp eq ptr %237, null
  br i1 %238, label %244, label %239, !llvm.loop !154

239:                                              ; preds = %231, %235
  %240 = phi ptr [ %237, %235 ], [ %233, %231 ]
  %241 = getelementptr inbounds %struct.cgraph_node, ptr %240, i64 0, i32 16
  %242 = load ptr, ptr %241, align 8, !tbaa !71
  %243 = icmp eq ptr %242, null
  br i1 %243, label %235, label %250

244:                                              ; preds = %235, %231
  tail call void @cgraph_release_function_body(ptr noundef nonnull %174) #14
  %245 = load i16, ptr %200, align 4
  %246 = and i16 %245, -33
  store i16 %246, ptr %200, align 4
  %247 = getelementptr inbounds %struct.cgraph_node, ptr %174, i64 0, i32 18, i32 2
  %248 = load i8, ptr %247, align 8
  %249 = and i8 %248, -9
  store i8 %249, ptr %247, align 8
  br label %250

250:                                              ; preds = %239, %244
  tail call void @cgraph_node_remove_callees(ptr noundef nonnull %174) #14
  %251 = getelementptr inbounds %struct.cgraph_node, ptr %174, i64 0, i32 10
  %252 = load ptr, ptr %251, align 8, !tbaa !155
  %253 = icmp eq ptr %252, null
  br i1 %253, label %258, label %254

254:                                              ; preds = %250
  %255 = getelementptr inbounds %struct.cgraph_node, ptr %174, i64 0, i32 9
  %256 = load ptr, ptr %255, align 8, !tbaa !156
  %257 = getelementptr inbounds %struct.cgraph_node, ptr %252, i64 0, i32 9
  store ptr %256, ptr %257, align 8, !tbaa !156
  br label %266

258:                                              ; preds = %250
  %259 = getelementptr inbounds %struct.cgraph_node, ptr %174, i64 0, i32 12
  %260 = load ptr, ptr %259, align 8, !tbaa !140
  %261 = icmp eq ptr %260, null
  %262 = getelementptr inbounds %struct.cgraph_node, ptr %174, i64 0, i32 9
  %263 = load ptr, ptr %262, align 8, !tbaa !156
  br i1 %261, label %266, label %264

264:                                              ; preds = %258
  %265 = getelementptr inbounds %struct.cgraph_node, ptr %260, i64 0, i32 11
  store ptr %263, ptr %265, align 8, !tbaa !157
  br label %266

266:                                              ; preds = %258, %264, %254
  %267 = phi ptr [ %263, %264 ], [ %256, %254 ], [ %263, %258 ]
  %268 = getelementptr inbounds %struct.cgraph_node, ptr %174, i64 0, i32 9
  %269 = icmp eq ptr %267, null
  br i1 %269, label %272, label %270

270:                                              ; preds = %266
  %271 = getelementptr inbounds %struct.cgraph_node, ptr %267, i64 0, i32 10
  store ptr %252, ptr %271, align 8, !tbaa !155
  br label %272

272:                                              ; preds = %270, %266
  %273 = getelementptr inbounds %struct.cgraph_node, ptr %174, i64 0, i32 12
  store ptr null, ptr %273, align 8, !tbaa !140
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %268, i8 0, i64 16, i1 false)
  br label %275

274:                                              ; preds = %228
  tail call void @cgraph_remove_node(ptr noundef nonnull %174) #14
  br label %275

275:                                              ; preds = %181, %212, %274, %272, %186
  %276 = phi i8 [ %175, %186 ], [ 1, %272 ], [ 1, %274 ], [ 1, %212 ], [ %175, %181 ]
  %277 = icmp eq ptr %177, null
  br i1 %277, label %170, label %173, !prof !123, !llvm.loop !158

278:                                              ; preds = %170, %293
  %279 = phi ptr [ %296, %293 ], [ %171, %170 ]
  %280 = getelementptr inbounds %struct.cgraph_node, ptr %279, i64 0, i32 19, i32 2
  %281 = load ptr, ptr %280, align 8, !tbaa !120
  %282 = icmp eq ptr %281, null
  br i1 %282, label %293, label %283, !prof !159

283:                                              ; preds = %278
  %284 = getelementptr inbounds %struct.cgraph_node, ptr %279, i64 0, i32 2
  %285 = load ptr, ptr %284, align 8, !tbaa !89
  %286 = icmp eq ptr %285, null
  br i1 %286, label %287, label %293, !prof !160

287:                                              ; preds = %283
  %288 = getelementptr inbounds %struct.cgraph_node, ptr %279, i64 0, i32 11
  %289 = load ptr, ptr %288, align 8, !tbaa !157
  %290 = icmp eq ptr %289, null
  br i1 %290, label %291, label %292

291:                                              ; preds = %287
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 293, ptr noundef nonnull @.str.2) #14
  br label %292

292:                                              ; preds = %287, %291
  store ptr null, ptr %280, align 8, !tbaa !120
  tail call fastcc void @update_inlined_to_pointer(ptr noundef nonnull %279, ptr noundef nonnull %279) #15
  br label %293

293:                                              ; preds = %292, %283, %278
  %294 = getelementptr inbounds %struct.cgraph_node, ptr %279, i64 0, i32 16
  store ptr null, ptr %294, align 8, !tbaa !71
  %295 = getelementptr inbounds %struct.cgraph_node, ptr %279, i64 0, i32 3
  %296 = load ptr, ptr %295, align 8, !tbaa !68
  %297 = icmp eq ptr %296, null
  br i1 %297, label %298, label %278, !prof !161, !llvm.loop !162

298:                                              ; preds = %293, %6, %167, %170
  %299 = phi i8 [ %276, %170 ], [ 0, %167 ], [ 0, %6 ], [ %276, %293 ]
  tail call void @remove_unreachable_alias_pairs() #14
  ret i8 %299
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @cgraph_can_remove_if_no_direct_calls_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !163 !PGOFuncName !164 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %18, !prof !165

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !117
  %8 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 512
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18, !prof !122

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 2
  %14 = load i8, ptr %13, align 8
  %15 = lshr i8 %14, 1
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  br label %18

18:                                               ; preds = %6, %12, %1
  %19 = phi i8 [ 0, %1 ], [ 1, %6 ], [ %17, %12 ]
  ret i8 %19
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @gimple_has_body_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cgraph_node_remove_callees(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @cgraph_node_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cgraph_remove_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cgraph_release_function_body(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @update_inlined_to_pointer(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #7 !prof !166 !PGOFuncName !167 {
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2, %14
  %7 = phi ptr [ %16, %14 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.cgraph_edge, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !127
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 19, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !120
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  store ptr %1, ptr %10, align 8, !tbaa !120
  tail call fastcc void @update_inlined_to_pointer(ptr noundef nonnull %9, ptr noundef %1) #15
  br label %14

14:                                               ; preds = %6, %13
  %15 = getelementptr inbounds %struct.cgraph_edge, ptr %7, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !68
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %6, !llvm.loop !168

18:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: optsize
declare void @remove_unreachable_alias_pairs() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @local_function_and_variable_visibility() #0 !prof !169 !PGOFuncName !170 {
  %1 = load i32, ptr @flag_whole_program, align 4, !tbaa !64
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @flag_lto, align 4
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  %6 = load i32, ptr @flag_whopr, align 4
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %5, i1 %7, i1 false
  %9 = zext i1 %8 to i8
  tail call fastcc void @function_and_variable_visibility(i8 noundef zeroext %9) #15
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @function_and_variable_visibility(i8 noundef zeroext %0) unnamed_addr #0 !prof !171 !PGOFuncName !172 {
  %2 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !68
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !173

4:                                                ; preds = %1
  %5 = icmp eq i8 %0, 0
  br label %9

6:                                                ; preds = %117, %1
  %7 = load ptr, ptr @varpool_nodes, align 8, !tbaa !68
  %8 = icmp eq ptr %7, null
  br i1 %8, label %126, label %131, !prof !173

9:                                                ; preds = %4, %117
  %10 = phi ptr [ %2, %4 ], [ %124, %117 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !117
  %12 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %11, i64 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 512
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16, !prof !174

16:                                               ; preds = %9
  %17 = load i64, ptr %11, align 8
  %18 = and i64 %17, 134217728
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = and i32 %13, -513
  store i32 %21, ptr %12, align 8
  %22 = load ptr, ptr %10, align 8, !tbaa !117
  br label %23

23:                                               ; preds = %20, %16, %9
  %24 = phi ptr [ %22, %20 ], [ %11, %16 ], [ %11, %9 ]
  %25 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 14
  %26 = load ptr, ptr %25, align 8, !tbaa !137
  %27 = icmp eq ptr %26, null
  br i1 %27, label %47, label %28, !prof !174

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.tree_decl_common, ptr %24, i64 0, i32 2
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 33554432
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %28, %41
  %34 = phi ptr [ %43, %41 ], [ %10, %28 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !117
  %36 = getelementptr inbounds %struct.tree_decl_common, ptr %35, i64 0, i32 2
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 33554432
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 385, ptr noundef nonnull @.str.2) #14
  br label %41

41:                                               ; preds = %33, %40
  %42 = getelementptr inbounds %struct.cgraph_node, ptr %34, i64 0, i32 14
  %43 = load ptr, ptr %42, align 8, !tbaa !137
  store ptr null, ptr %42, align 8, !tbaa !137
  %44 = icmp eq ptr %43, %10
  br i1 %44, label %45, label %33, !llvm.loop !175

45:                                               ; preds = %41
  %46 = load ptr, ptr %10, align 8, !tbaa !117
  br label %47

47:                                               ; preds = %45, %28, %23
  %48 = phi ptr [ %46, %45 ], [ %24, %28 ], [ %24, %23 ]
  %49 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %48, i64 0, i32 4
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 640
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %63, label %53, !prof !176

53:                                               ; preds = %47
  %54 = load i64, ptr %48, align 8
  %55 = and i64 %54, 134217728
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.tree_decl_common, ptr %48, i64 0, i32 2
  %59 = load i64, ptr %58, align 8
  %60 = and i64 %59, 33554432
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 393, ptr noundef nonnull @.str.2) #14
  br label %63

63:                                               ; preds = %47, %53, %57, %62
  %64 = tail call fastcc zeroext i8 @cgraph_externally_visible_p(ptr noundef nonnull %10, i8 noundef zeroext %0) #15, !range !86
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %75, label %66, !prof !177

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 19, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !120
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70, !prof !178

70:                                               ; preds = %66
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 396, ptr noundef nonnull @.str.2) #14
  br label %71

71:                                               ; preds = %70, %66
  %72 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 18, i32 2
  %73 = load i8, ptr %72, align 8
  %74 = or i8 %73, 2
  store i8 %74, ptr %72, align 8
  br label %98

75:                                               ; preds = %63
  %76 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 18, i32 2
  %77 = load i8, ptr %76, align 8
  %78 = and i8 %77, -3
  store i8 %78, ptr %76, align 8
  %79 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 27
  %80 = load i16, ptr %79, align 4
  %81 = and i16 %80, 32
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %98, label %83, !prof !179

83:                                               ; preds = %75
  %84 = load ptr, ptr %10, align 8, !tbaa !117
  %85 = getelementptr inbounds %struct.tree_decl_common, ptr %84, i64 0, i32 2
  %86 = load i64, ptr %85, align 8
  %87 = and i64 %86, 33554432
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %98, !prof !180

89:                                               ; preds = %83
  br i1 %5, label %90, label %96, !prof !180

90:                                               ; preds = %89
  %91 = load i64, ptr %84, align 8
  %92 = and i64 %91, 134217728
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %96, label %94, !prof !180

94:                                               ; preds = %90
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 404, ptr noundef nonnull @.str.2) #14
  %95 = load ptr, ptr %10, align 8, !tbaa !117
  br label %96

96:                                               ; preds = %89, %90, %94
  %97 = phi ptr [ %84, %89 ], [ %84, %90 ], [ %95, %94 ]
  tail call void @cgraph_make_decl_local(ptr noundef %97) #14
  br label %98

98:                                               ; preds = %71, %96, %83, %75
  %99 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 18, i32 2
  %100 = tail call fastcc zeroext i8 @cgraph_only_called_directly_p(ptr noundef nonnull %10) #15, !range !86
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %117, label %102, !prof !181

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 27
  %104 = load i16, ptr %103, align 4
  %105 = and i16 %104, 32
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %117, label %107, !prof !182

107:                                              ; preds = %102
  %108 = load ptr, ptr %10, align 8, !tbaa !117
  %109 = getelementptr inbounds %struct.tree_decl_common, ptr %108, i64 0, i32 2
  %110 = load i64, ptr %109, align 8
  %111 = and i64 %110, 33554432
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %117, !prof !183

113:                                              ; preds = %107
  %114 = load i8, ptr %99, align 8
  %115 = and i8 %114, 2
  %116 = icmp eq i8 %115, 0
  br label %117

117:                                              ; preds = %113, %107, %102, %98
  %118 = phi i1 [ false, %107 ], [ false, %102 ], [ false, %98 ], [ %116, %113 ]
  %119 = zext i1 %118 to i8
  %120 = load i8, ptr %99, align 8
  %121 = and i8 %120, -2
  %122 = or disjoint i8 %121, %119
  store i8 %122, ptr %99, align 8
  %123 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !68
  %125 = icmp eq ptr %124, null
  br i1 %125, label %6, label %9, !prof !184, !llvm.loop !185

126:                                              ; preds = %190, %6
  %127 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !68
  %128 = icmp eq ptr %127, null
  br i1 %128, label %254, label %129, !prof !173

129:                                              ; preds = %126
  %130 = icmp eq i8 %0, 0
  br label %194

131:                                              ; preds = %6, %190
  %132 = phi ptr [ %192, %190 ], [ %7, %6 ]
  %133 = load ptr, ptr %132, align 8, !tbaa !186
  %134 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %133, i64 0, i32 4
  %135 = load i32, ptr %134, align 8
  %136 = and i32 %135, 128
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %151, label %138, !prof !188

138:                                              ; preds = %131
  %139 = load i64, ptr %133, align 8
  %140 = and i64 %139, 134217728
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.tree_decl_common, ptr %133, i64 0, i32 2
  %144 = load i64, ptr %143, align 8
  %145 = and i64 %144, 33554432
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 416, ptr noundef nonnull @.str.2) #14
  %148 = load ptr, ptr %132, align 8, !tbaa !186
  %149 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %148, i64 0, i32 4
  %150 = load i32, ptr %149, align 8
  br label %151

151:                                              ; preds = %131, %138, %142, %147
  %152 = phi i32 [ %135, %131 ], [ %135, %138 ], [ %135, %142 ], [ %150, %147 ]
  %153 = phi ptr [ %133, %131 ], [ %133, %138 ], [ %133, %142 ], [ %148, %147 ]
  %154 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %153, i64 0, i32 4
  %155 = and i32 %152, 8
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %190, label %157, !prof !189

157:                                              ; preds = %151
  %158 = load i64, ptr %153, align 8
  %159 = and i64 %158, 134217728
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %166, !prof !190

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.tree_decl_common, ptr %153, i64 0, i32 2
  %163 = load i64, ptr %162, align 8
  %164 = and i64 %163, 33554432
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %188, label %166

166:                                              ; preds = %161, %157
  %167 = getelementptr inbounds %struct.tree_decl_common, ptr %153, i64 0, i32 5
  %168 = load ptr, ptr %167, align 8, !tbaa !191
  %169 = icmp eq ptr %168, null
  br i1 %169, label %176, label %170, !prof !192

170:                                              ; preds = %166
  %171 = load ptr, ptr @global_trees, align 16, !tbaa !68
  %172 = icmp eq ptr %168, %171
  %173 = and i32 %152, 128
  %174 = icmp eq i32 %173, 0
  %175 = and i1 %174, %172
  br i1 %175, label %179, label %188, !prof !193

176:                                              ; preds = %166
  %177 = and i32 %152, 128
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %188, !prof !192

179:                                              ; preds = %170, %176
  %180 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %153, i64 0, i32 2
  %181 = load ptr, ptr %180, align 8, !tbaa !191
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %188, !prof !192

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.tree_common, ptr %153, i64 0, i32 2
  %185 = load ptr, ptr %184, align 8, !tbaa !191
  %186 = load i64, ptr %185, align 8
  %187 = icmp ult i64 %186, 72057594037927936
  br i1 %187, label %190, label %188, !prof !192

188:                                              ; preds = %183, %179, %176, %170, %161
  %189 = and i32 %152, -9
  store i32 %189, ptr %154, align 8
  br label %190

190:                                              ; preds = %151, %183, %188
  %191 = getelementptr inbounds %struct.varpool_node, ptr %132, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !68
  %193 = icmp eq ptr %192, null
  br i1 %193, label %126, label %131, !prof !194, !llvm.loop !195

194:                                              ; preds = %129, %250
  %195 = phi ptr [ %127, %129 ], [ %252, %250 ]
  %196 = getelementptr inbounds %struct.varpool_node, ptr %195, i64 0, i32 5
  %197 = load i8, ptr %196, align 4
  %198 = and i8 %197, 8
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %250, label %200, !prof !196

200:                                              ; preds = %194
  %201 = and i8 %197, 1
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %226, label %203, !prof !196

203:                                              ; preds = %200
  %204 = load ptr, ptr %195, align 8, !tbaa !186
  %205 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %204, i64 0, i32 4
  %206 = load i32, ptr %205, align 8
  %207 = and i32 %206, 512
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %213, !prof !197

209:                                              ; preds = %203
  %210 = load i64, ptr %204, align 8
  %211 = and i64 %210, 134217728
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %226, label %213, !prof !198

213:                                              ; preds = %209, %203
  br i1 %130, label %223, label %214, !prof !199

214:                                              ; preds = %213
  %215 = and i32 %206, 640
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %214
  %218 = getelementptr inbounds %struct.tree_decl_common, ptr %204, i64 0, i32 6
  %219 = load ptr, ptr %218, align 8, !tbaa !191
  %220 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.5, ptr noundef %219) #14
  %221 = icmp eq ptr %220, null
  %222 = load i8, ptr %196, align 4
  br i1 %221, label %226, label %223

223:                                              ; preds = %217, %214, %213
  %224 = phi i8 [ %197, %214 ], [ %197, %213 ], [ %222, %217 ]
  %225 = or i8 %224, 32
  br label %229

226:                                              ; preds = %217, %209, %200
  %227 = phi i8 [ %222, %217 ], [ %197, %209 ], [ %197, %200 ]
  %228 = and i8 %227, -33
  br label %229

229:                                              ; preds = %226, %223
  %230 = phi i8 [ %228, %226 ], [ %225, %223 ]
  store i8 %230, ptr %196, align 4
  %231 = and i8 %230, 32
  %232 = icmp eq i8 %231, 0
  %233 = load ptr, ptr %195, align 8, !tbaa !186
  br i1 %232, label %234, label %244, !prof !198

234:                                              ; preds = %229
  br i1 %130, label %235, label %241, !prof !200

235:                                              ; preds = %234
  %236 = load i64, ptr %233, align 8
  %237 = and i64 %236, 134217728
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %241, label %239, !prof !200

239:                                              ; preds = %235
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 459, ptr noundef nonnull @.str.2) #14
  %240 = load ptr, ptr %195, align 8, !tbaa !186
  br label %241

241:                                              ; preds = %234, %235, %239
  %242 = phi ptr [ %233, %234 ], [ %233, %235 ], [ %240, %239 ]
  tail call void @cgraph_make_decl_local(ptr noundef %242) #14
  %243 = load ptr, ptr %195, align 8, !tbaa !186
  br label %244

244:                                              ; preds = %241, %229
  %245 = phi ptr [ %243, %241 ], [ %233, %229 ]
  %246 = load i64, ptr %245, align 8
  %247 = and i64 %246, 67108864
  %248 = icmp eq i64 %247, 0
  br i1 %248, label %249, label %250, !prof !196

249:                                              ; preds = %244
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 462, ptr noundef nonnull @.str.2) #14
  br label %250

250:                                              ; preds = %249, %244, %194
  %251 = getelementptr inbounds %struct.varpool_node, ptr %195, i64 0, i32 2
  %252 = load ptr, ptr %251, align 8, !tbaa !68
  %253 = icmp eq ptr %252, null
  br i1 %253, label %254, label %194, !prof !201, !llvm.loop !202

254:                                              ; preds = %250, %126
  %255 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %256 = icmp eq ptr %255, null
  br i1 %256, label %320, label %257, !prof !203

257:                                              ; preds = %254
  %258 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 25, i64 1, ptr nonnull %255)
  %259 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !68
  %260 = icmp eq ptr %259, null
  br i1 %260, label %275, label %261

261:                                              ; preds = %257, %271
  %262 = phi ptr [ %273, %271 ], [ %259, %257 ]
  %263 = getelementptr inbounds %struct.cgraph_node, ptr %262, i64 0, i32 18, i32 2
  %264 = load i8, ptr %263, align 8
  %265 = and i8 %264, 1
  %266 = icmp eq i8 %265, 0
  br i1 %266, label %271, label %267

267:                                              ; preds = %261
  %268 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %269 = tail call ptr @cgraph_node_name(ptr noundef nonnull %262) #14
  %270 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %268, ptr noundef nonnull @.str.3, ptr noundef %269) #15
  br label %271

271:                                              ; preds = %261, %267
  %272 = getelementptr inbounds %struct.cgraph_node, ptr %262, i64 0, i32 3
  %273 = load ptr, ptr %272, align 8, !tbaa !68
  %274 = icmp eq ptr %273, null
  br i1 %274, label %275, label %261, !llvm.loop !204

275:                                              ; preds = %271, %257
  %276 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %277 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %276)
  %278 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %279 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 38, i64 1, ptr %278)
  %280 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !68
  %281 = icmp eq ptr %280, null
  br i1 %281, label %296, label %282

282:                                              ; preds = %275, %292
  %283 = phi ptr [ %294, %292 ], [ %280, %275 ]
  %284 = getelementptr inbounds %struct.cgraph_node, ptr %283, i64 0, i32 18, i32 2
  %285 = load i8, ptr %284, align 8
  %286 = and i8 %285, 2
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %292, label %288

288:                                              ; preds = %282
  %289 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %290 = tail call ptr @cgraph_node_name(ptr noundef nonnull %283) #14
  %291 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %289, ptr noundef nonnull @.str.3, ptr noundef %290) #15
  br label %292

292:                                              ; preds = %282, %288
  %293 = getelementptr inbounds %struct.cgraph_node, ptr %283, i64 0, i32 3
  %294 = load ptr, ptr %293, align 8, !tbaa !68
  %295 = icmp eq ptr %294, null
  br i1 %295, label %296, label %282, !llvm.loop !205

296:                                              ; preds = %292, %275
  %297 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %298 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %297)
  %299 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %300 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 38, i64 1, ptr %299)
  %301 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !68
  %302 = icmp eq ptr %301, null
  br i1 %302, label %317, label %303

303:                                              ; preds = %296, %313
  %304 = phi ptr [ %315, %313 ], [ %301, %296 ]
  %305 = getelementptr inbounds %struct.varpool_node, ptr %304, i64 0, i32 5
  %306 = load i8, ptr %305, align 4
  %307 = and i8 %306, 32
  %308 = icmp eq i8 %307, 0
  br i1 %308, label %313, label %309

309:                                              ; preds = %303
  %310 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %311 = tail call ptr @varpool_node_name(ptr noundef nonnull %304) #14
  %312 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %310, ptr noundef nonnull @.str.3, ptr noundef %311) #15
  br label %313

313:                                              ; preds = %303, %309
  %314 = getelementptr inbounds %struct.varpool_node, ptr %304, i64 0, i32 2
  %315 = load ptr, ptr %314, align 8, !tbaa !68
  %316 = icmp eq ptr %315, null
  br i1 %316, label %317, label %303, !llvm.loop !206

317:                                              ; preds = %313, %296
  %318 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %319 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %318)
  br label %320

320:                                              ; preds = %317, %254
  store i8 1, ptr @cgraph_function_flags_ready, align 1, !tbaa !191
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @cgraph_externally_visible_p(ptr noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !207 !PGOFuncName !208 {
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 2
  %4 = load i8, ptr %3, align 8
  %5 = and i8 %4, 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %62, label %7, !prof !209

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !117
  %9 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %8, i64 0, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 512
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %22, !prof !210

13:                                               ; preds = %7
  %14 = load i64, ptr %8, align 8
  %15 = and i64 %14, 134217728
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %62, label %17, !prof !211

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.tree_decl_common, ptr %8, i64 0, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 33554432
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %62, !prof !178

22:                                               ; preds = %17, %7
  %23 = icmp eq i8 %1, 0
  br i1 %23, label %62, label %24, !prof !178

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.tree_decl_common, ptr %8, i64 0, i32 2
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 8192
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %62

29:                                               ; preds = %24
  br i1 %12, label %51, label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %32 = load i16, ptr %31, align 4
  %33 = and i16 %32, 34
  %34 = icmp eq i16 %33, 32
  br i1 %34, label %35, label %62

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 14
  %37 = load ptr, ptr %36, align 8, !tbaa !137
  %38 = icmp eq ptr %37, null
  %39 = icmp eq ptr %37, %0
  %40 = or i1 %38, %39
  br i1 %40, label %51, label %41

41:                                               ; preds = %35, %47
  %42 = phi ptr [ %49, %47 ], [ %37, %35 ]
  %43 = getelementptr inbounds %struct.cgraph_node, ptr %42, i64 0, i32 27
  %44 = load i16, ptr %43, align 4
  %45 = and i16 %44, 34
  %46 = icmp eq i16 %45, 32
  br i1 %46, label %47, label %62

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.cgraph_node, ptr %42, i64 0, i32 14
  %49 = load ptr, ptr %48, align 8, !tbaa !137
  %50 = icmp eq ptr %49, %0
  br i1 %50, label %51, label %41, !llvm.loop !212

51:                                               ; preds = %47, %35, %29
  %52 = getelementptr inbounds %struct.tree_decl_minimal, ptr %8, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !191
  %54 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 56), align 16, !tbaa !68
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.tree_decl_common, ptr %8, i64 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !191
  %59 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.5, ptr noundef %58) #14
  %60 = icmp ne ptr %59, null
  %61 = zext i1 %60 to i8
  br label %62

62:                                               ; preds = %41, %56, %51, %30, %24, %22, %13, %17, %2
  %63 = phi i8 [ 0, %2 ], [ 0, %17 ], [ 0, %13 ], [ 1, %22 ], [ 1, %24 ], [ 1, %30 ], [ 1, %51 ], [ %61, %56 ], [ 1, %41 ]
  ret i8 %63
}

; Function Attrs: optsize
declare void @cgraph_make_decl_local(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @lookup_attribute(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @varpool_node_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_whole_program_function_and_variable_visibility() #8 !prof !171 !PGOFuncName !213 {
  %1 = load i32, ptr @flag_ltrans, align 4, !tbaa !64
  %2 = icmp eq i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @whole_program_function_and_variable_visibility() #0 !prof !169 !PGOFuncName !214 {
  %1 = load i32, ptr @flag_whole_program, align 4, !tbaa !64
  %2 = trunc i32 %1 to i8
  tail call fastcc void @function_and_variable_visibility(i8 noundef zeroext %2) #15
  %3 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !68
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8, !prof !70

5:                                                ; preds = %24, %0
  %6 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !68
  %7 = icmp eq ptr %6, null
  br i1 %7, label %45, label %28, !prof !70

8:                                                ; preds = %0, %24
  %9 = phi ptr [ %26, %24 ], [ %3, %0 ]
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 18, i32 2
  %11 = load i8, ptr %10, align 8
  %12 = and i8 %11, 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %24, label %14, !prof !215

14:                                               ; preds = %8
  %15 = load ptr, ptr %9, align 8, !tbaa !117
  %16 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %15, i64 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 512
  %19 = icmp ne i32 %18, 0
  %20 = and i8 %11, 4
  %21 = icmp eq i8 %20, 0
  %22 = or i1 %21, %19
  br i1 %22, label %24, label %23, !prof !216

23:                                               ; preds = %14
  tail call void @cgraph_mark_needed_node(ptr noundef nonnull %9) #14
  br label %24

24:                                               ; preds = %8, %14, %23
  %25 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !68
  %27 = icmp eq ptr %26, null
  br i1 %27, label %5, label %8, !prof !217, !llvm.loop !218

28:                                               ; preds = %5, %41
  %29 = phi ptr [ %43, %41 ], [ %6, %5 ]
  %30 = getelementptr inbounds %struct.varpool_node, ptr %29, i64 0, i32 5
  %31 = load i8, ptr %30, align 4
  %32 = and i8 %31, 32
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %41, label %34, !prof !219

34:                                               ; preds = %28
  %35 = load ptr, ptr %29, align 8, !tbaa !186
  %36 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %35, i64 0, i32 4
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 512
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41, !prof !220

40:                                               ; preds = %34
  tail call void @varpool_mark_needed_node(ptr noundef nonnull %29) #14
  br label %41

41:                                               ; preds = %28, %34, %40
  %42 = getelementptr inbounds %struct.varpool_node, ptr %29, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !68
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %28, !prof !221, !llvm.loop !222

45:                                               ; preds = %41, %5
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %47 = icmp eq ptr %46, null
  br i1 %47, label %69, label %48, !prof !223

48:                                               ; preds = %45
  %49 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 18, i64 1, ptr nonnull %46)
  %50 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !68
  %51 = icmp eq ptr %50, null
  br i1 %51, label %66, label %52

52:                                               ; preds = %48, %62
  %53 = phi ptr [ %64, %62 ], [ %50, %48 ]
  %54 = getelementptr inbounds %struct.varpool_node, ptr %53, i64 0, i32 5
  %55 = load i8, ptr %54, align 4
  %56 = and i8 %55, 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %52
  %59 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %60 = tail call ptr @varpool_node_name(ptr noundef nonnull %53) #14
  %61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef nonnull @.str.3, ptr noundef %60) #15
  br label %62

62:                                               ; preds = %52, %58
  %63 = getelementptr inbounds %struct.varpool_node, ptr %53, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !68
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %52, !llvm.loop !224

66:                                               ; preds = %62, %48
  %67 = load ptr, ptr @dump_file, align 8, !tbaa !68
  %68 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %67)
  br label %69

69:                                               ; preds = %66, %45
  ret i32 0
}

; Function Attrs: optsize
declare void @cgraph_mark_needed_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @varpool_mark_needed_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cgraph_node_set_new() local_unnamed_addr #0 !prof !166 {
  %1 = tail call ptr @ggc_alloc_stat(i64 noundef 24) #14
  %2 = tail call ptr @htab_create_alloc(i64 noundef 10, ptr noundef nonnull @hash_cgraph_node_set_element, ptr noundef nonnull @eq_cgraph_node_set_element, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #14
  store ptr %2, ptr %1, align 8, !tbaa !225
  %3 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %1, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !227
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @hash_cgraph_node_set_element(ptr nocapture noundef readonly %0) #0 !prof !166 !PGOFuncName !228 {
  %2 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !68
  %3 = load ptr, ptr %0, align 8, !tbaa !229
  %4 = tail call i32 %2(ptr noundef %3) #14
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @eq_cgraph_node_set_element(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 !prof !166 !PGOFuncName !231 {
  %3 = load ptr, ptr %0, align 8, !tbaa !229
  %4 = load ptr, ptr %1, align 8, !tbaa !229
  %5 = icmp eq ptr %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @ggc_calloc(i64 noundef, i64 noundef) #2

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cgraph_node_set_add(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !166 {
  %3 = alloca %struct.cgraph_node_set_element_def, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  store ptr %1, ptr %3, align 8, !tbaa !229
  %4 = load ptr, ptr %0, align 8, !tbaa !225
  %5 = call ptr @htab_find_slot(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 1) #14
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %6, align 8, !tbaa !229
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !227
  %14 = getelementptr inbounds %struct.cgraph_node_set_element_def, ptr %6, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !232
  %16 = trunc i64 %15 to i32
  %17 = call fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr noundef %13, i32 noundef %16) #15
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %27, label %19

19:                                               ; preds = %11, %8
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 631, ptr noundef nonnull @.str.2) #14
  br label %27

20:                                               ; preds = %2
  %21 = call ptr @ggc_alloc_stat(i64 noundef 16) #14
  store ptr %1, ptr %21, align 8, !tbaa !229
  %22 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !227
  %24 = call fastcc i32 @VEC_cgraph_node_ptr_base_length(ptr noundef %23) #15
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.cgraph_node_set_element_def, ptr %21, i64 0, i32 1
  store i64 %25, ptr %26, align 8, !tbaa !232
  store ptr %21, ptr %5, align 8, !tbaa !68
  call fastcc void @VEC_cgraph_node_ptr_gc_safe_push(ptr noundef nonnull %22, ptr noundef %1) #15
  br label %27

27:                                               ; preds = %19, %11, %20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  ret void
}

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !166 !PGOFuncName !233 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_cgraph_node_ptr_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !166 !PGOFuncName !234 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !235
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_cgraph_node_ptr_gc_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !166 !PGOFuncName !237 {
  tail call fastcc void @VEC_cgraph_node_ptr_gc_reserve(ptr noundef %0) #15
  %3 = load ptr, ptr %0, align 8, !tbaa !68
  tail call fastcc void @VEC_cgraph_node_ptr_base_quick_push(ptr noundef %3, ptr noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_cgraph_node_ptr_gc_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !166 !PGOFuncName !238 {
  %2 = load ptr, ptr %0, align 8, !tbaa !68
  %3 = tail call fastcc i32 @VEC_cgraph_node_ptr_base_space(ptr noundef %2) #15
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_p_reserve(ptr noundef %2, i32 noundef 1) #14
  store ptr %6, ptr %0, align 8, !tbaa !68
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_cgraph_node_ptr_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !166 !PGOFuncName !239 {
  %3 = load i32, ptr %0, align 8, !tbaa !235
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !235
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_cgraph_node_ptr_base_space(ptr noundef readonly %0) unnamed_addr #3 !prof !166 !PGOFuncName !240 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !241
  %6 = load i32, ptr %0, align 8, !tbaa !235
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cgraph_node_set_remove(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !166 {
  %3 = alloca %struct.cgraph_node_set_element_def, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  store ptr %1, ptr %3, align 8, !tbaa !229
  %4 = load ptr, ptr %0, align 8, !tbaa !225
  %5 = call ptr @htab_find_slot(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 0) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %35, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !68
  %9 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !227
  %11 = getelementptr inbounds %struct.cgraph_node_set_element_def, ptr %8, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !232
  %13 = trunc i64 %12 to i32
  %14 = call fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr noundef %10, i32 noundef %13) #15
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %18, label %16

16:                                               ; preds = %7
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 663, ptr noundef nonnull @.str.2) #14
  %17 = load ptr, ptr %9, align 8, !tbaa !227
  br label %18

18:                                               ; preds = %7, %16
  %19 = phi ptr [ %10, %7 ], [ %17, %16 ]
  %20 = call fastcc ptr @VEC_cgraph_node_ptr_base_pop(ptr noundef %19) #15
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %33, label %22

22:                                               ; preds = %18
  store ptr %20, ptr %3, align 8, !tbaa !229
  %23 = load ptr, ptr %0, align 8, !tbaa !225
  %24 = call ptr @htab_find_slot(ptr noundef %23, ptr noundef nonnull %3, i32 noundef 0) #14
  %25 = load ptr, ptr %24, align 8, !tbaa !68
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 673, ptr noundef nonnull @.str.2) #14
  br label %28

28:                                               ; preds = %22, %27
  %29 = load i64, ptr %11, align 8, !tbaa !232
  %30 = getelementptr inbounds %struct.cgraph_node_set_element_def, ptr %25, i64 0, i32 1
  store i64 %29, ptr %30, align 8, !tbaa !232
  %31 = load ptr, ptr %9, align 8, !tbaa !227
  %32 = trunc i64 %29 to i32
  call fastcc void @VEC_cgraph_node_ptr_base_replace(ptr noundef %31, i32 noundef %32, ptr noundef %20) #15
  br label %33

33:                                               ; preds = %28, %18
  %34 = load ptr, ptr %0, align 8, !tbaa !225
  call void @htab_clear_slot(ptr noundef %34, ptr noundef nonnull %5) #14
  call void @ggc_free(ptr noundef nonnull %8) #14
  br label %35

35:                                               ; preds = %2, %33
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_cgraph_node_ptr_base_pop(ptr nocapture noundef %0) unnamed_addr #9 !prof !166 !PGOFuncName !242 {
  %2 = load i32, ptr %0, align 8, !tbaa !235
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !235
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_cgraph_node_ptr_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #9 !prof !166 !PGOFuncName !243 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !68
  ret void
}

; Function Attrs: optsize
declare void @htab_clear_slot(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local { ptr, i32 } @cgraph_node_set_find(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !166 {
  %3 = alloca %struct.cgraph_node_set_element_def, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  store ptr %1, ptr %3, align 8, !tbaa !229
  %4 = load ptr, ptr %0, align 8, !tbaa !225
  %5 = call ptr @htab_find_slot(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 0) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !68
  %9 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !227
  %11 = getelementptr inbounds %struct.cgraph_node_set_element_def, ptr %8, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !232
  %13 = trunc i64 %12 to i32
  %14 = call fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr noundef %10, i32 noundef %13) #15
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %19, label %16

16:                                               ; preds = %7
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 705, ptr noundef nonnull @.str.2) #14
  %17 = load i64, ptr %11, align 8, !tbaa !232
  %18 = trunc i64 %17 to i32
  br label %19

19:                                               ; preds = %16, %7, %2
  %20 = phi i32 [ -1, %2 ], [ %13, %7 ], [ %18, %16 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  %21 = insertvalue { ptr, i32 } poison, ptr %0, 0
  %22 = insertvalue { ptr, i32 } %21, i32 %20, 1
  ret { ptr, i32 } %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_cgraph_node_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !166 {
  %3 = alloca %struct.cgraph_node_set_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %4 = tail call fastcc ptr @csi_start(ptr noundef %1) #15
  store ptr %4, ptr %3, align 8, !tbaa.struct !244
  %5 = getelementptr inbounds i8, ptr %3, i64 8
  store i32 0, ptr %5, align 8, !tbaa.struct !245
  %6 = tail call fastcc zeroext i8 @csi_end_p(ptr %4, i32 0) #15, !range !86
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %2, %8
  %9 = phi i32 [ %13, %8 ], [ 0, %2 ]
  %10 = phi ptr [ %12, %8 ], [ %4, %2 ]
  %11 = tail call fastcc ptr @csi_node(ptr %10, i32 %9) #15
  tail call void @dump_cgraph_node(ptr noundef %0, ptr noundef %11) #14
  call fastcc void @csi_next(ptr noundef nonnull %3) #15
  %12 = load ptr, ptr %3, align 8
  %13 = load i32, ptr %5, align 8
  %14 = tail call fastcc zeroext i8 @csi_end_p(ptr %12, i32 %13) #15, !range !86
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %8, label %16, !llvm.loop !246

16:                                               ; preds = %8, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @csi_start(ptr noundef %0) unnamed_addr #10 !prof !166 !PGOFuncName !247 {
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @csi_end_p(ptr nocapture readonly %0, i32 %1) unnamed_addr #6 !prof !166 !PGOFuncName !248 {
  %3 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !227
  %5 = tail call fastcc i32 @VEC_cgraph_node_ptr_base_length(ptr noundef %4) #15
  %6 = icmp ule i32 %5, %1
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @csi_node(ptr nocapture readonly %0, i32 %1) unnamed_addr #6 !prof !166 !PGOFuncName !249 {
  %3 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !227
  %5 = tail call fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr noundef %4, i32 noundef %1) #15
  ret ptr %5
}

; Function Attrs: optsize
declare void @dump_cgraph_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @csi_next(ptr nocapture noundef %0) unnamed_addr #9 !prof !166 !PGOFuncName !250 {
  %2 = getelementptr inbounds %struct.cgraph_node_set_iterator, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !251
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !251
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_cgraph_node_set(ptr noundef %0) local_unnamed_addr #0 !prof !166 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !68
  tail call void @dump_cgraph_node_set(ptr noundef %2, ptr noundef %0) #15
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind optsize }
attributes #15 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!62}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61}
!36 = !{ptr @cgraph_postorder, ptr @xcalloc, i64 3}
!37 = !{ptr @cgraph_postorder, ptr @cgraph_only_called_directly_p, i64 21172}
!38 = !{ptr @cgraph_postorder, ptr @free, i64 3}
!39 = !{ptr @cgraph_remove_unreachable_nodes, ptr @fwrite, i64 1}
!40 = !{ptr @cgraph_remove_unreachable_nodes, ptr @cgraph_can_remove_if_no_direct_calls_p, i64 115479}
!41 = !{ptr @cgraph_remove_unreachable_nodes, ptr @fancy_abort, i64 2}
!42 = !{ptr @cgraph_remove_unreachable_nodes, ptr @gimple_has_body_p, i64 8653}
!43 = !{ptr @cgraph_remove_unreachable_nodes, ptr @cgraph_node_remove_callees, i64 130}
!44 = !{ptr @cgraph_remove_unreachable_nodes, ptr @cgraph_node_name, i64 1}
!45 = !{ptr @cgraph_remove_unreachable_nodes, ptr @fprintf, i64 1}
!46 = !{ptr @cgraph_remove_unreachable_nodes, ptr @cgraph_remove_node, i64 73}
!47 = !{ptr @cgraph_remove_unreachable_nodes, ptr @update_inlined_to_pointer, i64 1}
!48 = !{ptr @cgraph_remove_unreachable_nodes, ptr @remove_unreachable_alias_pairs, i64 9}
!49 = !{ptr @local_function_and_variable_visibility, ptr @function_and_variable_visibility, i64 1}
!50 = !{ptr @function_and_variable_visibility, ptr @fancy_abort, i64 9}
!51 = !{ptr @function_and_variable_visibility, ptr @cgraph_externally_visible_p, i64 11011}
!52 = !{ptr @function_and_variable_visibility, ptr @cgraph_make_decl_local, i64 7228}
!53 = !{ptr @function_and_variable_visibility, ptr @cgraph_only_called_directly_p, i64 11011}
!54 = !{ptr @function_and_variable_visibility, ptr @cgraph_node_name, i64 10}
!55 = !{ptr @function_and_variable_visibility, ptr @fprintf, i64 15}
!56 = !{ptr @function_and_variable_visibility, ptr @varpool_node_name, i64 5}
!57 = !{ptr @whole_program_function_and_variable_visibility, ptr @function_and_variable_visibility, i64 1}
!58 = !{ptr @whole_program_function_and_variable_visibility, ptr @cgraph_mark_needed_node, i64 2322}
!59 = !{ptr @whole_program_function_and_variable_visibility, ptr @varpool_mark_needed_node, i64 469}
!60 = !{ptr @whole_program_function_and_variable_visibility, ptr @varpool_node_name, i64 3}
!61 = !{ptr @whole_program_function_and_variable_visibility, ptr @fprintf, i64 3}
!62 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!63 = !{!"function_entry_count", i64 3}
!64 = !{!65, !65, i64 0}
!65 = !{!"int", !66, i64 0}
!66 = !{!"omnipotent char", !67, i64 0}
!67 = !{!"Simple C/C++ TBAA"}
!68 = !{!69, !69, i64 0}
!69 = !{!"any pointer", !66, i64 0}
!70 = !{!"branch_weights", i32 1, i32 127}
!71 = !{!72, !69, i64 128}
!72 = !{!"cgraph_node", !69, i64 0, !69, i64 8, !69, i64 16, !69, i64 24, !69, i64 32, !69, i64 40, !69, i64 48, !69, i64 56, !69, i64 64, !69, i64 72, !69, i64 80, !69, i64 88, !69, i64 96, !69, i64 104, !69, i64 112, !69, i64 120, !69, i64 128, !69, i64 136, !73, i64 144, !76, i64 184, !77, i64 224, !78, i64 232, !79, i64 256, !75, i64 288, !65, i64 296, !65, i64 300, !65, i64 304, !65, i64 308, !65, i64 308, !65, i64 308, !65, i64 308, !65, i64 308, !65, i64 308, !65, i64 308, !65, i64 308, !65, i64 309, !65, i64 309}
!73 = !{!"cgraph_local_info", !69, i64 0, !74, i64 8, !65, i64 32, !65, i64 32, !65, i64 32, !65, i64 32, !65, i64 32, !65, i64 32, !65, i64 32, !65, i64 32}
!74 = !{!"inline_summary", !75, i64 0, !65, i64 8, !65, i64 12, !65, i64 16, !65, i64 20}
!75 = !{!"long", !66, i64 0}
!76 = !{!"cgraph_global_info", !75, i64 0, !75, i64 8, !69, i64 16, !65, i64 24, !65, i64 28, !65, i64 32, !66, i64 36}
!77 = !{!"cgraph_rtl_info", !65, i64 0}
!78 = !{!"cgraph_clone_info", !69, i64 0, !69, i64 8, !69, i64 16}
!79 = !{!"cgraph_thunk_info", !75, i64 0, !75, i64 8, !69, i64 16, !66, i64 24, !66, i64 25, !66, i64 26}
!80 = !{!"branch_weights", i32 127, i32 1387649}
!81 = distinct !{!81, !82}
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{!"branch_weights", i32 1, i32 223}
!84 = !{!"branch_weights", i32 33836, i32 52900}
!85 = !{!"branch_weights", i32 28231, i32 5606}
!86 = !{i8 0, i8 2}
!87 = !{!"branch_weights", i32 5875, i32 22357}
!88 = !{!"branch_weights", i32 3996, i32 1880}
!89 = !{!72, !69, i64 16}
!90 = !{!"branch_weights", i32 2758, i32 6844}
!91 = !{!"branch_weights", i32 38096, i32 259960}
!92 = !{!93, !69, i64 32}
!93 = !{!"cgraph_edge", !75, i64 0, !69, i64 8, !69, i64 16, !69, i64 24, !69, i64 32, !69, i64 40, !69, i64 48, !69, i64 56, !69, i64 64, !65, i64 72, !65, i64 76, !65, i64 80, !65, i64 84, !94, i64 88, !65, i64 90, !65, i64 90, !65, i64 90}
!94 = !{!"short", !66, i64 0}
!95 = !{!"branch_weights", i32 35339, i32 224622}
!96 = !{!93, !69, i64 8}
!97 = !{!"branch_weights", i32 33768, i32 226193}
!98 = distinct !{!98, !82}
!99 = !{!"branch_weights", i32 5273, i32 28496}
!100 = !{!"branch_weights", i32 335270345, i32 1812213303}
!101 = !{!"branch_weights", i32 9601, i32 33768}
!102 = !{!"branch_weights", i32 12243, i32 2147471405}
!103 = distinct !{!103, !82}
!104 = !{!"branch_weights", i32 223, i32 2775297}
!105 = distinct !{!105, !82}
!106 = !{!"branch_weights", i32 3, i32 4}
!107 = distinct !{!107, !82}
!108 = distinct !{!108, !82}
!109 = !{!"function_entry_count", i64 44746}
!110 = !{!"ipa.c:cgraph_only_called_directly_p"}
!111 = !{!"branch_weights", i32 27859, i32 16889}
!112 = !{!"function_entry_count", i64 9}
!113 = !{!"branch_weights", i32 10, i32 1}
!114 = !{!"branch_weights", i32 1, i32 159}
!115 = !{!"branch_weights", i32 0, i32 -2147483648}
!116 = !{!"branch_weights", i32 49564, i32 78747}
!117 = !{!72, !69, i64 0}
!118 = !{!"branch_weights", i32 49537, i32 28}
!119 = !{!"branch_weights", i32 57, i32 1}
!120 = !{!72, !69, i64 200}
!121 = !{!"branch_weights", i32 49564, i32 1}
!122 = !{!"branch_weights", i32 78747, i32 1}
!123 = !{!"branch_weights", i32 159, i32 2052801}
!124 = distinct !{!124, !82}
!125 = !{!"branch_weights", i32 165, i32 128085}
!126 = !{!"branch_weights", i32 1, i32 128084}
!127 = !{!93, !69, i64 16}
!128 = !{!"branch_weights", i32 78522, i32 692138}
!129 = !{!"branch_weights", i32 1, i32 78522}
!130 = !{!93, !65, i64 72}
!131 = !{!"branch_weights", i32 1138104499, i32 325328652}
!132 = !{!"branch_weights", i32 17457, i32 1}
!133 = !{!"branch_weights", i32 21, i32 1727044, i32 441}
!134 = !{!"branch_weights", i32 1, i32 21}
!135 = !{!"branch_weights", i32 128084, i32 642575}
!136 = distinct !{!136, !82}
!137 = !{!72, !69, i64 112}
!138 = !{!"branch_weights", i32 128249, i32 1}
!139 = distinct !{!139, !82}
!140 = !{!72, !69, i64 96}
!141 = !{!"branch_weights", i32 69724, i32 59146}
!142 = !{!"branch_weights", i32 9658, i32 49489}
!143 = !{!"branch_weights", i32 785, i32 128085}
!144 = !{!"branch_weights", i32 621, i32 165}
!145 = !{!"branch_weights", i32 159, i32 2051825}
!146 = distinct !{!146, !82}
!147 = !{!72, !69, i64 24}
!148 = !{!"branch_weights", i32 82, i32 128229}
!149 = !{!"branch_weights", i32 145, i32 128085}
!150 = !{!"branch_weights", i32 82, i32 1}
!151 = !{!"branch_weights", i32 80, i32 3}
!152 = !{!"branch_weights", i32 7, i32 1}
!153 = distinct !{!153, !82}
!154 = distinct !{!154, !82}
!155 = !{!72, !69, i64 80}
!156 = !{!72, !69, i64 72}
!157 = !{!72, !69, i64 88}
!158 = distinct !{!158, !82}
!159 = !{!"branch_weights", i32 68343, i32 59887}
!160 = !{!"branch_weights", i32 1, i32 59887}
!161 = !{!"branch_weights", i32 159, i32 2051505}
!162 = distinct !{!162, !82}
!163 = !{!"function_entry_count", i64 128309}
!164 = !{!"ipa.c:cgraph_can_remove_if_no_direct_calls_p"}
!165 = !{!"branch_weights", i32 78747, i32 49564}
!166 = !{!"function_entry_count", i64 0}
!167 = !{!"ipa.c:update_inlined_to_pointer"}
!168 = distinct !{!168, !82}
!169 = !{!"function_entry_count", i64 1}
!170 = !{!"ipa.c:local_function_and_variable_visibility"}
!171 = !{!"function_entry_count", i64 2}
!172 = !{!"ipa.c:function_and_variable_visibility"}
!173 = !{!"branch_weights", i32 1, i32 191}
!174 = !{!"branch_weights", i32 16517, i32 1}
!175 = distinct !{!175, !82}
!176 = !{!"branch_weights", i32 272811289, i32 33035}
!177 = !{!"branch_weights", i32 7227, i32 9291}
!178 = !{!"branch_weights", i32 9291, i32 1}
!179 = !{!"branch_weights", i32 348, i32 6880}
!180 = !{!"branch_weights", i32 6880, i32 1}
!181 = !{!"branch_weights", i32 11015, i32 5503}
!182 = !{!"branch_weights", i32 342, i32 5162}
!183 = !{!"branch_weights", i32 5162, i32 1}
!184 = !{!"branch_weights", i32 191, i32 1056897}
!185 = distinct !{!185, !82}
!186 = !{!187, !69, i64 0}
!187 = !{!"varpool_node", !69, i64 0, !69, i64 8, !69, i64 16, !69, i64 24, !65, i64 32, !65, i64 36, !65, i64 36, !65, i64 36, !65, i64 36, !65, i64 36, !65, i64 36, !65, i64 36}
!188 = !{!"branch_weights", i32 5900, i32 1}
!189 = !{!"branch_weights", i32 4794, i32 1107}
!190 = !{!"branch_weights", i32 1, i32 1107}
!191 = !{!66, !66, i64 0}
!192 = !{!"branch_weights", i32 1107, i32 1}
!193 = !{!"branch_weights", i32 1107, i32 1109}
!194 = !{!"branch_weights", i32 191, i32 377409}
!195 = distinct !{!195, !82}
!196 = !{!"branch_weights", i32 1, i32 5842}
!197 = !{!"branch_weights", i32 5842, i32 1}
!198 = !{!"branch_weights", i32 3966, i32 1877}
!199 = !{!"branch_weights", i32 1877, i32 1}
!200 = !{!"branch_weights", i32 3966, i32 1}
!201 = !{!"branch_weights", i32 191, i32 373697}
!202 = distinct !{!202, !82}
!203 = !{!"branch_weights", i32 3, i32 1}
!204 = distinct !{!204, !82}
!205 = distinct !{!205, !82}
!206 = distinct !{!206, !82}
!207 = !{!"function_entry_count", i64 16516}
!208 = !{!"ipa.c:cgraph_externally_visible_p"}
!209 = !{!"branch_weights", i32 348, i32 16170}
!210 = !{!"branch_weights", i32 16170, i32 1}
!211 = !{!"branch_weights", i32 6880, i32 9291}
!212 = distinct !{!212, !82}
!213 = !{!"ipa.c:gate_whole_program_function_and_variable_visibility"}
!214 = !{!"ipa.c:whole_program_function_and_variable_visibility"}
!215 = !{!"branch_weights", i32 2695, i32 4646}
!216 = !{!"branch_weights", i32 9293, i32 21585316}
!217 = !{!"branch_weights", i32 127, i32 469633}
!218 = distinct !{!218, !82}
!219 = !{!"branch_weights", i32 1989, i32 939}
!220 = !{!"branch_weights", i32 939, i32 1}
!221 = !{!"branch_weights", i32 127, i32 187201}
!222 = distinct !{!222, !82}
!223 = !{!"branch_weights", i32 2, i32 1}
!224 = distinct !{!224, !82}
!225 = !{!226, !69, i64 0}
!226 = !{!"cgraph_node_set_def", !69, i64 0, !69, i64 8, !69, i64 16}
!227 = !{!226, !69, i64 8}
!228 = !{!"ipa.c:hash_cgraph_node_set_element"}
!229 = !{!230, !69, i64 0}
!230 = !{!"cgraph_node_set_element_def", !69, i64 0, !75, i64 8}
!231 = !{!"ipa.c:eq_cgraph_node_set_element"}
!232 = !{!230, !75, i64 8}
!233 = !{!"ipa.c:VEC_cgraph_node_ptr_base_index"}
!234 = !{!"ipa.c:VEC_cgraph_node_ptr_base_length"}
!235 = !{!236, !65, i64 0}
!236 = !{!"VEC_cgraph_node_ptr_base", !65, i64 0, !65, i64 4, !66, i64 8}
!237 = !{!"ipa.c:VEC_cgraph_node_ptr_gc_safe_push"}
!238 = !{!"ipa.c:VEC_cgraph_node_ptr_gc_reserve"}
!239 = !{!"ipa.c:VEC_cgraph_node_ptr_base_quick_push"}
!240 = !{!"ipa.c:VEC_cgraph_node_ptr_base_space"}
!241 = !{!236, !65, i64 4}
!242 = !{!"ipa.c:VEC_cgraph_node_ptr_base_pop"}
!243 = !{!"ipa.c:VEC_cgraph_node_ptr_base_replace"}
!244 = !{i64 0, i64 8, !68, i64 8, i64 4, !64}
!245 = !{i64 0, i64 4, !64}
!246 = distinct !{!246, !82}
!247 = !{!"ipa.c:csi_start"}
!248 = !{!"ipa.c:csi_end_p"}
!249 = !{!"ipa.c:csi_node"}
!250 = !{!"ipa.c:csi_next"}
!251 = !{!252, !65, i64 8}
!252 = !{!"", !69, i64 0, !65, i64 8}
