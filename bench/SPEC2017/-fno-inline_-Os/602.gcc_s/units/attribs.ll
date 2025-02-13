; ModuleID = 'attribs.c'
source_filename = "attribs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.attribute_spec = type { ptr, i32, i32, i8, i8, i8, ptr }
%struct.substring = type { ptr, i32 }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }

@attribute_hash = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [10 x i8] c"attribs.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@attributes_initialized = internal unnamed_addr global i1 false, align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"optimize\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"%qE attribute directive ignored\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"wrong number of arguments specified for %qE attribute\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"%qE attribute does not apply to types\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"%qE attribute only applies to function types\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"type attributes ignored after type is already defined\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@attribute_tables = internal unnamed_addr global [4 x ptr] zeroinitializer, align 16
@empty_attribute_table = internal constant [1 x %struct.attribute_spec] zeroinitializer, align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_attribute(ptr noundef %0) local_unnamed_addr #0 !prof !64 {
  %2 = alloca %struct.substring, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7
  %3 = load ptr, ptr %0, align 8, !tbaa !65
  store ptr %3, ptr %2, align 8, !tbaa !71
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #8
  %5 = trunc i64 %4 to i32
  %6 = getelementptr inbounds %struct.substring, ptr %2, i64 0, i32 1
  store i32 %5, ptr %6, align 8, !tbaa !73
  %7 = load ptr, ptr @attribute_hash, align 8, !tbaa !74
  %8 = tail call fastcc i32 @substring_hash(ptr noundef %3, i32 noundef %5) #8
  %9 = call ptr @htab_find_slot_with_hash(ptr noundef %7, ptr noundef nonnull %2, i32 noundef %8, i32 noundef 1) #9
  %10 = load ptr, ptr %9, align 8, !tbaa !74
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12, !prof !75

12:                                               ; preds = %1
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 206, ptr noundef nonnull @.str.1) #9
  br label %13

13:                                               ; preds = %1, %12
  store ptr %0, ptr %9, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @substring_hash(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !76 !PGOFuncName !77 {
  %3 = load i8, ptr %0, align 1, !tbaa !78
  %4 = sext i8 %3 to i32
  %5 = sext i32 %1 to i64
  %6 = getelementptr i8, ptr %0, i64 %5
  %7 = getelementptr i8, ptr %6, i64 -1
  %8 = load i8, ptr %7, align 1, !tbaa !78
  %9 = sext i8 %8 to i32
  %10 = shl nsw i32 %9, 8
  %11 = shl nsw i32 %1, 16
  %12 = add i32 %11, %4
  %13 = add i32 %12, %10
  ret i32 %13
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lookup_attribute_spec(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !79 {
  %2 = alloca %struct.substring, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7
  %3 = getelementptr inbounds %struct.tree_identifier, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !78
  store ptr %4, ptr %2, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.tree_identifier, ptr %0, i64 0, i32 1, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !78
  %7 = getelementptr inbounds %struct.substring, ptr %2, i64 0, i32 1
  store i32 %6, ptr %7, align 8, !tbaa !73
  call fastcc void @extract_attribute_substring(ptr noundef nonnull %2) #8
  %8 = load ptr, ptr @attribute_hash, align 8, !tbaa !74
  %9 = load ptr, ptr %2, align 8, !tbaa !71
  %10 = load i32, ptr %7, align 8, !tbaa !73
  %11 = tail call fastcc i32 @substring_hash(ptr noundef %9, i32 noundef %10) #8
  %12 = call ptr @htab_find_with_hash(ptr noundef %8, ptr noundef nonnull %2, i32 noundef %11) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
  ret ptr %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @extract_attribute_substring(ptr nocapture noundef %0) unnamed_addr #5 !prof !79 !PGOFuncName !80 {
  %2 = getelementptr inbounds %struct.substring, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !73
  %4 = icmp sgt i32 %3, 4
  br i1 %4, label %5, label %26, !prof !81

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !71
  %7 = load i8, ptr %6, align 1, !tbaa !78
  %8 = icmp eq i8 %7, 95
  br i1 %8, label %9, label %26, !prof !82

9:                                                ; preds = %5
  %10 = getelementptr inbounds i8, ptr %6, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !78
  %12 = icmp eq i8 %11, 95
  br i1 %12, label %13, label %26, !prof !83

13:                                               ; preds = %9
  %14 = zext nneg i32 %3 to i64
  %15 = getelementptr i8, ptr %6, i64 %14
  %16 = getelementptr i8, ptr %15, i64 -1
  %17 = load i8, ptr %16, align 1, !tbaa !78
  %18 = icmp eq i8 %17, 95
  br i1 %18, label %19, label %26, !prof !83

19:                                               ; preds = %13
  %20 = getelementptr i8, ptr %15, i64 -2
  %21 = load i8, ptr %20, align 1, !tbaa !78
  %22 = icmp eq i8 %21, 95
  br i1 %22, label %23, label %26, !prof !83

23:                                               ; preds = %19
  %24 = add nsw i32 %3, -4
  store i32 %24, ptr %2, align 8, !tbaa !73
  %25 = getelementptr inbounds i8, ptr %6, i64 2
  store ptr %25, ptr %0, align 8, !tbaa !71
  br label %26

26:                                               ; preds = %23, %19, %13, %9, %5, %1
  ret void
}

; Function Attrs: optsize
declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @decl_attributes(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !84 {
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !74
  %7 = load ptr, ptr %0, align 8, !tbaa !74
  %8 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !78
  %10 = load ptr, ptr @global_trees, align 16, !tbaa !74
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %353, label %12, !prof !85

12:                                               ; preds = %3
  %13 = load i1, ptr @attributes_initialized, align 1
  br i1 %13, label %16, label %14, !prof !86

14:                                               ; preds = %12
  tail call fastcc void @init_attributes() #8
  %15 = load ptr, ptr %0, align 8, !tbaa !74
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi ptr [ %15, %14 ], [ %7, %12 ]
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 29
  %21 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 130), align 16
  %22 = icmp ne ptr %21, null
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %36, !prof !87

24:                                               ; preds = %16
  %25 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.2, ptr noundef %1) #9
  %26 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 130), align 16, !tbaa !74
  %27 = tail call ptr @copy_list(ptr noundef %26) #9
  %28 = icmp eq ptr %25, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = tail call ptr @get_identifier(ptr noundef nonnull @.str.2) #9
  %31 = tail call ptr @tree_cons_stat(ptr noundef %30, ptr noundef %27, ptr noundef %1) #9
  store ptr %31, ptr %4, align 8, !tbaa !74
  br label %36

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.tree_list, ptr %25, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !78
  %35 = tail call ptr @chainon(ptr noundef %27, ptr noundef %34) #9
  store ptr %35, ptr %33, align 8, !tbaa !78
  br label %36

36:                                               ; preds = %29, %32, %16
  %37 = phi ptr [ %31, %29 ], [ %1, %32 ], [ %1, %16 ]
  %38 = load ptr, ptr %0, align 8, !tbaa !74
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 29
  br i1 %41, label %42, label %53, !prof !88

42:                                               ; preds = %36
  %43 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 126), align 16, !tbaa !74
  %44 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 125), align 8, !tbaa !74
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %53, label %46, !prof !89

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.tree_function_decl, ptr %38, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !78
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  store ptr %43, ptr %47, align 8, !tbaa !78
  %51 = load ptr, ptr %0, align 8, !tbaa !74
  %52 = load i64, ptr %51, align 8
  br label %53

53:                                               ; preds = %50, %46, %42, %36
  %54 = phi i64 [ %52, %50 ], [ %39, %46 ], [ %39, %42 ], [ %39, %36 ]
  %55 = phi ptr [ %51, %50 ], [ %38, %46 ], [ %38, %42 ], [ %38, %36 ]
  %56 = and i64 %54, 65535
  %57 = icmp eq i64 %56, 29
  %58 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 129), align 8
  %59 = icmp ne ptr %58, null
  %60 = select i1 %57, i1 %59, i1 false
  br i1 %60, label %61, label %77, !prof !87

61:                                               ; preds = %53
  %62 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 107), align 8, !tbaa !90
  %63 = tail call zeroext i8 %62(ptr noundef nonnull %55, ptr noundef null, ptr noundef nonnull %58, i32 noundef 0) #9
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %61
  %66 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.3, ptr noundef %37) #9
  %67 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 129), align 8, !tbaa !74
  %68 = tail call ptr @copy_list(ptr noundef %67) #9
  %69 = icmp eq ptr %66, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = tail call ptr @get_identifier(ptr noundef nonnull @.str.3) #9
  %72 = tail call ptr @tree_cons_stat(ptr noundef %71, ptr noundef %68, ptr noundef %37) #9
  store ptr %72, ptr %4, align 8, !tbaa !74
  br label %77

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.tree_list, ptr %66, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !78
  %76 = tail call ptr @chainon(ptr noundef %68, ptr noundef %75) #9
  store ptr %76, ptr %74, align 8, !tbaa !78
  br label %77

77:                                               ; preds = %70, %73, %61, %53
  %78 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 16), align 8, !tbaa !103
  %79 = load ptr, ptr %0, align 8, !tbaa !74
  call void %78(ptr noundef %79, ptr noundef nonnull %4) #9
  %80 = load ptr, ptr %4, align 8, !tbaa !78
  %81 = icmp eq ptr %80, null
  br i1 %81, label %353, label %82, !prof !104

82:                                               ; preds = %77, %347
  %83 = phi ptr [ %351, %347 ], [ %80, %77 ]
  %84 = phi i32 [ %349, %347 ], [ %2, %77 ]
  %85 = phi ptr [ %348, %347 ], [ null, %77 ]
  %86 = getelementptr inbounds %struct.tree_list, ptr %83, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !78
  %88 = getelementptr inbounds %struct.tree_list, ptr %83, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !78
  %90 = call ptr @lookup_attribute_spec(ptr noundef %87) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  store i8 0, ptr %5, align 1, !tbaa !78
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  store ptr null, ptr %6, align 8, !tbaa !74
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %94, !prof !105

92:                                               ; preds = %82
  %93 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 45, ptr noundef nonnull @.str.4, ptr noundef %87) #9
  br label %347

94:                                               ; preds = %82
  %95 = call i32 @list_length(ptr noundef %89) #9
  %96 = getelementptr inbounds %struct.attribute_spec, ptr %90, i64 0, i32 1
  %97 = load i32, ptr %96, align 8, !tbaa !106
  %98 = icmp slt i32 %95, %97
  br i1 %98, label %107, label %99, !prof !105

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.attribute_spec, ptr %90, i64 0, i32 2
  %101 = load i32, ptr %100, align 4, !tbaa !107
  %102 = icmp sgt i32 %101, -1
  br i1 %102, label %103, label %108, !prof !108

103:                                              ; preds = %99
  %104 = call i32 @list_length(ptr noundef %89) #9
  %105 = load i32, ptr %100, align 4, !tbaa !107
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %108, !prof !109

107:                                              ; preds = %103, %94
  call void (ptr, ...) @error(ptr noundef nonnull @.str.5, ptr noundef %87) #9
  br label %347

108:                                              ; preds = %99, %103
  %109 = load ptr, ptr %90, align 8, !tbaa !65
  %110 = call i32 @is_attribute_p(ptr noundef %109, ptr noundef %87) #9
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113, !prof !105

112:                                              ; preds = %108
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 307, ptr noundef nonnull @.str.1) #9
  br label %113

113:                                              ; preds = %108, %112
  %114 = getelementptr inbounds %struct.attribute_spec, ptr %90, i64 0, i32 3
  %115 = load i8, ptr %114, align 8, !tbaa !110
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %131, label %117, !prof !111

117:                                              ; preds = %113
  %118 = load ptr, ptr %0, align 8, !tbaa !74
  %119 = load i64, ptr %118, align 8
  %120 = and i64 %119, 65535
  %121 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !112
  %123 = icmp eq i32 %122, 3
  br i1 %123, label %131, label %124, !prof !113

124:                                              ; preds = %117
  %125 = and i32 %84, 7
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %124
  %128 = call ptr @tree_cons_stat(ptr noundef %87, ptr noundef %89, ptr noundef %85) #9
  br label %347

129:                                              ; preds = %124
  %130 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 45, ptr noundef nonnull @.str.6, ptr noundef %87) #9
  br label %347

131:                                              ; preds = %117, %113
  %132 = getelementptr inbounds %struct.attribute_spec, ptr %90, i64 0, i32 4
  %133 = load i8, ptr %132, align 1, !tbaa !114
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %158, label %135, !prof !115

135:                                              ; preds = %131
  %136 = load ptr, ptr %0, align 8, !tbaa !74
  %137 = load i64, ptr %136, align 8
  %138 = and i64 %137, 65535
  %139 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !112
  %141 = icmp eq i32 %140, 3
  br i1 %141, label %142, label %158, !prof !116

142:                                              ; preds = %135
  %143 = getelementptr inbounds %struct.tree_common, ptr %136, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !74
  %145 = load i64, ptr %144, align 8
  %146 = and i64 %145, 65535
  %147 = icmp eq i64 %146, 35
  br i1 %147, label %148, label %156, !prof !117

148:                                              ; preds = %142
  %149 = getelementptr inbounds %struct.tree_common, ptr %144, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !78
  %151 = getelementptr inbounds %struct.tree_type, ptr %150, i64 0, i32 16
  %152 = load ptr, ptr %151, align 8, !tbaa !78
  %153 = getelementptr inbounds %struct.tree_type, ptr %152, i64 0, i32 12
  %154 = load ptr, ptr %153, align 8, !tbaa !78
  %155 = icmp eq ptr %144, %154
  br i1 %155, label %158, label %156

156:                                              ; preds = %148, %142
  %157 = and i32 %84, -9
  br label %158

158:                                              ; preds = %148, %156, %135, %131
  %159 = phi i32 [ %84, %148 ], [ %157, %156 ], [ %84, %135 ], [ %84, %131 ]
  %160 = phi ptr [ %143, %148 ], [ %143, %156 ], [ %0, %135 ], [ %0, %131 ]
  %161 = getelementptr inbounds %struct.attribute_spec, ptr %90, i64 0, i32 5
  %162 = load i8, ptr %161, align 2, !tbaa !118
  %163 = icmp eq i8 %162, 0
  %164 = load ptr, ptr %160, align 8, !tbaa !74
  %165 = load i64, ptr %164, align 8
  br i1 %163, label %208, label %166, !prof !119

166:                                              ; preds = %158
  %167 = trunc i64 %165 to i16
  switch i16 %167, label %193 [
    i16 20, label %208
    i16 21, label %208
    i16 10, label %168
  ], !prof !120

168:                                              ; preds = %166
  %169 = getelementptr inbounds %struct.tree_common, ptr %164, i64 0, i32 2
  %170 = load ptr, ptr %169, align 8, !tbaa !78
  %171 = load i64, ptr %170, align 8
  %172 = and i64 %171, 65534
  %173 = icmp eq i64 %172, 20
  br i1 %173, label %174, label %193

174:                                              ; preds = %168
  store ptr %170, ptr %6, align 8, !tbaa !74
  %175 = load i64, ptr %164, align 8
  %176 = trunc i64 %175 to i32
  %177 = lshr i32 %176, 20
  %178 = and i32 %177, 1
  %179 = lshr i32 %176, 18
  %180 = and i32 %179, 2
  %181 = or disjoint i32 %178, %180
  %182 = getelementptr inbounds %struct.tree_type, ptr %164, i64 0, i32 6
  %183 = load i32, ptr %182, align 4
  %184 = lshr i32 %183, 11
  %185 = and i32 %184, 4
  %186 = or disjoint i32 %181, %185
  %187 = lshr i64 %175, 48
  %188 = trunc i64 %187 to i32
  %189 = and i32 %188, 65280
  %190 = or disjoint i32 %186, %189
  %191 = and i32 %159, -9
  %192 = load i64, ptr %170, align 8
  br label %198

193:                                              ; preds = %168, %166
  %194 = and i32 %159, 2
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %198, label %196

196:                                              ; preds = %193
  %197 = call ptr @tree_cons_stat(ptr noundef %87, ptr noundef %89, ptr noundef %85) #9
  br label %347

198:                                              ; preds = %193, %174
  %199 = phi i64 [ %192, %174 ], [ %165, %193 ]
  %200 = phi ptr [ %170, %174 ], [ %164, %193 ]
  %201 = phi i32 [ %191, %174 ], [ %159, %193 ]
  %202 = phi ptr [ %6, %174 ], [ %160, %193 ]
  %203 = phi i32 [ %190, %174 ], [ 0, %193 ]
  %204 = and i64 %199, 65534
  %205 = icmp eq i64 %204, 20
  br i1 %205, label %208, label %206

206:                                              ; preds = %198
  %207 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 45, ptr noundef nonnull @.str.7, ptr noundef %87) #9
  br label %347

208:                                              ; preds = %158, %198, %166, %166
  %209 = phi i64 [ %165, %166 ], [ %165, %166 ], [ %199, %198 ], [ %165, %158 ]
  %210 = phi ptr [ %164, %166 ], [ %164, %166 ], [ %200, %198 ], [ %164, %158 ]
  %211 = phi i32 [ %159, %166 ], [ %159, %166 ], [ %201, %198 ], [ %159, %158 ]
  %212 = phi ptr [ %160, %166 ], [ %160, %166 ], [ %202, %198 ], [ %160, %158 ]
  %213 = phi i32 [ 0, %166 ], [ 0, %166 ], [ %203, %198 ], [ 0, %158 ]
  %214 = and i64 %209, 65535
  %215 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %214
  %216 = load i32, ptr %215, align 4, !tbaa !112
  %217 = icmp ne i32 %216, 2
  %218 = and i32 %211, 8
  %219 = icmp eq i32 %218, 0
  %220 = select i1 %217, i1 true, i1 %219
  br i1 %220, label %227, label %221, !prof !121

221:                                              ; preds = %208
  %222 = getelementptr inbounds %struct.tree_type, ptr %210, i64 0, i32 2
  %223 = load ptr, ptr %222, align 8, !tbaa !78
  %224 = icmp eq ptr %223, null
  br i1 %224, label %227, label %225

225:                                              ; preds = %221
  %226 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 45, ptr noundef nonnull @.str.8) #9
  br label %347

227:                                              ; preds = %221, %208
  %228 = getelementptr inbounds %struct.attribute_spec, ptr %90, i64 0, i32 6
  %229 = load ptr, ptr %228, align 8, !tbaa !122
  %230 = icmp eq ptr %229, null
  br i1 %230, label %235, label %231, !prof !105

231:                                              ; preds = %227
  %232 = call ptr %229(ptr noundef nonnull %212, ptr noundef %87, ptr noundef %89, i32 noundef %211, ptr noundef nonnull %5) #9
  %233 = call ptr @chainon(ptr noundef %232, ptr noundef %85) #9
  %234 = load i8, ptr %132, align 1, !tbaa !114
  br label %235

235:                                              ; preds = %231, %227
  %236 = phi i8 [ %234, %231 ], [ %133, %227 ]
  %237 = phi ptr [ %233, %231 ], [ %85, %227 ]
  %238 = icmp eq i8 %236, 0
  br i1 %238, label %249, label %239, !prof !115

239:                                              ; preds = %235
  %240 = load ptr, ptr %0, align 8, !tbaa !74
  %241 = load i64, ptr %240, align 8
  %242 = and i64 %241, 65535
  %243 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %242
  %244 = load i32, ptr %243, align 4, !tbaa !112
  %245 = icmp eq i32 %244, 3
  br i1 %245, label %246, label %249, !prof !116

246:                                              ; preds = %239
  %247 = trunc i64 %241 to i16
  switch i16 %247, label %249 [
    i16 32, label %248
    i16 34, label %248
    i16 36, label %248
  ], !prof !123

248:                                              ; preds = %246, %246, %246
  call void @relayout_decl(ptr noundef nonnull %240) #9
  br label %249

249:                                              ; preds = %246, %248, %239, %235
  %250 = load i8, ptr %5, align 1, !tbaa !78
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %252, label %323, !prof !124

252:                                              ; preds = %249
  %253 = load ptr, ptr %212, align 8, !tbaa !74
  %254 = load i64, ptr %253, align 8
  %255 = and i64 %254, 65535
  %256 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %255
  %257 = load i32, ptr %256, align 4, !tbaa !112
  %258 = icmp eq i32 %257, 3
  %259 = getelementptr inbounds %struct.tree_decl_common, ptr %253, i64 0, i32 6
  %260 = getelementptr inbounds %struct.tree_type, ptr %253, i64 0, i32 4
  %261 = select i1 %258, ptr %259, ptr %260, !prof !125
  %262 = load ptr, ptr %261, align 8, !tbaa !78
  %263 = load ptr, ptr %90, align 8, !tbaa !65
  %264 = call ptr @lookup_attribute(ptr noundef %263, ptr noundef %262) #9
  %265 = icmp eq ptr %264, null
  br i1 %265, label %278, label %266, !prof !126

266:                                              ; preds = %252, %272
  %267 = phi ptr [ %276, %272 ], [ %264, %252 ]
  %268 = getelementptr inbounds %struct.tree_list, ptr %267, i64 0, i32 2
  %269 = load ptr, ptr %268, align 8, !tbaa !78
  %270 = call i32 @simple_cst_equal(ptr noundef %269, ptr noundef %89) #9
  %271 = icmp eq i32 %270, 1
  br i1 %271, label %323, label %272, !prof !127

272:                                              ; preds = %266
  %273 = load ptr, ptr %90, align 8, !tbaa !65
  %274 = getelementptr inbounds %struct.tree_common, ptr %267, i64 0, i32 1
  %275 = load ptr, ptr %274, align 8, !tbaa !78
  %276 = call ptr @lookup_attribute(ptr noundef %273, ptr noundef %275) #9
  %277 = icmp eq ptr %276, null
  br i1 %277, label %278, label %266, !prof !128, !llvm.loop !129

278:                                              ; preds = %272, %252
  %279 = load ptr, ptr %212, align 8, !tbaa !74
  %280 = load i64, ptr %279, align 8
  %281 = and i64 %280, 65535
  %282 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %281
  %283 = load i32, ptr %282, align 4, !tbaa !112
  %284 = icmp eq i32 %283, 3
  %285 = call ptr @tree_cons_stat(ptr noundef %87, ptr noundef %89, ptr noundef %262) #9
  br i1 %284, label %286, label %289, !prof !125

286:                                              ; preds = %278
  %287 = load ptr, ptr %212, align 8, !tbaa !74
  %288 = getelementptr inbounds %struct.tree_decl_common, ptr %287, i64 0, i32 6
  store ptr %285, ptr %288, align 8, !tbaa !78
  br label %323

289:                                              ; preds = %278
  br i1 %219, label %321, label %290, !prof !131

290:                                              ; preds = %289
  %291 = load ptr, ptr %212, align 8, !tbaa !74
  %292 = getelementptr inbounds %struct.tree_type, ptr %291, i64 0, i32 4
  store ptr %285, ptr %292, align 8, !tbaa !78
  %293 = load ptr, ptr %212, align 8, !tbaa !74
  %294 = getelementptr inbounds %struct.tree_type, ptr %293, i64 0, i32 16
  %295 = load ptr, ptr %294, align 8, !tbaa !78
  %296 = icmp ne ptr %293, %295
  %297 = icmp eq ptr %293, null
  %298 = or i1 %296, %297
  br i1 %298, label %323, label %299

299:                                              ; preds = %290, %317
  %300 = phi ptr [ %319, %317 ], [ %293, %290 ]
  %301 = getelementptr inbounds %struct.tree_type, ptr %300, i64 0, i32 4
  %302 = load ptr, ptr %301, align 8, !tbaa !78
  %303 = icmp eq ptr %302, %262
  br i1 %303, label %304, label %308

304:                                              ; preds = %299
  %305 = load ptr, ptr %212, align 8, !tbaa !74
  %306 = getelementptr inbounds %struct.tree_type, ptr %305, i64 0, i32 4
  %307 = load ptr, ptr %306, align 8, !tbaa !78
  br label %315

308:                                              ; preds = %299
  %309 = load ptr, ptr %90, align 8, !tbaa !65
  %310 = call ptr @lookup_attribute(ptr noundef %309, ptr noundef %302) #9
  %311 = icmp eq ptr %310, null
  br i1 %311, label %312, label %317

312:                                              ; preds = %308
  %313 = load ptr, ptr %301, align 8, !tbaa !78
  %314 = call ptr @tree_cons_stat(ptr noundef %87, ptr noundef %89, ptr noundef %313) #9
  br label %315

315:                                              ; preds = %312, %304
  %316 = phi ptr [ %307, %304 ], [ %314, %312 ]
  store ptr %316, ptr %301, align 8, !tbaa !78
  br label %317

317:                                              ; preds = %315, %308
  %318 = getelementptr inbounds %struct.tree_type, ptr %300, i64 0, i32 15
  %319 = load ptr, ptr %318, align 8, !tbaa !78
  %320 = icmp eq ptr %319, null
  br i1 %320, label %323, label %299, !llvm.loop !132

321:                                              ; preds = %289
  %322 = call ptr @build_type_attribute_variant(ptr noundef nonnull %279, ptr noundef %285) #9
  store ptr %322, ptr %212, align 8, !tbaa !74
  br label %323

323:                                              ; preds = %266, %317, %321, %290, %286, %249
  %324 = load ptr, ptr %6, align 8, !tbaa !74
  %325 = icmp eq ptr %324, null
  br i1 %325, label %347, label %326, !prof !133

326:                                              ; preds = %323
  %327 = call ptr @build_pointer_type(ptr noundef nonnull %324) #9
  store ptr %327, ptr %6, align 8, !tbaa !74
  %328 = icmp eq i32 %213, 0
  br i1 %328, label %331, label %329

329:                                              ; preds = %326
  %330 = call ptr @build_qualified_type(ptr noundef %327, i32 noundef %213) #9
  store ptr %330, ptr %6, align 8, !tbaa !74
  br label %331

331:                                              ; preds = %329, %326
  %332 = phi ptr [ %330, %329 ], [ %327, %326 ]
  %333 = load ptr, ptr %0, align 8, !tbaa !74
  %334 = load i64, ptr %333, align 8
  %335 = and i64 %334, 65535
  %336 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %335
  %337 = load i32, ptr %336, align 4, !tbaa !112
  %338 = icmp eq i32 %337, 3
  br i1 %338, label %339, label %341

339:                                              ; preds = %331
  %340 = getelementptr inbounds %struct.tree_common, ptr %333, i64 0, i32 2
  store ptr %332, ptr %340, align 8, !tbaa !78
  br label %347

341:                                              ; preds = %331
  %342 = icmp eq i64 %335, 10
  br i1 %342, label %345, label %343

343:                                              ; preds = %341
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 461, ptr noundef nonnull @.str.1) #9
  %344 = load ptr, ptr %6, align 8, !tbaa !74
  br label %345

345:                                              ; preds = %341, %343
  %346 = phi ptr [ %332, %341 ], [ %344, %343 ]
  store ptr %346, ptr %0, align 8, !tbaa !74
  br label %347

347:                                              ; preds = %323, %345, %339, %225, %206, %196, %129, %127, %107, %92
  %348 = phi ptr [ %85, %92 ], [ %85, %107 ], [ %85, %206 ], [ %85, %225 ], [ %197, %196 ], [ %128, %127 ], [ %85, %129 ], [ %237, %339 ], [ %237, %345 ], [ %237, %323 ]
  %349 = phi i32 [ %84, %92 ], [ %84, %107 ], [ %201, %206 ], [ %211, %225 ], [ %159, %196 ], [ %84, %127 ], [ %84, %129 ], [ %211, %339 ], [ %211, %345 ], [ %211, %323 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  %350 = getelementptr inbounds %struct.tree_common, ptr %83, i64 0, i32 1
  %351 = load ptr, ptr %350, align 8, !tbaa !78
  %352 = icmp eq ptr %351, null
  br i1 %352, label %353, label %82, !prof !134, !llvm.loop !135

353:                                              ; preds = %347, %77, %3
  %354 = phi ptr [ null, %3 ], [ null, %77 ], [ %348, %347 ]
  ret ptr %354
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_attributes() unnamed_addr #0 !prof !136 !PGOFuncName !137 {
  %1 = load <2 x ptr>, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 27), align 8, !tbaa !74
  %2 = shufflevector <2 x ptr> %1, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %2, ptr @attribute_tables, align 16, !tbaa !74
  %3 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 29), align 8, !tbaa !138
  store ptr %3, ptr getelementptr inbounds ([4 x ptr], ptr @attribute_tables, i64 0, i64 2), align 16, !tbaa !74
  %4 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 13), align 8, !tbaa !146
  store ptr %4, ptr getelementptr inbounds ([4 x ptr], ptr @attribute_tables, i64 0, i64 3), align 8, !tbaa !74
  br label %5

5:                                                ; preds = %18, %0
  %6 = phi i64 [ 0, %0 ], [ %19, %18 ]
  %7 = getelementptr inbounds [4 x ptr], ptr @attribute_tables, i64 0, i64 %6
  %8 = load <2 x ptr>, ptr %7, align 16, !tbaa !74
  %9 = icmp eq <2 x ptr> %8, zeroinitializer
  %10 = extractelement <2 x i1> %9, i64 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = getelementptr inbounds [4 x ptr], ptr @attribute_tables, i64 0, i64 %6
  store ptr @empty_attribute_table, ptr %12, align 16, !tbaa !74
  br label %13

13:                                               ; preds = %11, %5
  %14 = extractelement <2 x i1> %9, i64 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = or disjoint i64 %6, 1
  %17 = getelementptr inbounds [4 x ptr], ptr @attribute_tables, i64 0, i64 %16
  store ptr @empty_attribute_table, ptr %17, align 8, !tbaa !74
  br label %18

18:                                               ; preds = %15, %13
  %19 = add nuw i64 %6, 2
  %20 = icmp eq i64 %19, 4
  br i1 %20, label %21, label %5, !prof !147, !llvm.loop !148

21:                                               ; preds = %18
  %22 = tail call ptr @htab_create(i64 noundef 200, ptr noundef nonnull @hash_attr, ptr noundef nonnull @eq_attr, ptr noundef null) #9
  store ptr %22, ptr @attribute_hash, align 8, !tbaa !74
  br label %23

23:                                               ; preds = %21, %37
  %24 = phi i64 [ 0, %21 ], [ %38, %37 ]
  %25 = getelementptr inbounds [4 x ptr], ptr @attribute_tables, i64 0, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !74
  %27 = load ptr, ptr %26, align 8, !tbaa !65
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29, !prof !151

29:                                               ; preds = %23, %29
  %30 = phi i64 [ %32, %29 ], [ 0, %23 ]
  %31 = phi ptr [ %34, %29 ], [ %26, %23 ]
  tail call void @register_attribute(ptr noundef nonnull %31) #8
  %32 = add nuw i64 %30, 1
  %33 = load ptr, ptr %25, align 8, !tbaa !74
  %34 = getelementptr inbounds %struct.attribute_spec, ptr %33, i64 %32
  %35 = load ptr, ptr %34, align 8, !tbaa !65
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %29, !prof !152, !llvm.loop !153

37:                                               ; preds = %29, %23
  %38 = add nuw nsw i64 %24, 1
  %39 = icmp eq i64 %38, 4
  br i1 %39, label %40, label %23, !prof !154, !llvm.loop !155

40:                                               ; preds = %37
  %41 = tail call i32 @invoke_plugin_callbacks(i32 noundef 11, ptr noundef null) #9
  store i1 true, ptr @attributes_initialized, align 1
  ret void
}

; Function Attrs: optsize
declare ptr @lookup_attribute(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @copy_list(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_identifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @chainon(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @list_length(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @is_attribute_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @relayout_decl(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @simple_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_type_attribute_variant(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_qualified_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @hash_attr(ptr nocapture noundef readonly %0) #6 !prof !156 !PGOFuncName !157 {
  %2 = load ptr, ptr %0, align 8, !tbaa !65
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #8
  %4 = trunc i64 %3 to i32
  %5 = tail call fastcc i32 @substring_hash(ptr noundef %2, i32 noundef %4) #8
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @eq_attr(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 !prof !158 !PGOFuncName !159 {
  %3 = load ptr, ptr %0, align 8, !tbaa !65
  %4 = load ptr, ptr %1, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.substring, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !73
  %7 = sext i32 %6 to i64
  %8 = tail call i32 @strncmp(ptr noundef %3, ptr noundef %4, i64 noundef %7) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15, !prof !160

10:                                               ; preds = %2
  %11 = getelementptr inbounds i8, ptr %3, i64 %7
  %12 = load i8, ptr %11, align 1, !tbaa !78
  %13 = icmp eq i8 %12, 0
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %10, %2
  %16 = phi i32 [ 0, %2 ], [ %14, %10 ]
  ret i32 %16
}

; Function Attrs: optsize
declare i32 @invoke_plugin_callbacks(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!63}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
!36 = !{ptr @register_attribute, ptr @strlen, i64 61}
!37 = !{ptr @register_attribute, ptr @substring_hash, i64 61}
!38 = !{ptr @register_attribute, ptr @htab_find_slot_with_hash, i64 61}
!39 = !{ptr @register_attribute, ptr @fancy_abort, i64 1}
!40 = !{ptr @lookup_attribute_spec, ptr @extract_attribute_substring, i64 14891}
!41 = !{ptr @lookup_attribute_spec, ptr @substring_hash, i64 14891}
!42 = !{ptr @lookup_attribute_spec, ptr @htab_find_with_hash, i64 14891}
!43 = !{ptr @decl_attributes, ptr @init_attributes, i64 2}
!44 = !{ptr @decl_attributes, ptr @lookup_attribute, i64 14880}
!45 = !{ptr @decl_attributes, ptr @copy_list, i64 2}
!46 = !{ptr @decl_attributes, ptr @chainon, i64 14887}
!47 = !{ptr @decl_attributes, ptr @lookup_attribute_spec, i64 14892}
!48 = !{ptr @decl_attributes, ptr @warning, i64 2}
!49 = !{ptr @decl_attributes, ptr @list_length, i64 29347}
!50 = !{ptr @decl_attributes, ptr @error, i64 2}
!51 = !{ptr @decl_attributes, ptr @is_attribute_p, i64 14889}
!52 = !{ptr @decl_attributes, ptr @fancy_abort, i64 1}
!53 = !{ptr @decl_attributes, ptr @tree_cons_stat, i64 14869}
!54 = !{ptr @decl_attributes, ptr @relayout_decl, i64 3}
!55 = !{ptr @decl_attributes, ptr @simple_cst_equal, i64 4}
!56 = !{ptr @decl_attributes, ptr @build_type_attribute_variant, i64 565}
!57 = !{ptr @decl_attributes, ptr @build_pointer_type, i64 1}
!58 = !{ptr @decl_attributes, ptr @build_qualified_type, i64 1}
!59 = !{ptr @init_attributes, ptr @htab_create, i64 1}
!60 = !{ptr @init_attributes, ptr @register_attribute, i64 31}
!61 = !{ptr @init_attributes, ptr @invoke_plugin_callbacks, i64 1}
!62 = !{ptr @eq_attr, ptr @strncmp, i64 15127}
!63 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!64 = !{!"function_entry_count", i64 61}
!65 = !{!66, !67, i64 0}
!66 = !{!"attribute_spec", !67, i64 0, !70, i64 8, !70, i64 12, !68, i64 16, !68, i64 17, !68, i64 18, !67, i64 24}
!67 = !{!"any pointer", !68, i64 0}
!68 = !{!"omnipotent char", !69, i64 0}
!69 = !{!"Simple C/C++ TBAA"}
!70 = !{!"int", !68, i64 0}
!71 = !{!72, !67, i64 0}
!72 = !{!"substring", !67, i64 0, !70, i64 8}
!73 = !{!72, !70, i64 8}
!74 = !{!67, !67, i64 0}
!75 = !{!"branch_weights", i32 62, i32 1}
!76 = !{!"function_entry_count", i64 14952}
!77 = !{!"attribs.c:substring_hash"}
!78 = !{!68, !68, i64 0}
!79 = !{!"function_entry_count", i64 14891}
!80 = !{!"attribs.c:extract_attribute_substring"}
!81 = !{!"branch_weights", i32 14805, i32 88}
!82 = !{!"branch_weights", i32 12969, i32 1837}
!83 = !{!"branch_weights", i32 12969, i32 1}
!84 = !{!"function_entry_count", i64 167312}
!85 = !{!"branch_weights", i32 1, i32 167313}
!86 = !{!"branch_weights", i32 167312, i32 2}
!87 = !{!"branch_weights", i32 19901, i32 -965103969}
!88 = !{!"branch_weights", i32 19901, i32 147413}
!89 = !{!"branch_weights", i32 19901, i32 1}
!90 = !{!91, !67, i64 1968}
!91 = !{!"gcc_target", !92, i64 0, !94, i64 368, !95, i64 664, !70, i64 744, !67, i64 752, !67, i64 760, !67, i64 768, !67, i64 776, !67, i64 784, !67, i64 792, !67, i64 800, !67, i64 808, !67, i64 816, !67, i64 824, !67, i64 832, !67, i64 840, !67, i64 848, !67, i64 856, !67, i64 864, !67, i64 872, !67, i64 880, !67, i64 888, !67, i64 896, !67, i64 904, !67, i64 912, !67, i64 920, !67, i64 928, !67, i64 936, !67, i64 944, !67, i64 952, !67, i64 960, !67, i64 968, !67, i64 976, !67, i64 984, !67, i64 992, !67, i64 1000, !67, i64 1008, !67, i64 1016, !67, i64 1024, !67, i64 1032, !67, i64 1040, !67, i64 1048, !67, i64 1056, !96, i64 1064, !96, i64 1072, !67, i64 1080, !67, i64 1088, !67, i64 1096, !67, i64 1104, !67, i64 1112, !67, i64 1120, !67, i64 1128, !67, i64 1136, !67, i64 1144, !67, i64 1152, !67, i64 1160, !67, i64 1168, !97, i64 1176, !67, i64 1232, !67, i64 1240, !67, i64 1248, !67, i64 1256, !67, i64 1264, !67, i64 1272, !67, i64 1280, !67, i64 1288, !67, i64 1296, !67, i64 1304, !67, i64 1312, !67, i64 1320, !67, i64 1328, !67, i64 1336, !67, i64 1344, !67, i64 1352, !67, i64 1360, !67, i64 1368, !67, i64 1376, !67, i64 1384, !67, i64 1392, !67, i64 1400, !67, i64 1408, !67, i64 1416, !67, i64 1424, !67, i64 1432, !67, i64 1440, !67, i64 1448, !67, i64 1456, !96, i64 1464, !98, i64 1472, !67, i64 1664, !67, i64 1672, !67, i64 1680, !67, i64 1688, !67, i64 1696, !67, i64 1704, !67, i64 1712, !67, i64 1720, !67, i64 1728, !67, i64 1736, !67, i64 1744, !67, i64 1752, !67, i64 1760, !67, i64 1768, !67, i64 1776, !99, i64 1784, !100, i64 1792, !101, i64 1896, !102, i64 1968, !67, i64 2016, !68, i64 2024, !68, i64 2025, !68, i64 2026, !68, i64 2027, !68, i64 2028, !68, i64 2029, !68, i64 2030, !68, i64 2031, !68, i64 2032, !68, i64 2033, !68, i64 2034, !68, i64 2035}
!92 = !{!"asm_out", !67, i64 0, !67, i64 8, !67, i64 16, !93, i64 24, !93, i64 56, !67, i64 88, !67, i64 96, !67, i64 104, !67, i64 112, !67, i64 120, !67, i64 128, !67, i64 136, !67, i64 144, !67, i64 152, !67, i64 160, !67, i64 168, !67, i64 176, !67, i64 184, !67, i64 192, !67, i64 200, !67, i64 208, !67, i64 216, !67, i64 224, !67, i64 232, !67, i64 240, !67, i64 248, !67, i64 256, !67, i64 264, !67, i64 272, !67, i64 280, !67, i64 288, !67, i64 296, !67, i64 304, !67, i64 312, !67, i64 320, !67, i64 328, !67, i64 336, !67, i64 344, !67, i64 352, !67, i64 360}
!93 = !{!"asm_int_op", !67, i64 0, !67, i64 8, !67, i64 16, !67, i64 24}
!94 = !{!"sched", !67, i64 0, !67, i64 8, !67, i64 16, !67, i64 24, !67, i64 32, !67, i64 40, !67, i64 48, !67, i64 56, !67, i64 64, !67, i64 72, !67, i64 80, !67, i64 88, !67, i64 96, !67, i64 104, !67, i64 112, !67, i64 120, !67, i64 128, !67, i64 136, !67, i64 144, !67, i64 152, !67, i64 160, !67, i64 168, !67, i64 176, !67, i64 184, !67, i64 192, !67, i64 200, !67, i64 208, !67, i64 216, !67, i64 224, !67, i64 232, !67, i64 240, !67, i64 248, !67, i64 256, !67, i64 264, !67, i64 272, !67, i64 280, !67, i64 288}
!95 = !{!"vectorize", !67, i64 0, !67, i64 8, !67, i64 16, !67, i64 24, !67, i64 32, !67, i64 40, !67, i64 48, !67, i64 56, !67, i64 64, !67, i64 72}
!96 = !{!"long", !68, i64 0}
!97 = !{!"addr_space", !67, i64 0, !67, i64 8, !67, i64 16, !67, i64 24, !67, i64 32, !67, i64 40, !67, i64 48}
!98 = !{!"calls", !67, i64 0, !67, i64 8, !67, i64 16, !67, i64 24, !67, i64 32, !67, i64 40, !67, i64 48, !67, i64 56, !67, i64 64, !67, i64 72, !67, i64 80, !67, i64 88, !67, i64 96, !67, i64 104, !67, i64 112, !67, i64 120, !67, i64 128, !67, i64 136, !67, i64 144, !67, i64 152, !67, i64 160, !67, i64 168, !67, i64 176, !67, i64 184}
!99 = !{!"c", !67, i64 0}
!100 = !{!"cxx", !67, i64 0, !67, i64 8, !67, i64 16, !67, i64 24, !67, i64 32, !67, i64 40, !67, i64 48, !67, i64 56, !67, i64 64, !67, i64 72, !67, i64 80, !67, i64 88, !67, i64 96}
!101 = !{!"emutls", !67, i64 0, !67, i64 8, !67, i64 16, !67, i64 24, !67, i64 32, !67, i64 40, !67, i64 48, !67, i64 56, !68, i64 64, !68, i64 65}
!102 = !{!"target_option_hooks", !67, i64 0, !67, i64 8, !67, i64 16, !67, i64 24, !67, i64 32, !67, i64 40}
!103 = !{!91, !67, i64 848}
!104 = !{!"branch_weights", i32 152421, i32 14892}
!105 = !{!"branch_weights", i32 1, i32 14892}
!106 = !{!66, !70, i64 8}
!107 = !{!66, !70, i64 12}
!108 = !{!"branch_weights", i32 14459, i32 434}
!109 = !{!"branch_weights", i32 1, i32 14459}
!110 = !{!66, !68, i64 16}
!111 = !{!"branch_weights", i32 12038, i32 2855}
!112 = !{!70, !70, i64 0}
!113 = !{!"branch_weights", i32 2855, i32 1}
!114 = !{!66, !68, i64 17}
!115 = !{!"branch_weights", i32 14318, i32 575}
!116 = !{!"branch_weights", i32 575, i32 1}
!117 = !{!"branch_weights", i32 1, i32 575}
!118 = !{!66, !68, i64 18}
!119 = !{!"branch_weights", i32 14327, i32 566}
!120 = !{!"branch_weights", i32 1, i32 2264, i32 2, i32 1}
!121 = !{!"branch_weights", i32 8577793, i32 575}
!122 = !{!66, !67, i64 24}
!123 = !{!"branch_weights", i32 190109375, i32 331776, i32 331200, i32 330625}
!124 = !{!"branch_weights", i32 14871, i32 22}
!125 = !{!"branch_weights", i32 14306, i32 566}
!126 = !{!"branch_weights", i32 14867, i32 4}
!127 = !{!"branch_weights", i32 1, i32 4}
!128 = !{!"branch_weights", i32 4, i32 0}
!129 = distinct !{!129, !130}
!130 = !{!"llvm.loop.mustprogress"}
!131 = !{!"branch_weights", i32 566, i32 1}
!132 = distinct !{!132, !130}
!133 = !{!"branch_weights", i32 14892, i32 1}
!134 = !{!"branch_weights", i32 14892, i32 0}
!135 = distinct !{!135, !130}
!136 = !{!"function_entry_count", i64 1}
!137 = !{!"attribs.c:init_attributes"}
!138 = !{!139, !67, i64 232}
!139 = !{!"lang_hooks", !67, i64 0, !96, i64 8, !67, i64 16, !67, i64 24, !67, i64 32, !67, i64 40, !67, i64 48, !67, i64 56, !67, i64 64, !67, i64 72, !67, i64 80, !67, i64 88, !67, i64 96, !67, i64 104, !67, i64 112, !67, i64 120, !67, i64 128, !67, i64 136, !67, i64 144, !67, i64 152, !67, i64 160, !67, i64 168, !67, i64 176, !67, i64 184, !67, i64 192, !67, i64 200, !67, i64 208, !67, i64 216, !67, i64 224, !67, i64 232, !140, i64 240, !141, i64 248, !142, i64 256, !143, i64 272, !144, i64 432, !145, i64 560, !67, i64 584, !67, i64 592, !67, i64 600, !67, i64 608, !67, i64 616, !67, i64 624, !67, i64 632, !67, i64 640, !67, i64 648, !67, i64 656, !67, i64 664, !68, i64 672}
!140 = !{!"lang_hooks_for_tree_inlining", !67, i64 0}
!141 = !{!"lang_hooks_for_callgraph", !67, i64 0}
!142 = !{!"lang_hooks_for_tree_dump", !67, i64 0, !67, i64 8}
!143 = !{!"lang_hooks_for_decls", !67, i64 0, !67, i64 8, !67, i64 16, !67, i64 24, !67, i64 32, !67, i64 40, !67, i64 48, !67, i64 56, !67, i64 64, !67, i64 72, !67, i64 80, !67, i64 88, !67, i64 96, !67, i64 104, !67, i64 112, !67, i64 120, !67, i64 128, !67, i64 136, !67, i64 144, !67, i64 152}
!144 = !{!"lang_hooks_for_types", !67, i64 0, !67, i64 8, !67, i64 16, !67, i64 24, !67, i64 32, !67, i64 40, !67, i64 48, !67, i64 56, !67, i64 64, !67, i64 72, !67, i64 80, !67, i64 88, !67, i64 96, !67, i64 104, !67, i64 112, !68, i64 120}
!145 = !{!"lang_hooks_for_lto", !67, i64 0, !67, i64 8, !67, i64 16}
!146 = !{!91, !67, i64 824}
!147 = !{!"branch_weights", i32 2, i32 0}
!148 = distinct !{!148, !130, !149, !150}
!149 = !{!"llvm.loop.isvectorized", i32 1}
!150 = !{!"llvm.loop.unroll.runtime.disable"}
!151 = !{!"branch_weights", i32 1, i32 159}
!152 = !{!"branch_weights", i32 159, i32 1825}
!153 = distinct !{!153, !130}
!154 = !{!"branch_weights", i32 2, i32 3}
!155 = distinct !{!155, !130}
!156 = !{!"function_entry_count", i64 0}
!157 = !{!"attribs.c:hash_attr"}
!158 = !{!"function_entry_count", i64 15127}
!159 = !{!"attribs.c:eq_attr"}
!160 = !{!"branch_weights", i32 14892, i32 237}
