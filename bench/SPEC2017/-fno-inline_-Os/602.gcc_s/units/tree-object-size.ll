; ModuleID = 'tree-object-size.c'
source_filename = "tree-object-size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.object_size_info = type { i32, ptr, ptr, i32, i8, ptr, ptr, ptr }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [19 x i8] c"tree-object-size.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@offset_limit = internal unnamed_addr global i64 0, align 8
@object_sizes = internal unnamed_addr global [4 x ptr] zeroinitializer, align 16
@computed = internal unnamed_addr global [4 x ptr] zeroinitializer, align 16
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Computing %s %sobject size for \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"minimum\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"maximum\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [13 x i8] c"Reexamining \00", align 1
@unknown = internal unnamed_addr constant [4 x i64] [i64 -1, i64 -1, i64 0, i64 0], align 16
@.str.10 = private unnamed_addr constant [24 x i8] c": %s %sobject size %lu\0A\00", align 1
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.11 = private unnamed_addr constant [28 x i8] c"Found a dependency loop at \00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"Visiting use-def links for \00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"Need to reexamine \00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.15 = private unnamed_addr constant [11 x i8] c"alloc_size\00", align 1
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@pass_object_sizes = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.16, ptr null, ptr @compute_object_sizes, ptr null, ptr null, i32 0, i32 0, i32 40, i32 0, i32 0, i32 0, i32 5 } }, align 8
@.str.16 = private unnamed_addr constant [6 x i8] c"objsz\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"Simplified\0A  \00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"to\0A  \00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @compute_builtin_object_size(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !60 {
  %3 = alloca %struct.object_size_info, align 8
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = alloca i32, align 4
  %6 = icmp ult i32 %1, 4
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 463, ptr noundef nonnull @.str.1) #15
  br label %8

8:                                                ; preds = %2, %7
  %9 = load i64, ptr @offset_limit, align 8, !tbaa !61
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call fastcc void @init_offset_limit() #16
  br label %12

12:                                               ; preds = %11, %8
  %13 = load i64, ptr %0, align 8
  %14 = trunc i64 %13 to i16
  switch i16 %14, label %207 [
    i16 121, label %15
    i16 141, label %17
  ]

15:                                               ; preds = %12
  %16 = tail call fastcc i64 @addr_object_size(ptr noundef null, ptr noundef nonnull %0, i32 noundef %1) #16
  br label %211

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !65
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i16
  switch i16 %21, label %207 [
    i16 10, label %22
    i16 12, label %22
  ]

22:                                               ; preds = %17, %17
  %23 = sext i32 %1 to i64
  %24 = getelementptr inbounds [4 x ptr], ptr @object_sizes, i64 0, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !66
  %26 = icmp eq ptr %25, null
  br i1 %26, label %207, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds [4 x ptr], ptr @computed, i64 0, i64 %23
  %29 = load ptr, ptr %28, align 8, !tbaa !66
  %30 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !65
  %32 = tail call i32 @bitmap_bit_p(ptr noundef %29, i32 noundef %31) #15
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %201

34:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %36 = icmp eq ptr %35, null
  br i1 %36, label %49, label %37

37:                                               ; preds = %34
  %38 = and i32 %1, 2
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, ptr @.str.4, ptr @.str.3
  %41 = and i32 %1, 1
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, ptr @.str.6, ptr @.str.5
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %35, ptr noundef nonnull @.str.2, ptr noundef nonnull %40, ptr noundef nonnull %43) #16
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %46 = load i32, ptr @dump_flags, align 4, !tbaa !68
  tail call void @print_generic_expr(ptr noundef %45, ptr noundef nonnull %0, i32 noundef %46) #15
  %47 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %48 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %47)
  br label %49

49:                                               ; preds = %37, %34
  %50 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #15
  %51 = getelementptr inbounds %struct.object_size_info, ptr %3, i64 0, i32 1
  store ptr %50, ptr %51, align 8, !tbaa !70
  %52 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #15
  %53 = getelementptr inbounds %struct.object_size_info, ptr %3, i64 0, i32 2
  store ptr %52, ptr %53, align 8, !tbaa !72
  store i32 %1, ptr %3, align 8, !tbaa !73
  %54 = getelementptr inbounds %struct.object_size_info, ptr %3, i64 0, i32 5
  %55 = getelementptr inbounds %struct.object_size_info, ptr %3, i64 0, i32 6
  %56 = getelementptr inbounds %struct.object_size_info, ptr %3, i64 0, i32 7
  %57 = getelementptr inbounds %struct.object_size_info, ptr %3, i64 0, i32 3
  store i32 0, ptr %57, align 8, !tbaa !74
  %58 = getelementptr inbounds %struct.object_size_info, ptr %3, i64 0, i32 4
  store i8 0, ptr %58, align 4, !tbaa !75
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %54, i8 0, i64 24, i1 false)
  call fastcc void @collect_object_sizes_for(ptr noundef nonnull %3, ptr noundef nonnull %0) #16
  %59 = load ptr, ptr %53, align 8, !tbaa !72
  %60 = load ptr, ptr %59, align 8, !tbaa !76
  %61 = icmp eq ptr %60, null
  br i1 %61, label %148, label %62

62:                                               ; preds = %49
  %63 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #15
  %64 = and i32 %1, 2
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %105, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr @cfun, align 8, !tbaa !66
  %68 = getelementptr inbounds %struct.function, ptr %67, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !78
  %70 = getelementptr inbounds %struct.gimple_df, ptr %69, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !80
  %72 = call fastcc i32 @VEC_tree_base_length(ptr noundef %71) #16
  %73 = zext i32 %72 to i64
  %74 = call ptr @xcalloc(i64 noundef %73, i64 noundef 4) #15
  store ptr %74, ptr %54, align 8, !tbaa !84
  %75 = load ptr, ptr @cfun, align 8, !tbaa !66
  %76 = getelementptr inbounds %struct.function, ptr %75, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !78
  %78 = getelementptr inbounds %struct.gimple_df, ptr %77, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !80
  %80 = call fastcc i32 @VEC_tree_base_length(ptr noundef %79) #16
  %81 = zext i32 %80 to i64
  %82 = shl nuw nsw i64 %81, 2
  %83 = call ptr @xmalloc(i64 noundef %82) #15
  store ptr %83, ptr %55, align 8, !tbaa !85
  store ptr %83, ptr %56, align 8, !tbaa !86
  store i32 1, ptr %57, align 8, !tbaa !74
  %84 = load ptr, ptr %53, align 8, !tbaa !72
  call void @bitmap_copy(ptr noundef %63, ptr noundef %84) #15
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %63, ptr noundef nonnull %5) #16
  %85 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %5) #16, !range !87
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %102, label %87

87:                                               ; preds = %66, %99
  %88 = load ptr, ptr %53, align 8, !tbaa !72
  %89 = load i32, ptr %5, align 4, !tbaa !68
  %90 = call i32 @bitmap_bit_p(ptr noundef %88, i32 noundef %89) #15
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %87
  %93 = load ptr, ptr @cfun, align 8, !tbaa !66
  %94 = getelementptr inbounds %struct.function, ptr %93, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !78
  %96 = getelementptr inbounds %struct.gimple_df, ptr %95, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !80
  %98 = call fastcc ptr @VEC_tree_base_index(ptr noundef %97, i32 noundef %89) #16
  call fastcc void @check_for_plus_in_loops(ptr noundef nonnull %3, ptr noundef %98) #16
  br label %99

99:                                               ; preds = %87, %92
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %100 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %5) #16, !range !87
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %87, !llvm.loop !88

102:                                              ; preds = %99, %66
  %103 = load ptr, ptr %54, align 8, !tbaa !84
  call void @free(ptr noundef %103) #16
  store ptr null, ptr %54, align 8, !tbaa !84
  %104 = load ptr, ptr %55, align 8, !tbaa !85
  call void @free(ptr noundef %104) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %55, i8 0, i64 16, i1 false)
  br label %105

105:                                              ; preds = %102, %62
  br label %106

106:                                              ; preds = %105, %143
  store i32 2, ptr %57, align 8, !tbaa !74
  store i8 0, ptr %58, align 4, !tbaa !75
  %107 = load ptr, ptr %53, align 8, !tbaa !72
  call void @bitmap_copy(ptr noundef %63, ptr noundef %107) #15
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %63, ptr noundef nonnull %5) #16
  %108 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %5) #16, !range !87
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %143, label %110

110:                                              ; preds = %106, %140
  %111 = load ptr, ptr %53, align 8, !tbaa !72
  %112 = load i32, ptr %5, align 4, !tbaa !68
  %113 = call i32 @bitmap_bit_p(ptr noundef %111, i32 noundef %112) #15
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %140, label %115

115:                                              ; preds = %110
  %116 = load ptr, ptr @cfun, align 8, !tbaa !66
  %117 = getelementptr inbounds %struct.function, ptr %116, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !78
  %119 = getelementptr inbounds %struct.gimple_df, ptr %118, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !80
  %121 = call fastcc ptr @VEC_tree_base_index(ptr noundef %120, i32 noundef %112) #16
  call fastcc void @collect_object_sizes_for(ptr noundef nonnull %3, ptr noundef %121) #16
  %122 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %123 = icmp eq ptr %122, null
  br i1 %123, label %140, label %124

124:                                              ; preds = %115
  %125 = load i32, ptr @dump_flags, align 4, !tbaa !68
  %126 = and i32 %125, 8
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %140, label %128

128:                                              ; preds = %124
  %129 = call i64 @fwrite(ptr nonnull @.str.8, i64 12, i64 1, ptr nonnull %122)
  %130 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %131 = load ptr, ptr @cfun, align 8, !tbaa !66
  %132 = getelementptr inbounds %struct.function, ptr %131, i64 0, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !78
  %134 = getelementptr inbounds %struct.gimple_df, ptr %133, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !80
  %136 = call fastcc ptr @VEC_tree_base_index(ptr noundef %135, i32 noundef %112) #16
  %137 = load i32, ptr @dump_flags, align 4, !tbaa !68
  call void @print_generic_expr(ptr noundef %130, ptr noundef %136, i32 noundef %137) #15
  %138 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %139 = call i32 @fputc(i32 10, ptr %138)
  br label %140

140:                                              ; preds = %110, %128, %124, %115
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %141 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %5) #16, !range !87
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %110, !llvm.loop !90

143:                                              ; preds = %140, %106
  %144 = load i8, ptr %58, align 4, !tbaa !75
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %146, label %106, !llvm.loop !91

146:                                              ; preds = %143
  call void @bitmap_obstack_free(ptr noundef %63) #15
  %147 = load ptr, ptr %53, align 8, !tbaa !72
  br label %148

148:                                              ; preds = %146, %49
  %149 = phi ptr [ %147, %146 ], [ %59, %49 ]
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %149, ptr noundef nonnull %5) #16
  %150 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %5) #16, !range !87
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %158, label %152

152:                                              ; preds = %148, %152
  %153 = load ptr, ptr %28, align 8, !tbaa !66
  %154 = load i32, ptr %5, align 4, !tbaa !68
  %155 = call zeroext i8 @bitmap_set_bit(ptr noundef %153, i32 noundef %154) #15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %156 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %5) #16, !range !87
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %158, label %152, !llvm.loop !92

158:                                              ; preds = %152, %148
  %159 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %160 = icmp eq ptr %159, null
  br i1 %160, label %198, label %161

161:                                              ; preds = %158
  %162 = load ptr, ptr %51, align 8, !tbaa !70
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %162, ptr noundef nonnull %5) #16
  %163 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %5) #16, !range !87
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %198, label %165

165:                                              ; preds = %161
  %166 = getelementptr inbounds [4 x i64], ptr @unknown, i64 0, i64 %23
  %167 = load i64, ptr %166, align 8, !tbaa !61
  %168 = and i32 %1, 2
  %169 = icmp eq i32 %168, 0
  %170 = select i1 %169, ptr @.str.4, ptr @.str.3
  %171 = and i32 %1, 1
  %172 = icmp eq i32 %171, 0
  %173 = select i1 %172, ptr @.str.6, ptr @.str.5
  br label %174

174:                                              ; preds = %165, %195
  %175 = load ptr, ptr %24, align 8, !tbaa !66
  %176 = load i32, ptr %5, align 4, !tbaa !68
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i64, ptr %175, i64 %177
  %179 = load i64, ptr %178, align 8, !tbaa !61
  %180 = icmp eq i64 %179, %167
  br i1 %180, label %195, label %181

181:                                              ; preds = %174
  %182 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %183 = load ptr, ptr @cfun, align 8, !tbaa !66
  %184 = getelementptr inbounds %struct.function, ptr %183, i64 0, i32 3
  %185 = load ptr, ptr %184, align 8, !tbaa !78
  %186 = getelementptr inbounds %struct.gimple_df, ptr %185, i64 0, i32 2
  %187 = load ptr, ptr %186, align 8, !tbaa !80
  %188 = call fastcc ptr @VEC_tree_base_index(ptr noundef %187, i32 noundef %176) #16
  %189 = load i32, ptr @dump_flags, align 4, !tbaa !68
  call void @print_generic_expr(ptr noundef %182, ptr noundef %188, i32 noundef %189) #15
  %190 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %191 = load ptr, ptr %24, align 8, !tbaa !66
  %192 = getelementptr inbounds i64, ptr %191, i64 %177
  %193 = load i64, ptr %192, align 8, !tbaa !61
  %194 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %190, ptr noundef nonnull @.str.10, ptr noundef nonnull %170, ptr noundef nonnull %173, i64 noundef %193) #16
  br label %195

195:                                              ; preds = %174, %181
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %196 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %5) #16, !range !87
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %198, label %174, !llvm.loop !93

198:                                              ; preds = %195, %161, %158
  %199 = load ptr, ptr %53, align 8, !tbaa !72
  call void @bitmap_obstack_free(ptr noundef %199) #15
  store ptr null, ptr %53, align 8, !tbaa !72
  %200 = load ptr, ptr %51, align 8, !tbaa !70
  call void @bitmap_obstack_free(ptr noundef %200) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #17
  br label %201

201:                                              ; preds = %198, %27
  %202 = load ptr, ptr %24, align 8, !tbaa !66
  %203 = load i32, ptr %30, align 8, !tbaa !65
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds i64, ptr %202, i64 %204
  %206 = load i64, ptr %205, align 8, !tbaa !61
  br label %211

207:                                              ; preds = %17, %12, %22
  %208 = sext i32 %1 to i64
  %209 = getelementptr inbounds [4 x i64], ptr @unknown, i64 0, i64 %208
  %210 = load i64, ptr %209, align 8, !tbaa !61
  br label %211

211:                                              ; preds = %207, %201, %15
  %212 = phi i64 [ %16, %15 ], [ %206, %201 ], [ %210, %207 ]
  ret i64 %212
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_offset_limit() unnamed_addr #0 !prof !60 !PGOFuncName !94 {
  %1 = load ptr, ptr @sizetype_tab, align 16, !tbaa !66
  %2 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = tail call i32 @host_integerp(ptr noundef %3, i32 noundef 1) #15
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %0
  %7 = load ptr, ptr @sizetype_tab, align 16, !tbaa !66
  %8 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 14
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  %10 = tail call i64 @tree_low_cst(ptr noundef %9, i32 noundef 1) #15
  %11 = lshr i64 %10, 1
  br label %12

12:                                               ; preds = %0, %6
  %13 = phi i64 [ %11, %6 ], [ 9223372036854775807, %0 ]
  store i64 %13, ptr @offset_limit, align 8, !tbaa !61
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @addr_object_size(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !60 !PGOFuncName !95 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 121
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 161, ptr noundef nonnull @.str.1) #15
  br label %8

8:                                                ; preds = %3, %7
  %9 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !68
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %16, label %21

16:                                               ; preds = %8
  %17 = tail call ptr @get_base_address(ptr noundef nonnull %10) #15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %110, label %19

19:                                               ; preds = %16
  %20 = load i64, ptr %17, align 8
  br label %21

21:                                               ; preds = %19, %8
  %22 = phi i64 [ %20, %19 ], [ %11, %8 ]
  %23 = phi ptr [ %17, %19 ], [ %10, %8 ]
  %24 = and i64 %22, 65535
  %25 = icmp eq i64 %24, 47
  br i1 %25, label %26, label %81

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.tree_exp, ptr %23, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !65
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 141
  br i1 %31, label %32, label %81

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !65
  %35 = load i64, ptr %34, align 8
  %36 = trunc i64 %35 to i16
  switch i16 %36, label %81 [
    i16 10, label %37
    i16 12, label %37
  ]

37:                                               ; preds = %32, %32
  %38 = icmp ne ptr %0, null
  %39 = and i32 %2, 1
  %40 = icmp eq i32 %39, 0
  %41 = and i1 %38, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = and i32 %2, -2
  %44 = tail call i64 @compute_builtin_object_size(ptr noundef nonnull %28, i32 noundef %43) #16
  %45 = sext i32 %2 to i64
  br label %70

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.object_size_info, ptr %0, i64 0, i32 3
  %48 = load i32, ptr %47, align 8, !tbaa !74
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  tail call fastcc void @collect_object_sizes_for(ptr noundef nonnull %0, ptr noundef nonnull %28) #16
  br label %51

51:                                               ; preds = %50, %46
  %52 = sext i32 %2 to i64
  %53 = getelementptr inbounds [4 x ptr], ptr @computed, i64 0, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !66
  %55 = getelementptr inbounds %struct.tree_ssa_name, ptr %28, i64 0, i32 3
  %56 = load i32, ptr %55, align 8, !tbaa !65
  %57 = tail call i32 @bitmap_bit_p(ptr noundef %54, i32 noundef %56) #15
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %51
  %60 = getelementptr inbounds [4 x ptr], ptr @object_sizes, i64 0, i64 %52
  %61 = load ptr, ptr %60, align 8, !tbaa !66
  %62 = load i32, ptr %55, align 8, !tbaa !65
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i64, ptr %61, i64 %63
  br label %67

65:                                               ; preds = %51
  %66 = getelementptr inbounds [4 x i64], ptr @unknown, i64 0, i64 %52
  br label %67

67:                                               ; preds = %65, %59
  %68 = phi ptr [ %64, %59 ], [ %66, %65 ]
  %69 = load i64, ptr %68, align 8, !tbaa !61
  br label %70

70:                                               ; preds = %67, %42
  %71 = phi i64 [ %52, %67 ], [ %45, %42 ]
  %72 = phi i64 [ %69, %67 ], [ %44, %42 ]
  %73 = getelementptr inbounds [4 x i64], ptr @unknown, i64 0, i64 %71
  %74 = load i64, ptr %73, align 8, !tbaa !61
  %75 = icmp ne i64 %72, %74
  %76 = load i64, ptr @offset_limit, align 8
  %77 = icmp ult i64 %72, %76
  %78 = select i1 %75, i1 %77, i1 false
  br i1 %78, label %79, label %120

79:                                               ; preds = %70
  %80 = tail call ptr @size_int_kind(i64 noundef %72, i32 noundef 0) #15
  br label %114

81:                                               ; preds = %21, %26, %32
  %82 = trunc i64 %22 to i16
  switch i16 %82, label %88 [
    i16 32, label %90
    i16 34, label %90
    i16 36, label %90
    i16 141, label %83
  ]

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.tree_ssa_name, ptr %23, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !65
  %86 = load i64, ptr %85, align 8
  %87 = trunc i64 %86 to i16
  switch i16 %87, label %88 [
    i16 32, label %90
    i16 34, label %90
    i16 36, label %90
  ]

88:                                               ; preds = %83, %81
  %89 = icmp eq i64 %24, 28
  br i1 %89, label %90, label %110

90:                                               ; preds = %83, %83, %83, %81, %81, %81, %88
  %91 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !65
  %93 = getelementptr inbounds %struct.tree_type, ptr %92, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !65
  %95 = icmp eq ptr %94, null
  br i1 %95, label %110, label %96

96:                                               ; preds = %90
  %97 = tail call i32 @host_integerp(ptr noundef nonnull %94, i32 noundef 1) #15
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %110, label %99

99:                                               ; preds = %96
  %100 = load ptr, ptr %91, align 8, !tbaa !65
  %101 = getelementptr inbounds %struct.tree_type, ptr %100, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !65
  %103 = tail call i64 @tree_low_cst(ptr noundef %102, i32 noundef 1) #15
  %104 = load i64, ptr @offset_limit, align 8, !tbaa !61
  %105 = icmp ult i64 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = load ptr, ptr %91, align 8, !tbaa !65
  %108 = getelementptr inbounds %struct.tree_type, ptr %107, i64 0, i32 3
  %109 = load ptr, ptr %108, align 8, !tbaa !65
  br label %114

110:                                              ; preds = %16, %99, %96, %90, %88
  %111 = sext i32 %2 to i64
  %112 = getelementptr inbounds [4 x i64], ptr @unknown, i64 0, i64 %111
  %113 = load i64, ptr %112, align 8, !tbaa !61
  br label %364

114:                                              ; preds = %79, %106
  %115 = phi ptr [ %109, %106 ], [ %80, %79 ]
  %116 = load ptr, ptr %9, align 8, !tbaa !65
  %117 = icmp eq ptr %23, %116
  br i1 %117, label %348, label %118

118:                                              ; preds = %114
  %119 = and i32 %2, 1
  br label %123

120:                                              ; preds = %70
  %121 = load ptr, ptr %9, align 8, !tbaa !65
  %122 = icmp eq ptr %23, %121
  br i1 %122, label %364, label %123

123:                                              ; preds = %118, %120
  %124 = phi i32 [ %119, %118 ], [ %39, %120 ]
  %125 = phi ptr [ %116, %118 ], [ %121, %120 ]
  %126 = phi ptr [ %115, %118 ], [ null, %120 ]
  %127 = icmp eq i32 %124, 0
  br i1 %127, label %293, label %128

128:                                              ; preds = %123
  %129 = icmp eq ptr %125, %23
  br i1 %129, label %147, label %130

130:                                              ; preds = %128, %137
  %131 = phi ptr [ %139, %137 ], [ %125, %128 ]
  %132 = load i64, ptr %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = and i32 %133, 65535
  %135 = add nsw i32 %134, -41
  %136 = icmp ult i32 %135, 6
  br i1 %136, label %141, label %137

137:                                              ; preds = %130
  %138 = getelementptr inbounds %struct.tree_exp, ptr %131, i64 0, i32 3
  %139 = load ptr, ptr %138, align 8, !tbaa !65
  %140 = icmp eq ptr %139, %23
  br i1 %140, label %147, label %130, !llvm.loop !96

141:                                              ; preds = %130
  %142 = and i64 %132, 65535
  %143 = icmp eq i64 %142, 45
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.tree_exp, ptr %131, i64 0, i32 3
  %146 = load ptr, ptr %145, align 8, !tbaa !65
  br label %147

147:                                              ; preds = %137, %128, %144, %141
  %148 = phi ptr [ %146, %144 ], [ %131, %141 ], [ %23, %128 ], [ %23, %137 ]
  %149 = getelementptr inbounds %struct.tree_common, ptr %148, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !65
  %151 = getelementptr inbounds %struct.tree_type, ptr %150, i64 0, i32 3
  %152 = load ptr, ptr %151, align 8, !tbaa !65
  %153 = icmp eq ptr %152, null
  br i1 %153, label %293, label %154

154:                                              ; preds = %147
  %155 = tail call i32 @host_integerp(ptr noundef nonnull %152, i32 noundef 1) #15
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %293, label %157

157:                                              ; preds = %154
  %158 = icmp eq ptr %126, null
  br i1 %158, label %165, label %159

159:                                              ; preds = %157
  %160 = load ptr, ptr %149, align 8, !tbaa !65
  %161 = getelementptr inbounds %struct.tree_type, ptr %160, i64 0, i32 3
  %162 = load ptr, ptr %161, align 8, !tbaa !65
  %163 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %126, ptr noundef %162) #15
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %295

165:                                              ; preds = %159, %157
  %166 = icmp eq ptr %148, %23
  br i1 %166, label %293, label %167

167:                                              ; preds = %165
  %168 = load i64, ptr %23, align 8
  %169 = and i64 %168, 65535
  %170 = icmp eq i64 %169, 47
  br i1 %170, label %171, label %285

171:                                              ; preds = %167, %275
  %172 = phi ptr [ %276, %275 ], [ %148, %167 ]
  %173 = load i64, ptr %172, align 8
  %174 = trunc i64 %173 to i16
  switch i16 %174, label %281 [
    i16 45, label %175
    i16 43, label %280
    i16 44, label %280
    i16 41, label %206
  ]

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.tree_exp, ptr %172, i64 0, i32 3
  %177 = load ptr, ptr %176, align 8, !tbaa !65
  %178 = getelementptr inbounds %struct.tree_common, ptr %177, i64 0, i32 2
  %179 = load ptr, ptr %178, align 8, !tbaa !65
  %180 = getelementptr inbounds %struct.tree_type, ptr %179, i64 0, i32 3
  %181 = load ptr, ptr %180, align 8, !tbaa !65
  %182 = icmp eq ptr %181, null
  br i1 %182, label %275, label %183

183:                                              ; preds = %175
  %184 = getelementptr inbounds %struct.tree_exp, ptr %172, i64 1
  %185 = load ptr, ptr %184, align 8, !tbaa !65
  %186 = load i64, ptr %185, align 8
  %187 = and i64 %186, 65535
  %188 = icmp eq i64 %187, 23
  br i1 %188, label %189, label %275

189:                                              ; preds = %183
  %190 = getelementptr inbounds %struct.tree_type, ptr %179, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !65
  %192 = icmp eq ptr %191, null
  br i1 %192, label %275, label %193

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.tree_type, ptr %191, i64 0, i32 14
  %195 = load ptr, ptr %194, align 8, !tbaa !65
  %196 = icmp eq ptr %195, null
  br i1 %196, label %275, label %197

197:                                              ; preds = %193
  %198 = load i64, ptr %195, align 8
  %199 = and i64 %198, 65535
  %200 = icmp eq i64 %199, 23
  br i1 %200, label %201, label %275

201:                                              ; preds = %197
  %202 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %185, ptr noundef nonnull %195) #15
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %281

204:                                              ; preds = %201
  %205 = load ptr, ptr %176, align 8, !tbaa !65
  br label %275

206:                                              ; preds = %171
  %207 = getelementptr inbounds %struct.tree_common, ptr %172, i64 0, i32 2
  %208 = load ptr, ptr %207, align 8, !tbaa !65
  %209 = load i64, ptr %208, align 8
  %210 = and i64 %209, 65535
  %211 = icmp eq i64 %210, 15
  br i1 %211, label %212, label %281

212:                                              ; preds = %206, %221
  %213 = phi ptr [ %223, %221 ], [ %172, %206 ]
  %214 = icmp eq ptr %213, %23
  br i1 %214, label %215, label %217

215:                                              ; preds = %212
  %216 = load i64, ptr %23, align 8
  br label %231

217:                                              ; preds = %212
  %218 = load i64, ptr %213, align 8
  %219 = and i64 %218, 65535
  %220 = icmp eq i64 %219, 41
  br i1 %220, label %221, label %231

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.tree_exp, ptr %213, i64 0, i32 3
  %223 = load ptr, ptr %222, align 8, !tbaa !65
  %224 = getelementptr inbounds %struct.tree_common, ptr %223, i64 0, i32 2
  %225 = load ptr, ptr %224, align 8, !tbaa !65
  %226 = load i64, ptr %225, align 8
  %227 = trunc i64 %226 to i32
  %228 = and i32 %227, 65535
  %229 = add nsw i32 %228, -17
  %230 = icmp ult i32 %229, 2
  br i1 %230, label %212, label %231, !llvm.loop !97

231:                                              ; preds = %221, %217, %215
  %232 = phi i64 [ %216, %215 ], [ %218, %217 ], [ %218, %221 ]
  %233 = phi ptr [ %23, %215 ], [ %213, %217 ], [ %213, %221 ]
  %234 = and i64 %232, 65535
  %235 = icmp eq i64 %234, 41
  br i1 %235, label %238, label %236

236:                                              ; preds = %249, %238, %231
  %237 = phi ptr [ %233, %231 ], [ %233, %238 ], [ %240, %249 ]
  br label %258

238:                                              ; preds = %231
  %239 = getelementptr inbounds %struct.tree_exp, ptr %233, i64 0, i32 3
  %240 = load ptr, ptr %239, align 8, !tbaa !65
  %241 = getelementptr inbounds %struct.tree_common, ptr %240, i64 0, i32 2
  %242 = load ptr, ptr %241, align 8, !tbaa !65
  %243 = load i64, ptr %242, align 8
  %244 = and i64 %243, 65535
  %245 = icmp eq i64 %244, 16
  br i1 %245, label %246, label %236

246:                                              ; preds = %238
  %247 = getelementptr inbounds %struct.tree_exp, ptr %233, i64 1
  %248 = load ptr, ptr %247, align 8, !tbaa !65
  br label %249

249:                                              ; preds = %254, %246
  %250 = phi ptr [ %248, %246 ], [ %252, %254 ]
  %251 = getelementptr inbounds %struct.tree_common, ptr %250, i64 0, i32 1
  %252 = load ptr, ptr %251, align 8, !tbaa !65
  %253 = icmp eq ptr %252, null
  br i1 %253, label %236, label %254

254:                                              ; preds = %249
  %255 = load i64, ptr %252, align 8
  %256 = and i64 %255, 65535
  %257 = icmp eq i64 %256, 31
  br i1 %257, label %281, label %249, !llvm.loop !98

258:                                              ; preds = %236, %265
  %259 = phi ptr [ %267, %265 ], [ %237, %236 ]
  %260 = icmp eq ptr %259, %23
  br i1 %260, label %281, label %261

261:                                              ; preds = %258
  %262 = load i64, ptr %259, align 8
  %263 = and i64 %262, 65535
  %264 = icmp eq i64 %263, 41
  br i1 %264, label %265, label %281

265:                                              ; preds = %261
  %266 = getelementptr inbounds %struct.tree_exp, ptr %259, i64 0, i32 3
  %267 = load ptr, ptr %266, align 8, !tbaa !65
  %268 = getelementptr inbounds %struct.tree_common, ptr %267, i64 0, i32 2
  %269 = load ptr, ptr %268, align 8, !tbaa !65
  %270 = load i64, ptr %269, align 8
  %271 = trunc i64 %270 to i32
  %272 = and i32 %271, 65535
  %273 = add nsw i32 %272, -17
  %274 = icmp ult i32 %273, 2
  br i1 %274, label %258, label %281, !llvm.loop !99

275:                                              ; preds = %175, %183, %189, %193, %197, %204
  %276 = phi ptr [ %205, %204 ], [ %177, %197 ], [ %177, %193 ], [ %177, %189 ], [ %177, %183 ], [ %177, %175 ]
  %277 = icmp ne ptr %276, null
  %278 = icmp ne ptr %276, %23
  %279 = and i1 %277, %278
  br i1 %279, label %171, label %281, !llvm.loop !100

280:                                              ; preds = %171, %171
  br label %281

281:                                              ; preds = %201, %275, %254, %258, %261, %265, %171, %280, %206
  %282 = phi ptr [ null, %206 ], [ %23, %171 ], [ null, %265 ], [ %23, %258 ], [ null, %261 ], [ null, %254 ], [ null, %201 ], [ %276, %275 ], [ null, %280 ]
  %283 = icmp eq ptr %282, %23
  %284 = select i1 %283, ptr %23, ptr %148
  br label %285

285:                                              ; preds = %281, %167
  %286 = phi ptr [ %284, %281 ], [ %148, %167 ]
  %287 = icmp eq ptr %286, %23
  br i1 %287, label %293, label %288

288:                                              ; preds = %285
  %289 = getelementptr inbounds %struct.tree_common, ptr %286, i64 0, i32 2
  %290 = load ptr, ptr %289, align 8, !tbaa !65
  %291 = getelementptr inbounds %struct.tree_type, ptr %290, i64 0, i32 3
  %292 = load ptr, ptr %291, align 8, !tbaa !65
  br label %295

293:                                              ; preds = %165, %123, %147, %154, %285
  %294 = icmp eq ptr %126, null
  br i1 %294, label %344, label %295

295:                                              ; preds = %159, %293, %288
  %296 = phi i1 [ true, %288 ], [ false, %293 ], [ false, %159 ]
  %297 = phi ptr [ %286, %288 ], [ %23, %293 ], [ %23, %159 ]
  %298 = phi ptr [ %292, %288 ], [ %126, %293 ], [ %126, %159 ]
  %299 = load ptr, ptr %9, align 8, !tbaa !65
  %300 = tail call fastcc ptr @compute_object_offset(ptr noundef %299, ptr noundef %297) #16
  %301 = load ptr, ptr @global_trees, align 16, !tbaa !66
  %302 = icmp eq ptr %300, %301
  br i1 %302, label %314, label %303

303:                                              ; preds = %295
  %304 = load i64, ptr %300, align 8
  %305 = and i64 %304, 65535
  %306 = icmp eq i64 %305, 23
  br i1 %306, label %307, label %312

307:                                              ; preds = %303
  %308 = tail call i32 @tree_int_cst_lt(ptr noundef %298, ptr noundef nonnull %300) #15
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %312, label %310

310:                                              ; preds = %307
  %311 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !66
  br label %314

312:                                              ; preds = %307, %303
  %313 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 64, ptr noundef %298, ptr noundef nonnull %300) #15
  br label %314

314:                                              ; preds = %310, %312, %295
  %315 = phi ptr [ %311, %310 ], [ %313, %312 ], [ %300, %295 ]
  %316 = icmp ne ptr %126, null
  %317 = select i1 %296, i1 %316, i1 false
  br i1 %317, label %318, label %354

318:                                              ; preds = %314
  %319 = load i64, ptr %23, align 8
  %320 = and i64 %319, 65535
  %321 = icmp ne i64 %320, 47
  %322 = load ptr, ptr @global_trees, align 16
  %323 = icmp eq ptr %315, %322
  %324 = select i1 %321, i1 true, i1 %323
  br i1 %324, label %354, label %325

325:                                              ; preds = %318
  %326 = load ptr, ptr %9, align 8, !tbaa !65
  %327 = tail call fastcc ptr @compute_object_offset(ptr noundef %326, ptr noundef nonnull %23) #16
  %328 = load ptr, ptr @global_trees, align 16, !tbaa !66
  %329 = icmp eq ptr %327, %328
  br i1 %329, label %354, label %330

330:                                              ; preds = %325
  %331 = load i64, ptr %327, align 8
  %332 = and i64 %331, 65535
  %333 = icmp eq i64 %332, 23
  br i1 %333, label %334, label %339

334:                                              ; preds = %330
  %335 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %126, ptr noundef nonnull %327) #15
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %339, label %337

337:                                              ; preds = %334
  %338 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !66
  br label %341

339:                                              ; preds = %334, %330
  %340 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 64, ptr noundef nonnull %126, ptr noundef nonnull %327) #15
  br label %341

341:                                              ; preds = %339, %337
  %342 = phi ptr [ %338, %337 ], [ %340, %339 ]
  %343 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 80, ptr noundef %315, ptr noundef %342) #15
  br label %354

344:                                              ; preds = %293
  %345 = sext i32 %2 to i64
  %346 = getelementptr inbounds [4 x i64], ptr @unknown, i64 0, i64 %345
  %347 = load i64, ptr %346, align 8, !tbaa !61
  br label %364

348:                                              ; preds = %114
  %349 = icmp eq ptr %115, null
  br i1 %349, label %350, label %354

350:                                              ; preds = %348
  %351 = sext i32 %2 to i64
  %352 = getelementptr inbounds [4 x i64], ptr @unknown, i64 0, i64 %351
  %353 = load i64, ptr %352, align 8, !tbaa !61
  br label %364

354:                                              ; preds = %314, %318, %341, %325, %348
  %355 = phi ptr [ %115, %348 ], [ %315, %325 ], [ %343, %341 ], [ %315, %314 ], [ %315, %318 ]
  %356 = tail call i32 @host_integerp(ptr noundef %355, i32 noundef 1) #15
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %360, label %358

358:                                              ; preds = %354
  %359 = tail call i64 @tree_low_cst(ptr noundef %355, i32 noundef 1) #15
  br label %364

360:                                              ; preds = %354
  %361 = sext i32 %2 to i64
  %362 = getelementptr inbounds [4 x i64], ptr @unknown, i64 0, i64 %361
  %363 = load i64, ptr %362, align 8, !tbaa !61
  br label %364

364:                                              ; preds = %120, %350, %344, %360, %358, %110
  %365 = phi i64 [ %359, %358 ], [ %363, %360 ], [ %347, %344 ], [ %113, %110 ], [ %353, %350 ], [ %74, %120 ]
  ret i64 %365
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @collect_object_sizes_for(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !60 !PGOFuncName !101 {
  %3 = load i32, ptr %0, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !65
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds [4 x ptr], ptr @computed, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = tail call i32 @bitmap_bit_p(ptr noundef %8, i32 noundef %5) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %195

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.object_size_info, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !74
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %46

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.object_size_info, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !70
  %18 = tail call i32 @bitmap_bit_p(ptr noundef %17, i32 noundef %5) #15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load ptr, ptr %16, align 8, !tbaa !70
  %22 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %21, i32 noundef %5) #15
  %23 = shl i32 %3, 30
  %24 = ashr i32 %23, 31
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x ptr], ptr @object_sizes, i64 0, i64 %6
  %27 = load ptr, ptr %26, align 8, !tbaa !66
  %28 = zext i32 %5 to i64
  %29 = getelementptr inbounds i64, ptr %27, i64 %28
  store i64 %25, ptr %29, align 8, !tbaa !61
  br label %46

30:                                               ; preds = %15
  %31 = getelementptr inbounds %struct.object_size_info, ptr %0, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !72
  %33 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %32, i32 noundef %5) #15
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %35 = icmp eq ptr %34, null
  br i1 %35, label %195, label %36

36:                                               ; preds = %30
  %37 = load i32, ptr @dump_flags, align 4, !tbaa !68
  %38 = and i32 %37, 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %195, label %40

40:                                               ; preds = %36
  %41 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 27, i64 1, ptr nonnull %34)
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %43 = load i32, ptr @dump_flags, align 4, !tbaa !68
  tail call void @print_generic_expr(ptr noundef %42, ptr noundef nonnull %1, i32 noundef %43) #15
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %45 = tail call i32 @fputc(i32 10, ptr %44)
  br label %195

46:                                               ; preds = %20, %11
  %47 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %48 = icmp eq ptr %47, null
  br i1 %48, label %59, label %49

49:                                               ; preds = %46
  %50 = load i32, ptr @dump_flags, align 4, !tbaa !68
  %51 = and i32 %50, 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 27, i64 1, ptr nonnull %47)
  %55 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %56 = load i32, ptr @dump_flags, align 4, !tbaa !68
  tail call void @print_generic_expr(ptr noundef %55, ptr noundef nonnull %1, i32 noundef %56) #15
  %57 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %58 = tail call i32 @fputc(i32 10, ptr %57)
  br label %59

59:                                               ; preds = %53, %49, %46
  %60 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !65
  %62 = tail call fastcc i32 @gimple_code(ptr noundef %61) #16, !range !102
  %63 = trunc i32 %62 to i8
  switch i8 %63, label %160 [
    i8 6, label %71
    i8 8, label %97
    i8 7, label %114
    i8 18, label %121
    i8 16, label %64
  ]

64:                                               ; preds = %59
  %65 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %61) #16
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %173, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds [4 x ptr], ptr @object_sizes, i64 0, i64 %6
  %69 = zext i32 %5 to i64
  %70 = getelementptr inbounds [4 x i64], ptr @unknown, i64 0, i64 %6
  br label %133

71:                                               ; preds = %59
  %72 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %61) #16, !range !103
  %73 = icmp eq i32 %72, 66
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = tail call fastcc zeroext i8 @plus_stmt_object_size(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %61) #16
  br label %161

76:                                               ; preds = %71
  %77 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %61) #15
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = tail call zeroext i8 @gimple_assign_unary_nop_p(ptr noundef %61) #15
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %96, label %82

82:                                               ; preds = %79, %76
  %83 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %61) #16
  %84 = load i64, ptr %83, align 8
  %85 = trunc i64 %84 to i16
  switch i16 %85, label %95 [
    i16 141, label %86
    i16 56, label %93
  ]

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.tree_common, ptr %83, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !65
  %89 = load i64, ptr %88, align 8
  %90 = trunc i64 %89 to i16
  switch i16 %90, label %95 [
    i16 10, label %91
    i16 12, label %91
  ]

91:                                               ; preds = %86, %86
  %92 = tail call fastcc zeroext i8 @merge_object_sizes(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %83, i64 noundef 0) #16
  br label %161

93:                                               ; preds = %82
  %94 = tail call fastcc zeroext i8 @cond_expr_object_size(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %83) #16
  br label %161

95:                                               ; preds = %82, %86
  tail call fastcc void @expr_object_size(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %83) #16
  br label %173

96:                                               ; preds = %79
  tail call fastcc void @unknown_object_size(ptr noundef nonnull %0, ptr noundef nonnull %1) #16
  br label %173

97:                                               ; preds = %59
  %98 = tail call fastcc ptr @pass_through_call(ptr noundef %61) #16
  %99 = icmp eq ptr %98, null
  br i1 %99, label %113, label %100

100:                                              ; preds = %97
  %101 = load i64, ptr %98, align 8
  %102 = trunc i64 %101 to i16
  switch i16 %102, label %112 [
    i16 141, label %103
    i16 56, label %110
  ]

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.tree_common, ptr %98, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !65
  %106 = load i64, ptr %105, align 8
  %107 = trunc i64 %106 to i16
  switch i16 %107, label %112 [
    i16 10, label %108
    i16 12, label %108
  ]

108:                                              ; preds = %103, %103
  %109 = tail call fastcc zeroext i8 @merge_object_sizes(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %98, i64 noundef 0) #16
  br label %161

110:                                              ; preds = %100
  %111 = tail call fastcc zeroext i8 @cond_expr_object_size(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %98) #16
  br label %161

112:                                              ; preds = %100, %103
  tail call fastcc void @expr_object_size(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %98) #16
  br label %173

113:                                              ; preds = %97
  tail call fastcc void @call_object_size(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %61) #16
  br label %173

114:                                              ; preds = %59
  %115 = getelementptr inbounds [4 x i64], ptr @unknown, i64 0, i64 %6
  %116 = load i64, ptr %115, align 8, !tbaa !61
  %117 = getelementptr inbounds [4 x ptr], ptr @object_sizes, i64 0, i64 %6
  %118 = load ptr, ptr %117, align 8, !tbaa !66
  %119 = zext i32 %5 to i64
  %120 = getelementptr inbounds i64, ptr %118, i64 %119
  store i64 %116, ptr %120, align 8, !tbaa !61
  br label %173

121:                                              ; preds = %59
  %122 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !65
  %124 = load i64, ptr %123, align 8
  %125 = and i64 %124, 65535
  %126 = icmp eq i64 %125, 34
  br i1 %126, label %132, label %127

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.tree_decl_common, ptr %123, i64 0, i32 5
  %129 = load ptr, ptr %128, align 8, !tbaa !65
  %130 = icmp eq ptr %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %127
  tail call fastcc void @expr_object_size(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %129) #16
  br label %173

132:                                              ; preds = %127, %121
  tail call fastcc void @expr_object_size(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %123) #16
  br label %173

133:                                              ; preds = %67, %155
  %134 = phi i8 [ 0, %67 ], [ %156, %155 ]
  %135 = phi i32 [ 0, %67 ], [ %157, %155 ]
  %136 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %61, i32 noundef %135) #16
  %137 = getelementptr inbounds %struct.phi_arg_d, ptr %136, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !104
  %139 = load ptr, ptr %68, align 8, !tbaa !66
  %140 = getelementptr inbounds i64, ptr %139, i64 %69
  %141 = load i64, ptr %140, align 8, !tbaa !61
  %142 = load i64, ptr %70, align 8, !tbaa !61
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %161, label %144

144:                                              ; preds = %133
  %145 = load i64, ptr %138, align 8
  %146 = and i64 %145, 65535
  %147 = icmp eq i64 %146, 141
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = tail call fastcc zeroext i8 @merge_object_sizes(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %138, i64 noundef 0) #16
  %150 = or i8 %149, %134
  br label %155

151:                                              ; preds = %144
  %152 = load i32, ptr %12, align 8, !tbaa !74
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  tail call fastcc void @expr_object_size(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %138) #16
  br label %155

155:                                              ; preds = %151, %154, %148
  %156 = phi i8 [ %134, %151 ], [ %134, %154 ], [ %150, %148 ]
  %157 = add nuw i32 %135, 1
  %158 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %61) #16
  %159 = icmp ult i32 %157, %158
  br i1 %159, label %133, label %161, !llvm.loop !107

160:                                              ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 974, ptr noundef nonnull @.str.1) #15
  br label %173

161:                                              ; preds = %155, %133, %110, %108, %91, %93, %74
  %162 = phi i8 [ %75, %74 ], [ %92, %91 ], [ %94, %93 ], [ %109, %108 ], [ %111, %110 ], [ %156, %155 ], [ %134, %133 ]
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %173, label %164

164:                                              ; preds = %161
  %165 = getelementptr inbounds [4 x ptr], ptr @object_sizes, i64 0, i64 %6
  %166 = load ptr, ptr %165, align 8, !tbaa !66
  %167 = zext i32 %5 to i64
  %168 = getelementptr inbounds i64, ptr %166, i64 %167
  %169 = load i64, ptr %168, align 8, !tbaa !61
  %170 = getelementptr inbounds [4 x i64], ptr @unknown, i64 0, i64 %6
  %171 = load i64, ptr %170, align 8, !tbaa !61
  %172 = icmp eq i64 %169, %171
  br i1 %172, label %173, label %179

173:                                              ; preds = %64, %131, %132, %113, %112, %95, %96, %114, %160, %164, %161
  %174 = load ptr, ptr %7, align 8, !tbaa !66
  %175 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %174, i32 noundef %5) #15
  %176 = getelementptr inbounds %struct.object_size_info, ptr %0, i64 0, i32 2
  %177 = load ptr, ptr %176, align 8, !tbaa !72
  %178 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %177, i32 noundef %5) #15
  br label %195

179:                                              ; preds = %164
  %180 = getelementptr inbounds %struct.object_size_info, ptr %0, i64 0, i32 2
  %181 = load ptr, ptr %180, align 8, !tbaa !72
  %182 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %181, i32 noundef %5) #15
  %183 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %184 = icmp eq ptr %183, null
  br i1 %184, label %195, label %185

185:                                              ; preds = %179
  %186 = load i32, ptr @dump_flags, align 4, !tbaa !68
  %187 = and i32 %186, 8
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %195, label %189

189:                                              ; preds = %185
  %190 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 18, i64 1, ptr nonnull %183)
  %191 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %192 = load i32, ptr @dump_flags, align 4, !tbaa !68
  tail call void @print_generic_expr(ptr noundef %191, ptr noundef %1, i32 noundef %192) #15
  %193 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %194 = tail call i32 @fputc(i32 10, ptr %193)
  br label %195

195:                                              ; preds = %173, %189, %185, %179, %30, %36, %40, %2
  ret void
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !60 !PGOFuncName !108 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !109
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !prof !60 !PGOFuncName !111 {
  %4 = load ptr, ptr %1, align 8, !tbaa !76
  store ptr %4, ptr %0, align 8, !tbaa !112
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !114
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !112
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !115
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !117
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !61
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !118
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !68
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #6 !prof !60 !PGOFuncName !119 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !118
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !68
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !120

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !68
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !68
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !117
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !112
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !117
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !61
  store i64 %35, ptr %3, align 8, !tbaa !118
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !68
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !68
  %40 = load i32, ptr %23, align 8, !tbaa !117
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !117
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !121

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !122
  store ptr %44, ptr %0, align 8, !tbaa !112
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !115
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !68
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !118
  store i32 %16, ptr %1, align 4, !tbaa !68
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_for_plus_in_loops(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !60 !PGOFuncName !123 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %4) #16, !range !87
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %37, label %7

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %4) #16, !range !103
  %9 = icmp eq i32 %8, 66
  br i1 %9, label %10, label %37

10:                                               ; preds = %7
  %11 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %4) #16
  %12 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %4) #16
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 23
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1115, ptr noundef nonnull @.str.1) #15
  br label %17

17:                                               ; preds = %10, %16
  %18 = tail call i32 @integer_zerop(ptr noundef nonnull %12) #15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.object_size_info, ptr %0, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !84
  %23 = getelementptr inbounds %struct.tree_ssa_name, ptr %11, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !65
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %22, i64 %25
  store i32 1, ptr %26, align 4, !tbaa !68
  %27 = load i32, ptr %23, align 8, !tbaa !65
  %28 = getelementptr inbounds %struct.object_size_info, ptr %0, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !86
  %30 = getelementptr inbounds i32, ptr %29, i64 1
  store ptr %30, ptr %28, align 8, !tbaa !86
  store i32 %27, ptr %29, align 4, !tbaa !68
  tail call fastcc void @check_for_plus_in_loops_1(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 2) #16
  %31 = load ptr, ptr %21, align 8, !tbaa !84
  %32 = load i32, ptr %23, align 8, !tbaa !65
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %31, i64 %33
  store i32 0, ptr %34, align 4, !tbaa !68
  %35 = load ptr, ptr %28, align 8, !tbaa !86
  %36 = getelementptr inbounds i32, ptr %35, i64 -1
  store ptr %36, ptr %28, align 8, !tbaa !86
  br label %37

37:                                               ; preds = %20, %17, %2, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !60 !PGOFuncName !124 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #7 !prof !60 !PGOFuncName !125 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !118
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !118
  %6 = load i32, ptr %1, align 4, !tbaa !68
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @get_base_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @tree_int_cst_lt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @compute_object_offset(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !60 !PGOFuncName !126 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %4, label %6

4:                                                ; preds = %27, %2
  %5 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !66
  br label %78

6:                                                ; preds = %2, %27
  %7 = phi ptr [ %29, %27 ], [ %0, %2 ]
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %71 [
    i16 41, label %10
    i16 43, label %27
    i16 116, label %27
    i16 113, label %27
    i16 118, label %27
    i16 117, label %27
    i16 44, label %31
    i16 45, label %42
  ]

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !65
  %13 = tail call fastcc ptr @compute_object_offset(ptr noundef %12, ptr noundef %1) #16
  %14 = load ptr, ptr @global_trees, align 16, !tbaa !66
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %78, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !65
  %19 = getelementptr inbounds %struct.tree_field_decl, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !65
  %21 = getelementptr inbounds %struct.tree_field_decl, ptr %18, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !65
  %23 = tail call i64 @tree_low_cst(ptr noundef %22, i32 noundef 1) #15
  %24 = sdiv i64 %23, 8
  %25 = tail call ptr @size_int_kind(i64 noundef %24, i32 noundef 0) #15
  %26 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %20, ptr noundef %25) #15
  br label %73

27:                                               ; preds = %6, %6, %6, %6, %6
  %28 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !65
  %30 = icmp eq ptr %29, %1
  br i1 %30, label %4, label %6

31:                                               ; preds = %6
  %32 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !65
  %34 = tail call fastcc ptr @compute_object_offset(ptr noundef %33, ptr noundef %1) #16
  %35 = load ptr, ptr @global_trees, align 16, !tbaa !66
  %36 = icmp eq ptr %34, %35
  br i1 %36, label %78, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !65
  %40 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !65
  br label %73

42:                                               ; preds = %6
  %43 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !65
  %45 = tail call fastcc ptr @compute_object_offset(ptr noundef %44, ptr noundef %1) #16
  %46 = load ptr, ptr @global_trees, align 16, !tbaa !66
  %47 = icmp eq ptr %45, %46
  br i1 %47, label %78, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !65
  %51 = load i64, ptr %50, align 8
  %52 = and i64 %51, 65535
  %53 = icmp eq i64 %52, 23
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %50) #15
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !65
  %60 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %59, ptr noundef nonnull %50) #15
  br label %61

61:                                               ; preds = %57, %54, %48
  %62 = phi i32 [ 64, %57 ], [ 63, %54 ], [ 63, %48 ]
  %63 = phi ptr [ %60, %57 ], [ %50, %54 ], [ %50, %48 ]
  %64 = load ptr, ptr @sizetype_tab, align 16, !tbaa !66
  %65 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %64, ptr noundef %63) #15
  %66 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !65
  %68 = getelementptr inbounds %struct.tree_type, ptr %67, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !65
  %70 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 65, ptr noundef %69, ptr noundef %65) #15
  br label %73

71:                                               ; preds = %6
  %72 = load ptr, ptr @global_trees, align 16, !tbaa !66
  br label %78

73:                                               ; preds = %61, %37, %16
  %74 = phi i32 [ %62, %61 ], [ 63, %37 ], [ 63, %16 ]
  %75 = phi ptr [ %45, %61 ], [ %34, %37 ], [ %13, %16 ]
  %76 = phi ptr [ %70, %61 ], [ %41, %37 ], [ %26, %16 ]
  %77 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef %74, ptr noundef %75, ptr noundef %76) #15
  br label %78

78:                                               ; preds = %42, %31, %10, %73, %71, %4
  %79 = phi ptr [ %5, %4 ], [ %72, %71 ], [ %77, %73 ], [ %13, %10 ], [ %34, %31 ], [ %45, %42 ]
  ret ptr %79
}

; Function Attrs: optsize
declare ptr @size_binop_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @tree_int_cst_sgn(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !127 !PGOFuncName !128 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 !prof !60 !PGOFuncName !129 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #16, !range !103
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #16, !range !102
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @plus_stmt_object_size(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !60 !PGOFuncName !130 {
  %4 = load i32, ptr %0, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !65
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %2) #16, !range !103
  %8 = icmp eq i32 %7, 66
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 748, ptr noundef nonnull @.str.1) #15
  br label %10

10:                                               ; preds = %3, %9
  %11 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #16
  %12 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %2) #16
  %13 = sext i32 %4 to i64
  %14 = getelementptr inbounds [4 x ptr], ptr @object_sizes, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !66
  %16 = zext i32 %6 to i64
  %17 = getelementptr inbounds i64, ptr %15, i64 %16
  %18 = load i64, ptr %17, align 8, !tbaa !61
  %19 = getelementptr inbounds [4 x i64], ptr @unknown, i64 0, i64 %13
  %20 = load i64, ptr %19, align 8, !tbaa !61
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %60, label %22

22:                                               ; preds = %10
  %23 = load i64, ptr %12, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 23
  br i1 %25, label %26, label %47

26:                                               ; preds = %22
  %27 = load i64, ptr %11, align 8
  %28 = trunc i64 %27 to i16
  switch i16 %28, label %47 [
    i16 141, label %29
    i16 121, label %29
  ]

29:                                               ; preds = %26, %26
  %30 = tail call i32 @host_integerp(ptr noundef nonnull %12, i32 noundef 1) #15
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %29
  %33 = load i64, ptr %11, align 8
  %34 = and i64 %33, 65535
  %35 = icmp eq i64 %34, 141
  %36 = tail call i64 @tree_low_cst(ptr noundef nonnull %12, i32 noundef 1) #15
  br i1 %35, label %37, label %39

37:                                               ; preds = %32
  %38 = tail call fastcc zeroext i8 @merge_object_sizes(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %11, i64 noundef %36) #16
  br label %60

39:                                               ; preds = %32
  %40 = tail call fastcc i64 @addr_object_size(ptr noundef nonnull %0, ptr noundef nonnull %11, i32 noundef %4) #16
  %41 = icmp eq i64 %40, %20
  %42 = load i64, ptr @offset_limit, align 8
  %43 = icmp ugt i64 %36, %42
  %44 = select i1 %41, i1 true, i1 %43
  br i1 %44, label %47, label %45

45:                                               ; preds = %39
  %46 = tail call i64 @llvm.usub.sat.i64(i64 %40, i64 %36)
  br label %47

47:                                               ; preds = %22, %26, %29, %45, %39
  %48 = phi i64 [ %20, %39 ], [ %46, %45 ], [ %20, %29 ], [ %20, %26 ], [ %20, %22 ]
  %49 = and i32 %4, 2
  %50 = icmp eq i32 %49, 0
  %51 = load ptr, ptr %14, align 8, !tbaa !66
  %52 = getelementptr inbounds i64, ptr %51, i64 %16
  %53 = load i64, ptr %52, align 8, !tbaa !61
  br i1 %50, label %54, label %57

54:                                               ; preds = %47
  %55 = icmp ult i64 %53, %48
  br i1 %55, label %56, label %60

56:                                               ; preds = %54
  store i64 %48, ptr %52, align 8, !tbaa !61
  br label %60

57:                                               ; preds = %47
  %58 = icmp ugt i64 %53, %48
  br i1 %58, label %59, label %60

59:                                               ; preds = %57
  store i64 %48, ptr %52, align 8, !tbaa !61
  br label %60

60:                                               ; preds = %56, %54, %59, %57, %10, %37
  %61 = phi i8 [ %38, %37 ], [ 0, %10 ], [ 0, %57 ], [ 0, %59 ], [ 0, %54 ], [ 0, %56 ]
  ret i8 %61
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_unary_nop_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 !prof !60 !PGOFuncName !131 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @merge_object_sizes(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 !prof !60 !PGOFuncName !132 {
  %5 = load i32, ptr %0, align 8, !tbaa !73
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !65
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds [4 x ptr], ptr @object_sizes, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !66
  %11 = zext i32 %7 to i64
  %12 = getelementptr inbounds i64, ptr %10, i64 %11
  %13 = load i64, ptr %12, align 8, !tbaa !61
  %14 = getelementptr inbounds [4 x i64], ptr @unknown, i64 0, i64 %8
  %15 = load i64, ptr %14, align 8, !tbaa !61
  %16 = icmp eq i64 %13, %15
  br i1 %16, label %53, label %17

17:                                               ; preds = %4
  %18 = load i64, ptr @offset_limit, align 8, !tbaa !61
  %19 = icmp ugt i64 %18, %3
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i64 %15, ptr %12, align 8, !tbaa !61
  br label %53

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.object_size_info, ptr %0, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !74
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  tail call fastcc void @collect_object_sizes_for(ptr noundef nonnull %0, ptr noundef %2) #16
  %26 = load ptr, ptr %9, align 8, !tbaa !66
  br label %27

27:                                               ; preds = %25, %21
  %28 = phi ptr [ %26, %25 ], [ %10, %21 ]
  %29 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !65
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i64, ptr %28, i64 %31
  %33 = load i64, ptr %32, align 8, !tbaa !61
  %34 = icmp eq i64 %33, %15
  %35 = tail call i64 @llvm.usub.sat.i64(i64 %33, i64 %3)
  %36 = select i1 %34, i64 %33, i64 %35
  %37 = and i32 %5, 2
  %38 = icmp eq i32 %37, 0
  %39 = getelementptr inbounds i64, ptr %28, i64 %11
  %40 = load i64, ptr %39, align 8, !tbaa !61
  br i1 %38, label %41, label %43

41:                                               ; preds = %27
  %42 = icmp ult i64 %40, %36
  br i1 %42, label %45, label %47

43:                                               ; preds = %27
  %44 = icmp ugt i64 %40, %36
  br i1 %44, label %45, label %47

45:                                               ; preds = %43, %41
  store i64 %36, ptr %39, align 8, !tbaa !61
  %46 = getelementptr inbounds %struct.object_size_info, ptr %0, i64 0, i32 4
  store i8 1, ptr %46, align 4, !tbaa !75
  br label %47

47:                                               ; preds = %45, %43, %41
  %48 = getelementptr inbounds %struct.object_size_info, ptr %0, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !72
  %50 = load i32, ptr %29, align 8, !tbaa !65
  %51 = tail call i32 @bitmap_bit_p(ptr noundef %49, i32 noundef %50) #15
  %52 = trunc i32 %51 to i8
  br label %53

53:                                               ; preds = %4, %47, %20
  %54 = phi i8 [ 0, %20 ], [ %52, %47 ], [ 0, %4 ]
  ret i8 %54
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @cond_expr_object_size(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !60 !PGOFuncName !133 {
  %4 = load i32, ptr %0, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !65
  %7 = load i64, ptr %2, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 56
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 810, ptr noundef nonnull @.str.1) #15
  br label %11

11:                                               ; preds = %3, %10
  %12 = sext i32 %4 to i64
  %13 = getelementptr inbounds [4 x ptr], ptr @object_sizes, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !66
  %15 = zext i32 %6 to i64
  %16 = getelementptr inbounds i64, ptr %14, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !61
  %18 = getelementptr inbounds [4 x i64], ptr @unknown, i64 0, i64 %12
  %19 = load i64, ptr %18, align 8, !tbaa !61
  %20 = icmp eq i64 %17, %19
  br i1 %20, label %41, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !65
  %24 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !65
  %26 = load i64, ptr %23, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 141
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = tail call fastcc zeroext i8 @merge_object_sizes(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %23, i64 noundef 0) #16
  br label %32

31:                                               ; preds = %21
  tail call fastcc void @expr_object_size(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %23) #16
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i8 [ %30, %29 ], [ 0, %31 ]
  %34 = load i64, ptr %25, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 141
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = tail call fastcc zeroext i8 @merge_object_sizes(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %25, i64 noundef 0) #16
  %39 = or i8 %38, %33
  br label %41

40:                                               ; preds = %32
  tail call fastcc void @expr_object_size(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %25) #16
  br label %41

41:                                               ; preds = %37, %40, %11
  %42 = phi i8 [ 0, %11 ], [ %39, %37 ], [ %33, %40 ]
  ret i8 %42
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expr_object_size(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !60 !PGOFuncName !134 {
  %4 = load i32, ptr %0, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !65
  %7 = sext i32 %4 to i64
  %8 = getelementptr inbounds [4 x ptr], ptr @object_sizes, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = zext i32 %6 to i64
  %11 = getelementptr inbounds i64, ptr %9, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !61
  %13 = getelementptr inbounds [4 x i64], ptr @unknown, i64 0, i64 %7
  %14 = load i64, ptr %13, align 8, !tbaa !61
  %15 = icmp eq i64 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 603, ptr noundef nonnull @.str.1) #15
  br label %17

17:                                               ; preds = %3, %16
  %18 = getelementptr inbounds %struct.object_size_info, ptr %0, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !74
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 604, ptr noundef nonnull @.str.1) #15
  br label %22

22:                                               ; preds = %17, %21
  %23 = load i64, ptr %2, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 150
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !65
  %29 = load i64, ptr %28, align 8
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i64 [ %29, %26 ], [ %23, %22 ]
  %32 = phi ptr [ %28, %26 ], [ %2, %22 ]
  %33 = and i64 %31, 65535
  %34 = icmp eq i64 %33, 141
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !65
  %38 = load i64, ptr %37, align 8
  %39 = trunc i64 %38 to i16
  switch i16 %39, label %42 [
    i16 10, label %40
    i16 12, label %40
  ]

40:                                               ; preds = %35, %35
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 611, ptr noundef nonnull @.str.1) #15
  %41 = load i64, ptr %32, align 8
  br label %42

42:                                               ; preds = %35, %30, %40
  %43 = phi i64 [ %31, %35 ], [ %31, %30 ], [ %41, %40 ]
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 121
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = tail call fastcc i64 @addr_object_size(ptr noundef nonnull %0, ptr noundef nonnull %32, i32 noundef %4) #16
  br label %48

48:                                               ; preds = %42, %46
  %49 = phi i64 [ %47, %46 ], [ %14, %42 ]
  %50 = and i32 %4, 2
  %51 = icmp eq i32 %50, 0
  %52 = load ptr, ptr %8, align 8, !tbaa !66
  %53 = getelementptr inbounds i64, ptr %52, i64 %10
  %54 = load i64, ptr %53, align 8, !tbaa !61
  br i1 %51, label %55, label %57

55:                                               ; preds = %48
  %56 = icmp ult i64 %54, %49
  br i1 %56, label %59, label %60

57:                                               ; preds = %48
  %58 = icmp ugt i64 %54, %49
  br i1 %58, label %59, label %60

59:                                               ; preds = %57, %55
  store i64 %49, ptr %53, align 8, !tbaa !61
  br label %60

60:                                               ; preds = %59, %57, %55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unknown_object_size(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !60 !PGOFuncName !135 {
  %3 = load i32, ptr %0, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !65
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds [4 x ptr], ptr @object_sizes, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = zext i32 %5 to i64
  %10 = getelementptr inbounds i64, ptr %8, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !61
  %12 = getelementptr inbounds [4 x i64], ptr @unknown, i64 0, i64 %6
  %13 = load i64, ptr %12, align 8, !tbaa !61
  %14 = icmp eq i64 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 671, ptr noundef nonnull @.str.1) #15
  br label %16

16:                                               ; preds = %2, %15
  %17 = getelementptr inbounds %struct.object_size_info, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !74
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 672, ptr noundef nonnull @.str.1) #15
  br label %21

21:                                               ; preds = %16, %20
  %22 = and i32 %3, 2
  %23 = icmp eq i32 %22, 0
  %24 = load ptr, ptr %7, align 8, !tbaa !66
  %25 = getelementptr inbounds i64, ptr %24, i64 %9
  %26 = load i64, ptr %25, align 8, !tbaa !61
  br i1 %23, label %27, label %29

27:                                               ; preds = %21
  %28 = icmp ult i64 %26, %13
  br i1 %28, label %31, label %32

29:                                               ; preds = %21
  %30 = icmp ugt i64 %26, %13
  br i1 %30, label %31, label %32

31:                                               ; preds = %29, %27
  store i64 %13, ptr %25, align 8, !tbaa !61
  br label %32

32:                                               ; preds = %31, %29, %27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @pass_through_call(ptr noundef %0) unnamed_addr #0 !prof !60 !PGOFuncName !136 {
  %2 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_function_decl, ptr %2, i64 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 6144
  %8 = icmp eq i32 %7, 6144
  br i1 %8, label %9, label %16

9:                                                ; preds = %4
  %10 = and i32 %6, 2047
  switch i32 %10, label %16 [
    i32 330, label %11
    i32 331, label %11
    i32 333, label %11
    i32 341, label %11
    i32 349, label %11
    i32 338, label %11
    i32 347, label %11
    i32 529, label %11
    i32 530, label %11
    i32 532, label %11
    i32 535, label %11
    i32 537, label %11
    i32 534, label %11
    i32 536, label %11
  ]

11:                                               ; preds = %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9
  %12 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 0) #16
  br label %16

16:                                               ; preds = %1, %4, %9, %11, %14
  %17 = phi ptr [ %15, %14 ], [ null, %11 ], [ null, %9 ], [ null, %4 ], [ null, %1 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @call_object_size(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !60 !PGOFuncName !137 {
  %4 = load i32, ptr %0, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !65
  %7 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %2) #16, !range !87
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 640, ptr noundef nonnull @.str.1) #15
  br label %10

10:                                               ; preds = %3, %9
  %11 = sext i32 %4 to i64
  %12 = getelementptr inbounds [4 x ptr], ptr @object_sizes, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  %14 = zext i32 %6 to i64
  %15 = getelementptr inbounds i64, ptr %13, i64 %14
  %16 = load i64, ptr %15, align 8, !tbaa !61
  %17 = getelementptr inbounds [4 x i64], ptr @unknown, i64 0, i64 %11
  %18 = load i64, ptr %17, align 8, !tbaa !61
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 643, ptr noundef nonnull @.str.1) #15
  br label %21

21:                                               ; preds = %10, %20
  %22 = getelementptr inbounds %struct.object_size_info, ptr %0, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !74
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 644, ptr noundef nonnull @.str.1) #15
  br label %26

26:                                               ; preds = %21, %25
  %27 = tail call fastcc i64 @alloc_object_size(ptr noundef %2, i32 noundef %4) #16
  %28 = and i32 %4, 2
  %29 = icmp eq i32 %28, 0
  %30 = load ptr, ptr %12, align 8, !tbaa !66
  %31 = getelementptr inbounds i64, ptr %30, i64 %14
  %32 = load i64, ptr %31, align 8, !tbaa !61
  br i1 %29, label %33, label %35

33:                                               ; preds = %26
  %34 = icmp ult i64 %32, %27
  br i1 %34, label %37, label %38

35:                                               ; preds = %26
  %36 = icmp ugt i64 %32, %27
  br i1 %36, label %37, label %38

37:                                               ; preds = %35, %33
  store i64 %27, ptr %31, align 8, !tbaa !61
  br label %38

38:                                               ; preds = %37, %35, %33
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !60 !PGOFuncName !138 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !65
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !60 !PGOFuncName !139 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !65
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 3103, ptr noundef nonnull @.str.1) #15
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !60 !PGOFuncName !140 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !102
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ]

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 1446, ptr noundef nonnull @.str.1) #15
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #9 !prof !60 !PGOFuncName !141 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !65
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 !prof !60 !PGOFuncName !142 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #16
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #16
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !60 !PGOFuncName !143 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !65
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !144 !PGOFuncName !145 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !87
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !146

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #16
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !144 !PGOFuncName !147 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !102
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !144 !PGOFuncName !148 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #16
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !61
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !146

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 1622, ptr noundef nonnull @.str.1) #15
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !144 !PGOFuncName !149 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !102
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #16
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #9 !prof !144 !PGOFuncName !150 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !68
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #0 !prof !144 !PGOFuncName !151 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #16
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !152

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !60 !PGOFuncName !153 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #16
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !60 !PGOFuncName !154 {
  %3 = add nuw i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #16
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 !prof !144 !PGOFuncName !155 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #16
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !60 !PGOFuncName !156 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !102
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @alloc_object_size(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !60 !PGOFuncName !157 {
  %3 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #16, !range !87
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 369, ptr noundef nonnull @.str.1) #15
  br label %6

6:                                                ; preds = %2, %5
  %7 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds [4 x i64], ptr @unknown, i64 0, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !61
  br label %101

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !65
  %16 = getelementptr inbounds %struct.tree_type, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !65
  %18 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.15, ptr noundef %17) #15
  %19 = icmp eq ptr %18, null
  br i1 %19, label %41, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.tree_list, ptr %18, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !65
  %23 = icmp eq ptr %22, null
  br i1 %23, label %41, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.tree_list, ptr %22, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !65
  %27 = getelementptr inbounds %struct.tree_int_cst, ptr %26, i64 0, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !65
  %29 = trunc i64 %28 to i32
  %30 = add i32 %29, -1
  %31 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !65
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.tree_list, ptr %32, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !65
  %37 = getelementptr inbounds %struct.tree_int_cst, ptr %36, i64 0, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !65
  %39 = trunc i64 %38 to i32
  %40 = add i32 %39, -1
  br label %41

41:                                               ; preds = %24, %34, %20, %13
  %42 = phi i32 [ -1, %20 ], [ -1, %13 ], [ %30, %34 ], [ %30, %24 ]
  %43 = phi i32 [ -1, %20 ], [ -1, %13 ], [ %40, %34 ], [ -1, %24 ]
  %44 = getelementptr inbounds %struct.tree_function_decl, ptr %7, i64 0, i32 5
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 6144
  %47 = icmp eq i32 %46, 6144
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = and i32 %45, 2047
  switch i32 %49, label %51 [
    i32 422, label %53
    i32 491, label %50
    i32 415, label %50
  ]

50:                                               ; preds = %48, %48
  br label %53

51:                                               ; preds = %48, %41
  %52 = icmp slt i32 %42, 0
  br i1 %52, label %73, label %53

53:                                               ; preds = %48, %50, %51
  %54 = phi i32 [ %43, %51 ], [ %43, %50 ], [ 1, %48 ]
  %55 = phi i32 [ %42, %51 ], [ 0, %50 ], [ 0, %48 ]
  %56 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #16
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %53
  %59 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %55) #16
  %60 = load i64, ptr %59, align 8
  %61 = and i64 %60, 65535
  %62 = icmp eq i64 %61, 23
  br i1 %62, label %63, label %73

63:                                               ; preds = %58
  %64 = icmp sgt i32 %54, -1
  br i1 %64, label %65, label %85

65:                                               ; preds = %63
  %66 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #16
  %67 = icmp slt i32 %54, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %54) #16
  %70 = load i64, ptr %69, align 8
  %71 = and i64 %70, 65535
  %72 = icmp eq i64 %71, 23
  br i1 %72, label %77, label %73

73:                                               ; preds = %68, %65, %58, %53, %51
  %74 = sext i32 %1 to i64
  %75 = getelementptr inbounds [4 x i64], ptr @unknown, i64 0, i64 %74
  %76 = load i64, ptr %75, align 8, !tbaa !61
  br label %101

77:                                               ; preds = %68
  %78 = load ptr, ptr @sizetype_tab, align 16, !tbaa !66
  %79 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %55) #16
  %80 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %78, ptr noundef %79) #15
  %81 = load ptr, ptr @sizetype_tab, align 16, !tbaa !66
  %82 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %54) #16
  %83 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %81, ptr noundef %82) #15
  %84 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 65, ptr noundef %80, ptr noundef %83) #15
  br label %89

85:                                               ; preds = %63
  %86 = load ptr, ptr @sizetype_tab, align 16, !tbaa !66
  %87 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %55) #16
  %88 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %86, ptr noundef %87) #15
  br label %89

89:                                               ; preds = %85, %77
  %90 = phi ptr [ %84, %77 ], [ %88, %85 ]
  %91 = icmp eq ptr %90, null
  br i1 %91, label %97, label %92

92:                                               ; preds = %89
  %93 = tail call i32 @host_integerp(ptr noundef nonnull %90, i32 noundef 1) #15
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = tail call i64 @tree_low_cst(ptr noundef nonnull %90, i32 noundef 1) #15
  br label %101

97:                                               ; preds = %92, %89
  %98 = sext i32 %1 to i64
  %99 = getelementptr inbounds [4 x i64], ptr @unknown, i64 0, i64 %98
  %100 = load i64, ptr %99, align 8, !tbaa !61
  br label %101

101:                                              ; preds = %97, %95, %73, %9
  %102 = phi i64 [ %76, %73 ], [ %96, %95 ], [ %100, %97 ], [ %12, %9 ]
  ret i64 %102
}

; Function Attrs: optsize
declare ptr @lookup_attribute(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !60 !PGOFuncName !158 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !102
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_for_plus_in_loops_1(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !60 !PGOFuncName !159 {
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct.object_size_info, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !84
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds i32, ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !68
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %44, label %14

14:                                               ; preds = %3
  %15 = icmp eq i32 %12, %2
  br i1 %15, label %117, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.object_size_info, ptr %0, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !86
  %19 = getelementptr inbounds %struct.object_size_info, ptr %0, i64 0, i32 6
  %20 = getelementptr inbounds %struct.object_size_info, ptr %0, i64 0, i32 2
  br label %21

21:                                               ; preds = %25, %16
  %22 = phi ptr [ %18, %16 ], [ %26, %25 ]
  %23 = load ptr, ptr %19, align 8, !tbaa !85
  %24 = icmp ugt ptr %22, %23
  br i1 %24, label %25, label %117

25:                                               ; preds = %21
  %26 = getelementptr inbounds i32, ptr %22, i64 -1
  %27 = load ptr, ptr %20, align 8, !tbaa !72
  %28 = load i32, ptr %26, align 4, !tbaa !68
  %29 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %27, i32 noundef %28) #15
  %30 = load i32, ptr %0, align 8, !tbaa !73
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x ptr], ptr @computed, i64 0, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !66
  %34 = load i32, ptr %26, align 4, !tbaa !68
  %35 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %33, i32 noundef %34) #15
  %36 = load i32, ptr %0, align 8, !tbaa !73
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [4 x ptr], ptr @object_sizes, i64 0, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !66
  %40 = load i32, ptr %26, align 4, !tbaa !68
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i64, ptr %39, i64 %41
  store i64 0, ptr %42, align 8, !tbaa !61
  %43 = icmp eq i32 %40, %7
  br i1 %43, label %117, label %21, !llvm.loop !160

44:                                               ; preds = %3
  %45 = getelementptr inbounds %struct.object_size_info, ptr %0, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !72
  %47 = tail call i32 @bitmap_bit_p(ptr noundef %46, i32 noundef %7) #15
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %117, label %49

49:                                               ; preds = %44
  %50 = load ptr, ptr %8, align 8, !tbaa !84
  %51 = getelementptr inbounds i32, ptr %50, i64 %10
  store i32 %2, ptr %51, align 4, !tbaa !68
  %52 = getelementptr inbounds %struct.object_size_info, ptr %0, i64 0, i32 7
  %53 = load ptr, ptr %52, align 8, !tbaa !86
  %54 = getelementptr inbounds i32, ptr %53, i64 1
  store ptr %54, ptr %52, align 8, !tbaa !86
  store i32 %7, ptr %53, align 4, !tbaa !68
  %55 = tail call fastcc i32 @gimple_code(ptr noundef %5) #16, !range !102
  %56 = trunc i32 %55 to i8
  switch i8 %56, label %111 [
    i8 6, label %60
    i8 8, label %89
    i8 16, label %57
  ]

57:                                               ; preds = %49
  %58 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %5) #16
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %112, label %98

60:                                               ; preds = %49
  %61 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %5) #15
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = tail call zeroext i8 @gimple_assign_unary_nop_p(ptr noundef %5) #15
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %63, %60
  %67 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %5) #16
  %68 = load i64, ptr %67, align 8
  %69 = and i64 %68, 65535
  %70 = icmp eq i64 %69, 141
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %5) #16
  tail call fastcc void @check_for_plus_in_loops_1(ptr noundef nonnull %0, ptr noundef %72, i32 noundef %2) #16
  br label %112

73:                                               ; preds = %66, %63
  %74 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %5) #16, !range !103
  %75 = icmp eq i32 %74, 66
  br i1 %75, label %76, label %88

76:                                               ; preds = %73
  %77 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %5) #16
  %78 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %5) #16
  %79 = load i64, ptr %78, align 8
  %80 = and i64 %79, 65535
  %81 = icmp eq i64 %80, 23
  br i1 %81, label %83, label %82

82:                                               ; preds = %76
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1049, ptr noundef nonnull @.str.1) #15
  br label %83

83:                                               ; preds = %76, %82
  %84 = tail call i32 @integer_zerop(ptr noundef nonnull %78) #15
  %85 = icmp eq i32 %84, 0
  %86 = zext i1 %85 to i32
  %87 = add i32 %86, %2
  tail call fastcc void @check_for_plus_in_loops_1(ptr noundef nonnull %0, ptr noundef %77, i32 noundef %87) #16
  br label %112

88:                                               ; preds = %73
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1055, ptr noundef nonnull @.str.1) #15
  br label %112

89:                                               ; preds = %49
  %90 = tail call fastcc ptr @pass_through_call(ptr noundef %5) #16
  %91 = icmp eq ptr %90, null
  br i1 %91, label %112, label %92

92:                                               ; preds = %89
  %93 = load i64, ptr %90, align 8
  %94 = and i64 %93, 65535
  %95 = icmp eq i64 %94, 141
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  tail call fastcc void @check_for_plus_in_loops_1(ptr noundef nonnull %0, ptr noundef nonnull %90, i32 noundef %2) #16
  br label %112

97:                                               ; preds = %92
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1067, ptr noundef nonnull @.str.1) #15
  br label %112

98:                                               ; preds = %57, %107
  %99 = phi i32 [ %108, %107 ], [ 0, %57 ]
  %100 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %5, i32 noundef %99) #16
  %101 = getelementptr inbounds %struct.phi_arg_d, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !104
  %103 = load i64, ptr %102, align 8
  %104 = and i64 %103, 65535
  %105 = icmp eq i64 %104, 141
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  tail call fastcc void @check_for_plus_in_loops_1(ptr noundef %0, ptr noundef nonnull %102, i32 noundef %2) #16
  br label %107

107:                                              ; preds = %106, %98
  %108 = add nuw i32 %99, 1
  %109 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %5) #16
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %98, label %112, !llvm.loop !161

111:                                              ; preds = %49
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1087, ptr noundef nonnull @.str.1) #15
  br label %112

112:                                              ; preds = %107, %57, %89, %97, %96, %71, %88, %83, %111
  %113 = load ptr, ptr %8, align 8, !tbaa !84
  %114 = getelementptr inbounds i32, ptr %113, i64 %10
  store i32 0, ptr %114, align 4, !tbaa !68
  %115 = load ptr, ptr %52, align 8, !tbaa !86
  %116 = getelementptr inbounds i32, ptr %115, i64 -1
  store ptr %116, ptr %52, align 8, !tbaa !86
  br label %117

117:                                              ; preds = %25, %21, %44, %14, %112
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_object_sizes() local_unnamed_addr #0 !prof !60 {
  %1 = load ptr, ptr @object_sizes, align 16, !tbaa !66
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %20

3:                                                ; preds = %0, %3
  %4 = phi i64 [ %17, %3 ], [ 0, %0 ]
  %5 = load ptr, ptr @cfun, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !78
  %8 = getelementptr inbounds %struct.gimple_df, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  %10 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %9) #16
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = tail call ptr @xmalloc(i64 noundef %12) #15
  %14 = getelementptr inbounds [4 x ptr], ptr @object_sizes, i64 0, i64 %4
  store ptr %13, ptr %14, align 8, !tbaa !66
  %15 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #15
  %16 = getelementptr inbounds [4 x ptr], ptr @computed, i64 0, i64 %4
  store ptr %15, ptr %16, align 8, !tbaa !66
  %17 = add nuw nsw i64 %4, 1
  %18 = icmp eq i64 %17, 4
  br i1 %18, label %19, label %3, !llvm.loop !162

19:                                               ; preds = %3
  tail call fastcc void @init_offset_limit() #16
  br label %20

20:                                               ; preds = %0, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fini_object_sizes() local_unnamed_addr #0 !prof !163 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %7, %1 ]
  %3 = getelementptr inbounds [4 x ptr], ptr @object_sizes, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  tail call void @free(ptr noundef %4) #16
  %5 = getelementptr inbounds [4 x ptr], ptr @computed, i64 0, i64 %2
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  tail call void @bitmap_obstack_free(ptr noundef %6) #15
  store ptr null, ptr %5, align 8, !tbaa !66
  store ptr null, ptr %3, align 8, !tbaa !66
  %7 = add nuw nsw i64 %2, 1
  %8 = icmp eq i64 %7, 4
  br i1 %8, label %9, label %1, !prof !164, !llvm.loop !165

9:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @compute_object_sizes() #0 !prof !163 !PGOFuncName !166 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = load ptr, ptr @cfun, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !167
  %6 = load ptr, ptr %5, align 8, !tbaa !168
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !170
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !172
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %106, label %12, !prof !173

12:                                               ; preds = %0, %97
  %13 = phi ptr [ %99, %97 ], [ %8, %0 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %13) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !174
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  %14 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16, !range !87
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %97, !prof !175

16:                                               ; preds = %12, %94
  %17 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16
  %18 = call fastcc i32 @gimple_code(ptr noundef %17) #16, !range !102
  %19 = icmp eq i32 %18, 8
  br i1 %19, label %20, label %94, !prof !176

20:                                               ; preds = %16
  %21 = call fastcc ptr @gimple_call_fndecl(ptr noundef %17) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %94, label %23, !prof !177

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.tree_function_decl, ptr %21, i64 0, i32 5
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 8191
  %27 = icmp eq i32 %26, 6672
  br i1 %27, label %28, label %94, !prof !178

28:                                               ; preds = %23
  call void @init_object_sizes() #16
  %29 = call ptr @fold_call_stmt(ptr noundef %17, i8 noundef zeroext 0) #15
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %65

31:                                               ; preds = %28
  %32 = call fastcc i32 @gimple_call_num_args(ptr noundef %17) #16
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %94

34:                                               ; preds = %31
  %35 = call fastcc ptr @gimple_call_arg(ptr noundef %17, i32 noundef 0) #16
  %36 = getelementptr inbounds %struct.tree_common, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !65
  %38 = load i64, ptr %37, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 10
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = call fastcc ptr @gimple_call_arg(ptr noundef %17, i32 noundef 0) #16
  %43 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !65
  %45 = load i64, ptr %44, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 12
  br i1 %47, label %48, label %94

48:                                               ; preds = %41, %34
  %49 = call fastcc ptr @gimple_call_arg(ptr noundef %17, i32 noundef 1) #16
  %50 = call i32 @host_integerp(ptr noundef %49, i32 noundef 1) #15
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %94, label %52

52:                                               ; preds = %48
  %53 = call i64 @tree_low_cst(ptr noundef %49, i32 noundef 1) #15
  %54 = icmp ult i64 %53, 2
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !66
  %57 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 15), align 8, !tbaa !66
  %58 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %56, ptr noundef %57) #15
  br label %62

59:                                               ; preds = %52
  %60 = icmp ult i64 %53, 4
  %61 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8
  br i1 %60, label %62, label %94

62:                                               ; preds = %59, %55
  %63 = phi ptr [ %58, %55 ], [ %61, %59 ]
  %64 = icmp eq ptr %63, null
  br i1 %64, label %94, label %65

65:                                               ; preds = %62, %28
  %66 = phi ptr [ %29, %28 ], [ %63, %62 ]
  %67 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %68 = icmp eq ptr %67, null
  br i1 %68, label %77, label %69

69:                                               ; preds = %65
  %70 = load i32, ptr @dump_flags, align 4, !tbaa !68
  %71 = and i32 %70, 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = call i64 @fwrite(ptr nonnull @.str.17, i64 13, i64 1, ptr nonnull %67)
  %75 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %76 = load i32, ptr @dump_flags, align 4, !tbaa !68
  call void @print_gimple_stmt(ptr noundef %75, ptr noundef %17, i32 noundef 0, i32 noundef %76) #15
  br label %77

77:                                               ; preds = %73, %69, %65
  %78 = call zeroext i8 @update_call_from_tree(ptr noundef nonnull %1, ptr noundef nonnull %66) #15
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1221, ptr noundef nonnull @.str.1) #15
  br label %81

81:                                               ; preds = %80, %77
  %82 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %83 = icmp eq ptr %82, null
  br i1 %83, label %94, label %84

84:                                               ; preds = %81
  %85 = load i32, ptr @dump_flags, align 4, !tbaa !68
  %86 = and i32 %85, 8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %84
  %89 = call i64 @fwrite(ptr nonnull @.str.18, i64 5, i64 1, ptr nonnull %82)
  %90 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %91 = load i32, ptr @dump_flags, align 4, !tbaa !68
  call void @print_gimple_stmt(ptr noundef %90, ptr noundef %17, i32 noundef 0, i32 noundef %91) #15
  %92 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %93 = call i32 @fputc(i32 10, ptr %92)
  br label %94

94:                                               ; preds = %59, %48, %31, %41, %81, %84, %88, %62, %20, %23, %16
  call fastcc void @gsi_next(ptr noundef nonnull %1) #16
  %95 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16, !range !87
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %16, label %97, !prof !179, !llvm.loop !180

97:                                               ; preds = %94, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #17
  %98 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %99 = load ptr, ptr %98, align 8, !tbaa !170
  %100 = load ptr, ptr @cfun, align 8, !tbaa !66
  %101 = getelementptr inbounds %struct.function, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !167
  %103 = getelementptr inbounds %struct.control_flow_graph, ptr %102, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !172
  %105 = icmp eq ptr %99, %104
  br i1 %105, label %106, label %12, !prof !181, !llvm.loop !182

106:                                              ; preds = %97, %0
  call void @fini_object_sizes() #16
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 !prof !183 !PGOFuncName !184 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #16
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #16
  store ptr %4, ptr %0, align 8, !tbaa !185
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !187
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !188
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 !prof !189 !PGOFuncName !190 {
  %2 = load ptr, ptr %0, align 8, !tbaa !185
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #11 !prof !191 !PGOFuncName !192 {
  %2 = load ptr, ptr %0, align 8, !tbaa !185
  %3 = load ptr, ptr %2, align 8, !tbaa !193
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @fold_call_stmt(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @update_call_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #5 !prof !191 !PGOFuncName !195 {
  %2 = load ptr, ptr %0, align 8, !tbaa !185
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !196
  store ptr %4, ptr %0, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !183 !PGOFuncName !197 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !198
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !199

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !200

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !201
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #4 !prof !183 !PGOFuncName !203 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !200

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !204
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind optsize }
attributes #16 = { optsize }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!59}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!36 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 92212}
!37 = !{ptr @gimple_op, ptr @gimple_ops, i64 92211}
!38 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 92212}
!39 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 92212}
!40 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!41 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 92212}
!42 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 92212}
!43 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 92212}
!44 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 92212}
!45 = !{ptr @fini_object_sizes, ptr @free, i64 26605}
!46 = !{ptr @fini_object_sizes, ptr @bitmap_obstack_free, i64 26605}
!47 = !{ptr @compute_object_sizes, ptr @gsi_start_bb, i64 224942}
!48 = !{ptr @compute_object_sizes, ptr @gsi_end_p, i64 897804}
!49 = !{ptr @compute_object_sizes, ptr @gsi_stmt, i64 672862}
!50 = !{ptr @compute_object_sizes, ptr @gimple_code, i64 672862}
!51 = !{ptr @compute_object_sizes, ptr @gimple_call_fndecl, i64 92199}
!52 = !{ptr @compute_object_sizes, ptr @init_object_sizes, i64 1}
!53 = !{ptr @compute_object_sizes, ptr @fold_call_stmt, i64 1}
!54 = !{ptr @compute_object_sizes, ptr @update_call_from_tree, i64 1}
!55 = !{ptr @compute_object_sizes, ptr @gsi_next, i64 672862}
!56 = !{ptr @compute_object_sizes, ptr @fini_object_sizes, i64 6652}
!57 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 224975}
!58 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 224975}
!59 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!60 = !{!"function_entry_count", i64 0}
!61 = !{!62, !62, i64 0}
!62 = !{!"long", !63, i64 0}
!63 = !{!"omnipotent char", !64, i64 0}
!64 = !{!"Simple C/C++ TBAA"}
!65 = !{!63, !63, i64 0}
!66 = !{!67, !67, i64 0}
!67 = !{!"any pointer", !63, i64 0}
!68 = !{!69, !69, i64 0}
!69 = !{!"int", !63, i64 0}
!70 = !{!71, !67, i64 8}
!71 = !{!"object_size_info", !69, i64 0, !67, i64 8, !67, i64 16, !69, i64 24, !63, i64 28, !67, i64 32, !67, i64 40, !67, i64 48}
!72 = !{!71, !67, i64 16}
!73 = !{!71, !69, i64 0}
!74 = !{!71, !69, i64 24}
!75 = !{!71, !63, i64 28}
!76 = !{!77, !67, i64 0}
!77 = !{!"bitmap_head_def", !67, i64 0, !67, i64 8, !69, i64 16, !67, i64 24}
!78 = !{!79, !67, i64 24}
!79 = !{!"function", !67, i64 0, !67, i64 8, !67, i64 16, !67, i64 24, !67, i64 32, !67, i64 40, !67, i64 48, !67, i64 56, !67, i64 64, !67, i64 72, !67, i64 80, !67, i64 88, !67, i64 96, !69, i64 104, !69, i64 108, !69, i64 112, !69, i64 116, !69, i64 120, !69, i64 124, !67, i64 128, !69, i64 136, !69, i64 137, !69, i64 138, !69, i64 138, !69, i64 138, !69, i64 138, !69, i64 138, !69, i64 138, !69, i64 138, !69, i64 139, !69, i64 139, !69, i64 139, !69, i64 139, !69, i64 139, !69, i64 139, !69, i64 139}
!80 = !{!81, !67, i64 16}
!81 = !{!"gimple_df", !67, i64 0, !67, i64 8, !67, i64 16, !67, i64 24, !82, i64 32, !82, i64 48, !67, i64 64, !67, i64 72, !67, i64 80, !67, i64 88, !69, i64 96, !83, i64 104}
!82 = !{!"pt_solution", !69, i64 0, !69, i64 0, !69, i64 0, !69, i64 0, !69, i64 0, !69, i64 0, !67, i64 8}
!83 = !{!"ssa_operands", !67, i64 0, !69, i64 8, !69, i64 12, !63, i64 16, !67, i64 24, !67, i64 32}
!84 = !{!71, !67, i64 32}
!85 = !{!71, !67, i64 40}
!86 = !{!71, !67, i64 48}
!87 = !{i8 0, i8 2}
!88 = distinct !{!88, !89}
!89 = !{!"llvm.loop.mustprogress"}
!90 = distinct !{!90, !89}
!91 = distinct !{!91, !89}
!92 = distinct !{!92, !89}
!93 = distinct !{!93, !89}
!94 = !{!"tree-object-size.c:init_offset_limit"}
!95 = !{!"tree-object-size.c:addr_object_size"}
!96 = distinct !{!96, !89}
!97 = distinct !{!97, !89}
!98 = distinct !{!98, !89}
!99 = distinct !{!99, !89}
!100 = distinct !{!100, !89}
!101 = !{!"tree-object-size.c:collect_object_sizes_for"}
!102 = !{i32 0, i32 256}
!103 = !{i32 0, i32 65536}
!104 = !{!105, !67, i64 32}
!105 = !{!"phi_arg_d", !106, i64 0, !67, i64 32, !69, i64 40}
!106 = !{!"ssa_use_operand_d", !67, i64 0, !67, i64 8, !63, i64 16, !67, i64 24}
!107 = distinct !{!107, !89}
!108 = !{!"tree-object-size.c:VEC_tree_base_length"}
!109 = !{!110, !69, i64 0}
!110 = !{!"VEC_tree_base", !69, i64 0, !69, i64 4, !63, i64 8}
!111 = !{!"tree-object-size.c:bmp_iter_set_init"}
!112 = !{!113, !67, i64 0}
!113 = !{!"", !67, i64 0, !67, i64 8, !69, i64 16, !62, i64 24}
!114 = !{!113, !67, i64 8}
!115 = !{!116, !69, i64 16}
!116 = !{!"bitmap_element_def", !67, i64 0, !67, i64 8, !69, i64 16, !63, i64 24}
!117 = !{!113, !69, i64 16}
!118 = !{!113, !62, i64 24}
!119 = !{!"tree-object-size.c:bmp_iter_set"}
!120 = distinct !{!120, !89}
!121 = distinct !{!121, !89}
!122 = !{!116, !67, i64 0}
!123 = !{!"tree-object-size.c:check_for_plus_in_loops"}
!124 = !{!"tree-object-size.c:VEC_tree_base_index"}
!125 = !{!"tree-object-size.c:bmp_iter_next"}
!126 = !{!"tree-object-size.c:compute_object_offset"}
!127 = !{!"function_entry_count", i64 949598}
!128 = !{!"tree-object-size.c:gimple_code"}
!129 = !{!"tree-object-size.c:gimple_assign_rhs_code"}
!130 = !{!"tree-object-size.c:plus_stmt_object_size"}
!131 = !{!"tree-object-size.c:gimple_assign_rhs1"}
!132 = !{!"tree-object-size.c:merge_object_sizes"}
!133 = !{!"tree-object-size.c:cond_expr_object_size"}
!134 = !{!"tree-object-size.c:expr_object_size"}
!135 = !{!"tree-object-size.c:unknown_object_size"}
!136 = !{!"tree-object-size.c:pass_through_call"}
!137 = !{!"tree-object-size.c:call_object_size"}
!138 = !{!"tree-object-size.c:gimple_phi_num_args"}
!139 = !{!"tree-object-size.c:gimple_phi_arg"}
!140 = !{!"tree-object-size.c:gimple_expr_code"}
!141 = !{!"tree-object-size.c:get_gimple_rhs_class"}
!142 = !{!"tree-object-size.c:gimple_assign_rhs2"}
!143 = !{!"tree-object-size.c:gimple_num_ops"}
!144 = !{!"function_entry_count", i64 92212}
!145 = !{!"tree-object-size.c:gimple_op"}
!146 = !{!"branch_weights", i32 1, i32 92213}
!147 = !{!"tree-object-size.c:gimple_has_ops"}
!148 = !{!"tree-object-size.c:gimple_ops"}
!149 = !{!"tree-object-size.c:gimple_statement_structure"}
!150 = !{!"tree-object-size.c:gss_for_code"}
!151 = !{!"tree-object-size.c:gimple_call_fndecl"}
!152 = !{!"branch_weights", i32 88956, i32 3258}
!153 = !{!"tree-object-size.c:gimple_call_num_args"}
!154 = !{!"tree-object-size.c:gimple_call_arg"}
!155 = !{!"tree-object-size.c:gimple_call_fn"}
!156 = !{!"tree-object-size.c:is_gimple_call"}
!157 = !{!"tree-object-size.c:alloc_object_size"}
!158 = !{!"tree-object-size.c:is_gimple_assign"}
!159 = !{!"tree-object-size.c:check_for_plus_in_loops_1"}
!160 = distinct !{!160, !89}
!161 = distinct !{!161, !89}
!162 = distinct !{!162, !89}
!163 = !{!"function_entry_count", i64 6652}
!164 = !{!"branch_weights", i32 6653, i32 19956}
!165 = distinct !{!165, !89}
!166 = !{!"tree-object-size.c:compute_object_sizes"}
!167 = !{!79, !67, i64 8}
!168 = !{!169, !67, i64 0}
!169 = !{!"control_flow_graph", !67, i64 0, !67, i64 8, !67, i64 16, !69, i64 24, !69, i64 28, !69, i64 32, !67, i64 40, !69, i64 48, !63, i64 52, !63, i64 60, !69, i64 68, !69, i64 72}
!170 = !{!171, !67, i64 56}
!171 = !{!"basic_block_def", !67, i64 0, !67, i64 8, !67, i64 16, !67, i64 24, !63, i64 32, !67, i64 48, !67, i64 56, !63, i64 64, !62, i64 72, !69, i64 80, !69, i64 84, !69, i64 88, !69, i64 92, !69, i64 96}
!172 = !{!169, !67, i64 8}
!173 = !{!"branch_weights", i32 1, i32 6652}
!174 = !{i64 0, i64 8, !66, i64 8, i64 8, !66, i64 16, i64 8, !66}
!175 = !{!"branch_weights", i32 224975, i32 1}
!176 = !{!"branch_weights", i32 92213, i32 580751}
!177 = !{!"branch_weights", i32 3258, i32 88956}
!178 = !{!"branch_weights", i32 11135, i32 990614017}
!179 = !{!"branch_weights", i32 447988, i32 224975}
!180 = distinct !{!180, !89}
!181 = !{!"branch_weights", i32 6652, i32 218324}
!182 = distinct !{!182, !89}
!183 = !{!"function_entry_count", i64 224975}
!184 = !{!"tree-object-size.c:gsi_start_bb"}
!185 = !{!186, !67, i64 0}
!186 = !{!"", !67, i64 0, !67, i64 8, !67, i64 16}
!187 = !{!186, !67, i64 8}
!188 = !{!186, !67, i64 16}
!189 = !{!"function_entry_count", i64 897937}
!190 = !{!"tree-object-size.c:gsi_end_p"}
!191 = !{!"function_entry_count", i64 672962}
!192 = !{!"tree-object-size.c:gsi_stmt"}
!193 = !{!194, !67, i64 0}
!194 = !{!"gimple_seq_node_d", !67, i64 0, !67, i64 8, !67, i64 16}
!195 = !{!"tree-object-size.c:gsi_next"}
!196 = !{!194, !67, i64 16}
!197 = !{!"tree-object-size.c:bb_seq"}
!198 = !{!171, !69, i64 96}
!199 = !{!"branch_weights", i32 224976, i32 1}
!200 = !{!"branch_weights", i32 1, i32 224976}
!201 = !{!202, !67, i64 0}
!202 = !{!"gimple_bb_info", !67, i64 0, !67, i64 8}
!203 = !{!"tree-object-size.c:gimple_seq_first"}
!204 = !{!205, !67, i64 0}
!205 = !{!"gimple_seq_d", !67, i64 0, !67, i64 8, !67, i64 16}
