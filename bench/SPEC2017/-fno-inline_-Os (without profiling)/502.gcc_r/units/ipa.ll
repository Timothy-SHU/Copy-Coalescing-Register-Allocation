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
define dso_local i32 @cgraph_postorder(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.cgraph_edge, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #13
  %3 = load i32, ptr @cgraph_n_nodes, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %5 = tail call ptr @xcalloc(i64 noundef %4, i64 noundef 8) #14
  %6 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %1, %8
  %9 = phi ptr [ %12, %8 ], [ %6, %1 ]
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 16
  store ptr null, ptr %10, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %8, !llvm.loop !20

14:                                               ; preds = %8, %1
  br label %15

15:                                               ; preds = %14, %98
  %16 = phi i1 [ false, %98 ], [ true, %14 ]
  %17 = phi i32 [ %100, %98 ], [ 0, %14 ]
  %18 = phi i32 [ %99, %98 ], [ 0, %14 ]
  %19 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !9
  %20 = icmp eq ptr %19, null
  br i1 %20, label %98, label %21

21:                                               ; preds = %15, %92
  %22 = phi ptr [ %96, %92 ], [ %19, %15 ]
  %23 = phi i32 [ %94, %92 ], [ %17, %15 ]
  %24 = phi i32 [ %93, %92 ], [ %18, %15 ]
  %25 = getelementptr inbounds %struct.cgraph_node, ptr %22, i64 0, i32 16
  %26 = load ptr, ptr %25, align 8, !tbaa !11
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %92

28:                                               ; preds = %21
  br i1 %16, label %29, label %37

29:                                               ; preds = %28
  %30 = call fastcc zeroext i8 @cgraph_only_called_directly_p(ptr noundef nonnull %22) #15, !range !22
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %92

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.cgraph_node, ptr %22, i64 0, i32 27
  %34 = load i16, ptr %33, align 4
  %35 = and i16 %34, 2
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %92

37:                                               ; preds = %32, %28
  %38 = getelementptr inbounds %struct.cgraph_node, ptr %22, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !23
  %40 = icmp eq ptr %39, null
  %41 = select i1 %40, ptr %2, ptr %39
  store ptr %41, ptr %25, align 8, !tbaa !11
  br label %42

42:                                               ; preds = %37, %87
  %43 = phi ptr [ %22, %37 ], [ %90, %87 ]
  %44 = phi i32 [ %23, %37 ], [ %89, %87 ]
  %45 = phi i32 [ %24, %37 ], [ %88, %87 ]
  %46 = getelementptr inbounds %struct.cgraph_node, ptr %43, i64 0, i32 16
  %47 = load ptr, ptr %46, align 8, !tbaa !11
  br label %48

48:                                               ; preds = %42, %51
  %49 = phi ptr [ %47, %42 ], [ %55, %51 ]
  %50 = icmp eq ptr %49, %2
  br i1 %50, label %75, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.cgraph_edge, ptr %49, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !24
  %54 = icmp eq ptr %53, null
  %55 = select i1 %54, ptr %2, ptr %53
  store ptr %55, ptr %46, align 8, !tbaa !11
  %56 = getelementptr inbounds %struct.cgraph_edge, ptr %49, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !27
  %58 = getelementptr inbounds %struct.cgraph_node, ptr %57, i64 0, i32 16
  %59 = load ptr, ptr %58, align 8, !tbaa !11
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %48, !llvm.loop !28

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.cgraph_edge, ptr %49, i64 0, i32 1
  %63 = getelementptr inbounds %struct.cgraph_node, ptr %57, i64 0, i32 16
  %64 = getelementptr inbounds %struct.cgraph_node, ptr %57, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !23
  %66 = icmp eq ptr %65, null
  %67 = select i1 %66, ptr %2, ptr %65
  store ptr %67, ptr %63, align 8, !tbaa !11
  %68 = add nsw i32 %45, 1
  %69 = sext i32 %45 to i64
  %70 = getelementptr inbounds ptr, ptr %5, i64 %69
  store ptr %43, ptr %70, align 8, !tbaa !9
  %71 = load ptr, ptr %62, align 8, !tbaa !27
  %72 = getelementptr inbounds %struct.cgraph_node, ptr %71, i64 0, i32 16
  %73 = load ptr, ptr %72, align 8, !tbaa !11
  %74 = icmp eq ptr %73, %2
  br i1 %74, label %75, label %87

75:                                               ; preds = %48, %61
  %76 = phi ptr [ %71, %61 ], [ %43, %48 ]
  %77 = phi i32 [ %68, %61 ], [ %45, %48 ]
  %78 = add nsw i32 %44, 1
  %79 = sext i32 %44 to i64
  %80 = getelementptr inbounds ptr, ptr %0, i64 %79
  store ptr %76, ptr %80, align 8, !tbaa !9
  %81 = icmp eq i32 %77, 0
  br i1 %81, label %92, label %82

82:                                               ; preds = %75
  %83 = add nsw i32 %77, -1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds ptr, ptr %5, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !9
  br label %87

87:                                               ; preds = %82, %61
  %88 = phi i32 [ %83, %82 ], [ %68, %61 ]
  %89 = phi i32 [ %78, %82 ], [ %44, %61 ]
  %90 = phi ptr [ %86, %82 ], [ %71, %61 ]
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %42, !llvm.loop !29

92:                                               ; preds = %75, %87, %21, %29, %32
  %93 = phi i32 [ %24, %21 ], [ %24, %29 ], [ %24, %32 ], [ 0, %75 ], [ %88, %87 ]
  %94 = phi i32 [ %23, %21 ], [ %23, %29 ], [ %23, %32 ], [ %78, %75 ], [ %89, %87 ]
  %95 = getelementptr inbounds %struct.cgraph_node, ptr %22, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !9
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %21, !llvm.loop !30

98:                                               ; preds = %92, %15
  %99 = phi i32 [ %18, %15 ], [ %93, %92 ]
  %100 = phi i32 [ %17, %15 ], [ %94, %92 ]
  br i1 %16, label %15, label %101, !llvm.loop !31

101:                                              ; preds = %98
  call void @free(ptr noundef %5) #15
  %102 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !9
  %103 = icmp eq ptr %102, null
  br i1 %103, label %110, label %104

104:                                              ; preds = %101, %104
  %105 = phi ptr [ %108, %104 ], [ %102, %101 ]
  %106 = getelementptr inbounds %struct.cgraph_node, ptr %105, i64 0, i32 16
  store ptr null, ptr %106, align 8, !tbaa !11
  %107 = getelementptr inbounds %struct.cgraph_node, ptr %105, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !9
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %104, !llvm.loop !32

110:                                              ; preds = %104, %101
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #13
  ret i32 %100
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @cgraph_only_called_directly_p(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %12

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
define dso_local zeroext i8 @cgraph_remove_unreachable_nodes(i8 noundef zeroext %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr nonnull %1)
  br label %6

6:                                                ; preds = %4, %2
  %7 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %300, label %9

9:                                                ; preds = %6
  %10 = icmp ne i8 %0, 0
  br label %15

11:                                               ; preds = %51
  %12 = icmp eq ptr %52, inttoptr (i64 1 to ptr)
  br i1 %12, label %168, label %13

13:                                               ; preds = %11
  %14 = icmp ne i8 %0, 0
  br label %56

15:                                               ; preds = %9, %51
  %16 = phi ptr [ %7, %9 ], [ %54, %51 ]
  %17 = phi ptr [ inttoptr (i64 1 to ptr), %9 ], [ %52, %51 ]
  %18 = tail call fastcc zeroext i8 @cgraph_can_remove_if_no_direct_calls_p(ptr noundef nonnull %16) #15, !range !22
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %15
  %21 = load ptr, ptr %16, align 8, !tbaa !33
  %22 = getelementptr inbounds %struct.tree_decl_common, ptr %21, i64 0, i32 2
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 33554432
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.cgraph_node, ptr %16, i64 0, i32 27
  %28 = load i16, ptr %27, align 4
  %29 = and i16 %28, 32
  %30 = icmp eq i16 %29, 0
  %31 = or i1 %10, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %26, %20
  %33 = getelementptr inbounds %struct.cgraph_node, ptr %16, i64 0, i32 19, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 143, ptr noundef nonnull @.str.2) #14
  br label %37

37:                                               ; preds = %32, %36
  %38 = getelementptr inbounds %struct.cgraph_node, ptr %16, i64 0, i32 16
  store ptr %17, ptr %38, align 8, !tbaa !11
  %39 = getelementptr inbounds %struct.cgraph_node, ptr %16, i64 0, i32 27
  %40 = load i16, ptr %39, align 4
  %41 = or i16 %40, 8
  store i16 %41, ptr %39, align 4
  br label %51

42:                                               ; preds = %26, %15
  %43 = getelementptr inbounds %struct.cgraph_node, ptr %16, i64 0, i32 16
  %44 = load ptr, ptr %43, align 8, !tbaa !11
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 150, ptr noundef nonnull @.str.2) #14
  br label %47

47:                                               ; preds = %42, %46
  %48 = getelementptr inbounds %struct.cgraph_node, ptr %16, i64 0, i32 27
  %49 = load i16, ptr %48, align 4
  %50 = and i16 %49, -9
  store i16 %50, ptr %48, align 4
  br label %51

51:                                               ; preds = %37, %47
  %52 = phi ptr [ %17, %47 ], [ %16, %37 ]
  %53 = getelementptr inbounds %struct.cgraph_node, ptr %16, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !9
  %55 = icmp eq ptr %54, null
  br i1 %55, label %11, label %15, !llvm.loop !35

56:                                               ; preds = %13, %165
  %57 = phi ptr [ %52, %13 ], [ %166, %165 ]
  %58 = getelementptr inbounds %struct.cgraph_node, ptr %57, i64 0, i32 16
  %59 = load ptr, ptr %58, align 8, !tbaa !11
  store ptr inttoptr (i64 2 to ptr), ptr %58, align 8, !tbaa !11
  %60 = getelementptr inbounds %struct.cgraph_node, ptr %57, i64 0, i32 27
  %61 = load i16, ptr %60, align 4
  %62 = and i16 %61, 8
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %113, label %64

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.cgraph_node, ptr %57, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !9
  %67 = icmp eq ptr %66, null
  br i1 %67, label %113, label %68

68:                                               ; preds = %64, %108
  %69 = phi ptr [ %111, %108 ], [ %66, %64 ]
  %70 = phi ptr [ %109, %108 ], [ %59, %64 ]
  %71 = getelementptr inbounds %struct.cgraph_edge, ptr %69, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !36
  %73 = getelementptr inbounds %struct.cgraph_node, ptr %72, i64 0, i32 27
  %74 = load i16, ptr %73, align 4
  %75 = and i16 %74, 8
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %77, label %108

77:                                               ; preds = %68
  %78 = load i16, ptr %60, align 4
  %79 = and i16 %78, 32
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %108, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.cgraph_edge, ptr %69, i64 0, i32 9
  %83 = load i32, ptr %82, align 8, !tbaa !37
  %84 = icmp eq i32 %83, 0
  %85 = and i16 %74, 32
  %86 = icmp eq i16 %85, 0
  %87 = or i1 %86, %84
  br i1 %87, label %95, label %88

88:                                               ; preds = %81
  %89 = load ptr, ptr %72, align 8, !tbaa !33
  %90 = getelementptr inbounds %struct.tree_decl_common, ptr %89, i64 0, i32 2
  %91 = load i64, ptr %90, align 8
  %92 = and i64 %91, 33554432
  %93 = icmp eq i64 %92, 0
  %94 = or i1 %14, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %88, %81
  %96 = and i16 %78, 8
  %97 = or disjoint i16 %96, %74
  store i16 %97, ptr %73, align 4
  %98 = load ptr, ptr %71, align 8, !tbaa !36
  %99 = getelementptr inbounds %struct.cgraph_node, ptr %98, i64 0, i32 16
  %100 = load ptr, ptr %99, align 8, !tbaa !11
  %101 = ptrtoint ptr %100 to i64
  switch i64 %101, label %108 [
    i64 0, label %107
    i64 2, label %102
  ]

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.cgraph_node, ptr %98, i64 0, i32 27
  %104 = load i16, ptr %103, align 4
  %105 = and i16 %104, 8
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %95, %102
  store ptr %70, ptr %99, align 8, !tbaa !11
  br label %108

108:                                              ; preds = %102, %107, %95, %68, %77, %88
  %109 = phi ptr [ %70, %68 ], [ %70, %88 ], [ %70, %77 ], [ %98, %107 ], [ %70, %102 ], [ %70, %95 ]
  %110 = getelementptr inbounds %struct.cgraph_edge, ptr %69, i64 0, i32 6
  %111 = load ptr, ptr %110, align 8, !tbaa !9
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %68, !llvm.loop !38

113:                                              ; preds = %108, %64, %56
  %114 = phi ptr [ %59, %56 ], [ %59, %64 ], [ %109, %108 ]
  %115 = getelementptr inbounds %struct.cgraph_node, ptr %57, i64 0, i32 14
  %116 = load ptr, ptr %115, align 8, !tbaa !39
  %117 = icmp eq ptr %116, null
  br i1 %117, label %143, label %118

118:                                              ; preds = %113
  %119 = load i16, ptr %60, align 4
  %120 = and i16 %119, 8
  %121 = icmp eq i16 %120, 0
  br i1 %121, label %143, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.cgraph_node, ptr %57, i64 0, i32 19, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !34
  %125 = icmp ne ptr %124, null
  %126 = icmp eq ptr %116, %57
  %127 = or i1 %125, %126
  br i1 %127, label %143, label %128

128:                                              ; preds = %122, %138
  %129 = phi ptr [ %139, %138 ], [ %114, %122 ]
  %130 = phi ptr [ %141, %138 ], [ %116, %122 ]
  %131 = getelementptr inbounds %struct.cgraph_node, ptr %130, i64 0, i32 27
  %132 = load i16, ptr %131, align 4
  %133 = and i16 %132, 8
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.cgraph_node, ptr %130, i64 0, i32 16
  store ptr %129, ptr %136, align 8, !tbaa !11
  %137 = or disjoint i16 %132, 8
  store i16 %137, ptr %131, align 4
  br label %138

138:                                              ; preds = %128, %135
  %139 = phi ptr [ %129, %128 ], [ %130, %135 ]
  %140 = getelementptr inbounds %struct.cgraph_node, ptr %130, i64 0, i32 14
  %141 = load ptr, ptr %140, align 8, !tbaa !39
  %142 = icmp eq ptr %141, %57
  br i1 %142, label %143, label %128, !llvm.loop !40

143:                                              ; preds = %138, %122, %118, %113
  %144 = phi ptr [ %114, %122 ], [ %114, %118 ], [ %114, %113 ], [ %139, %138 ]
  br label %145

145:                                              ; preds = %158, %143
  %146 = phi ptr [ %57, %143 ], [ %159, %158 ]
  %147 = getelementptr inbounds %struct.cgraph_node, ptr %146, i64 0, i32 12
  %148 = load ptr, ptr %147, align 8, !tbaa !41
  %149 = icmp eq ptr %148, null
  br i1 %149, label %165, label %150

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.cgraph_node, ptr %148, i64 0, i32 16
  %152 = load ptr, ptr %151, align 8, !tbaa !11
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %165

154:                                              ; preds = %150
  %155 = load ptr, ptr %146, align 8, !tbaa !33
  %156 = tail call zeroext i8 @gimple_has_body_p(ptr noundef %155) #14
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %154
  %159 = load ptr, ptr %147, align 8, !tbaa !41
  %160 = load ptr, ptr %159, align 8, !tbaa !33
  %161 = load ptr, ptr %146, align 8, !tbaa !33
  %162 = icmp eq ptr %160, %161
  br i1 %162, label %145, label %163

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.cgraph_node, ptr %159, i64 0, i32 16
  store ptr %144, ptr %164, align 8, !tbaa !11
  br label %165

165:                                              ; preds = %150, %145, %154, %163
  %166 = phi ptr [ %159, %163 ], [ %144, %154 ], [ %144, %145 ], [ %144, %150 ]
  %167 = icmp eq ptr %166, inttoptr (i64 1 to ptr)
  br i1 %167, label %168, label %56, !llvm.loop !42

168:                                              ; preds = %165, %11
  %169 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !9
  %170 = icmp eq ptr %169, null
  br i1 %170, label %300, label %171

171:                                              ; preds = %168
  %172 = icmp ne i8 %0, 0
  br label %176

173:                                              ; preds = %277
  %174 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !9
  %175 = icmp eq ptr %174, null
  br i1 %175, label %300, label %280

176:                                              ; preds = %171, %277
  %177 = phi ptr [ %169, %171 ], [ %180, %277 ]
  %178 = phi i8 [ 0, %171 ], [ %278, %277 ]
  %179 = getelementptr inbounds %struct.cgraph_node, ptr %177, i64 0, i32 3
  %180 = load ptr, ptr %179, align 8, !tbaa !43
  %181 = getelementptr inbounds %struct.cgraph_node, ptr %177, i64 0, i32 16
  %182 = load ptr, ptr %181, align 8, !tbaa !11
  %183 = icmp eq ptr %182, null
  br i1 %183, label %197, label %184

184:                                              ; preds = %176
  %185 = getelementptr inbounds %struct.cgraph_node, ptr %177, i64 0, i32 27
  %186 = load i16, ptr %185, align 4
  %187 = and i16 %186, 8
  %188 = icmp eq i16 %187, 0
  br i1 %188, label %189, label %277

189:                                              ; preds = %184
  tail call void @cgraph_node_remove_callees(ptr noundef nonnull %177) #14
  %190 = load i16, ptr %185, align 4
  %191 = and i16 %190, -33
  store i16 %191, ptr %185, align 4
  %192 = getelementptr inbounds %struct.cgraph_node, ptr %177, i64 0, i32 18, i32 2
  %193 = load i8, ptr %192, align 8
  %194 = and i8 %193, -9
  store i8 %194, ptr %192, align 8
  %195 = load ptr, ptr %181, align 8, !tbaa !11
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %277

197:                                              ; preds = %176, %189
  %198 = getelementptr inbounds %struct.cgraph_node, ptr %177, i64 0, i32 19, i32 2
  store ptr null, ptr %198, align 8, !tbaa !34
  br i1 %3, label %202, label %199

199:                                              ; preds = %197
  %200 = tail call ptr @cgraph_node_name(ptr noundef nonnull %177) #14
  %201 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef %200) #15
  br label %202

202:                                              ; preds = %199, %197
  %203 = getelementptr inbounds %struct.cgraph_node, ptr %177, i64 0, i32 27
  %204 = load i16, ptr %203, align 4
  %205 = and i16 %204, 32
  %206 = icmp eq i16 %205, 0
  br i1 %206, label %214, label %207

207:                                              ; preds = %202
  %208 = load ptr, ptr %177, align 8, !tbaa !33
  %209 = getelementptr inbounds %struct.tree_decl_common, ptr %208, i64 0, i32 2
  %210 = load i64, ptr %209, align 8
  %211 = and i64 %210, 33554432
  %212 = icmp eq i64 %211, 0
  %213 = or i1 %172, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %207, %202
  tail call void @cgraph_remove_node(ptr noundef nonnull %177) #14
  br label %277

215:                                              ; preds = %207
  %216 = getelementptr inbounds %struct.cgraph_node, ptr %177, i64 0, i32 2
  %217 = load ptr, ptr %216, align 8, !tbaa !9
  %218 = icmp eq ptr %217, null
  br i1 %218, label %230, label %223

219:                                              ; preds = %223
  %220 = getelementptr inbounds %struct.cgraph_edge, ptr %224, i64 0, i32 4
  %221 = load ptr, ptr %220, align 8, !tbaa !9
  %222 = icmp eq ptr %221, null
  br i1 %222, label %230, label %223, !llvm.loop !44

223:                                              ; preds = %215, %219
  %224 = phi ptr [ %221, %219 ], [ %217, %215 ]
  %225 = getelementptr inbounds %struct.cgraph_edge, ptr %224, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !27
  %227 = getelementptr inbounds %struct.cgraph_node, ptr %226, i64 0, i32 16
  %228 = load ptr, ptr %227, align 8, !tbaa !11
  %229 = icmp eq ptr %228, null
  br i1 %229, label %219, label %233

230:                                              ; preds = %219, %215
  %231 = and i16 %204, 1
  %232 = icmp eq i16 %231, 0
  br i1 %232, label %276, label %233

233:                                              ; preds = %223, %230
  %234 = getelementptr inbounds %struct.cgraph_node, ptr %177, i64 0, i32 11
  %235 = load ptr, ptr %234, align 8, !tbaa !9
  %236 = icmp eq ptr %235, null
  br i1 %236, label %246, label %241

237:                                              ; preds = %241
  %238 = getelementptr inbounds %struct.cgraph_node, ptr %242, i64 0, i32 9
  %239 = load ptr, ptr %238, align 8, !tbaa !9
  %240 = icmp eq ptr %239, null
  br i1 %240, label %246, label %241, !llvm.loop !45

241:                                              ; preds = %233, %237
  %242 = phi ptr [ %239, %237 ], [ %235, %233 ]
  %243 = getelementptr inbounds %struct.cgraph_node, ptr %242, i64 0, i32 16
  %244 = load ptr, ptr %243, align 8, !tbaa !11
  %245 = icmp eq ptr %244, null
  br i1 %245, label %237, label %252

246:                                              ; preds = %237, %233
  tail call void @cgraph_release_function_body(ptr noundef nonnull %177) #14
  %247 = load i16, ptr %203, align 4
  %248 = and i16 %247, -33
  store i16 %248, ptr %203, align 4
  %249 = getelementptr inbounds %struct.cgraph_node, ptr %177, i64 0, i32 18, i32 2
  %250 = load i8, ptr %249, align 8
  %251 = and i8 %250, -9
  store i8 %251, ptr %249, align 8
  br label %252

252:                                              ; preds = %241, %246
  tail call void @cgraph_node_remove_callees(ptr noundef nonnull %177) #14
  %253 = getelementptr inbounds %struct.cgraph_node, ptr %177, i64 0, i32 10
  %254 = load ptr, ptr %253, align 8, !tbaa !46
  %255 = icmp eq ptr %254, null
  br i1 %255, label %260, label %256

256:                                              ; preds = %252
  %257 = getelementptr inbounds %struct.cgraph_node, ptr %177, i64 0, i32 9
  %258 = load ptr, ptr %257, align 8, !tbaa !47
  %259 = getelementptr inbounds %struct.cgraph_node, ptr %254, i64 0, i32 9
  store ptr %258, ptr %259, align 8, !tbaa !47
  br label %268

260:                                              ; preds = %252
  %261 = getelementptr inbounds %struct.cgraph_node, ptr %177, i64 0, i32 12
  %262 = load ptr, ptr %261, align 8, !tbaa !41
  %263 = icmp eq ptr %262, null
  %264 = getelementptr inbounds %struct.cgraph_node, ptr %177, i64 0, i32 9
  %265 = load ptr, ptr %264, align 8, !tbaa !47
  br i1 %263, label %268, label %266

266:                                              ; preds = %260
  %267 = getelementptr inbounds %struct.cgraph_node, ptr %262, i64 0, i32 11
  store ptr %265, ptr %267, align 8, !tbaa !48
  br label %268

268:                                              ; preds = %260, %266, %256
  %269 = phi ptr [ %265, %266 ], [ %258, %256 ], [ %265, %260 ]
  %270 = getelementptr inbounds %struct.cgraph_node, ptr %177, i64 0, i32 9
  %271 = icmp eq ptr %269, null
  br i1 %271, label %274, label %272

272:                                              ; preds = %268
  %273 = getelementptr inbounds %struct.cgraph_node, ptr %269, i64 0, i32 10
  store ptr %254, ptr %273, align 8, !tbaa !46
  br label %274

274:                                              ; preds = %272, %268
  %275 = getelementptr inbounds %struct.cgraph_node, ptr %177, i64 0, i32 12
  store ptr null, ptr %275, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %270, i8 0, i64 16, i1 false)
  br label %277

276:                                              ; preds = %230
  tail call void @cgraph_remove_node(ptr noundef nonnull %177) #14
  br label %277

277:                                              ; preds = %184, %214, %276, %274, %189
  %278 = phi i8 [ %178, %189 ], [ 1, %274 ], [ 1, %276 ], [ 1, %214 ], [ %178, %184 ]
  %279 = icmp eq ptr %180, null
  br i1 %279, label %173, label %176, !llvm.loop !49

280:                                              ; preds = %173, %295
  %281 = phi ptr [ %298, %295 ], [ %174, %173 ]
  %282 = getelementptr inbounds %struct.cgraph_node, ptr %281, i64 0, i32 19, i32 2
  %283 = load ptr, ptr %282, align 8, !tbaa !34
  %284 = icmp eq ptr %283, null
  br i1 %284, label %295, label %285

285:                                              ; preds = %280
  %286 = getelementptr inbounds %struct.cgraph_node, ptr %281, i64 0, i32 2
  %287 = load ptr, ptr %286, align 8, !tbaa !23
  %288 = icmp eq ptr %287, null
  br i1 %288, label %289, label %295

289:                                              ; preds = %285
  %290 = getelementptr inbounds %struct.cgraph_node, ptr %281, i64 0, i32 11
  %291 = load ptr, ptr %290, align 8, !tbaa !48
  %292 = icmp eq ptr %291, null
  br i1 %292, label %293, label %294

293:                                              ; preds = %289
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 293, ptr noundef nonnull @.str.2) #14
  br label %294

294:                                              ; preds = %289, %293
  store ptr null, ptr %282, align 8, !tbaa !34
  tail call fastcc void @update_inlined_to_pointer(ptr noundef nonnull %281, ptr noundef nonnull %281) #15
  br label %295

295:                                              ; preds = %294, %285, %280
  %296 = getelementptr inbounds %struct.cgraph_node, ptr %281, i64 0, i32 16
  store ptr null, ptr %296, align 8, !tbaa !11
  %297 = getelementptr inbounds %struct.cgraph_node, ptr %281, i64 0, i32 3
  %298 = load ptr, ptr %297, align 8, !tbaa !9
  %299 = icmp eq ptr %298, null
  br i1 %299, label %300, label %280, !llvm.loop !50

300:                                              ; preds = %295, %6, %168, %173
  %301 = phi i8 [ %278, %173 ], [ 0, %168 ], [ 0, %6 ], [ %278, %295 ]
  tail call void @remove_unreachable_alias_pairs() #14
  ret i8 %301
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @cgraph_can_remove_if_no_direct_calls_p(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !33
  %8 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 512
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

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
define internal fastcc void @update_inlined_to_pointer(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2, %14
  %7 = phi ptr [ %16, %14 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.cgraph_edge, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !36
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 19, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  store ptr %1, ptr %10, align 8, !tbaa !34
  tail call fastcc void @update_inlined_to_pointer(ptr noundef nonnull %9, ptr noundef %1) #15
  br label %14

14:                                               ; preds = %6, %13
  %15 = getelementptr inbounds %struct.cgraph_edge, ptr %7, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %6, !llvm.loop !51

18:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: optsize
declare void @remove_unreachable_alias_pairs() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @local_function_and_variable_visibility() #0 {
  %1 = load i32, ptr @flag_whole_program, align 4, !tbaa !5
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
define internal zeroext i8 @gate_whole_program_function_and_variable_visibility() #8 {
  %1 = load i32, ptr @flag_ltrans, align 4, !tbaa !5
  %2 = icmp eq i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @whole_program_function_and_variable_visibility() #0 {
  %1 = load i32, ptr @flag_whole_program, align 4, !tbaa !5
  %2 = trunc i32 %1 to i8
  tail call fastcc void @function_and_variable_visibility(i8 noundef zeroext %2) #15
  %3 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %24, %0
  %6 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %45, label %28

8:                                                ; preds = %0, %24
  %9 = phi ptr [ %26, %24 ], [ %3, %0 ]
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 18, i32 2
  %11 = load i8, ptr %10, align 8
  %12 = and i8 %11, 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %9, align 8, !tbaa !33
  %16 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %15, i64 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 512
  %19 = icmp ne i32 %18, 0
  %20 = and i8 %11, 4
  %21 = icmp eq i8 %20, 0
  %22 = or i1 %21, %19
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  tail call void @cgraph_mark_needed_node(ptr noundef nonnull %9) #14
  br label %24

24:                                               ; preds = %8, %14, %23
  %25 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !9
  %27 = icmp eq ptr %26, null
  br i1 %27, label %5, label %8, !llvm.loop !52

28:                                               ; preds = %5, %41
  %29 = phi ptr [ %43, %41 ], [ %6, %5 ]
  %30 = getelementptr inbounds %struct.varpool_node, ptr %29, i64 0, i32 5
  %31 = load i8, ptr %30, align 4
  %32 = and i8 %31, 32
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %28
  %35 = load ptr, ptr %29, align 8, !tbaa !53
  %36 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %35, i64 0, i32 4
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 512
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  tail call void @varpool_mark_needed_node(ptr noundef nonnull %29) #14
  br label %41

41:                                               ; preds = %28, %34, %40
  %42 = getelementptr inbounds %struct.varpool_node, ptr %29, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !9
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %28, !llvm.loop !55

45:                                               ; preds = %41, %5
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %47 = icmp eq ptr %46, null
  br i1 %47, label %69, label %48

48:                                               ; preds = %45
  %49 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 18, i64 1, ptr nonnull %46)
  %50 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !9
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
  %59 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %60 = tail call ptr @varpool_node_name(ptr noundef nonnull %53) #14
  %61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef nonnull @.str.3, ptr noundef %60) #15
  br label %62

62:                                               ; preds = %52, %58
  %63 = getelementptr inbounds %struct.varpool_node, ptr %53, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !9
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %52, !llvm.loop !56

66:                                               ; preds = %62, %48
  %67 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %68 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %67)
  br label %69

69:                                               ; preds = %66, %45
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cgraph_node_set_new() local_unnamed_addr #0 {
  %1 = tail call ptr @ggc_alloc_stat(i64 noundef 24) #14
  %2 = tail call ptr @htab_create_alloc(i64 noundef 10, ptr noundef nonnull @hash_cgraph_node_set_element, ptr noundef nonnull @eq_cgraph_node_set_element, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #14
  store ptr %2, ptr %1, align 8, !tbaa !57
  %3 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %1, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !59
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @hash_cgraph_node_set_element(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !9
  %3 = load ptr, ptr %0, align 8, !tbaa !60
  %4 = tail call i32 %2(ptr noundef %3) #14
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @eq_cgraph_node_set_element(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = load ptr, ptr %0, align 8, !tbaa !60
  %4 = load ptr, ptr %1, align 8, !tbaa !60
  %5 = icmp eq ptr %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @ggc_calloc(i64 noundef, i64 noundef) #2

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cgraph_node_set_add(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.cgraph_node_set_element_def, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  store ptr %1, ptr %3, align 8, !tbaa !60
  %4 = load ptr, ptr %0, align 8, !tbaa !57
  %5 = call ptr @htab_find_slot(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 1) #14
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %6, align 8, !tbaa !60
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = getelementptr inbounds %struct.cgraph_node_set_element_def, ptr %6, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !62
  %16 = trunc i64 %15 to i32
  %17 = call fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr noundef %13, i32 noundef %16) #15
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %27, label %19

19:                                               ; preds = %11, %8
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 631, ptr noundef nonnull @.str.2) #14
  br label %27

20:                                               ; preds = %2
  %21 = call ptr @ggc_alloc_stat(i64 noundef 16) #14
  store ptr %1, ptr %21, align 8, !tbaa !60
  %22 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !59
  %24 = call fastcc i32 @VEC_cgraph_node_ptr_base_length(ptr noundef %23) #15
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.cgraph_node_set_element_def, ptr %21, i64 0, i32 1
  store i64 %25, ptr %26, align 8, !tbaa !62
  store ptr %21, ptr %5, align 8, !tbaa !9
  call fastcc void @VEC_cgraph_node_ptr_gc_safe_push(ptr noundef nonnull %22, ptr noundef %1) #15
  br label %27

27:                                               ; preds = %19, %11, %20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  ret void
}

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_cgraph_node_ptr_base_length(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !63
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_cgraph_node_ptr_gc_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_cgraph_node_ptr_gc_reserve(ptr noundef %0) #15
  %3 = load ptr, ptr %0, align 8, !tbaa !9
  tail call fastcc void @VEC_cgraph_node_ptr_base_quick_push(ptr noundef %3, ptr noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cgraph_node_set_remove(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.cgraph_node_set_element_def, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  store ptr %1, ptr %3, align 8, !tbaa !60
  %4 = load ptr, ptr %0, align 8, !tbaa !57
  %5 = call ptr @htab_find_slot(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 0) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %35, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !9
  %9 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = getelementptr inbounds %struct.cgraph_node_set_element_def, ptr %8, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !62
  %13 = trunc i64 %12 to i32
  %14 = call fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr noundef %10, i32 noundef %13) #15
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %18, label %16

16:                                               ; preds = %7
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 663, ptr noundef nonnull @.str.2) #14
  %17 = load ptr, ptr %9, align 8, !tbaa !59
  br label %18

18:                                               ; preds = %7, %16
  %19 = phi ptr [ %10, %7 ], [ %17, %16 ]
  %20 = call fastcc ptr @VEC_cgraph_node_ptr_base_pop(ptr noundef %19) #15
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %33, label %22

22:                                               ; preds = %18
  store ptr %20, ptr %3, align 8, !tbaa !60
  %23 = load ptr, ptr %0, align 8, !tbaa !57
  %24 = call ptr @htab_find_slot(ptr noundef %23, ptr noundef nonnull %3, i32 noundef 0) #14
  %25 = load ptr, ptr %24, align 8, !tbaa !9
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 673, ptr noundef nonnull @.str.2) #14
  br label %28

28:                                               ; preds = %22, %27
  %29 = load i64, ptr %11, align 8, !tbaa !62
  %30 = getelementptr inbounds %struct.cgraph_node_set_element_def, ptr %25, i64 0, i32 1
  store i64 %29, ptr %30, align 8, !tbaa !62
  %31 = load ptr, ptr %9, align 8, !tbaa !59
  %32 = trunc i64 %29 to i32
  call fastcc void @VEC_cgraph_node_ptr_base_replace(ptr noundef %31, i32 noundef %32, ptr noundef %20) #15
  br label %33

33:                                               ; preds = %28, %18
  %34 = load ptr, ptr %0, align 8, !tbaa !57
  call void @htab_clear_slot(ptr noundef %34, ptr noundef nonnull %5) #14
  call void @ggc_free(ptr noundef nonnull %8) #14
  br label %35

35:                                               ; preds = %2, %33
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_cgraph_node_ptr_base_pop(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = load i32, ptr %0, align 8, !tbaa !63
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !63
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_cgraph_node_ptr_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #9 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !9
  ret void
}

; Function Attrs: optsize
declare void @htab_clear_slot(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local { ptr, i32 } @cgraph_node_set_find(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.cgraph_node_set_element_def, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  store ptr %1, ptr %3, align 8, !tbaa !60
  %4 = load ptr, ptr %0, align 8, !tbaa !57
  %5 = call ptr @htab_find_slot(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 0) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !9
  %9 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = getelementptr inbounds %struct.cgraph_node_set_element_def, ptr %8, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !62
  %13 = trunc i64 %12 to i32
  %14 = call fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr noundef %10, i32 noundef %13) #15
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %19, label %16

16:                                               ; preds = %7
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 705, ptr noundef nonnull @.str.2) #14
  %17 = load i64, ptr %11, align 8, !tbaa !62
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
define dso_local void @dump_cgraph_node_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.cgraph_node_set_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %4 = tail call fastcc ptr @csi_start(ptr noundef %1) #15
  store ptr %4, ptr %3, align 8, !tbaa.struct !65
  %5 = getelementptr inbounds i8, ptr %3, i64 8
  store i32 0, ptr %5, align 8, !tbaa.struct !66
  %6 = tail call fastcc zeroext i8 @csi_end_p(ptr %4, i32 0) #15, !range !22
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
  %14 = tail call fastcc zeroext i8 @csi_end_p(ptr %12, i32 %13) #15, !range !22
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %8, label %16, !llvm.loop !67

16:                                               ; preds = %8, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @csi_start(ptr noundef %0) unnamed_addr #10 {
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @csi_end_p(ptr nocapture readonly %0, i32 %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = tail call fastcc i32 @VEC_cgraph_node_ptr_base_length(ptr noundef %4) #15
  %6 = icmp ule i32 %5, %1
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @csi_node(ptr nocapture readonly %0, i32 %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = tail call fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr noundef %4, i32 noundef %1) #15
  ret ptr %5
}

; Function Attrs: optsize
declare void @dump_cgraph_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @csi_next(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.cgraph_node_set_iterator, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !68
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !68
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_cgraph_node_set(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !9
  tail call void @dump_cgraph_node_set(ptr noundef %2, ptr noundef %0) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @function_and_variable_visibility(i8 noundef zeroext %0) unnamed_addr #0 {
  %2 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = icmp eq i8 %0, 0
  br label %9

6:                                                ; preds = %117, %1
  %7 = load ptr, ptr @varpool_nodes, align 8, !tbaa !9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %126, label %132

9:                                                ; preds = %4, %117
  %10 = phi ptr [ %2, %4 ], [ %124, %117 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !33
  %12 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %11, i64 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 512
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %9
  %17 = load i64, ptr %11, align 8
  %18 = and i64 %17, 134217728
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = and i32 %13, -513
  store i32 %21, ptr %12, align 8
  %22 = load ptr, ptr %10, align 8, !tbaa !33
  br label %23

23:                                               ; preds = %20, %16, %9
  %24 = phi ptr [ %22, %20 ], [ %11, %16 ], [ %11, %9 ]
  %25 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 14
  %26 = load ptr, ptr %25, align 8, !tbaa !39
  %27 = icmp eq ptr %26, null
  br i1 %27, label %47, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.tree_decl_common, ptr %24, i64 0, i32 2
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 33554432
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %28, %41
  %34 = phi ptr [ %43, %41 ], [ %10, %28 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !33
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
  %43 = load ptr, ptr %42, align 8, !tbaa !39
  store ptr null, ptr %42, align 8, !tbaa !39
  %44 = icmp eq ptr %43, %10
  br i1 %44, label %45, label %33, !llvm.loop !70

45:                                               ; preds = %41
  %46 = load ptr, ptr %10, align 8, !tbaa !33
  br label %47

47:                                               ; preds = %45, %28, %23
  %48 = phi ptr [ %46, %45 ], [ %24, %28 ], [ %24, %23 ]
  %49 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %48, i64 0, i32 4
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 640
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %63, label %53

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
  %64 = tail call fastcc zeroext i8 @cgraph_externally_visible_p(ptr noundef nonnull %10, i8 noundef zeroext %0) #15, !range !22
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %75, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 19, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !34
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

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
  br i1 %82, label %98, label %83

83:                                               ; preds = %75
  %84 = load ptr, ptr %10, align 8, !tbaa !33
  %85 = getelementptr inbounds %struct.tree_decl_common, ptr %84, i64 0, i32 2
  %86 = load i64, ptr %85, align 8
  %87 = and i64 %86, 33554432
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %83
  br i1 %5, label %90, label %96

90:                                               ; preds = %89
  %91 = load i64, ptr %84, align 8
  %92 = and i64 %91, 134217728
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 404, ptr noundef nonnull @.str.2) #14
  %95 = load ptr, ptr %10, align 8, !tbaa !33
  br label %96

96:                                               ; preds = %89, %90, %94
  %97 = phi ptr [ %84, %89 ], [ %84, %90 ], [ %95, %94 ]
  tail call void @cgraph_make_decl_local(ptr noundef %97) #14
  br label %98

98:                                               ; preds = %71, %96, %83, %75
  %99 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 18, i32 2
  %100 = tail call fastcc zeroext i8 @cgraph_only_called_directly_p(ptr noundef nonnull %10) #15, !range !22
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %117, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 27
  %104 = load i16, ptr %103, align 4
  %105 = and i16 %104, 32
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %117, label %107

107:                                              ; preds = %102
  %108 = load ptr, ptr %10, align 8, !tbaa !33
  %109 = getelementptr inbounds %struct.tree_decl_common, ptr %108, i64 0, i32 2
  %110 = load i64, ptr %109, align 8
  %111 = and i64 %110, 33554432
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %117

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
  %124 = load ptr, ptr %123, align 8, !tbaa !9
  %125 = icmp eq ptr %124, null
  br i1 %125, label %6, label %9, !llvm.loop !71

126:                                              ; preds = %188, %6
  %127 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !9
  %128 = icmp eq ptr %127, null
  br i1 %128, label %252, label %129

129:                                              ; preds = %126
  %130 = icmp ne i8 %0, 0
  %131 = icmp eq i8 %0, 0
  br label %192

132:                                              ; preds = %6, %188
  %133 = phi ptr [ %190, %188 ], [ %7, %6 ]
  %134 = load ptr, ptr %133, align 8, !tbaa !53
  %135 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %134, i64 0, i32 4
  %136 = load i32, ptr %135, align 8
  %137 = and i32 %136, 128
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %152, label %139

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
  %149 = load ptr, ptr %133, align 8, !tbaa !53
  %150 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %149, i64 0, i32 4
  %151 = load i32, ptr %150, align 8
  br label %152

152:                                              ; preds = %132, %139, %143, %148
  %153 = phi i32 [ %136, %132 ], [ %136, %139 ], [ %136, %143 ], [ %151, %148 ]
  %154 = phi ptr [ %134, %132 ], [ %134, %139 ], [ %134, %143 ], [ %149, %148 ]
  %155 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %154, i64 0, i32 4
  %156 = and i32 %153, 8
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %188, label %158

158:                                              ; preds = %152
  %159 = load i64, ptr %154, align 8
  %160 = and i64 %159, 134217728
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.tree_decl_common, ptr %154, i64 0, i32 2
  %164 = load i64, ptr %163, align 8
  %165 = and i64 %164, 33554432
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %186, label %167

167:                                              ; preds = %162, %158
  %168 = getelementptr inbounds %struct.tree_decl_common, ptr %154, i64 0, i32 5
  %169 = load ptr, ptr %168, align 8, !tbaa !72
  %170 = icmp eq ptr %169, null
  %171 = load ptr, ptr @global_trees, align 16
  %172 = icmp eq ptr %169, %171
  %173 = select i1 %170, i1 true, i1 %172
  %174 = and i32 %153, 128
  %175 = icmp eq i32 %174, 0
  %176 = and i1 %175, %173
  br i1 %176, label %177, label %186

177:                                              ; preds = %167
  %178 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %154, i64 0, i32 2
  %179 = load ptr, ptr %178, align 8, !tbaa !72
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %186

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.tree_common, ptr %154, i64 0, i32 2
  %183 = load ptr, ptr %182, align 8, !tbaa !72
  %184 = load i64, ptr %183, align 8
  %185 = icmp ult i64 %184, 72057594037927936
  br i1 %185, label %188, label %186

186:                                              ; preds = %167, %181, %177, %162
  %187 = and i32 %153, -9
  store i32 %187, ptr %155, align 8
  br label %188

188:                                              ; preds = %152, %181, %186
  %189 = getelementptr inbounds %struct.varpool_node, ptr %133, i64 0, i32 1
  %190 = load ptr, ptr %189, align 8, !tbaa !9
  %191 = icmp eq ptr %190, null
  br i1 %191, label %126, label %132, !llvm.loop !73

192:                                              ; preds = %129, %248
  %193 = phi ptr [ %127, %129 ], [ %250, %248 ]
  %194 = getelementptr inbounds %struct.varpool_node, ptr %193, i64 0, i32 5
  %195 = load i8, ptr %194, align 4
  %196 = and i8 %195, 8
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %248, label %198

198:                                              ; preds = %192
  %199 = and i8 %195, 1
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %224, label %201

201:                                              ; preds = %198
  %202 = load ptr, ptr %193, align 8, !tbaa !53
  %203 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %202, i64 0, i32 4
  %204 = load i32, ptr %203, align 8
  %205 = and i32 %204, 512
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %201
  %208 = load i64, ptr %202, align 8
  %209 = and i64 %208, 134217728
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %224, label %211

211:                                              ; preds = %207, %201
  %212 = and i32 %204, 640
  %213 = icmp eq i32 %212, 0
  %214 = and i1 %130, %213
  br i1 %214, label %215, label %221

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.tree_decl_common, ptr %202, i64 0, i32 6
  %217 = load ptr, ptr %216, align 8, !tbaa !72
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
  %231 = load ptr, ptr %193, align 8, !tbaa !53
  br i1 %230, label %232, label %242

232:                                              ; preds = %227
  br i1 %131, label %233, label %239

233:                                              ; preds = %232
  %234 = load i64, ptr %231, align 8
  %235 = and i64 %234, 134217728
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %239, label %237

237:                                              ; preds = %233
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 459, ptr noundef nonnull @.str.2) #14
  %238 = load ptr, ptr %193, align 8, !tbaa !53
  br label %239

239:                                              ; preds = %232, %233, %237
  %240 = phi ptr [ %231, %232 ], [ %231, %233 ], [ %238, %237 ]
  tail call void @cgraph_make_decl_local(ptr noundef %240) #14
  %241 = load ptr, ptr %193, align 8, !tbaa !53
  br label %242

242:                                              ; preds = %239, %227
  %243 = phi ptr [ %241, %239 ], [ %231, %227 ]
  %244 = load i64, ptr %243, align 8
  %245 = and i64 %244, 67108864
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %242
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 462, ptr noundef nonnull @.str.2) #14
  br label %248

248:                                              ; preds = %247, %242, %192
  %249 = getelementptr inbounds %struct.varpool_node, ptr %193, i64 0, i32 2
  %250 = load ptr, ptr %249, align 8, !tbaa !9
  %251 = icmp eq ptr %250, null
  br i1 %251, label %252, label %192, !llvm.loop !74

252:                                              ; preds = %248, %126
  %253 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %254 = icmp eq ptr %253, null
  br i1 %254, label %318, label %255

255:                                              ; preds = %252
  %256 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 25, i64 1, ptr nonnull %253)
  %257 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !9
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
  %266 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %267 = tail call ptr @cgraph_node_name(ptr noundef nonnull %260) #14
  %268 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %266, ptr noundef nonnull @.str.3, ptr noundef %267) #15
  br label %269

269:                                              ; preds = %259, %265
  %270 = getelementptr inbounds %struct.cgraph_node, ptr %260, i64 0, i32 3
  %271 = load ptr, ptr %270, align 8, !tbaa !9
  %272 = icmp eq ptr %271, null
  br i1 %272, label %273, label %259, !llvm.loop !75

273:                                              ; preds = %269, %255
  %274 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %275 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %274)
  %276 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %277 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 38, i64 1, ptr %276)
  %278 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !9
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
  %287 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %288 = tail call ptr @cgraph_node_name(ptr noundef nonnull %281) #14
  %289 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %287, ptr noundef nonnull @.str.3, ptr noundef %288) #15
  br label %290

290:                                              ; preds = %280, %286
  %291 = getelementptr inbounds %struct.cgraph_node, ptr %281, i64 0, i32 3
  %292 = load ptr, ptr %291, align 8, !tbaa !9
  %293 = icmp eq ptr %292, null
  br i1 %293, label %294, label %280, !llvm.loop !76

294:                                              ; preds = %290, %273
  %295 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %296 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %295)
  %297 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %298 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 38, i64 1, ptr %297)
  %299 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !9
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
  %308 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %309 = tail call ptr @varpool_node_name(ptr noundef nonnull %302) #14
  %310 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %308, ptr noundef nonnull @.str.3, ptr noundef %309) #15
  br label %311

311:                                              ; preds = %301, %307
  %312 = getelementptr inbounds %struct.varpool_node, ptr %302, i64 0, i32 2
  %313 = load ptr, ptr %312, align 8, !tbaa !9
  %314 = icmp eq ptr %313, null
  br i1 %314, label %315, label %301, !llvm.loop !77

315:                                              ; preds = %311, %294
  %316 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %317 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %316)
  br label %318

318:                                              ; preds = %315, %252
  store i8 1, ptr @cgraph_function_flags_ready, align 1, !tbaa !72
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @cgraph_externally_visible_p(ptr noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 2
  %4 = load i8, ptr %3, align 8
  %5 = and i8 %4, 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %62, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !33
  %9 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %8, i64 0, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 512
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %7
  %14 = load i64, ptr %8, align 8
  %15 = and i64 %14, 134217728
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %62, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.tree_decl_common, ptr %8, i64 0, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 33554432
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %62

22:                                               ; preds = %17, %7
  %23 = icmp eq i8 %1, 0
  br i1 %23, label %62, label %24

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
  %37 = load ptr, ptr %36, align 8, !tbaa !39
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
  %49 = load ptr, ptr %48, align 8, !tbaa !39
  %50 = icmp eq ptr %49, %0
  br i1 %50, label %51, label %41, !llvm.loop !78

51:                                               ; preds = %47, %35, %29
  %52 = getelementptr inbounds %struct.tree_decl_minimal, ptr %8, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !72
  %54 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 56), align 16, !tbaa !9
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.tree_decl_common, ptr %8, i64 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !72
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
define internal fastcc void @VEC_cgraph_node_ptr_gc_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !9
  %3 = tail call fastcc i32 @VEC_cgraph_node_ptr_base_space(ptr noundef %2) #15
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_p_reserve(ptr noundef %2, i32 noundef 1) #14
  store ptr %6, ptr %0, align 8, !tbaa !9
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_cgraph_node_ptr_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #9 {
  %3 = load i32, ptr %0, align 8, !tbaa !63
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !63
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_cgraph_node_ptr_base_space(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !79
  %6 = load i32, ptr %0, align 8, !tbaa !63
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !10, i64 128}
!12 = !{!"cgraph_node", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !13, i64 144, !16, i64 184, !17, i64 224, !18, i64 232, !19, i64 256, !15, i64 288, !6, i64 296, !6, i64 300, !6, i64 304, !6, i64 308, !6, i64 308, !6, i64 308, !6, i64 308, !6, i64 308, !6, i64 308, !6, i64 308, !6, i64 308, !6, i64 309, !6, i64 309}
!13 = !{!"cgraph_local_info", !10, i64 0, !14, i64 8, !6, i64 32, !6, i64 32, !6, i64 32, !6, i64 32, !6, i64 32, !6, i64 32, !6, i64 32, !6, i64 32}
!14 = !{!"inline_summary", !15, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!15 = !{!"long", !7, i64 0}
!16 = !{!"cgraph_global_info", !15, i64 0, !15, i64 8, !10, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !7, i64 36}
!17 = !{!"cgraph_rtl_info", !6, i64 0}
!18 = !{!"cgraph_clone_info", !10, i64 0, !10, i64 8, !10, i64 16}
!19 = !{!"cgraph_thunk_info", !15, i64 0, !15, i64 8, !10, i64 16, !7, i64 24, !7, i64 25, !7, i64 26}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{i8 0, i8 2}
!23 = !{!12, !10, i64 16}
!24 = !{!25, !10, i64 32}
!25 = !{!"cgraph_edge", !15, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !26, i64 88, !6, i64 90, !6, i64 90, !6, i64 90}
!26 = !{!"short", !7, i64 0}
!27 = !{!25, !10, i64 8}
!28 = distinct !{!28, !21}
!29 = distinct !{!29, !21}
!30 = distinct !{!30, !21}
!31 = distinct !{!31, !21}
!32 = distinct !{!32, !21}
!33 = !{!12, !10, i64 0}
!34 = !{!12, !10, i64 200}
!35 = distinct !{!35, !21}
!36 = !{!25, !10, i64 16}
!37 = !{!25, !6, i64 72}
!38 = distinct !{!38, !21}
!39 = !{!12, !10, i64 112}
!40 = distinct !{!40, !21}
!41 = !{!12, !10, i64 96}
!42 = distinct !{!42, !21}
!43 = !{!12, !10, i64 24}
!44 = distinct !{!44, !21}
!45 = distinct !{!45, !21}
!46 = !{!12, !10, i64 80}
!47 = !{!12, !10, i64 72}
!48 = !{!12, !10, i64 88}
!49 = distinct !{!49, !21}
!50 = distinct !{!50, !21}
!51 = distinct !{!51, !21}
!52 = distinct !{!52, !21}
!53 = !{!54, !10, i64 0}
!54 = !{!"varpool_node", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !6, i64 32, !6, i64 36, !6, i64 36, !6, i64 36, !6, i64 36, !6, i64 36, !6, i64 36, !6, i64 36}
!55 = distinct !{!55, !21}
!56 = distinct !{!56, !21}
!57 = !{!58, !10, i64 0}
!58 = !{!"cgraph_node_set_def", !10, i64 0, !10, i64 8, !10, i64 16}
!59 = !{!58, !10, i64 8}
!60 = !{!61, !10, i64 0}
!61 = !{!"cgraph_node_set_element_def", !10, i64 0, !15, i64 8}
!62 = !{!61, !15, i64 8}
!63 = !{!64, !6, i64 0}
!64 = !{!"VEC_cgraph_node_ptr_base", !6, i64 0, !6, i64 4, !7, i64 8}
!65 = !{i64 0, i64 8, !9, i64 8, i64 4, !5}
!66 = !{i64 0, i64 4, !5}
!67 = distinct !{!67, !21}
!68 = !{!69, !6, i64 8}
!69 = !{!"", !10, i64 0, !6, i64 8}
!70 = distinct !{!70, !21}
!71 = distinct !{!71, !21}
!72 = !{!7, !7, i64 0}
!73 = distinct !{!73, !21}
!74 = distinct !{!74, !21}
!75 = distinct !{!75, !21}
!76 = distinct !{!76, !21}
!77 = distinct !{!77, !21}
!78 = distinct !{!78, !21}
!79 = !{!64, !6, i64 4}
