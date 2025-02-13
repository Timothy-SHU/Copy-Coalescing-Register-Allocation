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
@.str.4 = private unnamed_addr constant [11 x i8] c"visibility\00", align 1
@pass_ipa_function_and_variable_visibility = dso_local local_unnamed_addr global %struct.simple_ipa_opt_pass { %struct.opt_pass { i32 2, ptr @.str.4, ptr null, ptr @local_function_and_variable_visibility, ptr null, ptr null, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 384 } }, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"whole-program\00", align 1
@pass_ipa_whole_program_visibility = dso_local local_unnamed_addr global %struct.ipa_opt_pass_d { %struct.opt_pass { i32 3, ptr @.str.5, ptr @gate_whole_program_function_and_variable_visibility, ptr @whole_program_function_and_variable_visibility, ptr null, ptr null, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 384 }, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null }, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@flag_whole_program = external local_unnamed_addr global i32, align 4
@flag_lto = external local_unnamed_addr global i32, align 4
@flag_whopr = external local_unnamed_addr global i32, align 4
@varpool_nodes = external local_unnamed_addr global ptr, align 8
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@varpool_nodes_queue = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"externally_visible\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"\0AMarking local functions:\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"\0AMarking externally visible functions:\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"\0AMarking externally visible variables:\00", align 1
@cgraph_function_flags_ready = external local_unnamed_addr global i8, align 1
@flag_ltrans = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"\0ANeeded variables:\00", align 1
@htab_hash_pointer = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @cgraph_postorder(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 !prof !62 {
  %2 = alloca %struct.cgraph_edge, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #13
  %3 = load i32, ptr @cgraph_n_nodes, align 4, !tbaa !63
  %4 = sext i32 %3 to i64
  %5 = tail call ptr @xcalloc(i64 noundef %4, i64 noundef 8) #14
  %6 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !67
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8, !prof !69

8:                                                ; preds = %1, %8
  %9 = phi ptr [ %12, %8 ], [ %6, %1 ]
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 16
  store ptr null, ptr %10, align 8, !tbaa !70
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !67
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %8, !prof !79, !llvm.loop !80

14:                                               ; preds = %8, %1
  br label %15

15:                                               ; preds = %14, %98
  %16 = phi i1 [ false, %98 ], [ true, %14 ]
  %17 = phi i32 [ %100, %98 ], [ 0, %14 ]
  %18 = phi i32 [ %99, %98 ], [ 0, %14 ]
  %19 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !67
  %20 = icmp eq ptr %19, null
  br i1 %20, label %98, label %21, !prof !82

21:                                               ; preds = %15, %92
  %22 = phi ptr [ %96, %92 ], [ %19, %15 ]
  %23 = phi i32 [ %94, %92 ], [ %17, %15 ]
  %24 = phi i32 [ %93, %92 ], [ %18, %15 ]
  %25 = getelementptr inbounds %struct.cgraph_node, ptr %22, i64 0, i32 16
  %26 = load ptr, ptr %25, align 8, !tbaa !70
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %92, !prof !83

28:                                               ; preds = %21
  br i1 %16, label %29, label %37, !prof !84

29:                                               ; preds = %28
  %30 = call fastcc zeroext i8 @cgraph_only_called_directly_p(ptr noundef nonnull %22) #15, !range !85
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %92, !prof !86

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.cgraph_node, ptr %22, i64 0, i32 27
  %34 = load i16, ptr %33, align 4
  %35 = and i16 %34, 2
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %92, !prof !87

37:                                               ; preds = %32, %28
  %38 = getelementptr inbounds %struct.cgraph_node, ptr %22, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !88
  %40 = icmp eq ptr %39, null
  %41 = select i1 %40, ptr %2, ptr %39, !prof !89
  store ptr %41, ptr %25, align 8, !tbaa !70
  br label %42

42:                                               ; preds = %37, %87
  %43 = phi ptr [ %22, %37 ], [ %90, %87 ]
  %44 = phi i32 [ %23, %37 ], [ %89, %87 ]
  %45 = phi i32 [ %24, %37 ], [ %88, %87 ]
  %46 = getelementptr inbounds %struct.cgraph_node, ptr %43, i64 0, i32 16
  %47 = load ptr, ptr %46, align 8, !tbaa !70
  br label %48

48:                                               ; preds = %42, %51
  %49 = phi ptr [ %47, %42 ], [ %55, %51 ]
  %50 = icmp eq ptr %49, %2
  br i1 %50, label %75, label %51, !prof !90

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.cgraph_edge, ptr %49, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !91
  %54 = icmp eq ptr %53, null
  %55 = select i1 %54, ptr %2, ptr %53, !prof !94
  store ptr %55, ptr %46, align 8, !tbaa !70
  %56 = getelementptr inbounds %struct.cgraph_edge, ptr %49, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !95
  %58 = getelementptr inbounds %struct.cgraph_node, ptr %57, i64 0, i32 16
  %59 = load ptr, ptr %58, align 8, !tbaa !70
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %48, !prof !96, !llvm.loop !97

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.cgraph_edge, ptr %49, i64 0, i32 1
  %63 = getelementptr inbounds %struct.cgraph_node, ptr %57, i64 0, i32 16
  %64 = getelementptr inbounds %struct.cgraph_node, ptr %57, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !88
  %66 = icmp eq ptr %65, null
  %67 = select i1 %66, ptr %2, ptr %65, !prof !98
  store ptr %67, ptr %63, align 8, !tbaa !70
  %68 = add nsw i32 %45, 1
  %69 = sext i32 %45 to i64
  %70 = getelementptr inbounds ptr, ptr %5, i64 %69
  store ptr %43, ptr %70, align 8, !tbaa !67
  %71 = load ptr, ptr %62, align 8, !tbaa !95
  %72 = getelementptr inbounds %struct.cgraph_node, ptr %71, i64 0, i32 16
  %73 = load ptr, ptr %72, align 8, !tbaa !70
  %74 = icmp eq ptr %73, %2
  br i1 %74, label %75, label %87, !prof !99

75:                                               ; preds = %48, %61
  %76 = phi ptr [ %71, %61 ], [ %43, %48 ]
  %77 = phi i32 [ %68, %61 ], [ %45, %48 ]
  %78 = add nsw i32 %44, 1
  %79 = sext i32 %44 to i64
  %80 = getelementptr inbounds ptr, ptr %0, i64 %79
  store ptr %76, ptr %80, align 8, !tbaa !67
  %81 = icmp eq i32 %77, 0
  br i1 %81, label %92, label %82, !prof !100

82:                                               ; preds = %75
  %83 = add nsw i32 %77, -1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds ptr, ptr %5, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !67
  br label %87

87:                                               ; preds = %82, %61
  %88 = phi i32 [ %83, %82 ], [ %68, %61 ]
  %89 = phi i32 [ %78, %82 ], [ %44, %61 ]
  %90 = phi ptr [ %86, %82 ], [ %71, %61 ]
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %42, !prof !101, !llvm.loop !102

92:                                               ; preds = %75, %87, %21, %29, %32
  %93 = phi i32 [ %24, %21 ], [ %24, %29 ], [ %24, %32 ], [ 0, %75 ], [ %88, %87 ]
  %94 = phi i32 [ %23, %21 ], [ %23, %29 ], [ %23, %32 ], [ %78, %75 ], [ %89, %87 ]
  %95 = getelementptr inbounds %struct.cgraph_node, ptr %22, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !67
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %21, !prof !103, !llvm.loop !104

98:                                               ; preds = %92, %15
  %99 = phi i32 [ %18, %15 ], [ %93, %92 ]
  %100 = phi i32 [ %17, %15 ], [ %94, %92 ]
  br i1 %16, label %15, label %101, !prof !105, !llvm.loop !106

101:                                              ; preds = %98
  call void @free(ptr noundef %5) #15
  %102 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !67
  %103 = icmp eq ptr %102, null
  br i1 %103, label %110, label %104, !prof !69

104:                                              ; preds = %101, %104
  %105 = phi ptr [ %108, %104 ], [ %102, %101 ]
  %106 = getelementptr inbounds %struct.cgraph_node, ptr %105, i64 0, i32 16
  store ptr null, ptr %106, align 8, !tbaa !70
  %107 = getelementptr inbounds %struct.cgraph_node, ptr %105, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !67
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %104, !prof !79, !llvm.loop !107

110:                                              ; preds = %104, %101
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #13
  ret i32 %100
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @cgraph_only_called_directly_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !108 !PGOFuncName !109 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %12, !prof !110

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
define dso_local zeroext i8 @cgraph_remove_unreachable_nodes(i8 noundef zeroext %0, ptr noundef %1) local_unnamed_addr #0 !prof !111 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4, !prof !112

4:                                                ; preds = %2
  %5 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr nonnull %1)
  br label %6

6:                                                ; preds = %4, %2
  %7 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !67
  %8 = icmp eq ptr %7, null
  br i1 %8, label %297, label %11, !prof !113

9:                                                ; preds = %48
  %10 = icmp eq ptr %49, inttoptr (i64 1 to ptr)
  br i1 %10, label %166, label %53, !prof !114

11:                                               ; preds = %6, %48
  %12 = phi ptr [ %51, %48 ], [ %7, %6 ]
  %13 = phi ptr [ %49, %48 ], [ inttoptr (i64 1 to ptr), %6 ]
  %14 = tail call fastcc zeroext i8 @cgraph_can_remove_if_no_direct_calls_p(ptr noundef nonnull %12) #15, !range !85
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %39, !prof !115

16:                                               ; preds = %11
  %17 = load ptr, ptr %12, align 8, !tbaa !116
  %18 = getelementptr inbounds %struct.tree_decl_common, ptr %17, i64 0, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 33554432
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %29, label %22, !prof !117

22:                                               ; preds = %16
  %23 = icmp ne i8 %0, 0
  %24 = getelementptr inbounds %struct.cgraph_node, ptr %12, i64 0, i32 27
  %25 = load i16, ptr %24, align 4
  %26 = and i16 %25, 32
  %27 = icmp eq i16 %26, 0
  %28 = or i1 %23, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %22, %16
  %30 = getelementptr inbounds %struct.cgraph_node, ptr %12, i64 0, i32 19, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !118
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33, !prof !117

33:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 143, ptr noundef nonnull @.str.2) #14
  br label %34

34:                                               ; preds = %29, %33
  %35 = getelementptr inbounds %struct.cgraph_node, ptr %12, i64 0, i32 16
  store ptr %13, ptr %35, align 8, !tbaa !70
  %36 = getelementptr inbounds %struct.cgraph_node, ptr %12, i64 0, i32 27
  %37 = load i16, ptr %36, align 4
  %38 = or i16 %37, 8
  store i16 %38, ptr %36, align 4
  br label %48

39:                                               ; preds = %22, %11
  %40 = getelementptr inbounds %struct.cgraph_node, ptr %12, i64 0, i32 16
  %41 = load ptr, ptr %40, align 8, !tbaa !70
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43, !prof !119

43:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 150, ptr noundef nonnull @.str.2) #14
  br label %44

44:                                               ; preds = %39, %43
  %45 = getelementptr inbounds %struct.cgraph_node, ptr %12, i64 0, i32 27
  %46 = load i16, ptr %45, align 4
  %47 = and i16 %46, -9
  store i16 %47, ptr %45, align 4
  br label %48

48:                                               ; preds = %34, %44
  %49 = phi ptr [ %13, %44 ], [ %12, %34 ]
  %50 = getelementptr inbounds %struct.cgraph_node, ptr %12, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !67
  %52 = icmp eq ptr %51, null
  br i1 %52, label %9, label %11, !prof !120, !llvm.loop !121

53:                                               ; preds = %9, %163
  %54 = phi ptr [ %164, %163 ], [ %49, %9 ]
  %55 = getelementptr inbounds %struct.cgraph_node, ptr %54, i64 0, i32 16
  %56 = load ptr, ptr %55, align 8, !tbaa !70
  store ptr inttoptr (i64 2 to ptr), ptr %55, align 8, !tbaa !70
  %57 = getelementptr inbounds %struct.cgraph_node, ptr %54, i64 0, i32 27
  %58 = load i16, ptr %57, align 4
  %59 = and i16 %58, 8
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %111, label %61, !prof !122

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.cgraph_node, ptr %54, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !67
  %64 = icmp eq ptr %63, null
  br i1 %64, label %111, label %65, !prof !123

65:                                               ; preds = %61, %106
  %66 = phi ptr [ %109, %106 ], [ %63, %61 ]
  %67 = phi ptr [ %107, %106 ], [ %56, %61 ]
  %68 = getelementptr inbounds %struct.cgraph_edge, ptr %66, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !124
  %70 = getelementptr inbounds %struct.cgraph_node, ptr %69, i64 0, i32 27
  %71 = load i16, ptr %70, align 4
  %72 = and i16 %71, 8
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %74, label %106, !prof !125

74:                                               ; preds = %65
  %75 = load i16, ptr %57, align 4
  %76 = and i16 %75, 32
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %106, label %78, !prof !126

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.cgraph_edge, ptr %66, i64 0, i32 9
  %80 = load i32, ptr %79, align 8, !tbaa !127
  %81 = icmp eq i32 %80, 0
  %82 = and i16 %71, 32
  %83 = icmp eq i16 %82, 0
  %84 = or i1 %83, %81
  br i1 %84, label %93, label %85, !prof !128

85:                                               ; preds = %78
  %86 = icmp ne i8 %0, 0
  %87 = load ptr, ptr %69, align 8, !tbaa !116
  %88 = getelementptr inbounds %struct.tree_decl_common, ptr %87, i64 0, i32 2
  %89 = load i64, ptr %88, align 8
  %90 = and i64 %89, 33554432
  %91 = icmp eq i64 %90, 0
  %92 = or i1 %86, %91
  br i1 %92, label %93, label %106, !prof !129

93:                                               ; preds = %85, %78
  %94 = and i16 %75, 8
  %95 = or disjoint i16 %94, %71
  store i16 %95, ptr %70, align 4
  %96 = load ptr, ptr %68, align 8, !tbaa !124
  %97 = getelementptr inbounds %struct.cgraph_node, ptr %96, i64 0, i32 16
  %98 = load ptr, ptr %97, align 8, !tbaa !70
  %99 = ptrtoint ptr %98 to i64
  switch i64 %99, label %106 [
    i64 0, label %105
    i64 2, label %100
  ], !prof !130

100:                                              ; preds = %93
  %101 = getelementptr inbounds %struct.cgraph_node, ptr %96, i64 0, i32 27
  %102 = load i16, ptr %101, align 4
  %103 = and i16 %102, 8
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %93, %100
  store ptr %67, ptr %97, align 8, !tbaa !70
  br label %106

106:                                              ; preds = %100, %105, %93, %65, %74, %85
  %107 = phi ptr [ %67, %65 ], [ %67, %85 ], [ %67, %74 ], [ %96, %105 ], [ %67, %100 ], [ %67, %93 ]
  %108 = getelementptr inbounds %struct.cgraph_edge, ptr %66, i64 0, i32 6
  %109 = load ptr, ptr %108, align 8, !tbaa !67
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %65, !prof !131, !llvm.loop !132

111:                                              ; preds = %106, %61, %53
  %112 = phi ptr [ %56, %53 ], [ %56, %61 ], [ %107, %106 ]
  %113 = getelementptr inbounds %struct.cgraph_node, ptr %54, i64 0, i32 14
  %114 = load ptr, ptr %113, align 8, !tbaa !133
  %115 = icmp eq ptr %114, null
  br i1 %115, label %141, label %116, !prof !134

116:                                              ; preds = %111
  %117 = load i16, ptr %57, align 4
  %118 = and i16 %117, 8
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %141, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.cgraph_node, ptr %54, i64 0, i32 19, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !118
  %123 = icmp ne ptr %122, null
  %124 = icmp eq ptr %114, %54
  %125 = or i1 %123, %124
  br i1 %125, label %141, label %126

126:                                              ; preds = %120, %136
  %127 = phi ptr [ %137, %136 ], [ %112, %120 ]
  %128 = phi ptr [ %139, %136 ], [ %114, %120 ]
  %129 = getelementptr inbounds %struct.cgraph_node, ptr %128, i64 0, i32 27
  %130 = load i16, ptr %129, align 4
  %131 = and i16 %130, 8
  %132 = icmp eq i16 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.cgraph_node, ptr %128, i64 0, i32 16
  store ptr %127, ptr %134, align 8, !tbaa !70
  %135 = or disjoint i16 %130, 8
  store i16 %135, ptr %129, align 4
  br label %136

136:                                              ; preds = %126, %133
  %137 = phi ptr [ %127, %126 ], [ %128, %133 ]
  %138 = getelementptr inbounds %struct.cgraph_node, ptr %128, i64 0, i32 14
  %139 = load ptr, ptr %138, align 8, !tbaa !133
  %140 = icmp eq ptr %139, %54
  br i1 %140, label %141, label %126, !llvm.loop !135

141:                                              ; preds = %136, %120, %116, %111
  %142 = phi ptr [ %112, %120 ], [ %112, %116 ], [ %112, %111 ], [ %137, %136 ]
  br label %143

143:                                              ; preds = %156, %141
  %144 = phi ptr [ %54, %141 ], [ %157, %156 ]
  %145 = getelementptr inbounds %struct.cgraph_node, ptr %144, i64 0, i32 12
  %146 = load ptr, ptr %145, align 8, !tbaa !136
  %147 = icmp eq ptr %146, null
  br i1 %147, label %163, label %148, !prof !137

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.cgraph_node, ptr %146, i64 0, i32 16
  %150 = load ptr, ptr %149, align 8, !tbaa !70
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %163, !prof !138

152:                                              ; preds = %148
  %153 = load ptr, ptr %144, align 8, !tbaa !116
  %154 = tail call zeroext i8 @gimple_has_body_p(ptr noundef %153) #14
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %156, label %163, !prof !122

156:                                              ; preds = %152
  %157 = load ptr, ptr %145, align 8, !tbaa !136
  %158 = load ptr, ptr %157, align 8, !tbaa !116
  %159 = load ptr, ptr %144, align 8, !tbaa !116
  %160 = icmp eq ptr %158, %159
  br i1 %160, label %143, label %161

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.cgraph_node, ptr %157, i64 0, i32 16
  store ptr %142, ptr %162, align 8, !tbaa !70
  br label %163

163:                                              ; preds = %148, %143, %152, %161
  %164 = phi ptr [ %157, %161 ], [ %142, %152 ], [ %142, %143 ], [ %142, %148 ]
  %165 = icmp eq ptr %164, inttoptr (i64 1 to ptr)
  br i1 %165, label %166, label %53, !prof !139, !llvm.loop !140

166:                                              ; preds = %163, %9
  %167 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !67
  %168 = icmp eq ptr %167, null
  br i1 %168, label %297, label %172, !prof !114

169:                                              ; preds = %274
  %170 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !67
  %171 = icmp eq ptr %170, null
  br i1 %171, label %297, label %277, !prof !114

172:                                              ; preds = %166, %274
  %173 = phi ptr [ %176, %274 ], [ %167, %166 ]
  %174 = phi i8 [ %275, %274 ], [ 0, %166 ]
  %175 = getelementptr inbounds %struct.cgraph_node, ptr %173, i64 0, i32 3
  %176 = load ptr, ptr %175, align 8, !tbaa !141
  %177 = getelementptr inbounds %struct.cgraph_node, ptr %173, i64 0, i32 16
  %178 = load ptr, ptr %177, align 8, !tbaa !70
  %179 = icmp eq ptr %178, null
  br i1 %179, label %193, label %180, !prof !142

180:                                              ; preds = %172
  %181 = getelementptr inbounds %struct.cgraph_node, ptr %173, i64 0, i32 27
  %182 = load i16, ptr %181, align 4
  %183 = and i16 %182, 8
  %184 = icmp eq i16 %183, 0
  br i1 %184, label %185, label %274, !prof !122

185:                                              ; preds = %180
  tail call void @cgraph_node_remove_callees(ptr noundef nonnull %173) #14
  %186 = load i16, ptr %181, align 4
  %187 = and i16 %186, -33
  store i16 %187, ptr %181, align 4
  %188 = getelementptr inbounds %struct.cgraph_node, ptr %173, i64 0, i32 18, i32 2
  %189 = load i8, ptr %188, align 8
  %190 = and i8 %189, -9
  store i8 %190, ptr %188, align 8
  %191 = load ptr, ptr %177, align 8, !tbaa !70
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %274, !prof !114

193:                                              ; preds = %172, %185
  %194 = getelementptr inbounds %struct.cgraph_node, ptr %173, i64 0, i32 19, i32 2
  store ptr null, ptr %194, align 8, !tbaa !118
  br i1 %3, label %198, label %195, !prof !143

195:                                              ; preds = %193
  %196 = tail call ptr @cgraph_node_name(ptr noundef nonnull %173) #14
  %197 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef %196) #15
  br label %198

198:                                              ; preds = %195, %193
  %199 = getelementptr inbounds %struct.cgraph_node, ptr %173, i64 0, i32 27
  %200 = load i16, ptr %199, align 4
  %201 = and i16 %200, 32
  %202 = icmp eq i16 %201, 0
  br i1 %202, label %211, label %203, !prof !143

203:                                              ; preds = %198
  %204 = icmp ne i8 %0, 0
  %205 = load ptr, ptr %173, align 8, !tbaa !116
  %206 = getelementptr inbounds %struct.tree_decl_common, ptr %205, i64 0, i32 2
  %207 = load i64, ptr %206, align 8
  %208 = and i64 %207, 33554432
  %209 = icmp eq i64 %208, 0
  %210 = or i1 %204, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %203, %198
  tail call void @cgraph_remove_node(ptr noundef nonnull %173) #14
  br label %274

212:                                              ; preds = %203
  %213 = getelementptr inbounds %struct.cgraph_node, ptr %173, i64 0, i32 2
  %214 = load ptr, ptr %213, align 8, !tbaa !67
  %215 = icmp eq ptr %214, null
  br i1 %215, label %227, label %220

216:                                              ; preds = %220
  %217 = getelementptr inbounds %struct.cgraph_edge, ptr %221, i64 0, i32 4
  %218 = load ptr, ptr %217, align 8, !tbaa !67
  %219 = icmp eq ptr %218, null
  br i1 %219, label %227, label %220, !llvm.loop !144

220:                                              ; preds = %212, %216
  %221 = phi ptr [ %218, %216 ], [ %214, %212 ]
  %222 = getelementptr inbounds %struct.cgraph_edge, ptr %221, i64 0, i32 1
  %223 = load ptr, ptr %222, align 8, !tbaa !95
  %224 = getelementptr inbounds %struct.cgraph_node, ptr %223, i64 0, i32 16
  %225 = load ptr, ptr %224, align 8, !tbaa !70
  %226 = icmp eq ptr %225, null
  br i1 %226, label %216, label %230

227:                                              ; preds = %216, %212
  %228 = and i16 %200, 1
  %229 = icmp eq i16 %228, 0
  br i1 %229, label %273, label %230

230:                                              ; preds = %220, %227
  %231 = getelementptr inbounds %struct.cgraph_node, ptr %173, i64 0, i32 11
  %232 = load ptr, ptr %231, align 8, !tbaa !67
  %233 = icmp eq ptr %232, null
  br i1 %233, label %243, label %238

234:                                              ; preds = %238
  %235 = getelementptr inbounds %struct.cgraph_node, ptr %239, i64 0, i32 9
  %236 = load ptr, ptr %235, align 8, !tbaa !67
  %237 = icmp eq ptr %236, null
  br i1 %237, label %243, label %238, !llvm.loop !145

238:                                              ; preds = %230, %234
  %239 = phi ptr [ %236, %234 ], [ %232, %230 ]
  %240 = getelementptr inbounds %struct.cgraph_node, ptr %239, i64 0, i32 16
  %241 = load ptr, ptr %240, align 8, !tbaa !70
  %242 = icmp eq ptr %241, null
  br i1 %242, label %234, label %249

243:                                              ; preds = %234, %230
  tail call void @cgraph_release_function_body(ptr noundef nonnull %173) #14
  %244 = load i16, ptr %199, align 4
  %245 = and i16 %244, -33
  store i16 %245, ptr %199, align 4
  %246 = getelementptr inbounds %struct.cgraph_node, ptr %173, i64 0, i32 18, i32 2
  %247 = load i8, ptr %246, align 8
  %248 = and i8 %247, -9
  store i8 %248, ptr %246, align 8
  br label %249

249:                                              ; preds = %238, %243
  tail call void @cgraph_node_remove_callees(ptr noundef nonnull %173) #14
  %250 = getelementptr inbounds %struct.cgraph_node, ptr %173, i64 0, i32 10
  %251 = load ptr, ptr %250, align 8, !tbaa !146
  %252 = icmp eq ptr %251, null
  br i1 %252, label %257, label %253

253:                                              ; preds = %249
  %254 = getelementptr inbounds %struct.cgraph_node, ptr %173, i64 0, i32 9
  %255 = load ptr, ptr %254, align 8, !tbaa !147
  %256 = getelementptr inbounds %struct.cgraph_node, ptr %251, i64 0, i32 9
  store ptr %255, ptr %256, align 8, !tbaa !147
  br label %265

257:                                              ; preds = %249
  %258 = getelementptr inbounds %struct.cgraph_node, ptr %173, i64 0, i32 12
  %259 = load ptr, ptr %258, align 8, !tbaa !136
  %260 = icmp eq ptr %259, null
  %261 = getelementptr inbounds %struct.cgraph_node, ptr %173, i64 0, i32 9
  %262 = load ptr, ptr %261, align 8, !tbaa !147
  br i1 %260, label %265, label %263

263:                                              ; preds = %257
  %264 = getelementptr inbounds %struct.cgraph_node, ptr %259, i64 0, i32 11
  store ptr %262, ptr %264, align 8, !tbaa !148
  br label %265

265:                                              ; preds = %257, %263, %253
  %266 = phi ptr [ %262, %263 ], [ %255, %253 ], [ %262, %257 ]
  %267 = getelementptr inbounds %struct.cgraph_node, ptr %173, i64 0, i32 9
  %268 = icmp eq ptr %266, null
  br i1 %268, label %271, label %269

269:                                              ; preds = %265
  %270 = getelementptr inbounds %struct.cgraph_node, ptr %266, i64 0, i32 10
  store ptr %251, ptr %270, align 8, !tbaa !146
  br label %271

271:                                              ; preds = %269, %265
  %272 = getelementptr inbounds %struct.cgraph_node, ptr %173, i64 0, i32 12
  store ptr null, ptr %272, align 8, !tbaa !136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %267, i8 0, i64 16, i1 false)
  br label %274

273:                                              ; preds = %227
  tail call void @cgraph_remove_node(ptr noundef nonnull %173) #14
  br label %274

274:                                              ; preds = %180, %211, %273, %271, %185
  %275 = phi i8 [ %174, %185 ], [ 1, %271 ], [ 1, %273 ], [ 1, %211 ], [ %174, %180 ]
  %276 = icmp eq ptr %176, null
  br i1 %276, label %169, label %172, !prof !120, !llvm.loop !149

277:                                              ; preds = %169, %292
  %278 = phi ptr [ %295, %292 ], [ %170, %169 ]
  %279 = getelementptr inbounds %struct.cgraph_node, ptr %278, i64 0, i32 19, i32 2
  %280 = load ptr, ptr %279, align 8, !tbaa !118
  %281 = icmp eq ptr %280, null
  br i1 %281, label %292, label %282, !prof !150

282:                                              ; preds = %277
  %283 = getelementptr inbounds %struct.cgraph_node, ptr %278, i64 0, i32 2
  %284 = load ptr, ptr %283, align 8, !tbaa !88
  %285 = icmp eq ptr %284, null
  br i1 %285, label %286, label %292, !prof !69

286:                                              ; preds = %282
  %287 = getelementptr inbounds %struct.cgraph_node, ptr %278, i64 0, i32 11
  %288 = load ptr, ptr %287, align 8, !tbaa !148
  %289 = icmp eq ptr %288, null
  br i1 %289, label %290, label %291

290:                                              ; preds = %286
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 293, ptr noundef nonnull @.str.2) #14
  br label %291

291:                                              ; preds = %286, %290
  store ptr null, ptr %279, align 8, !tbaa !118
  tail call fastcc void @update_inlined_to_pointer(ptr noundef nonnull %278, ptr noundef nonnull %278) #15
  br label %292

292:                                              ; preds = %291, %282, %277
  %293 = getelementptr inbounds %struct.cgraph_node, ptr %278, i64 0, i32 16
  store ptr null, ptr %293, align 8, !tbaa !70
  %294 = getelementptr inbounds %struct.cgraph_node, ptr %278, i64 0, i32 3
  %295 = load ptr, ptr %294, align 8, !tbaa !67
  %296 = icmp eq ptr %295, null
  br i1 %296, label %297, label %277, !prof !139, !llvm.loop !151

297:                                              ; preds = %292, %6, %166, %169
  %298 = phi i8 [ %275, %169 ], [ 0, %166 ], [ 0, %6 ], [ %275, %292 ]
  tail call void @remove_unreachable_alias_pairs() #14
  ret i8 %298
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @cgraph_can_remove_if_no_direct_calls_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !152 !PGOFuncName !153 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %18, !prof !154

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !116
  %8 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 512
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18, !prof !119

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
define internal fastcc void @update_inlined_to_pointer(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #7 !prof !155 !PGOFuncName !156 {
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2, %14
  %7 = phi ptr [ %16, %14 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.cgraph_edge, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !124
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 19, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !118
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  store ptr %1, ptr %10, align 8, !tbaa !118
  tail call fastcc void @update_inlined_to_pointer(ptr noundef nonnull %9, ptr noundef %1) #15
  br label %14

14:                                               ; preds = %6, %13
  %15 = getelementptr inbounds %struct.cgraph_edge, ptr %7, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !67
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %6, !llvm.loop !157

18:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: optsize
declare void @remove_unreachable_alias_pairs() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @local_function_and_variable_visibility() #0 !prof !158 !PGOFuncName !159 {
  %1 = load i32, ptr @flag_whole_program, align 4, !tbaa !63
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_whole_program_function_and_variable_visibility() #8 !prof !160 !PGOFuncName !161 {
  %1 = load i32, ptr @flag_ltrans, align 4, !tbaa !63
  %2 = icmp eq i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @whole_program_function_and_variable_visibility() #0 !prof !158 !PGOFuncName !162 {
  %1 = load i32, ptr @flag_whole_program, align 4, !tbaa !63
  %2 = trunc i32 %1 to i8
  tail call fastcc void @function_and_variable_visibility(i8 noundef zeroext %2) #15
  %3 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !67
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8, !prof !69

5:                                                ; preds = %24, %0
  %6 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !67
  %7 = icmp eq ptr %6, null
  br i1 %7, label %45, label %28, !prof !69

8:                                                ; preds = %0, %24
  %9 = phi ptr [ %26, %24 ], [ %3, %0 ]
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 18, i32 2
  %11 = load i8, ptr %10, align 8
  %12 = and i8 %11, 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %24, label %14, !prof !163

14:                                               ; preds = %8
  %15 = load ptr, ptr %9, align 8, !tbaa !116
  %16 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %15, i64 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 512
  %19 = icmp ne i32 %18, 0
  %20 = and i8 %11, 4
  %21 = icmp eq i8 %20, 0
  %22 = or i1 %21, %19
  br i1 %22, label %24, label %23, !prof !164

23:                                               ; preds = %14
  tail call void @cgraph_mark_needed_node(ptr noundef nonnull %9) #14
  br label %24

24:                                               ; preds = %8, %14, %23
  %25 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !67
  %27 = icmp eq ptr %26, null
  br i1 %27, label %5, label %8, !prof !165, !llvm.loop !166

28:                                               ; preds = %5, %41
  %29 = phi ptr [ %43, %41 ], [ %6, %5 ]
  %30 = getelementptr inbounds %struct.varpool_node, ptr %29, i64 0, i32 5
  %31 = load i8, ptr %30, align 4
  %32 = and i8 %31, 32
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %41, label %34, !prof !167

34:                                               ; preds = %28
  %35 = load ptr, ptr %29, align 8, !tbaa !168
  %36 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %35, i64 0, i32 4
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 512
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41, !prof !170

40:                                               ; preds = %34
  tail call void @varpool_mark_needed_node(ptr noundef nonnull %29) #14
  br label %41

41:                                               ; preds = %28, %34, %40
  %42 = getelementptr inbounds %struct.varpool_node, ptr %29, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !67
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %28, !prof !171, !llvm.loop !172

45:                                               ; preds = %41, %5
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !67
  %47 = icmp eq ptr %46, null
  br i1 %47, label %69, label %48, !prof !170

48:                                               ; preds = %45
  %49 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 18, i64 1, ptr nonnull %46)
  %50 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !67
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
  %59 = load ptr, ptr @dump_file, align 8, !tbaa !67
  %60 = tail call ptr @varpool_node_name(ptr noundef nonnull %53) #14
  %61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef nonnull @.str.3, ptr noundef %60) #15
  br label %62

62:                                               ; preds = %52, %58
  %63 = getelementptr inbounds %struct.varpool_node, ptr %53, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !67
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %52, !llvm.loop !173

66:                                               ; preds = %62, %48
  %67 = load ptr, ptr @dump_file, align 8, !tbaa !67
  %68 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %67)
  br label %69

69:                                               ; preds = %66, %45
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cgraph_node_set_new() local_unnamed_addr #0 !prof !155 {
  %1 = tail call ptr @ggc_alloc_stat(i64 noundef 24) #14
  %2 = tail call ptr @htab_create_alloc(i64 noundef 10, ptr noundef nonnull @hash_cgraph_node_set_element, ptr noundef nonnull @eq_cgraph_node_set_element, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #14
  store ptr %2, ptr %1, align 8, !tbaa !174
  %3 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %1, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !176
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @hash_cgraph_node_set_element(ptr nocapture noundef readonly %0) #0 !prof !155 !PGOFuncName !177 {
  %2 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !67
  %3 = load ptr, ptr %0, align 8, !tbaa !178
  %4 = tail call i32 %2(ptr noundef %3) #14
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @eq_cgraph_node_set_element(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 !prof !155 !PGOFuncName !180 {
  %3 = load ptr, ptr %0, align 8, !tbaa !178
  %4 = load ptr, ptr %1, align 8, !tbaa !178
  %5 = icmp eq ptr %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @ggc_calloc(i64 noundef, i64 noundef) #2

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cgraph_node_set_add(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !155 {
  %3 = alloca %struct.cgraph_node_set_element_def, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  store ptr %1, ptr %3, align 8, !tbaa !178
  %4 = load ptr, ptr %0, align 8, !tbaa !174
  %5 = call ptr @htab_find_slot(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 1) #14
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %6, align 8, !tbaa !178
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !176
  %14 = getelementptr inbounds %struct.cgraph_node_set_element_def, ptr %6, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !181
  %16 = trunc i64 %15 to i32
  %17 = call fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr noundef %13, i32 noundef %16) #15
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %27, label %19

19:                                               ; preds = %11, %8
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 631, ptr noundef nonnull @.str.2) #14
  br label %27

20:                                               ; preds = %2
  %21 = call ptr @ggc_alloc_stat(i64 noundef 16) #14
  store ptr %1, ptr %21, align 8, !tbaa !178
  %22 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !176
  %24 = call fastcc i32 @VEC_cgraph_node_ptr_base_length(ptr noundef %23) #15
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.cgraph_node_set_element_def, ptr %21, i64 0, i32 1
  store i64 %25, ptr %26, align 8, !tbaa !181
  store ptr %21, ptr %5, align 8, !tbaa !67
  call fastcc void @VEC_cgraph_node_ptr_gc_safe_push(ptr noundef nonnull %22, ptr noundef %1) #15
  br label %27

27:                                               ; preds = %19, %11, %20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  ret void
}

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !155 !PGOFuncName !182 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_cgraph_node_ptr_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !155 !PGOFuncName !183 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !184
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_cgraph_node_ptr_gc_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !155 !PGOFuncName !186 {
  tail call fastcc void @VEC_cgraph_node_ptr_gc_reserve(ptr noundef %0) #15
  %3 = load ptr, ptr %0, align 8, !tbaa !67
  tail call fastcc void @VEC_cgraph_node_ptr_base_quick_push(ptr noundef %3, ptr noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cgraph_node_set_remove(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !155 {
  %3 = alloca %struct.cgraph_node_set_element_def, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  store ptr %1, ptr %3, align 8, !tbaa !178
  %4 = load ptr, ptr %0, align 8, !tbaa !174
  %5 = call ptr @htab_find_slot(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 0) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %35, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !67
  %9 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !176
  %11 = getelementptr inbounds %struct.cgraph_node_set_element_def, ptr %8, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !181
  %13 = trunc i64 %12 to i32
  %14 = call fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr noundef %10, i32 noundef %13) #15
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %18, label %16

16:                                               ; preds = %7
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 663, ptr noundef nonnull @.str.2) #14
  %17 = load ptr, ptr %9, align 8, !tbaa !176
  br label %18

18:                                               ; preds = %7, %16
  %19 = phi ptr [ %10, %7 ], [ %17, %16 ]
  %20 = call fastcc ptr @VEC_cgraph_node_ptr_base_pop(ptr noundef %19) #15
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %33, label %22

22:                                               ; preds = %18
  store ptr %20, ptr %3, align 8, !tbaa !178
  %23 = load ptr, ptr %0, align 8, !tbaa !174
  %24 = call ptr @htab_find_slot(ptr noundef %23, ptr noundef nonnull %3, i32 noundef 0) #14
  %25 = load ptr, ptr %24, align 8, !tbaa !67
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 673, ptr noundef nonnull @.str.2) #14
  br label %28

28:                                               ; preds = %22, %27
  %29 = load i64, ptr %11, align 8, !tbaa !181
  %30 = getelementptr inbounds %struct.cgraph_node_set_element_def, ptr %25, i64 0, i32 1
  store i64 %29, ptr %30, align 8, !tbaa !181
  %31 = load ptr, ptr %9, align 8, !tbaa !176
  %32 = trunc i64 %29 to i32
  call fastcc void @VEC_cgraph_node_ptr_base_replace(ptr noundef %31, i32 noundef %32, ptr noundef %20) #15
  br label %33

33:                                               ; preds = %28, %18
  %34 = load ptr, ptr %0, align 8, !tbaa !174
  call void @htab_clear_slot(ptr noundef %34, ptr noundef nonnull %5) #14
  call void @ggc_free(ptr noundef nonnull %8) #14
  br label %35

35:                                               ; preds = %2, %33
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_cgraph_node_ptr_base_pop(ptr nocapture noundef %0) unnamed_addr #9 !prof !155 !PGOFuncName !187 {
  %2 = load i32, ptr %0, align 8, !tbaa !184
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !184
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_cgraph_node_ptr_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #9 !prof !155 !PGOFuncName !188 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !67
  ret void
}

; Function Attrs: optsize
declare void @htab_clear_slot(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local { ptr, i32 } @cgraph_node_set_find(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !155 {
  %3 = alloca %struct.cgraph_node_set_element_def, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  store ptr %1, ptr %3, align 8, !tbaa !178
  %4 = load ptr, ptr %0, align 8, !tbaa !174
  %5 = call ptr @htab_find_slot(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 0) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !67
  %9 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !176
  %11 = getelementptr inbounds %struct.cgraph_node_set_element_def, ptr %8, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !181
  %13 = trunc i64 %12 to i32
  %14 = call fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr noundef %10, i32 noundef %13) #15
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %19, label %16

16:                                               ; preds = %7
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 705, ptr noundef nonnull @.str.2) #14
  %17 = load i64, ptr %11, align 8, !tbaa !181
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
define dso_local void @dump_cgraph_node_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !155 {
  %3 = alloca %struct.cgraph_node_set_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %4 = tail call fastcc ptr @csi_start(ptr noundef %1) #15
  store ptr %4, ptr %3, align 8, !tbaa.struct !189
  %5 = getelementptr inbounds i8, ptr %3, i64 8
  store i32 0, ptr %5, align 8, !tbaa.struct !190
  %6 = tail call fastcc zeroext i8 @csi_end_p(ptr %4, i32 0) #15, !range !85
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
  %14 = tail call fastcc zeroext i8 @csi_end_p(ptr %12, i32 %13) #15, !range !85
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %8, label %16, !llvm.loop !191

16:                                               ; preds = %8, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @csi_start(ptr noundef %0) unnamed_addr #10 !prof !155 !PGOFuncName !192 {
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @csi_end_p(ptr nocapture readonly %0, i32 %1) unnamed_addr #6 !prof !155 !PGOFuncName !193 {
  %3 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !176
  %5 = tail call fastcc i32 @VEC_cgraph_node_ptr_base_length(ptr noundef %4) #15
  %6 = icmp ule i32 %5, %1
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @csi_node(ptr nocapture readonly %0, i32 %1) unnamed_addr #6 !prof !155 !PGOFuncName !194 {
  %3 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !176
  %5 = tail call fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr noundef %4, i32 noundef %1) #15
  ret ptr %5
}

; Function Attrs: optsize
declare void @dump_cgraph_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @csi_next(ptr nocapture noundef %0) unnamed_addr #9 !prof !155 !PGOFuncName !195 {
  %2 = getelementptr inbounds %struct.cgraph_node_set_iterator, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !196
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !196
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_cgraph_node_set(ptr noundef %0) local_unnamed_addr #0 !prof !155 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !67
  tail call void @dump_cgraph_node_set(ptr noundef %2, ptr noundef %0) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @function_and_variable_visibility(i8 noundef zeroext %0) unnamed_addr #0 !prof !160 !PGOFuncName !198 {
  %2 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !67
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !199

4:                                                ; preds = %1
  %5 = icmp eq i8 %0, 0
  br label %9

6:                                                ; preds = %117, %1
  %7 = load ptr, ptr @varpool_nodes, align 8, !tbaa !67
  %8 = icmp eq ptr %7, null
  br i1 %8, label %126, label %132, !prof !199

9:                                                ; preds = %4, %117
  %10 = phi ptr [ %2, %4 ], [ %124, %117 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !116
  %12 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %11, i64 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 512
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16, !prof !200

16:                                               ; preds = %9
  %17 = load i64, ptr %11, align 8
  %18 = and i64 %17, 134217728
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = and i32 %13, -513
  store i32 %21, ptr %12, align 8
  %22 = load ptr, ptr %10, align 8, !tbaa !116
  br label %23

23:                                               ; preds = %20, %16, %9
  %24 = phi ptr [ %22, %20 ], [ %11, %16 ], [ %11, %9 ]
  %25 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 14
  %26 = load ptr, ptr %25, align 8, !tbaa !133
  %27 = icmp eq ptr %26, null
  br i1 %27, label %47, label %28, !prof !200

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.tree_decl_common, ptr %24, i64 0, i32 2
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 33554432
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %28, %41
  %34 = phi ptr [ %43, %41 ], [ %10, %28 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !116
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
  %43 = load ptr, ptr %42, align 8, !tbaa !133
  store ptr null, ptr %42, align 8, !tbaa !133
  %44 = icmp eq ptr %43, %10
  br i1 %44, label %45, label %33, !llvm.loop !201

45:                                               ; preds = %41
  %46 = load ptr, ptr %10, align 8, !tbaa !116
  br label %47

47:                                               ; preds = %45, %28, %23
  %48 = phi ptr [ %46, %45 ], [ %24, %28 ], [ %24, %23 ]
  %49 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %48, i64 0, i32 4
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 640
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %63, label %53, !prof !202

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
  %64 = tail call fastcc zeroext i8 @cgraph_externally_visible_p(ptr noundef nonnull %10, i8 noundef zeroext %0) #15, !range !85
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %75, label %66, !prof !203

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 19, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !118
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70, !prof !204

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
  br i1 %82, label %98, label %83, !prof !205

83:                                               ; preds = %75
  %84 = load ptr, ptr %10, align 8, !tbaa !116
  %85 = getelementptr inbounds %struct.tree_decl_common, ptr %84, i64 0, i32 2
  %86 = load i64, ptr %85, align 8
  %87 = and i64 %86, 33554432
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %98, !prof !206

89:                                               ; preds = %83
  br i1 %5, label %90, label %96, !prof !206

90:                                               ; preds = %89
  %91 = load i64, ptr %84, align 8
  %92 = and i64 %91, 134217728
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %96, label %94, !prof !206

94:                                               ; preds = %90
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 404, ptr noundef nonnull @.str.2) #14
  %95 = load ptr, ptr %10, align 8, !tbaa !116
  br label %96

96:                                               ; preds = %89, %90, %94
  %97 = phi ptr [ %84, %89 ], [ %84, %90 ], [ %95, %94 ]
  tail call void @cgraph_make_decl_local(ptr noundef %97) #14
  br label %98

98:                                               ; preds = %71, %96, %83, %75
  %99 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 18, i32 2
  %100 = tail call fastcc zeroext i8 @cgraph_only_called_directly_p(ptr noundef nonnull %10) #15, !range !85
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %117, label %102, !prof !207

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 27
  %104 = load i16, ptr %103, align 4
  %105 = and i16 %104, 32
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %117, label %107, !prof !205

107:                                              ; preds = %102
  %108 = load ptr, ptr %10, align 8, !tbaa !116
  %109 = getelementptr inbounds %struct.tree_decl_common, ptr %108, i64 0, i32 2
  %110 = load i64, ptr %109, align 8
  %111 = and i64 %110, 33554432
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %117, !prof !206

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
  %124 = load ptr, ptr %123, align 8, !tbaa !67
  %125 = icmp eq ptr %124, null
  br i1 %125, label %6, label %9, !prof !208, !llvm.loop !209

126:                                              ; preds = %188, %6
  %127 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !67
  %128 = icmp eq ptr %127, null
  br i1 %128, label %252, label %129, !prof !199

129:                                              ; preds = %126
  %130 = icmp ne i8 %0, 0
  %131 = icmp eq i8 %0, 0
  br label %192

132:                                              ; preds = %6, %188
  %133 = phi ptr [ %190, %188 ], [ %7, %6 ]
  %134 = load ptr, ptr %133, align 8, !tbaa !168
  %135 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %134, i64 0, i32 4
  %136 = load i32, ptr %135, align 8
  %137 = and i32 %136, 128
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %152, label %139, !prof !210

139:                                              ; preds = %132
  %140 = load i64, ptr %134, align 8
  %141 = and i64 %140, 134217728
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.tree_decl_common, ptr %134, i64 0, i32 2
  %145 = load i64, ptr %144, align 8
  %146 = and i64 %145, 33554432
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 416, ptr noundef nonnull @.str.2) #14
  %149 = load ptr, ptr %133, align 8, !tbaa !168
  %150 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %149, i64 0, i32 4
  %151 = load i32, ptr %150, align 8
  br label %152

152:                                              ; preds = %132, %139, %143, %148
  %153 = phi i32 [ %136, %132 ], [ %136, %139 ], [ %136, %143 ], [ %151, %148 ]
  %154 = phi ptr [ %134, %132 ], [ %134, %139 ], [ %134, %143 ], [ %149, %148 ]
  %155 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %154, i64 0, i32 4
  %156 = and i32 %153, 8
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %188, label %158, !prof !211

158:                                              ; preds = %152
  %159 = load i64, ptr %154, align 8
  %160 = and i64 %159, 134217728
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %167, !prof !212

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.tree_decl_common, ptr %154, i64 0, i32 2
  %164 = load i64, ptr %163, align 8
  %165 = and i64 %164, 33554432
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %186, label %167

167:                                              ; preds = %162, %158
  %168 = getelementptr inbounds %struct.tree_decl_common, ptr %154, i64 0, i32 5
  %169 = load ptr, ptr %168, align 8, !tbaa !213
  %170 = icmp eq ptr %169, null
  %171 = load ptr, ptr @global_trees, align 16
  %172 = icmp eq ptr %169, %171
  %173 = select i1 %170, i1 true, i1 %172
  %174 = and i32 %153, 128
  %175 = icmp eq i32 %174, 0
  %176 = and i1 %175, %173
  br i1 %176, label %177, label %186, !prof !214

177:                                              ; preds = %167
  %178 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %154, i64 0, i32 2
  %179 = load ptr, ptr %178, align 8, !tbaa !213
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %186, !prof !215

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.tree_common, ptr %154, i64 0, i32 2
  %183 = load ptr, ptr %182, align 8, !tbaa !213
  %184 = load i64, ptr %183, align 8
  %185 = icmp ult i64 %184, 72057594037927936
  br i1 %185, label %188, label %186, !prof !215

186:                                              ; preds = %167, %181, %177, %162
  %187 = and i32 %153, -9
  store i32 %187, ptr %155, align 8
  br label %188

188:                                              ; preds = %152, %181, %186
  %189 = getelementptr inbounds %struct.varpool_node, ptr %133, i64 0, i32 1
  %190 = load ptr, ptr %189, align 8, !tbaa !67
  %191 = icmp eq ptr %190, null
  br i1 %191, label %126, label %132, !prof !216, !llvm.loop !217

192:                                              ; preds = %129, %248
  %193 = phi ptr [ %127, %129 ], [ %250, %248 ]
  %194 = getelementptr inbounds %struct.varpool_node, ptr %193, i64 0, i32 5
  %195 = load i8, ptr %194, align 4
  %196 = and i8 %195, 8
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %248, label %198, !prof !218

198:                                              ; preds = %192
  %199 = and i8 %195, 1
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %224, label %201, !prof !218

201:                                              ; preds = %198
  %202 = load ptr, ptr %193, align 8, !tbaa !168
  %203 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %202, i64 0, i32 4
  %204 = load i32, ptr %203, align 8
  %205 = and i32 %204, 512
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %211, !prof !219

207:                                              ; preds = %201
  %208 = load i64, ptr %202, align 8
  %209 = and i64 %208, 134217728
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %224, label %211, !prof !220

211:                                              ; preds = %207, %201
  %212 = and i32 %204, 640
  %213 = icmp eq i32 %212, 0
  %214 = and i1 %130, %213
  br i1 %214, label %215, label %221, !prof !221

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.tree_decl_common, ptr %202, i64 0, i32 6
  %217 = load ptr, ptr %216, align 8, !tbaa !213
  %218 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.6, ptr noundef %217) #14
  %219 = icmp eq ptr %218, null
  %220 = load i8, ptr %194, align 4
  br i1 %219, label %224, label %221

221:                                              ; preds = %215, %211
  %222 = phi i8 [ %195, %211 ], [ %220, %215 ]
  %223 = or i8 %222, 32
  br label %227

224:                                              ; preds = %215, %207, %198
  %225 = phi i8 [ %220, %215 ], [ %195, %207 ], [ %195, %198 ]
  %226 = and i8 %225, -33
  br label %227

227:                                              ; preds = %224, %221
  %228 = phi i8 [ %226, %224 ], [ %223, %221 ]
  store i8 %228, ptr %194, align 4
  %229 = and i8 %228, 32
  %230 = icmp eq i8 %229, 0
  %231 = load ptr, ptr %193, align 8, !tbaa !168
  br i1 %230, label %232, label %242, !prof !220

232:                                              ; preds = %227
  br i1 %131, label %233, label %239, !prof !204

233:                                              ; preds = %232
  %234 = load i64, ptr %231, align 8
  %235 = and i64 %234, 134217728
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %239, label %237, !prof !204

237:                                              ; preds = %233
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 459, ptr noundef nonnull @.str.2) #14
  %238 = load ptr, ptr %193, align 8, !tbaa !168
  br label %239

239:                                              ; preds = %232, %233, %237
  %240 = phi ptr [ %231, %232 ], [ %231, %233 ], [ %238, %237 ]
  tail call void @cgraph_make_decl_local(ptr noundef %240) #14
  %241 = load ptr, ptr %193, align 8, !tbaa !168
  br label %242

242:                                              ; preds = %239, %227
  %243 = phi ptr [ %241, %239 ], [ %231, %227 ]
  %244 = load i64, ptr %243, align 8
  %245 = and i64 %244, 67108864
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %247, label %248, !prof !218

247:                                              ; preds = %242
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 462, ptr noundef nonnull @.str.2) #14
  br label %248

248:                                              ; preds = %247, %242, %192
  %249 = getelementptr inbounds %struct.varpool_node, ptr %193, i64 0, i32 2
  %250 = load ptr, ptr %249, align 8, !tbaa !67
  %251 = icmp eq ptr %250, null
  br i1 %251, label %252, label %192, !prof !222, !llvm.loop !223

252:                                              ; preds = %248, %126
  %253 = load ptr, ptr @dump_file, align 8, !tbaa !67
  %254 = icmp eq ptr %253, null
  br i1 %254, label %318, label %255, !prof !224

255:                                              ; preds = %252
  %256 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 25, i64 1, ptr nonnull %253)
  %257 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !67
  %258 = icmp eq ptr %257, null
  br i1 %258, label %273, label %259

259:                                              ; preds = %255, %269
  %260 = phi ptr [ %271, %269 ], [ %257, %255 ]
  %261 = getelementptr inbounds %struct.cgraph_node, ptr %260, i64 0, i32 18, i32 2
  %262 = load i8, ptr %261, align 8
  %263 = and i8 %262, 1
  %264 = icmp eq i8 %263, 0
  br i1 %264, label %269, label %265

265:                                              ; preds = %259
  %266 = load ptr, ptr @dump_file, align 8, !tbaa !67
  %267 = tail call ptr @cgraph_node_name(ptr noundef nonnull %260) #14
  %268 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %266, ptr noundef nonnull @.str.3, ptr noundef %267) #15
  br label %269

269:                                              ; preds = %259, %265
  %270 = getelementptr inbounds %struct.cgraph_node, ptr %260, i64 0, i32 3
  %271 = load ptr, ptr %270, align 8, !tbaa !67
  %272 = icmp eq ptr %271, null
  br i1 %272, label %273, label %259, !llvm.loop !225

273:                                              ; preds = %269, %255
  %274 = load ptr, ptr @dump_file, align 8, !tbaa !67
  %275 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %274)
  %276 = load ptr, ptr @dump_file, align 8, !tbaa !67
  %277 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 38, i64 1, ptr %276)
  %278 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !67
  %279 = icmp eq ptr %278, null
  br i1 %279, label %294, label %280

280:                                              ; preds = %273, %290
  %281 = phi ptr [ %292, %290 ], [ %278, %273 ]
  %282 = getelementptr inbounds %struct.cgraph_node, ptr %281, i64 0, i32 18, i32 2
  %283 = load i8, ptr %282, align 8
  %284 = and i8 %283, 2
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %290, label %286

286:                                              ; preds = %280
  %287 = load ptr, ptr @dump_file, align 8, !tbaa !67
  %288 = tail call ptr @cgraph_node_name(ptr noundef nonnull %281) #14
  %289 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %287, ptr noundef nonnull @.str.3, ptr noundef %288) #15
  br label %290

290:                                              ; preds = %280, %286
  %291 = getelementptr inbounds %struct.cgraph_node, ptr %281, i64 0, i32 3
  %292 = load ptr, ptr %291, align 8, !tbaa !67
  %293 = icmp eq ptr %292, null
  br i1 %293, label %294, label %280, !llvm.loop !226

294:                                              ; preds = %290, %273
  %295 = load ptr, ptr @dump_file, align 8, !tbaa !67
  %296 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %295)
  %297 = load ptr, ptr @dump_file, align 8, !tbaa !67
  %298 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 38, i64 1, ptr %297)
  %299 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !67
  %300 = icmp eq ptr %299, null
  br i1 %300, label %315, label %301

301:                                              ; preds = %294, %311
  %302 = phi ptr [ %313, %311 ], [ %299, %294 ]
  %303 = getelementptr inbounds %struct.varpool_node, ptr %302, i64 0, i32 5
  %304 = load i8, ptr %303, align 4
  %305 = and i8 %304, 32
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %311, label %307

307:                                              ; preds = %301
  %308 = load ptr, ptr @dump_file, align 8, !tbaa !67
  %309 = tail call ptr @varpool_node_name(ptr noundef nonnull %302) #14
  %310 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %308, ptr noundef nonnull @.str.3, ptr noundef %309) #15
  br label %311

311:                                              ; preds = %301, %307
  %312 = getelementptr inbounds %struct.varpool_node, ptr %302, i64 0, i32 2
  %313 = load ptr, ptr %312, align 8, !tbaa !67
  %314 = icmp eq ptr %313, null
  br i1 %314, label %315, label %301, !llvm.loop !227

315:                                              ; preds = %311, %294
  %316 = load ptr, ptr @dump_file, align 8, !tbaa !67
  %317 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %316)
  br label %318

318:                                              ; preds = %315, %252
  store i8 1, ptr @cgraph_function_flags_ready, align 1, !tbaa !213
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @cgraph_externally_visible_p(ptr noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !228 !PGOFuncName !229 {
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 2
  %4 = load i8, ptr %3, align 8
  %5 = and i8 %4, 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %62, label %7, !prof !230

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !116
  %9 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %8, i64 0, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 512
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %22, !prof !231

13:                                               ; preds = %7
  %14 = load i64, ptr %8, align 8
  %15 = and i64 %14, 134217728
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %62, label %17, !prof !232

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.tree_decl_common, ptr %8, i64 0, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 33554432
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %62, !prof !204

22:                                               ; preds = %17, %7
  %23 = icmp eq i8 %1, 0
  br i1 %23, label %62, label %24, !prof !204

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
  %37 = load ptr, ptr %36, align 8, !tbaa !133
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
  %49 = load ptr, ptr %48, align 8, !tbaa !133
  %50 = icmp eq ptr %49, %0
  br i1 %50, label %51, label %41, !llvm.loop !233

51:                                               ; preds = %47, %35, %29
  %52 = getelementptr inbounds %struct.tree_decl_minimal, ptr %8, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !213
  %54 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 56), align 16, !tbaa !67
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.tree_decl_common, ptr %8, i64 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !213
  %59 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.6, ptr noundef %58) #14
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

; Function Attrs: optsize
declare void @cgraph_mark_needed_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @varpool_mark_needed_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_cgraph_node_ptr_gc_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !155 !PGOFuncName !234 {
  %2 = load ptr, ptr %0, align 8, !tbaa !67
  %3 = tail call fastcc i32 @VEC_cgraph_node_ptr_base_space(ptr noundef %2) #15
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_p_reserve(ptr noundef %2, i32 noundef 1) #14
  store ptr %6, ptr %0, align 8, !tbaa !67
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_cgraph_node_ptr_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !155 !PGOFuncName !235 {
  %3 = load i32, ptr %0, align 8, !tbaa !184
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !184
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_cgraph_node_ptr_base_space(ptr noundef readonly %0) unnamed_addr #3 !prof !155 !PGOFuncName !236 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !237
  %6 = load i32, ptr %0, align 8, !tbaa !184
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!61}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60}
!35 = !{ptr @cgraph_postorder, ptr @xcalloc, i64 3}
!36 = !{ptr @cgraph_postorder, ptr @cgraph_only_called_directly_p, i64 153}
!37 = !{ptr @cgraph_postorder, ptr @free, i64 3}
!38 = !{ptr @cgraph_remove_unreachable_nodes, ptr @fwrite, i64 1}
!39 = !{ptr @cgraph_remove_unreachable_nodes, ptr @cgraph_can_remove_if_no_direct_calls_p, i64 1266}
!40 = !{ptr @cgraph_remove_unreachable_nodes, ptr @fancy_abort, i64 2}
!41 = !{ptr @cgraph_remove_unreachable_nodes, ptr @gimple_has_body_p, i64 103}
!42 = !{ptr @cgraph_remove_unreachable_nodes, ptr @cgraph_node_remove_callees, i64 1}
!43 = !{ptr @cgraph_remove_unreachable_nodes, ptr @cgraph_node_name, i64 1}
!44 = !{ptr @cgraph_remove_unreachable_nodes, ptr @fprintf, i64 1}
!45 = !{ptr @cgraph_remove_unreachable_nodes, ptr @cgraph_remove_node, i64 554}
!46 = !{ptr @cgraph_remove_unreachable_nodes, ptr @update_inlined_to_pointer, i64 1}
!47 = !{ptr @cgraph_remove_unreachable_nodes, ptr @remove_unreachable_alias_pairs, i64 9}
!48 = !{ptr @local_function_and_variable_visibility, ptr @function_and_variable_visibility, i64 1}
!49 = !{ptr @whole_program_function_and_variable_visibility, ptr @function_and_variable_visibility, i64 1}
!50 = !{ptr @whole_program_function_and_variable_visibility, ptr @cgraph_mark_needed_node, i64 18}
!51 = !{ptr @whole_program_function_and_variable_visibility, ptr @varpool_mark_needed_node, i64 1}
!52 = !{ptr @whole_program_function_and_variable_visibility, ptr @varpool_node_name, i64 3}
!53 = !{ptr @whole_program_function_and_variable_visibility, ptr @fprintf, i64 3}
!54 = !{ptr @function_and_variable_visibility, ptr @fancy_abort, i64 8}
!55 = !{ptr @function_and_variable_visibility, ptr @cgraph_externally_visible_p, i64 510}
!56 = !{ptr @function_and_variable_visibility, ptr @cgraph_make_decl_local, i64 52}
!57 = !{ptr @function_and_variable_visibility, ptr @cgraph_only_called_directly_p, i64 510}
!58 = !{ptr @function_and_variable_visibility, ptr @cgraph_node_name, i64 10}
!59 = !{ptr @function_and_variable_visibility, ptr @fprintf, i64 15}
!60 = !{ptr @function_and_variable_visibility, ptr @varpool_node_name, i64 5}
!61 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!62 = !{!"function_entry_count", i64 3}
!63 = !{!64, !64, i64 0}
!64 = !{!"int", !65, i64 0}
!65 = !{!"omnipotent char", !66, i64 0}
!66 = !{!"Simple C/C++ TBAA"}
!67 = !{!68, !68, i64 0}
!68 = !{!"any pointer", !65, i64 0}
!69 = !{!"branch_weights", i32 1, i32 127}
!70 = !{!71, !68, i64 128}
!71 = !{!"cgraph_node", !68, i64 0, !68, i64 8, !68, i64 16, !68, i64 24, !68, i64 32, !68, i64 40, !68, i64 48, !68, i64 56, !68, i64 64, !68, i64 72, !68, i64 80, !68, i64 88, !68, i64 96, !68, i64 104, !68, i64 112, !68, i64 120, !68, i64 128, !68, i64 136, !72, i64 144, !75, i64 184, !76, i64 224, !77, i64 232, !78, i64 256, !74, i64 288, !64, i64 296, !64, i64 300, !64, i64 304, !64, i64 308, !64, i64 308, !64, i64 308, !64, i64 308, !64, i64 308, !64, i64 308, !64, i64 308, !64, i64 308, !64, i64 309, !64, i64 309}
!72 = !{!"cgraph_local_info", !68, i64 0, !73, i64 8, !64, i64 32, !64, i64 32, !64, i64 32, !64, i64 32, !64, i64 32, !64, i64 32, !64, i64 32, !64, i64 32}
!73 = !{!"inline_summary", !74, i64 0, !64, i64 8, !64, i64 12, !64, i64 16, !64, i64 20}
!74 = !{!"long", !65, i64 0}
!75 = !{!"cgraph_global_info", !74, i64 0, !74, i64 8, !68, i64 16, !64, i64 24, !64, i64 28, !64, i64 32, !65, i64 36}
!76 = !{!"cgraph_rtl_info", !64, i64 0}
!77 = !{!"cgraph_clone_info", !68, i64 0, !68, i64 8, !68, i64 16}
!78 = !{!"cgraph_thunk_info", !74, i64 0, !74, i64 8, !68, i64 16, !65, i64 24, !65, i64 25, !65, i64 26}
!79 = !{!"branch_weights", i32 127, i32 8353}
!80 = distinct !{!80, !81}
!81 = !{!"llvm.loop.mustprogress"}
!82 = !{!"branch_weights", i32 1, i32 223}
!83 = !{!"branch_weights", i32 350, i32 180}
!84 = !{!"branch_weights", i32 205, i32 146}
!85 = !{i8 0, i8 2}
!86 = !{!"branch_weights", i32 55, i32 151}
!87 = !{!"branch_weights", i32 55, i32 1}
!88 = !{!71, !68, i64 16}
!89 = !{!"branch_weights", i32 29, i32 172}
!90 = !{!"branch_weights", i32 247, i32 207436}
!91 = !{!92, !68, i64 32}
!92 = !{!"cgraph_edge", !74, i64 0, !68, i64 8, !68, i64 16, !68, i64 24, !68, i64 32, !68, i64 40, !68, i64 48, !68, i64 56, !68, i64 64, !64, i64 72, !64, i64 76, !64, i64 80, !64, i64 84, !93, i64 88, !64, i64 90, !64, i64 90, !64, i64 90}
!93 = !{!"short", !65, i64 0}
!94 = !{!"branch_weights", i32 219, i32 207218}
!95 = !{!92, !68, i64 8}
!96 = !{!"branch_weights", i32 66, i32 207371}
!97 = distinct !{!97, !81}
!98 = !{!"branch_weights", i32 19, i32 48}
!99 = !{!"branch_weights", i32 585670667, i32 1561812981}
!100 = !{!"branch_weights", i32 200, i32 66}
!101 = !{!"branch_weights", i32 26296194, i32 2121187454}
!102 = distinct !{!102, !81}
!103 = !{!"branch_weights", i32 223, i32 16705}
!104 = distinct !{!104, !81}
!105 = !{!"branch_weights", i32 3, i32 4}
!106 = distinct !{!106, !81}
!107 = distinct !{!107, !81}
!108 = !{!"function_entry_count", i64 968}
!109 = !{!"ipa.c:cgraph_only_called_directly_p"}
!110 = !{!"branch_weights", i32 839, i32 131}
!111 = !{!"function_entry_count", i64 9}
!112 = !{!"branch_weights", i32 10, i32 1}
!113 = !{!"branch_weights", i32 1, i32 159}
!114 = !{!"branch_weights", i32 0, i32 -2147483648}
!115 = !{!"branch_weights", i32 343, i32 1065}
!116 = !{!71, !68, i64 0}
!117 = !{!"branch_weights", i32 343, i32 1}
!118 = !{!71, !68, i64 200}
!119 = !{!"branch_weights", i32 1065, i32 1}
!120 = !{!"branch_weights", i32 159, i32 22353}
!121 = distinct !{!121, !81}
!122 = !{!"branch_weights", i32 1, i32 792}
!123 = !{!"branch_weights", i32 1, i32 791}
!124 = !{!92, !68, i64 16}
!125 = !{!"branch_weights", i32 450, i32 621851}
!126 = !{!"branch_weights", i32 1, i32 450}
!127 = !{!92, !64, i64 72}
!128 = !{!"branch_weights", i32 143659, i32 2916}
!129 = !{!"branch_weights", i32 19, i32 1}
!130 = !{!"branch_weights", i32 1, i32 900, i32 1}
!131 = !{!"branch_weights", i32 791, i32 621509}
!132 = distinct !{!132, !81}
!133 = !{!71, !68, i64 112}
!134 = !{!"branch_weights", i32 792, i32 1}
!135 = distinct !{!135, !81}
!136 = !{!71, !68, i64 96}
!137 = !{!"branch_weights", i32 669, i32 124}
!138 = !{!"branch_weights", i32 115, i32 10}
!139 = !{!"branch_weights", i32 159, i32 12513}
!140 = distinct !{!140, !81}
!141 = !{!71, !68, i64 24}
!142 = !{!"branch_weights", i32 616, i32 792}
!143 = !{!"branch_weights", i32 616, i32 1}
!144 = distinct !{!144, !81}
!145 = distinct !{!145, !81}
!146 = !{!71, !68, i64 80}
!147 = !{!71, !68, i64 72}
!148 = !{!71, !68, i64 88}
!149 = distinct !{!149, !81}
!150 = !{!"branch_weights", i32 666, i32 127}
!151 = distinct !{!151, !81}
!152 = !{!"function_entry_count", i64 1406}
!153 = !{!"ipa.c:cgraph_can_remove_if_no_direct_calls_p"}
!154 = !{!"branch_weights", i32 1065, i32 343}
!155 = !{!"function_entry_count", i64 0}
!156 = !{!"ipa.c:update_inlined_to_pointer"}
!157 = distinct !{!157, !81}
!158 = !{!"function_entry_count", i64 1}
!159 = !{!"ipa.c:local_function_and_variable_visibility"}
!160 = !{!"function_entry_count", i64 2}
!161 = !{!"ipa.c:gate_whole_program_function_and_variable_visibility"}
!162 = !{!"ipa.c:whole_program_function_and_variable_visibility"}
!163 = !{!"branch_weights", i32 37, i32 39}
!164 = !{!"branch_weights", i32 79, i32 1521}
!165 = !{!"branch_weights", i32 127, i32 4673}
!166 = distinct !{!166, !81}
!167 = !{!"branch_weights", i32 39, i32 2}
!168 = !{!169, !68, i64 0}
!169 = !{!"varpool_node", !68, i64 0, !68, i64 8, !68, i64 16, !68, i64 24, !64, i64 32, !64, i64 36, !64, i64 36, !64, i64 36, !64, i64 36, !64, i64 36, !64, i64 36, !64, i64 36}
!170 = !{!"branch_weights", i32 2, i32 1}
!171 = !{!"branch_weights", i32 127, i32 2433}
!172 = distinct !{!172, !81}
!173 = distinct !{!173, !81}
!174 = !{!175, !68, i64 0}
!175 = !{!"cgraph_node_set_def", !68, i64 0, !68, i64 8, !68, i64 16}
!176 = !{!175, !68, i64 8}
!177 = !{!"ipa.c:hash_cgraph_node_set_element"}
!178 = !{!179, !68, i64 0}
!179 = !{!"cgraph_node_set_element_def", !68, i64 0, !74, i64 8}
!180 = !{!"ipa.c:eq_cgraph_node_set_element"}
!181 = !{!179, !74, i64 8}
!182 = !{!"ipa.c:VEC_cgraph_node_ptr_base_index"}
!183 = !{!"ipa.c:VEC_cgraph_node_ptr_base_length"}
!184 = !{!185, !64, i64 0}
!185 = !{!"VEC_cgraph_node_ptr_base", !64, i64 0, !64, i64 4, !65, i64 8}
!186 = !{!"ipa.c:VEC_cgraph_node_ptr_gc_safe_push"}
!187 = !{!"ipa.c:VEC_cgraph_node_ptr_base_pop"}
!188 = !{!"ipa.c:VEC_cgraph_node_ptr_base_replace"}
!189 = !{i64 0, i64 8, !67, i64 8, i64 4, !63}
!190 = !{i64 0, i64 4, !63}
!191 = distinct !{!191, !81}
!192 = !{!"ipa.c:csi_start"}
!193 = !{!"ipa.c:csi_end_p"}
!194 = !{!"ipa.c:csi_node"}
!195 = !{!"ipa.c:csi_next"}
!196 = !{!197, !64, i64 8}
!197 = !{!"", !68, i64 0, !64, i64 8}
!198 = !{!"ipa.c:function_and_variable_visibility"}
!199 = !{!"branch_weights", i32 1, i32 191}
!200 = !{!"branch_weights", i32 765, i32 1}
!201 = distinct !{!201, !81}
!202 = !{!"branch_weights", i32 585225, i32 1531}
!203 = !{!"branch_weights", i32 689, i32 77}
!204 = !{!"branch_weights", i32 77, i32 1}
!205 = !{!"branch_weights", i32 686, i32 4}
!206 = !{!"branch_weights", i32 4, i32 1}
!207 = !{!"branch_weights", i32 77, i32 689}
!208 = !{!"branch_weights", i32 191, i32 48769}
!209 = distinct !{!209, !81}
!210 = !{!"branch_weights", i32 93, i32 1}
!211 = !{!"branch_weights", i32 79, i32 15}
!212 = !{!"branch_weights", i32 1, i32 15}
!213 = !{!65, !65, i64 0}
!214 = !{!"branch_weights", i32 465, i32 47}
!215 = !{!"branch_weights", i32 15, i32 1}
!216 = !{!"branch_weights", i32 191, i32 5761}
!217 = distinct !{!217, !81}
!218 = !{!"branch_weights", i32 1, i32 79}
!219 = !{!"branch_weights", i32 79, i32 1}
!220 = !{!"branch_weights", i32 77, i32 3}
!221 = !{!"branch_weights", i32 1, i32 7}
!222 = !{!"branch_weights", i32 191, i32 4865}
!223 = distinct !{!223, !81}
!224 = !{!"branch_weights", i32 3, i32 1}
!225 = distinct !{!225, !81}
!226 = distinct !{!226, !81}
!227 = distinct !{!227, !81}
!228 = !{!"function_entry_count", i64 764}
!229 = !{!"ipa.c:cgraph_externally_visible_p"}
!230 = !{!"branch_weights", i32 686, i32 80}
!231 = !{!"branch_weights", i32 80, i32 1}
!232 = !{!"branch_weights", i32 4, i32 77}
!233 = distinct !{!233, !81}
!234 = !{!"ipa.c:VEC_cgraph_node_ptr_gc_reserve"}
!235 = !{!"ipa.c:VEC_cgraph_node_ptr_base_quick_push"}
!236 = !{!"ipa.c:VEC_cgraph_node_ptr_base_space"}
!237 = !{!185, !64, i64 4}
