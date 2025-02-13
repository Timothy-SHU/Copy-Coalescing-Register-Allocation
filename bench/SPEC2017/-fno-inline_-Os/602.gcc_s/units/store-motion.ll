; ModuleID = 'store-motion.c'
source_filename = "store-motion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.edge_list = type { i32, i32, ptr }
%struct.st_expr = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.df_insn_info = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.df_base_ref = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.edge_iterator = type { i32, ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }

@pass_rtl_store_motion = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_rtl_store_motion, ptr @execute_rtl_store_motion, ptr null, ptr null, i32 0, i32 133, i32 512, i32 0, i32 0, i32 0, i32 132107 } }, align 8
@.str = private unnamed_addr constant [13 x i8] c"store_motion\00", align 1
@optimize = external local_unnamed_addr global i32, align 4
@flag_gcse_sm = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@flag_rerun_cse_after_global_opts = external local_unnamed_addr global i32, align 4
@num_stores = internal unnamed_addr global i32 0, align 4
@store_motion_mems_table = internal unnamed_addr global ptr null, align 8
@st_transp = internal unnamed_addr global ptr null, align 8
@st_avloc = internal unnamed_addr global ptr null, align 8
@st_antloc = internal unnamed_addr global ptr null, align 8
@st_kill = internal unnamed_addr global ptr null, align 8
@st_insert_map = internal global ptr null, align 8
@st_delete_map = internal global ptr null, align 8
@edge_list = internal unnamed_addr global ptr null, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"Can't replace store %d: abnormal edge from %d to %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"STORE_MOTION of %s, %d basic blocks, \00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"%d insns deleted, %d insns created\0A\00", align 1
@store_motion_mems = internal unnamed_addr global ptr null, align 8
@df = external local_unnamed_addr global ptr, align 8
@flag_non_call_exceptions = external local_unnamed_addr global i32, align 4
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@.str.4 = private unnamed_addr constant [44 x i8] c"STORE_MOTION list of MEM exprs considered:\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"  Pattern (%3d): \00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"\0A\09 ANTIC stores : \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"(nil)\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"\0A\09 AVAIL stores : \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Removing redundant store:\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"st_antloc\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"st_kill\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"st_transp\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"st_avloc\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"STORE_MOTION  delete insn in BB %d:\0A      \00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"\0ASTORE_MOTION  replaced with insn:\0A      \00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"STORE_MOTION  drop REG_EQUAL note at insn %d:\0A\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"store-motion.c\00", align 1
@.str.23 = private unnamed_addr constant [45 x i8] c"STORE_MOTION  insert insn on edge (%d, %d):\0A\00", align 1
@.str.24 = private unnamed_addr constant [47 x i8] c"STORE_MOTION  insert store at start of BB %d:\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @gate_rtl_store_motion() #0 !prof !182 !PGOFuncName !183 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !184
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_gcse_sm, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %19, !prof !188

6:                                                ; preds = %0
  %7 = load ptr, ptr @cfun, align 8, !tbaa !189
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 20
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 262144
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19, !prof !191

12:                                               ; preds = %6
  %13 = tail call zeroext i8 @optimize_function_for_speed_p(ptr noundef nonnull %7) #15
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15, !prof !192

15:                                               ; preds = %12
  %16 = tail call zeroext i8 @dbg_cnt(i32 noundef 35) #15
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %15, %12, %6, %0
  %20 = phi i8 [ 0, %12 ], [ 0, %6 ], [ 0, %0 ], [ %18, %15 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @execute_rtl_store_motion() #0 !prof !193 !PGOFuncName !194 {
  %1 = tail call zeroext i8 @delete_unreachable_blocks() #15
  tail call void @df_analyze() #15
  %2 = tail call fastcc i32 @one_store_motion_pass() #16, !range !195
  %3 = load i32, ptr @flag_rerun_cse_after_global_opts, align 4, !tbaa !184
  %4 = or i32 %3, %2
  store i32 %4, ptr @flag_rerun_cse_after_global_opts, align 4, !tbaa !184
  ret i32 0
}

; Function Attrs: optsize
declare zeroext i8 @optimize_function_for_speed_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @delete_unreachable_blocks() local_unnamed_addr #1

; Function Attrs: optsize
declare void @df_analyze() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @one_store_motion_pass() unnamed_addr #0 !prof !193 !PGOFuncName !196 {
  tail call void @init_alias_analysis() #15
  %1 = tail call fastcc i32 @compute_store_table() #16
  store i32 %1, ptr @num_stores, align 4, !tbaa !184
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %5, !prof !197

3:                                                ; preds = %0
  %4 = load ptr, ptr @store_motion_mems_table, align 8, !tbaa !189
  tail call void @htab_delete(ptr noundef %4) #15
  store ptr null, ptr @store_motion_mems_table, align 8, !tbaa !189
  tail call void @end_alias_analysis() #15
  br label %200

5:                                                ; preds = %0
  tail call fastcc void @build_store_vectors() #16
  tail call void @add_noreturn_fake_exit_edges() #15
  tail call void @connect_infinite_loops_to_exit() #15
  %6 = load i32, ptr @num_stores, align 4, !tbaa !184
  %7 = load ptr, ptr @st_transp, align 8, !tbaa !189
  %8 = load ptr, ptr @st_avloc, align 8, !tbaa !189
  %9 = load ptr, ptr @st_antloc, align 8, !tbaa !189
  %10 = load ptr, ptr @st_kill, align 8, !tbaa !189
  %11 = tail call ptr @pre_edge_rev_lcm(i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef nonnull @st_insert_map, ptr noundef nonnull @st_delete_map) #15
  store ptr %11, ptr @edge_list, align 8, !tbaa !189
  %12 = tail call fastcc ptr @first_st_expr() #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %179, label %14, !prof !198

14:                                               ; preds = %5, %167
  %15 = phi ptr [ %168, %167 ], [ %11, %5 ]
  %16 = phi ptr [ %169, %167 ], [ %11, %5 ]
  %17 = phi ptr [ %170, %167 ], [ %11, %5 ]
  %18 = phi i32 [ %173, %167 ], [ 0, %5 ]
  %19 = phi i32 [ %172, %167 ], [ 0, %5 ]
  %20 = phi i32 [ %171, %167 ], [ 0, %5 ]
  %21 = phi ptr [ %174, %167 ], [ %12, %5 ]
  %22 = getelementptr inbounds %struct.edge_list, ptr %17, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !199
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %68, !prof !201

25:                                               ; preds = %14
  %26 = load ptr, ptr @st_insert_map, align 8, !tbaa !189
  %27 = getelementptr inbounds %struct.st_expr, ptr %21, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !202
  %29 = lshr i32 %28, 6
  %30 = zext nneg i32 %29 to i64
  %31 = and i32 %28, 63
  %32 = zext nneg i32 %31 to i64
  %33 = shl nuw i64 1, %32
  %34 = zext nneg i32 %23 to i64
  br label %35

35:                                               ; preds = %25, %53
  %36 = phi i64 [ %34, %25 ], [ %37, %53 ]
  %37 = add nsw i64 %36, -1
  %38 = getelementptr inbounds ptr, ptr %26, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !189
  %40 = getelementptr inbounds %struct.simple_bitmap_def, ptr %39, i64 0, i32 3, i64 %30
  %41 = load i64, ptr %40, align 8, !tbaa !204
  %42 = and i64 %33, %41
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %53, label %44, !prof !206

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.edge_list, ptr %17, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !207
  %47 = getelementptr inbounds ptr, ptr %46, i64 %37
  %48 = load ptr, ptr %47, align 8, !tbaa !189
  %49 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 7
  %50 = load i32, ptr %49, align 8, !tbaa !208
  %51 = and i32 %50, 2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55, !prof !210

53:                                               ; preds = %35, %44
  %54 = icmp ugt i64 %36, 1
  br i1 %54, label %35, label %68, !prof !211, !llvm.loop !212

55:                                               ; preds = %44
  %56 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %57 = icmp eq ptr %56, null
  br i1 %57, label %167, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %48, align 8, !tbaa !214
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 9
  %61 = load i32, ptr %60, align 8, !tbaa !215
  %62 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !217
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 9
  %65 = load i32, ptr %64, align 8, !tbaa !215
  %66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %56, ptr noundef nonnull @.str.1, i32 noundef %28, i32 noundef %61, i32 noundef %65) #16
  %67 = load ptr, ptr @edge_list, align 8, !tbaa !189
  br label %167

68:                                               ; preds = %53, %14
  %69 = load ptr, ptr @cfun, align 8, !tbaa !189
  %70 = getelementptr inbounds %struct.function, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !218
  %72 = load ptr, ptr %71, align 8, !tbaa !220
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %72, i64 0, i32 6
  %74 = load ptr, ptr %73, align 8, !tbaa !222
  %75 = getelementptr inbounds %struct.control_flow_graph, ptr %71, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !223
  %77 = icmp eq ptr %74, %76
  br i1 %77, label %83, label %78, !prof !224

78:                                               ; preds = %68
  %79 = getelementptr inbounds %struct.st_expr, ptr %21, i64 0, i32 5
  %80 = load ptr, ptr @st_delete_map, align 8, !tbaa !189
  br label %93

81:                                               ; preds = %117
  %82 = load ptr, ptr @edge_list, align 8, !tbaa !189
  br label %83

83:                                               ; preds = %81, %68
  %84 = phi ptr [ %15, %68 ], [ %82, %81 ]
  %85 = phi ptr [ %16, %68 ], [ %82, %81 ]
  %86 = phi i32 [ %19, %68 ], [ %120, %81 ]
  %87 = getelementptr inbounds %struct.edge_list, ptr %85, i64 0, i32 1
  %88 = load i32, ptr %87, align 4, !tbaa !199
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %167, !prof !201

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.st_expr, ptr %21, i64 0, i32 5
  %92 = load ptr, ptr @st_insert_map, align 8, !tbaa !189
  br label %128

93:                                               ; preds = %78, %117
  %94 = phi ptr [ %69, %78 ], [ %118, %117 ]
  %95 = phi ptr [ %80, %78 ], [ %119, %117 ]
  %96 = phi ptr [ %74, %78 ], [ %122, %117 ]
  %97 = phi i32 [ %19, %78 ], [ %120, %117 ]
  %98 = getelementptr inbounds %struct.basic_block_def, ptr %96, i64 0, i32 9
  %99 = load i32, ptr %98, align 8, !tbaa !215
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds ptr, ptr %95, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !189
  %103 = load i32, ptr %79, align 8, !tbaa !202
  %104 = lshr i32 %103, 6
  %105 = zext nneg i32 %104 to i64
  %106 = getelementptr inbounds %struct.simple_bitmap_def, ptr %102, i64 0, i32 3, i64 %105
  %107 = load i64, ptr %106, align 8, !tbaa !204
  %108 = and i32 %103, 63
  %109 = zext nneg i32 %108 to i64
  %110 = shl nuw i64 1, %109
  %111 = and i64 %110, %107
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %117, label %113, !prof !225

113:                                              ; preds = %93
  tail call fastcc void @delete_store(ptr noundef nonnull %21, ptr noundef nonnull %96) #16
  %114 = add nsw i32 %97, 1
  %115 = load ptr, ptr @st_delete_map, align 8, !tbaa !189
  %116 = load ptr, ptr @cfun, align 8, !tbaa !189
  br label %117

117:                                              ; preds = %93, %113
  %118 = phi ptr [ %116, %113 ], [ %94, %93 ]
  %119 = phi ptr [ %115, %113 ], [ %95, %93 ]
  %120 = phi i32 [ %114, %113 ], [ %97, %93 ]
  %121 = getelementptr inbounds %struct.basic_block_def, ptr %96, i64 0, i32 6
  %122 = load ptr, ptr %121, align 8, !tbaa !222
  %123 = getelementptr inbounds %struct.function, ptr %118, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !218
  %125 = getelementptr inbounds %struct.control_flow_graph, ptr %124, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !223
  %127 = icmp eq ptr %122, %126
  br i1 %127, label %81, label %93, !prof !226, !llvm.loop !227

128:                                              ; preds = %90, %157
  %129 = phi ptr [ %84, %90 ], [ %158, %157 ]
  %130 = phi ptr [ %92, %90 ], [ %159, %157 ]
  %131 = phi i64 [ 0, %90 ], [ %162, %157 ]
  %132 = phi ptr [ %85, %90 ], [ %158, %157 ]
  %133 = phi i32 [ %18, %90 ], [ %161, %157 ]
  %134 = phi i32 [ %20, %90 ], [ %160, %157 ]
  %135 = getelementptr inbounds ptr, ptr %130, i64 %131
  %136 = load ptr, ptr %135, align 8, !tbaa !189
  %137 = load i32, ptr %91, align 8, !tbaa !202
  %138 = lshr i32 %137, 6
  %139 = zext nneg i32 %138 to i64
  %140 = getelementptr inbounds %struct.simple_bitmap_def, ptr %136, i64 0, i32 3, i64 %139
  %141 = load i64, ptr %140, align 8, !tbaa !204
  %142 = and i32 %137, 63
  %143 = zext nneg i32 %142 to i64
  %144 = shl nuw i64 1, %143
  %145 = and i64 %144, %141
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %157, label %147, !prof !228

147:                                              ; preds = %128
  %148 = getelementptr inbounds %struct.edge_list, ptr %132, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !207
  %150 = getelementptr inbounds ptr, ptr %149, i64 %131
  %151 = load ptr, ptr %150, align 8, !tbaa !189
  %152 = tail call fastcc i32 @insert_store(ptr noundef nonnull %21, ptr noundef %151) #16, !range !195
  %153 = or i32 %152, %134
  %154 = add nsw i32 %133, 1
  %155 = load ptr, ptr @st_insert_map, align 8, !tbaa !189
  %156 = load ptr, ptr @edge_list, align 8, !tbaa !189
  br label %157

157:                                              ; preds = %128, %147
  %158 = phi ptr [ %156, %147 ], [ %129, %128 ]
  %159 = phi ptr [ %155, %147 ], [ %130, %128 ]
  %160 = phi i32 [ %153, %147 ], [ %134, %128 ]
  %161 = phi i32 [ %154, %147 ], [ %133, %128 ]
  %162 = add nuw nsw i64 %131, 1
  %163 = getelementptr inbounds %struct.edge_list, ptr %158, i64 0, i32 1
  %164 = load i32, ptr %163, align 4, !tbaa !199
  %165 = sext i32 %164 to i64
  %166 = icmp slt i64 %162, %165
  br i1 %166, label %128, label %167, !prof !211, !llvm.loop !229

167:                                              ; preds = %157, %83, %55, %58
  %168 = phi ptr [ %67, %58 ], [ %15, %55 ], [ %84, %83 ], [ %158, %157 ]
  %169 = phi ptr [ %67, %58 ], [ %16, %55 ], [ %85, %83 ], [ %158, %157 ]
  %170 = phi ptr [ %67, %58 ], [ %17, %55 ], [ %85, %83 ], [ %158, %157 ]
  %171 = phi i32 [ %20, %58 ], [ %20, %55 ], [ %20, %83 ], [ %160, %157 ]
  %172 = phi i32 [ %19, %58 ], [ %19, %55 ], [ %86, %83 ], [ %86, %157 ]
  %173 = phi i32 [ %18, %58 ], [ %18, %55 ], [ %18, %83 ], [ %161, %157 ]
  %174 = tail call fastcc ptr @next_st_expr(ptr noundef nonnull %21) #16
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %14, !prof !230, !llvm.loop !231

176:                                              ; preds = %167
  %177 = icmp eq i32 %171, 0
  br i1 %177, label %179, label %178, !prof !232

178:                                              ; preds = %176
  tail call void @commit_edge_insertions() #15
  br label %179

179:                                              ; preds = %5, %178, %176
  %180 = phi i32 [ %173, %178 ], [ %173, %176 ], [ 0, %5 ]
  %181 = phi i32 [ %172, %178 ], [ %172, %176 ], [ 0, %5 ]
  tail call fastcc void @free_store_memory() #16
  %182 = load ptr, ptr @edge_list, align 8, !tbaa !189
  tail call void @free_edge_list(ptr noundef %182) #15
  tail call void @remove_fake_exit_edges() #15
  tail call void @end_alias_analysis() #15
  %183 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %184 = icmp eq ptr %183, null
  br i1 %184, label %195, label %185, !prof !233

185:                                              ; preds = %179
  %186 = tail call ptr @current_function_name() #15
  %187 = load ptr, ptr @cfun, align 8, !tbaa !189
  %188 = getelementptr inbounds %struct.function, ptr %187, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !218
  %190 = getelementptr inbounds %struct.control_flow_graph, ptr %189, i64 0, i32 3
  %191 = load i32, ptr %190, align 8, !tbaa !234
  %192 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %183, ptr noundef nonnull @.str.2, ptr noundef %186, i32 noundef %191) #16
  %193 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %194 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %193, ptr noundef nonnull @.str.3, i32 noundef %181, i32 noundef %180) #16
  br label %195

195:                                              ; preds = %185, %179
  %196 = icmp sgt i32 %181, 0
  %197 = icmp sgt i32 %180, 0
  %198 = select i1 %196, i1 true, i1 %197, !prof !235
  %199 = zext i1 %198 to i32
  br label %200

200:                                              ; preds = %195, %3
  %201 = phi i32 [ 0, %3 ], [ %199, %195 ]
  ret i32 %201
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @init_alias_analysis() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @compute_store_table() unnamed_addr #0 !prof !193 !PGOFuncName !236 {
  %1 = tail call i32 @max_reg_num() #15
  store ptr null, ptr @store_motion_mems, align 8, !tbaa !189
  %2 = tail call ptr @htab_create(i64 noundef 13, ptr noundef nonnull @pre_st_expr_hash, ptr noundef nonnull @pre_st_expr_eq, ptr noundef null) #15
  store ptr %2, ptr @store_motion_mems_table, align 8, !tbaa !189
  %3 = zext i32 %1 to i64
  %4 = tail call ptr @xcalloc(i64 noundef %3, i64 noundef 4) #15
  %5 = shl nuw nsw i64 %3, 2
  %6 = tail call ptr @xmalloc(i64 noundef %5) #15
  %7 = load ptr, ptr @cfun, align 8, !tbaa !189
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !218
  %10 = load ptr, ptr %9, align 8, !tbaa !220
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !222
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !223
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %25, label %28, !prof !237

16:                                               ; preds = %162, %146
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !222
  %19 = load ptr, ptr @cfun, align 8, !tbaa !189
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !218
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !223
  %24 = icmp eq ptr %18, %23
  br i1 %24, label %25, label %28, !prof !238, !llvm.loop !239

25:                                               ; preds = %16, %0
  %26 = load ptr, ptr @store_motion_mems, align 8, !tbaa !189
  %27 = icmp eq ptr %26, null
  br i1 %27, label %181, label %165, !prof !237

28:                                               ; preds = %0, %16
  %29 = phi ptr [ %18, %16 ], [ %12, %0 ]
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !240
  %32 = load ptr, ptr %31, align 8, !tbaa !240
  %33 = icmp eq ptr %32, null
  br i1 %33, label %75, label %34, !prof !237

34:                                               ; preds = %28
  %35 = load ptr, ptr @df, align 8
  %36 = getelementptr inbounds %struct.df, ptr %35, i64 0, i32 10
  br label %37

37:                                               ; preds = %34, %71
  %38 = phi ptr [ %32, %34 ], [ %73, %71 ]
  %39 = load ptr, ptr %30, align 8, !tbaa !240
  %40 = getelementptr inbounds %struct.rtl_bb_info, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !241
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 0, i64 2
  %43 = load ptr, ptr %42, align 8, !tbaa !240
  %44 = icmp eq ptr %38, %43
  br i1 %44, label %75, label %45, !prof !243

45:                                               ; preds = %37
  %46 = load i32, ptr %38, align 8
  %47 = and i32 %46, 65535
  %48 = add nsw i32 %47, -11
  %49 = icmp ult i32 %48, -3
  br i1 %49, label %71, label %50, !prof !244

50:                                               ; preds = %45
  %51 = load ptr, ptr %36, align 8, !tbaa !245
  %52 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %53 = load i32, ptr %52, align 8, !tbaa !240
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds ptr, ptr %51, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !189
  %57 = getelementptr inbounds %struct.df_insn_info, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !248
  %59 = load ptr, ptr %58, align 8, !tbaa !189
  %60 = icmp eq ptr %59, null
  br i1 %60, label %71, label %61, !prof !250

61:                                               ; preds = %50, %61
  %62 = phi ptr [ %69, %61 ], [ %59, %50 ]
  %63 = phi ptr [ %68, %61 ], [ %58, %50 ]
  %64 = getelementptr inbounds %struct.df_base_ref, ptr %62, i64 0, i32 6
  %65 = load i32, ptr %64, align 8, !tbaa !240
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, ptr %4, i64 %66
  store i32 %53, ptr %67, align 4, !tbaa !184
  %68 = getelementptr inbounds ptr, ptr %63, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !189
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %61, !prof !251, !llvm.loop !252

71:                                               ; preds = %61, %50, %45
  %72 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 2
  %73 = load ptr, ptr %72, align 8, !tbaa !240
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %37, !prof !253, !llvm.loop !254

75:                                               ; preds = %37, %71, %28
  tail call void @llvm.memset.p0.i64(ptr align 4 %6, i8 0, i64 %5, i1 false)
  %76 = load ptr, ptr %30, align 8, !tbaa !240
  %77 = load ptr, ptr %76, align 8, !tbaa !240
  %78 = icmp eq ptr %77, null
  br i1 %78, label %146, label %79, !prof !237

79:                                               ; preds = %75, %142
  %80 = phi ptr [ %144, %142 ], [ %77, %75 ]
  %81 = load ptr, ptr %30, align 8, !tbaa !240
  %82 = getelementptr inbounds %struct.rtl_bb_info, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !241
  %84 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1, i32 0, i32 0, i64 2
  %85 = load ptr, ptr %84, align 8, !tbaa !240
  %86 = icmp eq ptr %80, %85
  br i1 %86, label %146, label %87, !prof !243

87:                                               ; preds = %79
  %88 = load i32, ptr %80, align 8
  %89 = and i32 %88, 65535
  %90 = add nsw i32 %89, -11
  %91 = icmp ult i32 %90, -3
  br i1 %91, label %142, label %92, !prof !244

92:                                               ; preds = %87
  %93 = load ptr, ptr @df, align 8, !tbaa !189
  %94 = getelementptr inbounds %struct.df, ptr %93, i64 0, i32 10
  %95 = load ptr, ptr %94, align 8, !tbaa !245
  %96 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 0, i32 1
  %97 = load i32, ptr %96, align 8, !tbaa !240
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds ptr, ptr %95, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !189
  %101 = getelementptr inbounds %struct.df_insn_info, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !248
  %103 = load ptr, ptr %102, align 8, !tbaa !189
  %104 = icmp eq ptr %103, null
  br i1 %104, label %115, label %105, !prof !250

105:                                              ; preds = %92, %105
  %106 = phi ptr [ %113, %105 ], [ %103, %92 ]
  %107 = phi ptr [ %112, %105 ], [ %102, %92 ]
  %108 = getelementptr inbounds %struct.df_base_ref, ptr %106, i64 0, i32 6
  %109 = load i32, ptr %108, align 8, !tbaa !240
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, ptr %6, i64 %110
  store i32 %97, ptr %111, align 4, !tbaa !184
  %112 = getelementptr inbounds ptr, ptr %107, i64 1
  %113 = load ptr, ptr %112, align 8, !tbaa !189
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %105, !prof !251, !llvm.loop !255

115:                                              ; preds = %105, %92
  tail call fastcc void @find_moveable_store(ptr noundef nonnull %80, ptr noundef %6, ptr noundef %4) #16
  %116 = load ptr, ptr @df, align 8, !tbaa !189
  %117 = getelementptr inbounds %struct.df, ptr %116, i64 0, i32 10
  %118 = load ptr, ptr %117, align 8, !tbaa !245
  %119 = load i32, ptr %96, align 8, !tbaa !240
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds ptr, ptr %118, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !189
  %123 = getelementptr inbounds %struct.df_insn_info, ptr %122, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !248
  %125 = load ptr, ptr %124, align 8, !tbaa !189
  %126 = icmp eq ptr %125, null
  br i1 %126, label %142, label %127, !prof !250

127:                                              ; preds = %115, %138
  %128 = phi ptr [ %140, %138 ], [ %125, %115 ]
  %129 = phi ptr [ %139, %138 ], [ %124, %115 ]
  %130 = getelementptr inbounds %struct.df_base_ref, ptr %128, i64 0, i32 6
  %131 = load i32, ptr %130, align 8, !tbaa !240
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32, ptr %4, i64 %132
  %134 = load i32, ptr %133, align 4, !tbaa !184
  %135 = load i32, ptr %96, align 8, !tbaa !240
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %138, !prof !256

137:                                              ; preds = %127
  store i32 0, ptr %133, align 4, !tbaa !184
  br label %138

138:                                              ; preds = %127, %137
  %139 = getelementptr inbounds ptr, ptr %129, i64 1
  %140 = load ptr, ptr %139, align 8, !tbaa !189
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %127, !prof !251, !llvm.loop !257

142:                                              ; preds = %138, %115, %87
  %143 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 0, i32 1, i32 0, i32 0, i64 2
  %144 = load ptr, ptr %143, align 8, !tbaa !240
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %79, !prof !253, !llvm.loop !258

146:                                              ; preds = %79, %142, %75
  %147 = tail call fastcc ptr @first_st_expr() #16
  %148 = icmp eq ptr %147, null
  br i1 %148, label %16, label %149, !prof !259

149:                                              ; preds = %146, %162
  %150 = phi ptr [ %163, %162 ], [ %147, %146 ]
  %151 = getelementptr inbounds %struct.st_expr, ptr %150, i64 0, i32 7
  store ptr null, ptr %151, align 8, !tbaa !260
  %152 = getelementptr inbounds %struct.st_expr, ptr %150, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !261
  %154 = icmp eq ptr %153, null
  br i1 %154, label %162, label %155, !prof !262

155:                                              ; preds = %149
  %156 = getelementptr inbounds %struct.rtx_def, ptr %153, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !240
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %162, !prof !263

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.rtx_def, ptr %153, i64 0, i32 1, i32 0, i32 0, i64 1
  %161 = load ptr, ptr %160, align 8, !tbaa !240
  store ptr %161, ptr %152, align 8, !tbaa !261
  br label %162

162:                                              ; preds = %149, %155, %159
  %163 = tail call fastcc ptr @next_st_expr(ptr noundef nonnull %150) #16
  %164 = icmp eq ptr %163, null
  br i1 %164, label %16, label %149, !prof !264, !llvm.loop !265

165:                                              ; preds = %25, %177
  %166 = phi ptr [ %179, %177 ], [ %26, %25 ]
  %167 = phi ptr [ %178, %177 ], [ @store_motion_mems, %25 ]
  %168 = getelementptr inbounds %struct.st_expr, ptr %166, i64 0, i32 3
  %169 = load ptr, ptr %168, align 8, !tbaa !266
  %170 = icmp eq ptr %169, null
  %171 = getelementptr inbounds %struct.st_expr, ptr %166, i64 0, i32 4
  br i1 %170, label %172, label %177, !prof !267

172:                                              ; preds = %165
  %173 = load ptr, ptr %171, align 8, !tbaa !268
  store ptr %173, ptr %167, align 8, !tbaa !189
  %174 = load ptr, ptr @store_motion_mems_table, align 8, !tbaa !189
  %175 = getelementptr inbounds %struct.st_expr, ptr %166, i64 0, i32 6
  %176 = load i32, ptr %175, align 4, !tbaa !269
  tail call void @htab_remove_elt_with_hash(ptr noundef %174, ptr noundef nonnull %166, i32 noundef %176) #15
  tail call fastcc void @free_st_expr_entry(ptr noundef nonnull %166) #16
  br label %177

177:                                              ; preds = %165, %172
  %178 = phi ptr [ %167, %172 ], [ %171, %165 ]
  %179 = load ptr, ptr %178, align 8, !tbaa !189
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %165, !prof !270, !llvm.loop !271

181:                                              ; preds = %177, %25
  %182 = tail call fastcc i32 @enumerate_store_motion_mems() #16
  %183 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %184 = icmp eq ptr %183, null
  br i1 %184, label %186, label %185, !prof !272

185:                                              ; preds = %181
  tail call fastcc void @print_store_motion_mems(ptr noundef nonnull %183) #16
  br label %186

186:                                              ; preds = %185, %181
  tail call void @free(ptr noundef %4) #16
  tail call void @free(ptr noundef %6) #16
  ret i32 %182
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @end_alias_analysis() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_store_vectors() unnamed_addr #0 !prof !273 !PGOFuncName !274 {
  %1 = tail call i32 @max_reg_num() #15
  %2 = load ptr, ptr @cfun, align 8, !tbaa !189
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !218
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !275
  %7 = load i32, ptr @num_stores, align 4, !tbaa !184
  %8 = tail call ptr @sbitmap_vector_alloc(i32 noundef %6, i32 noundef %7) #15
  store ptr %8, ptr @st_avloc, align 8, !tbaa !189
  %9 = load ptr, ptr @cfun, align 8, !tbaa !189
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !218
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !275
  tail call void @sbitmap_vector_zero(ptr noundef %8, i32 noundef %13) #15
  %14 = load ptr, ptr @cfun, align 8, !tbaa !189
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !218
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !275
  %19 = load i32, ptr @num_stores, align 4, !tbaa !184
  %20 = tail call ptr @sbitmap_vector_alloc(i32 noundef %18, i32 noundef %19) #15
  store ptr %20, ptr @st_antloc, align 8, !tbaa !189
  %21 = load ptr, ptr @cfun, align 8, !tbaa !189
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !218
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !275
  tail call void @sbitmap_vector_zero(ptr noundef %20, i32 noundef %25) #15
  %26 = tail call fastcc ptr @first_st_expr() #16
  %27 = icmp eq ptr %26, null
  br i1 %27, label %99, label %28, !prof !198

28:                                               ; preds = %0, %96
  %29 = phi ptr [ %97, %96 ], [ %26, %0 ]
  %30 = getelementptr inbounds %struct.st_expr, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !240
  %32 = icmp eq ptr %31, null
  br i1 %32, label %74, label %33, !prof !224

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.st_expr, ptr %29, i64 0, i32 5
  %35 = load ptr, ptr @st_avloc, align 8, !tbaa !189
  br label %36

36:                                               ; preds = %33, %69
  %37 = phi ptr [ %35, %33 ], [ %70, %69 ]
  %38 = phi ptr [ %31, %33 ], [ %72, %69 ]
  %39 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !240
  %41 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !240
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 9
  %44 = load i32, ptr %43, align 8, !tbaa !215
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds ptr, ptr %37, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !189
  %48 = load i32, ptr %34, align 8, !tbaa !202
  %49 = lshr i32 %48, 6
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds %struct.simple_bitmap_def, ptr %47, i64 0, i32 3, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !204
  %53 = and i32 %48, 63
  %54 = zext nneg i32 %53 to i64
  %55 = shl nuw i64 1, %54
  %56 = and i64 %55, %52
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %68, label %58, !prof !276

58:                                               ; preds = %36
  %59 = load ptr, ptr %29, align 8, !tbaa !277
  %60 = tail call ptr @gen_reg_rtx_and_attrs(ptr noundef %59) #15
  %61 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63, !prof !278

63:                                               ; preds = %58
  %64 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 26, i64 1, ptr nonnull %61)
  br label %65

65:                                               ; preds = %63, %58
  %66 = load ptr, ptr %39, align 8, !tbaa !240
  tail call fastcc void @replace_store_insn(ptr noundef %60, ptr noundef %66, ptr noundef nonnull %42, ptr noundef nonnull %29) #16
  %67 = load ptr, ptr @st_avloc, align 8, !tbaa !189
  br label %69

68:                                               ; preds = %36
  tail call fastcc void @SET_BIT(ptr noundef nonnull %47, i32 noundef %48) #16
  br label %69

69:                                               ; preds = %68, %65
  %70 = phi ptr [ %37, %68 ], [ %67, %65 ]
  %71 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !240
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %36, !prof !279, !llvm.loop !280

74:                                               ; preds = %69, %28
  %75 = getelementptr inbounds %struct.st_expr, ptr %29, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !240
  %77 = icmp eq ptr %76, null
  br i1 %77, label %96, label %78, !prof !281

78:                                               ; preds = %74
  %79 = load ptr, ptr @st_antloc, align 8, !tbaa !189
  %80 = getelementptr inbounds %struct.st_expr, ptr %29, i64 0, i32 5
  br label %81

81:                                               ; preds = %78, %81
  %82 = phi ptr [ %76, %78 ], [ %94, %81 ]
  %83 = getelementptr inbounds %struct.rtx_def, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !240
  %85 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1, i32 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !240
  %87 = getelementptr inbounds %struct.basic_block_def, ptr %86, i64 0, i32 9
  %88 = load i32, ptr %87, align 8, !tbaa !215
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds ptr, ptr %79, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !189
  %92 = load i32, ptr %80, align 8, !tbaa !202
  tail call fastcc void @SET_BIT(ptr noundef %91, i32 noundef %92) #16
  %93 = getelementptr inbounds %struct.rtx_def, ptr %82, i64 0, i32 1, i32 0, i32 0, i64 1
  %94 = load ptr, ptr %93, align 8, !tbaa !240
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %81, !prof !282, !llvm.loop !283

96:                                               ; preds = %81, %74
  %97 = tail call fastcc ptr @next_st_expr(ptr noundef nonnull %29) #16
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %28, !prof !230, !llvm.loop !284

99:                                               ; preds = %96, %0
  %100 = load ptr, ptr @cfun, align 8, !tbaa !189
  %101 = getelementptr inbounds %struct.function, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !218
  %103 = getelementptr inbounds %struct.control_flow_graph, ptr %102, i64 0, i32 5
  %104 = load i32, ptr %103, align 8, !tbaa !275
  %105 = load i32, ptr @num_stores, align 4, !tbaa !184
  %106 = tail call ptr @sbitmap_vector_alloc(i32 noundef %104, i32 noundef %105) #15
  store ptr %106, ptr @st_kill, align 8, !tbaa !189
  %107 = load ptr, ptr @cfun, align 8, !tbaa !189
  %108 = getelementptr inbounds %struct.function, ptr %107, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !218
  %110 = getelementptr inbounds %struct.control_flow_graph, ptr %109, i64 0, i32 5
  %111 = load i32, ptr %110, align 8, !tbaa !275
  tail call void @sbitmap_vector_zero(ptr noundef %106, i32 noundef %111) #15
  %112 = load ptr, ptr @cfun, align 8, !tbaa !189
  %113 = getelementptr inbounds %struct.function, ptr %112, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !218
  %115 = getelementptr inbounds %struct.control_flow_graph, ptr %114, i64 0, i32 5
  %116 = load i32, ptr %115, align 8, !tbaa !275
  %117 = load i32, ptr @num_stores, align 4, !tbaa !184
  %118 = tail call ptr @sbitmap_vector_alloc(i32 noundef %116, i32 noundef %117) #15
  store ptr %118, ptr @st_transp, align 8, !tbaa !189
  %119 = load ptr, ptr @cfun, align 8, !tbaa !189
  %120 = getelementptr inbounds %struct.function, ptr %119, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !218
  %122 = getelementptr inbounds %struct.control_flow_graph, ptr %121, i64 0, i32 5
  %123 = load i32, ptr %122, align 8, !tbaa !275
  tail call void @sbitmap_vector_zero(ptr noundef %118, i32 noundef %123) #15
  %124 = zext i32 %1 to i64
  %125 = shl nuw nsw i64 %124, 2
  %126 = tail call ptr @xmalloc(i64 noundef %125) #15
  %127 = load ptr, ptr @cfun, align 8, !tbaa !189
  %128 = getelementptr inbounds %struct.function, ptr %127, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !218
  %130 = load ptr, ptr %129, align 8, !tbaa !220
  %131 = getelementptr inbounds %struct.basic_block_def, ptr %130, i64 0, i32 6
  %132 = load ptr, ptr %131, align 8, !tbaa !222
  %133 = getelementptr inbounds %struct.control_flow_graph, ptr %129, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !223
  %135 = icmp eq ptr %132, %134
  br i1 %135, label %242, label %145, !prof !198

136:                                              ; preds = %239, %195
  %137 = getelementptr inbounds %struct.basic_block_def, ptr %146, i64 0, i32 6
  %138 = load ptr, ptr %137, align 8, !tbaa !222
  %139 = load ptr, ptr @cfun, align 8, !tbaa !189
  %140 = getelementptr inbounds %struct.function, ptr %139, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !218
  %142 = getelementptr inbounds %struct.control_flow_graph, ptr %141, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !223
  %144 = icmp eq ptr %138, %143
  br i1 %144, label %242, label %145, !prof !285, !llvm.loop !286

145:                                              ; preds = %99, %136
  %146 = phi ptr [ %138, %136 ], [ %132, %99 ]
  tail call void @llvm.memset.p0.i64(ptr align 4 %126, i8 0, i64 %125, i1 false)
  %147 = getelementptr inbounds %struct.basic_block_def, ptr %146, i64 0, i32 7
  %148 = load ptr, ptr %147, align 8, !tbaa !240
  %149 = load ptr, ptr %148, align 8, !tbaa !240
  %150 = icmp eq ptr %149, null
  br i1 %150, label %195, label %151, !prof !198

151:                                              ; preds = %145
  %152 = load ptr, ptr @df, align 8
  %153 = getelementptr inbounds %struct.df, ptr %152, i64 0, i32 10
  br label %154

154:                                              ; preds = %151, %191
  %155 = phi ptr [ %149, %151 ], [ %193, %191 ]
  %156 = load ptr, ptr %147, align 8, !tbaa !240
  %157 = getelementptr inbounds %struct.rtl_bb_info, ptr %156, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !241
  %159 = getelementptr inbounds %struct.rtx_def, ptr %158, i64 0, i32 1, i32 0, i32 0, i64 2
  %160 = load ptr, ptr %159, align 8, !tbaa !240
  %161 = icmp eq ptr %155, %160
  br i1 %161, label %195, label %162, !prof !287

162:                                              ; preds = %154
  %163 = load i32, ptr %155, align 8
  %164 = and i32 %163, 65535
  %165 = add nsw i32 %164, -11
  %166 = icmp ult i32 %165, -3
  br i1 %166, label %191, label %167, !prof !288

167:                                              ; preds = %162
  %168 = load ptr, ptr %153, align 8, !tbaa !245
  %169 = getelementptr inbounds %struct.rtx_def, ptr %155, i64 0, i32 1
  %170 = load i32, ptr %169, align 8, !tbaa !240
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds ptr, ptr %168, i64 %171
  %173 = load ptr, ptr %172, align 8, !tbaa !189
  %174 = getelementptr inbounds %struct.df_insn_info, ptr %173, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !248
  %176 = load ptr, ptr %175, align 8, !tbaa !189
  %177 = icmp eq ptr %176, null
  br i1 %177, label %191, label %178, !prof !289

178:                                              ; preds = %167, %187
  %179 = phi ptr [ %189, %187 ], [ %176, %167 ]
  %180 = phi ptr [ %188, %187 ], [ %175, %167 ]
  %181 = getelementptr inbounds %struct.df_base_ref, ptr %179, i64 0, i32 6
  %182 = load i32, ptr %181, align 8, !tbaa !240
  %183 = icmp ult i32 %182, %1
  br i1 %183, label %184, label %187, !prof !290

184:                                              ; preds = %178
  %185 = zext i32 %182 to i64
  %186 = getelementptr inbounds i32, ptr %126, i64 %185
  store i32 1, ptr %186, align 4, !tbaa !184
  br label %187

187:                                              ; preds = %184, %178
  %188 = getelementptr inbounds ptr, ptr %180, i64 1
  %189 = load ptr, ptr %188, align 8, !tbaa !189
  %190 = icmp eq ptr %189, null
  br i1 %190, label %191, label %178, !prof !291, !llvm.loop !292

191:                                              ; preds = %187, %167, %162
  %192 = getelementptr inbounds %struct.rtx_def, ptr %155, i64 0, i32 1, i32 0, i32 0, i64 2
  %193 = load ptr, ptr %192, align 8, !tbaa !240
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %154, !prof !293, !llvm.loop !294

195:                                              ; preds = %154, %191, %145
  %196 = tail call fastcc ptr @first_st_expr() #16
  %197 = icmp eq ptr %196, null
  br i1 %197, label %136, label %198, !prof !295

198:                                              ; preds = %195
  %199 = getelementptr inbounds %struct.basic_block_def, ptr %146, i64 0, i32 9
  br label %200

200:                                              ; preds = %198, %239
  %201 = phi ptr [ %196, %198 ], [ %240, %239 ]
  %202 = load ptr, ptr %201, align 8, !tbaa !277
  %203 = getelementptr inbounds %struct.st_expr, ptr %201, i64 0, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !296
  %205 = load ptr, ptr %147, align 8, !tbaa !240
  %206 = load ptr, ptr %205, align 8, !tbaa !297
  %207 = tail call fastcc zeroext i8 @store_killed_after(ptr noundef %202, ptr noundef %204, ptr noundef %206, ptr noundef %146, ptr noundef %126, ptr noundef null) #16, !range !298
  %208 = icmp eq i8 %207, 0
  %209 = load i32, ptr %199, align 8, !tbaa !215
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.st_expr, ptr %201, i64 0, i32 5
  %212 = load i32, ptr %211, align 8, !tbaa !202
  br i1 %208, label %234, label %213, !prof !299

213:                                              ; preds = %200
  %214 = load ptr, ptr @st_antloc, align 8, !tbaa !189
  %215 = getelementptr inbounds ptr, ptr %214, i64 %210
  %216 = load ptr, ptr %215, align 8, !tbaa !189
  %217 = lshr i32 %212, 6
  %218 = zext nneg i32 %217 to i64
  %219 = getelementptr inbounds %struct.simple_bitmap_def, ptr %216, i64 0, i32 3, i64 %218
  %220 = load i64, ptr %219, align 8, !tbaa !204
  %221 = and i32 %212, 63
  %222 = zext nneg i32 %221 to i64
  %223 = shl nuw i64 1, %222
  %224 = and i64 %223, %220
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %234, label %226, !prof !300

226:                                              ; preds = %213
  %227 = load ptr, ptr @st_avloc, align 8, !tbaa !189
  %228 = getelementptr inbounds ptr, ptr %227, i64 %210
  %229 = load ptr, ptr %228, align 8, !tbaa !189
  %230 = getelementptr inbounds %struct.simple_bitmap_def, ptr %229, i64 0, i32 3, i64 %218
  %231 = load i64, ptr %230, align 8, !tbaa !204
  %232 = and i64 %231, %223
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %239, !prof !301

234:                                              ; preds = %200, %213, %226
  %235 = phi ptr [ @st_kill, %226 ], [ @st_kill, %213 ], [ @st_transp, %200 ]
  %236 = load ptr, ptr %235, align 8, !tbaa !189
  %237 = getelementptr inbounds ptr, ptr %236, i64 %210
  %238 = load ptr, ptr %237, align 8, !tbaa !189
  tail call fastcc void @SET_BIT(ptr noundef %238, i32 noundef %212) #16
  br label %239

239:                                              ; preds = %234, %226
  %240 = tail call fastcc ptr @next_st_expr(ptr noundef nonnull %201) #16
  %241 = icmp eq ptr %240, null
  br i1 %241, label %136, label %200, !prof !302, !llvm.loop !303

242:                                              ; preds = %136, %99
  tail call void @free(ptr noundef %126) #16
  %243 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %244 = icmp eq ptr %243, null
  br i1 %244, label %273, label %245, !prof !233

245:                                              ; preds = %242
  %246 = load ptr, ptr @st_antloc, align 8, !tbaa !189
  %247 = load ptr, ptr @cfun, align 8, !tbaa !189
  %248 = getelementptr inbounds %struct.function, ptr %247, i64 0, i32 1
  %249 = load ptr, ptr %248, align 8, !tbaa !218
  %250 = getelementptr inbounds %struct.control_flow_graph, ptr %249, i64 0, i32 5
  %251 = load i32, ptr %250, align 8, !tbaa !275
  tail call void @dump_sbitmap_vector(ptr noundef nonnull %243, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef %246, i32 noundef %251) #15
  %252 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %253 = load ptr, ptr @st_kill, align 8, !tbaa !189
  %254 = load ptr, ptr @cfun, align 8, !tbaa !189
  %255 = getelementptr inbounds %struct.function, ptr %254, i64 0, i32 1
  %256 = load ptr, ptr %255, align 8, !tbaa !218
  %257 = getelementptr inbounds %struct.control_flow_graph, ptr %256, i64 0, i32 5
  %258 = load i32, ptr %257, align 8, !tbaa !275
  tail call void @dump_sbitmap_vector(ptr noundef %252, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, ptr noundef %253, i32 noundef %258) #15
  %259 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %260 = load ptr, ptr @st_transp, align 8, !tbaa !189
  %261 = load ptr, ptr @cfun, align 8, !tbaa !189
  %262 = getelementptr inbounds %struct.function, ptr %261, i64 0, i32 1
  %263 = load ptr, ptr %262, align 8, !tbaa !218
  %264 = getelementptr inbounds %struct.control_flow_graph, ptr %263, i64 0, i32 5
  %265 = load i32, ptr %264, align 8, !tbaa !275
  tail call void @dump_sbitmap_vector(ptr noundef %259, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, ptr noundef %260, i32 noundef %265) #15
  %266 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %267 = load ptr, ptr @st_avloc, align 8, !tbaa !189
  %268 = load ptr, ptr @cfun, align 8, !tbaa !189
  %269 = getelementptr inbounds %struct.function, ptr %268, i64 0, i32 1
  %270 = load ptr, ptr %269, align 8, !tbaa !218
  %271 = getelementptr inbounds %struct.control_flow_graph, ptr %270, i64 0, i32 5
  %272 = load i32, ptr %271, align 8, !tbaa !275
  tail call void @dump_sbitmap_vector(ptr noundef %266, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13, ptr noundef %267, i32 noundef %272) #15
  br label %273

273:                                              ; preds = %245, %242
  ret void
}

; Function Attrs: optsize
declare void @add_noreturn_fake_exit_edges() local_unnamed_addr #1

; Function Attrs: optsize
declare void @connect_infinite_loops_to_exit() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @pre_edge_rev_lcm(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc ptr @first_st_expr() unnamed_addr #3 !prof !304 !PGOFuncName !305 {
  %1 = load ptr, ptr @store_motion_mems, align 8, !tbaa !189
  ret ptr %1
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_store(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !306 !PGOFuncName !307 {
  %3 = getelementptr inbounds %struct.st_expr, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !260
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9, !prof !308

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !277
  %8 = tail call ptr @gen_reg_rtx_and_attrs(ptr noundef %7) #15
  store ptr %8, ptr %3, align 8, !tbaa !260
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi ptr [ %8, %6 ], [ %4, %2 ]
  %11 = getelementptr inbounds %struct.st_expr, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !240
  %13 = icmp eq ptr %12, null
  br i1 %13, label %26, label %18, !prof !309

14:                                               ; preds = %18
  %15 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !240
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18, !prof !310, !llvm.loop !311

18:                                               ; preds = %9, %14
  %19 = phi ptr [ %16, %14 ], [ %12, %9 ]
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !240
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !240
  %24 = icmp eq ptr %23, %1
  br i1 %24, label %25, label %14, !prof !312

25:                                               ; preds = %18
  tail call fastcc void @replace_store_insn(ptr noundef %10, ptr noundef nonnull %21, ptr noundef %1, ptr noundef %0) #16
  br label %26

26:                                               ; preds = %14, %9, %25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @insert_store(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !313 !PGOFuncName !314 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  %5 = getelementptr inbounds %struct.st_expr, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !260
  %7 = icmp eq ptr %6, null
  br i1 %7, label %112, label %8, !prof !315

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !208
  %11 = and i32 %10, 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %112, !prof !316

13:                                               ; preds = %8
  %14 = load ptr, ptr %0, align 8, !tbaa !277
  %15 = tail call ptr @copy_rtx(ptr noundef %14) #15
  %16 = tail call ptr @gen_move_insn(ptr noundef %15, ptr noundef nonnull %6) #15
  %17 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !217
  %19 = tail call fastcc ptr @ei_start_1(ptr noundef %18) #16
  store i32 0, ptr %4, align 8, !tbaa.struct !317
  %20 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %19, ptr %20, align 8, !tbaa.struct !318
  %21 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %19, ptr noundef nonnull %3) #16, !range !298
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %59, label %23, !prof !319

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.st_expr, ptr %0, i64 0, i32 5
  br label %25

25:                                               ; preds = %23, %54
  %26 = load ptr, ptr %3, align 8, !tbaa !189
  %27 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 7
  %28 = load i32, ptr %27, align 8, !tbaa !208
  %29 = and i32 %28, 16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %54, !prof !320

31:                                               ; preds = %25
  %32 = load ptr, ptr @edge_list, align 8, !tbaa !189
  %33 = load ptr, ptr %26, align 8, !tbaa !214
  %34 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !217
  %36 = tail call i32 @find_edge_index(ptr noundef %32, ptr noundef %33, ptr noundef %35) #15
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39, !prof !321

38:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 807, ptr noundef nonnull @.str.21) #15
  br label %39

39:                                               ; preds = %31, %38
  %40 = load ptr, ptr @st_insert_map, align 8, !tbaa !189
  %41 = sext i32 %36 to i64
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !189
  %44 = load i32, ptr %24, align 8, !tbaa !202
  %45 = lshr i32 %44, 6
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds %struct.simple_bitmap_def, ptr %43, i64 0, i32 3, i64 %46
  %48 = load i64, ptr %47, align 8, !tbaa !204
  %49 = and i32 %44, 63
  %50 = zext nneg i32 %49 to i64
  %51 = shl nuw i64 1, %50
  %52 = and i64 %51, %48
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %39, %25
  call fastcc void @ei_next(ptr noundef nonnull %4) #16
  %55 = load i32, ptr %4, align 8
  %56 = load ptr, ptr %20, align 8
  %57 = call fastcc zeroext i8 @ei_cond(i32 %55, ptr %56, ptr noundef nonnull %3) #16, !range !298
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %25, !prof !322, !llvm.loop !323

59:                                               ; preds = %54, %39, %13
  %60 = load ptr, ptr %3, align 8, !tbaa !189
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %93, !prof !324

62:                                               ; preds = %59
  %63 = load ptr, ptr @cfun, align 8, !tbaa !189
  %64 = getelementptr inbounds %struct.function, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !218
  %66 = getelementptr inbounds %struct.control_flow_graph, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !223
  %68 = icmp eq ptr %18, %67
  br i1 %68, label %93, label %69, !prof !325

69:                                               ; preds = %62
  %70 = load ptr, ptr %17, align 8, !tbaa !217
  %71 = tail call fastcc ptr @ei_start_1(ptr noundef %70) #16
  store i32 0, ptr %4, align 8, !tbaa.struct !317
  store ptr %71, ptr %20, align 8, !tbaa.struct !318
  %72 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %71, ptr noundef nonnull %3) #16, !range !298
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %92, label %74, !prof !319

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.st_expr, ptr %0, i64 0, i32 5
  br label %76

76:                                               ; preds = %74, %76
  %77 = load ptr, ptr @edge_list, align 8, !tbaa !189
  %78 = load ptr, ptr %3, align 8, !tbaa !189
  %79 = load ptr, ptr %78, align 8, !tbaa !214
  %80 = getelementptr inbounds %struct.edge_def, ptr %78, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !217
  %82 = tail call i32 @find_edge_index(ptr noundef %77, ptr noundef %79, ptr noundef %81) #15
  %83 = load ptr, ptr @st_insert_map, align 8, !tbaa !189
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds ptr, ptr %83, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !189
  %87 = load i32, ptr %75, align 8, !tbaa !202
  tail call fastcc void @RESET_BIT(ptr noundef %86, i32 noundef %87) #16
  call fastcc void @ei_next(ptr noundef nonnull %4) #16
  %88 = load i32, ptr %4, align 8
  %89 = load ptr, ptr %20, align 8
  %90 = call fastcc zeroext i8 @ei_cond(i32 %88, ptr %89, ptr noundef nonnull %3) #16, !range !298
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %76, !prof !326, !llvm.loop !327

92:                                               ; preds = %76, %69
  tail call fastcc void @insert_insn_start_basic_block(ptr noundef %16, ptr noundef %18) #16
  br label %112

93:                                               ; preds = %62, %59
  %94 = load i32, ptr %9, align 8, !tbaa !208
  %95 = and i32 %94, 2
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %98, label %97, !prof !328

97:                                               ; preds = %93
  tail call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 827, ptr noundef nonnull @.str.21) #15
  br label %98

98:                                               ; preds = %93, %97
  tail call void @insert_insn_on_edge(ptr noundef %16, ptr noundef nonnull %1) #15
  %99 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %100 = icmp eq ptr %99, null
  br i1 %100, label %112, label %101, !prof !328

101:                                              ; preds = %98
  %102 = load ptr, ptr %1, align 8, !tbaa !214
  %103 = getelementptr inbounds %struct.basic_block_def, ptr %102, i64 0, i32 9
  %104 = load i32, ptr %103, align 8, !tbaa !215
  %105 = load ptr, ptr %17, align 8, !tbaa !217
  %106 = getelementptr inbounds %struct.basic_block_def, ptr %105, i64 0, i32 9
  %107 = load i32, ptr %106, align 8, !tbaa !215
  %108 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %99, ptr noundef nonnull @.str.23, i32 noundef %104, i32 noundef %107) #16
  %109 = load ptr, ptr @dump_file, align 8, !tbaa !189
  tail call void @print_inline_rtx(ptr noundef %109, ptr noundef %16, i32 noundef 6) #15
  %110 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %111 = tail call i32 @fputc(i32 10, ptr %110)
  br label %112

112:                                              ; preds = %98, %101, %8, %2, %92
  %113 = phi i32 [ 0, %92 ], [ 0, %2 ], [ 0, %8 ], [ 1, %101 ], [ 1, %98 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret i32 %113
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @next_st_expr(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !329 !PGOFuncName !330 {
  %2 = getelementptr inbounds %struct.st_expr, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !268
  ret ptr %3
}

; Function Attrs: optsize
declare void @commit_edge_insertions() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_store_memory() unnamed_addr #0 !prof !273 !PGOFuncName !331 {
  tail call fastcc void @free_store_motion_mems() #16
  %1 = load ptr, ptr @st_avloc, align 8, !tbaa !189
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !332

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #16
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @st_kill, align 8, !tbaa !189
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !332

7:                                                ; preds = %4
  tail call void @free(ptr noundef nonnull %5) #16
  br label %8

8:                                                ; preds = %7, %4
  %9 = load ptr, ptr @st_transp, align 8, !tbaa !189
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !332

11:                                               ; preds = %8
  tail call void @free(ptr noundef nonnull %9) #16
  br label %12

12:                                               ; preds = %11, %8
  %13 = load ptr, ptr @st_antloc, align 8, !tbaa !189
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15, !prof !332

15:                                               ; preds = %12
  tail call void @free(ptr noundef nonnull %13) #16
  br label %16

16:                                               ; preds = %15, %12
  %17 = load ptr, ptr @st_insert_map, align 8, !tbaa !189
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19, !prof !332

19:                                               ; preds = %16
  tail call void @free(ptr noundef nonnull %17) #16
  br label %20

20:                                               ; preds = %19, %16
  %21 = load ptr, ptr @st_delete_map, align 8, !tbaa !189
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23, !prof !332

23:                                               ; preds = %20
  tail call void @free(ptr noundef nonnull %21) #16
  br label %24

24:                                               ; preds = %23, %20
  store ptr null, ptr @st_antloc, align 8, !tbaa !189
  store ptr null, ptr @st_transp, align 8, !tbaa !189
  store ptr null, ptr @st_kill, align 8, !tbaa !189
  store ptr null, ptr @st_avloc, align 8, !tbaa !189
  store ptr null, ptr @st_delete_map, align 8, !tbaa !189
  store ptr null, ptr @st_insert_map, align 8, !tbaa !189
  ret void
}

; Function Attrs: optsize
declare void @free_edge_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @remove_fake_exit_edges() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @current_function_name() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @pre_st_expr_hash(ptr nocapture noundef readonly %0) #0 !prof !333 !PGOFuncName !334 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  store i32 0, ptr %2, align 4, !tbaa !184
  %3 = load ptr, ptr %0, align 8, !tbaa !277
  %4 = load i32, ptr %3, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = call i32 @hash_rtx(ptr noundef nonnull %3, i32 noundef %6, ptr noundef nonnull %2, ptr noundef null, i8 noundef zeroext 0) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @pre_st_expr_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !335 !PGOFuncName !336 {
  %3 = load ptr, ptr %0, align 8, !tbaa !277
  %4 = load ptr, ptr %1, align 8, !tbaa !277
  %5 = tail call i32 @exp_equiv_p(ptr noundef %3, ptr noundef %4, i32 noundef 0, i8 noundef zeroext 1) #15
  ret i32 %5
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_moveable_store(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !337 !PGOFuncName !338 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !240
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = add nsw i32 %7, -7
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %10, label %108, !prof !339

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !240
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 23
  br i1 %15, label %19, label %16, !prof !340

16:                                               ; preds = %10
  %17 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %12) #15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %108, label %19, !prof !341

19:                                               ; preds = %10, %16
  %20 = phi ptr [ %17, %16 ], [ %12, %10 ]
  %21 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !240
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 134283263
  %25 = icmp ne i32 %24, 43
  %26 = and i32 %23, 16711680
  %27 = icmp eq i32 %26, 65536
  %28 = or i1 %25, %27
  br i1 %28, label %108, label %29, !prof !342

29:                                               ; preds = %19
  %30 = tail call i32 @side_effects_p(ptr noundef nonnull %22) #15
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %108, !prof !343

32:                                               ; preds = %29
  %33 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !184
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35, !prof !343

35:                                               ; preds = %32
  %36 = tail call i32 @may_trap_p(ptr noundef nonnull %22) #15
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %108

38:                                               ; preds = %35, %32
  %39 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 25, ptr noundef null) #15
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %108, !prof !343

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !240
  %44 = tail call zeroext i8 @can_assign_to_reg_without_clobbers_p(ptr noundef %43) #15
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %108, label %46, !prof !344

46:                                               ; preds = %41
  %47 = tail call fastcc ptr @st_expr_entry(ptr noundef nonnull %22) #16
  %48 = getelementptr inbounds %struct.st_expr, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !296
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %53, !prof !345

51:                                               ; preds = %46
  %52 = tail call fastcc ptr @extract_mentioned_regs(ptr noundef nonnull %22) #16
  store ptr %52, ptr %48, align 8, !tbaa !296
  br label %53

53:                                               ; preds = %51, %46
  %54 = phi ptr [ %52, %51 ], [ %49, %46 ]
  %55 = getelementptr inbounds %struct.st_expr, ptr %47, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !261
  %57 = icmp eq ptr %56, null
  br i1 %57, label %66, label %58, !prof !346

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !240
  %61 = icmp eq ptr %60, null
  br i1 %61, label %72, label %62, !prof !347

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !240
  %65 = icmp eq ptr %64, %5
  br i1 %65, label %72, label %66, !prof !348

66:                                               ; preds = %53, %62
  %67 = tail call fastcc zeroext i8 @store_killed_before(ptr noundef nonnull %22, ptr noundef %54, ptr noundef nonnull %0, ptr noundef %5, ptr noundef %1) #16, !range !298
  %68 = icmp eq i8 %67, 0
  %69 = select i1 %68, ptr %0, ptr null, !prof !349
  %70 = load ptr, ptr %55, align 8, !tbaa !261
  %71 = tail call ptr @alloc_INSN_LIST(ptr noundef %69, ptr noundef %70) #15
  store ptr %71, ptr %55, align 8, !tbaa !261
  br label %72

72:                                               ; preds = %58, %66, %62
  %73 = getelementptr inbounds %struct.st_expr, ptr %47, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !266
  %75 = icmp eq ptr %74, null
  br i1 %75, label %82, label %76, !prof !350

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !240
  %79 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1, i32 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !240
  %81 = icmp eq ptr %80, %5
  br i1 %81, label %105, label %82, !prof !351

82:                                               ; preds = %72, %76
  %83 = getelementptr inbounds %struct.st_expr, ptr %47, i64 0, i32 7
  %84 = load ptr, ptr %83, align 8, !tbaa !260
  %85 = icmp eq ptr %84, null
  br i1 %85, label %99, label %86, !prof !352

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 7
  %88 = load ptr, ptr %87, align 8, !tbaa !240
  %89 = getelementptr inbounds %struct.rtl_bb_info, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !240
  %91 = icmp eq ptr %90, %0
  br i1 %91, label %105, label %96, !prof !353

92:                                               ; preds = %96
  %93 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1, i32 0, i32 0, i64 1
  %94 = load ptr, ptr %93, align 8, !tbaa !240
  %95 = icmp eq ptr %94, %0
  br i1 %95, label %105, label %96, !prof !354, !llvm.loop !355

96:                                               ; preds = %86, %92
  %97 = phi ptr [ %94, %92 ], [ %90, %86 ]
  %98 = icmp eq ptr %97, %84
  br i1 %98, label %108, label %92, !prof !356

99:                                               ; preds = %82
  %100 = load ptr, ptr %48, align 8, !tbaa !296
  %101 = tail call fastcc zeroext i8 @store_killed_after(ptr noundef nonnull %22, ptr noundef %100, ptr noundef nonnull %0, ptr noundef %5, ptr noundef %2, ptr noundef nonnull %83) #16, !range !298
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %108, !prof !357

103:                                              ; preds = %99
  %104 = load ptr, ptr %73, align 8, !tbaa !266
  br label %105

105:                                              ; preds = %92, %103, %86, %76
  %106 = phi ptr [ %104, %103 ], [ %74, %86 ], [ %74, %76 ], [ %74, %92 ]
  %107 = tail call ptr @alloc_INSN_LIST(ptr noundef nonnull %0, ptr noundef %106) #15
  store ptr %107, ptr %73, align 8, !tbaa !266
  br label %108

108:                                              ; preds = %96, %3, %99, %105, %41, %38, %35, %29, %19, %16
  ret void
}

; Function Attrs: optsize
declare void @htab_remove_elt_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_st_expr_entry(ptr noundef %0) unnamed_addr #0 !prof !358 !PGOFuncName !359 {
  %2 = getelementptr inbounds %struct.st_expr, ptr %0, i64 0, i32 2
  tail call void @free_INSN_LIST_list(ptr noundef nonnull %2) #15
  %3 = getelementptr inbounds %struct.st_expr, ptr %0, i64 0, i32 3
  tail call void @free_INSN_LIST_list(ptr noundef nonnull %3) #15
  tail call void @free(ptr noundef %0) #16
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @enumerate_store_motion_mems() unnamed_addr #7 !prof !193 !PGOFuncName !360 {
  %1 = load ptr, ptr @store_motion_mems, align 8, !tbaa !189
  %2 = icmp eq ptr %1, null
  br i1 %2, label %11, label %3, !prof !237

3:                                                ; preds = %0, %3
  %4 = phi ptr [ %9, %3 ], [ %1, %0 ]
  %5 = phi i32 [ %6, %3 ], [ 0, %0 ]
  %6 = add nuw nsw i32 %5, 1
  %7 = getelementptr inbounds %struct.st_expr, ptr %4, i64 0, i32 5
  store i32 %5, ptr %7, align 8, !tbaa !202
  %8 = getelementptr inbounds %struct.st_expr, ptr %4, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !189
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %3, !prof !361, !llvm.loop !362

11:                                               ; preds = %3, %0
  %12 = phi i32 [ 0, %0 ], [ %6, %3 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_store_motion_mems(ptr noundef %0) unnamed_addr #0 !prof !363 !PGOFuncName !364 {
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %3 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 43, i64 1, ptr %2)
  %4 = tail call fastcc ptr @first_st_expr() #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %1, %27
  %7 = phi ptr [ %29, %27 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.st_expr, ptr %7, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !202
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %9) #16
  %11 = load ptr, ptr %7, align 8, !tbaa !277
  tail call void @print_rtl(ptr noundef %0, ptr noundef %11) #15
  %12 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 18, i64 1, ptr %0)
  %13 = getelementptr inbounds %struct.st_expr, ptr %7, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !261
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %6
  tail call void @print_rtl(ptr noundef %0, ptr noundef nonnull %14) #15
  br label %19

17:                                               ; preds = %6
  %18 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 5, i64 1, ptr %0)
  br label %19

19:                                               ; preds = %17, %16
  %20 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 18, i64 1, ptr %0)
  %21 = getelementptr inbounds %struct.st_expr, ptr %7, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !266
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  tail call void @print_rtl(ptr noundef %0, ptr noundef nonnull %22) #15
  br label %27

25:                                               ; preds = %19
  %26 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 5, i64 1, ptr %0)
  br label %27

27:                                               ; preds = %25, %24
  %28 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %0)
  %29 = tail call fastcc ptr @next_st_expr(ptr noundef nonnull %7) #16
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %6, !llvm.loop !365

31:                                               ; preds = %27, %1
  %32 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @hash_rtx(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @exp_equiv_p(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @may_trap_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @can_assign_to_reg_without_clobbers_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @st_expr_entry(ptr noundef %0) unnamed_addr #0 !prof !366 !PGOFuncName !367 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.st_expr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  store i32 0, ptr %2, align 4, !tbaa !184
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #17
  %4 = load i32, ptr %0, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = call i32 @hash_rtx(ptr noundef nonnull %0, i32 noundef %6, ptr noundef nonnull %2, ptr noundef null, i8 noundef zeroext 0) #15
  store ptr %0, ptr %3, align 8, !tbaa !277
  %8 = load ptr, ptr @store_motion_mems_table, align 8, !tbaa !189
  %9 = call ptr @htab_find_slot_with_hash(ptr noundef %8, ptr noundef nonnull %3, i32 noundef %7, i32 noundef 1) #15
  %10 = load ptr, ptr %9, align 8, !tbaa !189
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %20, !prof !368

12:                                               ; preds = %1
  %13 = call ptr @xmalloc(i64 noundef 56) #15
  %14 = load ptr, ptr @store_motion_mems, align 8, !tbaa !189
  %15 = getelementptr inbounds %struct.st_expr, ptr %13, i64 0, i32 4
  store ptr %14, ptr %15, align 8, !tbaa !268
  store ptr %0, ptr %13, align 8, !tbaa !277
  %16 = getelementptr inbounds %struct.st_expr, ptr %13, i64 0, i32 1
  %17 = getelementptr inbounds %struct.st_expr, ptr %13, i64 0, i32 7
  store ptr null, ptr %17, align 8, !tbaa !260
  %18 = getelementptr inbounds %struct.st_expr, ptr %13, i64 0, i32 5
  store i32 0, ptr %18, align 8, !tbaa !202
  %19 = getelementptr inbounds %struct.st_expr, ptr %13, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  store i32 %7, ptr %19, align 4, !tbaa !269
  store ptr %13, ptr @store_motion_mems, align 8, !tbaa !189
  store ptr %13, ptr %9, align 8, !tbaa !189
  br label %20

20:                                               ; preds = %1, %12
  %21 = phi ptr [ %13, %12 ], [ %10, %1 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @extract_mentioned_regs(ptr noundef %0) unnamed_addr #0 !prof !369 !PGOFuncName !370 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !189
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  store ptr null, ptr %3, align 8, !tbaa !189
  %4 = call i32 @for_each_rtx(ptr noundef nonnull %2, ptr noundef nonnull @extract_mentioned_regs_1, ptr noundef nonnull %3) #15
  %5 = load ptr, ptr %3, align 8, !tbaa !189
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @store_killed_before(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) unnamed_addr #0 !prof !371 !PGOFuncName !372 {
  %6 = tail call fastcc zeroext i8 @store_ops_ok(ptr noundef %1, ptr noundef %4) #16, !range !298
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %24, label %8, !prof !373

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !240
  %11 = load ptr, ptr %10, align 8, !tbaa !297
  %12 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !240
  %14 = icmp eq ptr %13, %2
  br i1 %14, label %24, label %15, !prof !374

15:                                               ; preds = %8, %19
  %16 = phi ptr [ %21, %19 ], [ %2, %8 ]
  %17 = tail call fastcc zeroext i8 @store_killed_in_insn(ptr noundef %0, ptr noundef %1, ptr noundef %16, i32 noundef 1) #16, !range !298
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %24, !prof !375

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !240
  %22 = load ptr, ptr %12, align 8, !tbaa !240
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %24, label %15, !prof !376, !llvm.loop !377

24:                                               ; preds = %15, %19, %8, %5
  %25 = phi i8 [ 1, %5 ], [ 0, %8 ], [ 1, %15 ], [ 0, %19 ]
  ret i8 %25
}

; Function Attrs: optsize
declare ptr @alloc_INSN_LIST(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @store_killed_after(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr noundef writeonly %5) unnamed_addr #0 !prof !378 !PGOFuncName !379 {
  %7 = tail call fastcc zeroext i8 @store_ops_ok(ptr noundef %1, ptr noundef %4) #16, !range !298
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %17, label %9, !prof !380

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !240
  %12 = getelementptr inbounds %struct.rtl_bb_info, ptr %11, i64 0, i32 1
  %13 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %12, align 8, !tbaa !240
  %15 = load ptr, ptr %13, align 8, !tbaa !240
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %32, label %19, !prof !381

17:                                               ; preds = %6
  %18 = icmp eq ptr %5, null
  br i1 %18, label %32, label %30, !prof !382

19:                                               ; preds = %9, %25
  %20 = phi ptr [ %27, %25 ], [ %14, %9 ]
  %21 = tail call fastcc zeroext i8 @store_killed_in_insn(ptr noundef %0, ptr noundef %1, ptr noundef %20, i32 noundef 0) #16, !range !298
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23, !prof !383

23:                                               ; preds = %19
  %24 = icmp eq ptr %5, null
  br i1 %24, label %32, label %30, !prof !384

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !240
  %28 = load ptr, ptr %13, align 8, !tbaa !240
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %32, label %19, !prof !385, !llvm.loop !386

30:                                               ; preds = %23, %17
  %31 = phi ptr [ null, %17 ], [ %20, %23 ]
  store ptr %31, ptr %5, align 8, !tbaa !189
  br label %32

32:                                               ; preds = %25, %30, %9, %23, %17
  %33 = phi i8 [ 1, %17 ], [ 1, %23 ], [ 0, %9 ], [ 1, %30 ], [ 0, %25 ]
  ret i8 %33
}

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @extract_mentioned_regs_1(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 !prof !387 !PGOFuncName !388 {
  %3 = load ptr, ptr %0, align 8, !tbaa !189
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %10, !prof !389

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 8, !tbaa !189
  %9 = tail call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef nonnull %3, ptr noundef %8) #15
  store ptr %9, ptr %1, align 8, !tbaa !189
  br label %10

10:                                               ; preds = %7, %2
  ret i32 0
}

; Function Attrs: optsize
declare ptr @alloc_EXPR_LIST(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @store_ops_ok(ptr noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !390 !PGOFuncName !391 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %17, label %4, !prof !392

4:                                                ; preds = %2, %13
  %5 = phi ptr [ %15, %13 ], [ %0, %2 ]
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !240
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef %7) #16
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %1, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !184
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17, !prof !393

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !240
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %4, !prof !394, !llvm.loop !395

17:                                               ; preds = %4, %13, %2
  %18 = phi i8 [ 1, %2 ], [ 1, %13 ], [ 0, %4 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @store_killed_in_insn(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !396 !PGOFuncName !397 {
  %5 = load i32, ptr %2, align 8
  %6 = and i32 %5, 65535
  %7 = add nsw i32 %6, -7
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %9, label %73, !prof !398

9:                                                ; preds = %4
  switch i32 %6, label %34 [
    i32 7, label %73
    i32 10, label %10
  ], !prof !399

10:                                               ; preds = %9
  %11 = and i32 %5, 67108864
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %73, label %13, !prof !400

13:                                               ; preds = %10
  %14 = icmp eq ptr %1, null
  br i1 %14, label %73, label %15, !prof !401

15:                                               ; preds = %13, %30
  %16 = phi ptr [ %32, %30 ], [ %1, %13 ]
  %17 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !240
  %19 = tail call ptr @find_base_term(ptr noundef %18) #15
  %20 = icmp eq ptr %19, null
  br i1 %20, label %73, label %21, !prof !402

21:                                               ; preds = %15
  %22 = load i32, ptr %19, align 8
  %23 = and i32 %22, 16777215
  %24 = icmp eq i32 %23, 1048582
  br i1 %24, label %25, label %30, !prof !403

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !240
  %28 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !189
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %73, label %30, !prof !404

30:                                               ; preds = %21, %25
  %31 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !240
  %33 = icmp eq ptr %32, null
  br i1 %33, label %73, label %15, !prof !405, !llvm.loop !406

34:                                               ; preds = %9
  %35 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !240
  %37 = load i32, ptr %36, align 8
  %38 = trunc i32 %37 to i16
  switch i16 %38, label %60 [
    i16 23, label %44
    i16 15, label %39
  ], !prof !407

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !240
  %42 = load i32, ptr %41, align 8, !tbaa !408
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %53, label %63, !prof !410

44:                                               ; preds = %34
  %45 = tail call fastcc zeroext i8 @store_killed_in_pat(ptr noundef %0, ptr noundef nonnull %36, i32 noundef %3) #16, !range !298
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %63, label %73, !prof !411

47:                                               ; preds = %53
  %48 = add nuw nsw i64 %54, 1
  %49 = load ptr, ptr %40, align 8, !tbaa !240
  %50 = load i32, ptr %49, align 8, !tbaa !408
  %51 = sext i32 %50 to i64
  %52 = icmp slt i64 %48, %51
  br i1 %52, label %53, label %63, !prof !412, !llvm.loop !413

53:                                               ; preds = %39, %47
  %54 = phi i64 [ %48, %47 ], [ 0, %39 ]
  %55 = phi ptr [ %49, %47 ], [ %41, %39 ]
  %56 = getelementptr inbounds %struct.rtvec_def, ptr %55, i64 0, i32 1, i64 %54
  %57 = load ptr, ptr %56, align 8, !tbaa !189
  %58 = tail call fastcc zeroext i8 @store_killed_in_pat(ptr noundef %0, ptr noundef %57, i32 noundef %3) #16, !range !298
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %47, label %73, !prof !414

60:                                               ; preds = %34
  %61 = tail call fastcc zeroext i8 @find_loads(ptr noundef nonnull %36, ptr noundef %0, i32 noundef %3) #16, !range !298
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %73, !prof !415

63:                                               ; preds = %47, %39, %60, %44
  %64 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %2) #15
  %65 = icmp eq ptr %64, null
  br i1 %65, label %73, label %66, !prof !416

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !240
  %69 = tail call i32 @exp_equiv_p(ptr noundef %68, ptr noundef %0, i32 noundef 0, i8 noundef zeroext 1) #15
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73, !prof !417

71:                                               ; preds = %66
  %72 = tail call fastcc zeroext i8 @find_loads(ptr noundef %68, ptr noundef %0, i32 noundef %3) #16, !range !298
  br label %73

73:                                               ; preds = %25, %15, %30, %53, %13, %4, %66, %63, %60, %44, %10, %9, %71
  %74 = phi i8 [ %72, %71 ], [ 0, %4 ], [ 0, %9 ], [ 1, %10 ], [ 1, %44 ], [ 1, %60 ], [ 0, %63 ], [ 0, %66 ], [ 0, %13 ], [ 1, %53 ], [ 1, %25 ], [ 1, %15 ], [ 0, %30 ]
  ret i8 %74
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !418 !PGOFuncName !419 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !240
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @find_base_term(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @store_killed_in_pat(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !420 !PGOFuncName !421 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 23
  br i1 %6, label %7, label %33, !prof !422

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !240
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 120
  br i1 %12, label %13, label %17, !prof !423

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !240
  %16 = load i32, ptr %15, align 8
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi i32 [ %16, %13 ], [ %10, %7 ]
  %19 = phi ptr [ %15, %13 ], [ %9, %7 ]
  %20 = and i32 %18, 65535
  %21 = icmp eq i32 %20, 43
  br i1 %21, label %22, label %33, !prof !424

22:                                               ; preds = %17
  %23 = tail call i32 @exp_equiv_p(ptr noundef nonnull %19, ptr noundef %0, i32 noundef 0, i8 noundef zeroext 1) #15
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33, !prof !425

25:                                               ; preds = %22
  %26 = icmp eq i32 %2, 0
  br i1 %26, label %30, label %27, !prof !426

27:                                               ; preds = %25
  %28 = tail call i32 @output_dependence(ptr noundef nonnull %19, ptr noundef %0) #15
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %35, !prof !427

30:                                               ; preds = %25
  %31 = tail call i32 @output_dependence(ptr noundef %0, ptr noundef nonnull %19) #15
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35, !prof !428

33:                                               ; preds = %27, %30, %22, %17, %3
  %34 = tail call fastcc zeroext i8 @find_loads(ptr noundef nonnull %1, ptr noundef %0, i32 noundef %2) #16, !range !298
  br label %35

35:                                               ; preds = %30, %27, %33
  %36 = phi i8 [ %34, %33 ], [ 1, %27 ], [ 1, %30 ]
  ret i8 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @find_loads(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !429 !PGOFuncName !430 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %71, label %5, !prof !431

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 23
  br i1 %8, label %9, label %13, !prof !432

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !240
  %12 = load i32, ptr %11, align 8
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi i32 [ %12, %9 ], [ %6, %5 ]
  %15 = phi ptr [ %11, %9 ], [ %0, %5 ]
  %16 = and i32 %14, 65535
  %17 = icmp eq i32 %16, 43
  br i1 %17, label %18, label %24, !prof !433

18:                                               ; preds = %13
  %19 = tail call fastcc zeroext i8 @load_kills_store(ptr noundef nonnull %15, ptr noundef %1, i32 noundef %2) #16
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %71, !prof !434

21:                                               ; preds = %18
  %22 = load i32, ptr %15, align 8
  %23 = and i32 %22, 65535
  br label %24

24:                                               ; preds = %21, %13
  %25 = phi i32 [ %23, %21 ], [ %16, %13 ]
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !189
  %29 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %26
  %30 = load i8, ptr %29, align 1, !tbaa !240
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %71, label %32, !prof !435

32:                                               ; preds = %24
  %33 = zext i8 %30 to i64
  br label %34

34:                                               ; preds = %32, %64
  %35 = phi i64 [ %33, %32 ], [ %36, %64 ]
  %36 = add nsw i64 %35, -1
  %37 = getelementptr inbounds i8, ptr %28, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !240
  switch i8 %38, label %64 [
    i8 101, label %39
    i8 69, label %45
  ], !prof !436

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %41 = getelementptr inbounds [1 x %union.rtunion_def], ptr %40, i64 0, i64 %36
  %42 = load ptr, ptr %41, align 8, !tbaa !240
  %43 = tail call fastcc zeroext i8 @find_loads(ptr noundef %42, ptr noundef %1, i32 noundef %2) #16, !range !298
  %44 = zext nneg i8 %43 to i32
  br label %64

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %47 = getelementptr inbounds [1 x %union.rtunion_def], ptr %46, i64 0, i64 %36
  %48 = load ptr, ptr %47, align 8, !tbaa !240
  %49 = load i32, ptr %48, align 8, !tbaa !408
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %45
  %52 = zext nneg i32 %49 to i64
  br label %53

53:                                               ; preds = %51, %53
  %54 = phi i64 [ %52, %51 ], [ %56, %53 ]
  %55 = phi i32 [ 0, %51 ], [ %62, %53 ]
  %56 = add nsw i64 %54, -1
  %57 = load ptr, ptr %47, align 8, !tbaa !240
  %58 = getelementptr inbounds %struct.rtvec_def, ptr %57, i64 0, i32 1, i64 %56
  %59 = load ptr, ptr %58, align 8, !tbaa !189
  %60 = tail call fastcc zeroext i8 @find_loads(ptr noundef %59, ptr noundef %1, i32 noundef %2) #16, !range !298
  %61 = zext nneg i8 %60 to i32
  %62 = or i32 %55, %61
  %63 = icmp ugt i64 %54, 1
  br i1 %63, label %53, label %64, !llvm.loop !437

64:                                               ; preds = %53, %45, %34, %39
  %65 = phi i32 [ %44, %39 ], [ 0, %34 ], [ 0, %45 ], [ %62, %53 ]
  %66 = icmp sgt i64 %35, 1
  %67 = icmp eq i32 %65, 0
  %68 = select i1 %66, i1 %67, i1 false, !prof !438
  br i1 %68, label %34, label %69, !prof !439, !llvm.loop !440

69:                                               ; preds = %64
  %70 = trunc i32 %65 to i8
  br label %71

71:                                               ; preds = %24, %69, %18, %3
  %72 = phi i8 [ 0, %3 ], [ 1, %18 ], [ 0, %24 ], [ %70, %69 ]
  ret i8 %72
}

; Function Attrs: optsize
declare ptr @find_reg_equal_equiv_note(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @output_dependence(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @load_kills_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !441 !PGOFuncName !442 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %7, label %5, !prof !443

5:                                                ; preds = %3
  %6 = tail call i32 @anti_dependence(ptr noundef %0, ptr noundef %1) #15
  br label %12

7:                                                ; preds = %3
  %8 = load i32, ptr %1, align 8
  %9 = lshr i32 %8, 16
  %10 = and i32 %9, 255
  %11 = tail call i32 @true_dependence(ptr noundef nonnull %1, i32 noundef %10, ptr noundef %0, ptr noundef nonnull @rtx_addr_varies_p) #15
  br label %12

12:                                               ; preds = %7, %5
  %13 = phi i32 [ %6, %5 ], [ %11, %7 ]
  %14 = trunc i32 %13 to i8
  ret i8 %14
}

; Function Attrs: optsize
declare i32 @anti_dependence(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @true_dependence(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @rtx_addr_varies_p(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: optsize
declare void @free_INSN_LIST_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @print_rtl(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @sbitmap_vector_alloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @sbitmap_vector_zero(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_reg_rtx_and_attrs(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @replace_store_insn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !prof !444 !PGOFuncName !445 {
  %5 = load ptr, ptr %3, align 8, !tbaa !277
  %6 = load i32, ptr %1, align 8
  %7 = and i32 %6, 65535
  %8 = add nsw i32 %7, -7
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %12, label %10, !prof !446

10:                                               ; preds = %4
  %11 = icmp eq i32 %7, 10
  tail call void @llvm.assume(i1 %11)
  br label %12

12:                                               ; preds = %4, %10
  %13 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !240
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 23
  br i1 %17, label %20, label %18, !prof !447

18:                                               ; preds = %12
  %19 = tail call ptr @single_set_2(ptr noundef nonnull %1, ptr noundef nonnull %14) #15
  br label %20

20:                                               ; preds = %12, %18
  %21 = phi ptr [ %19, %18 ], [ %14, %12 ]
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !240
  %24 = tail call ptr @gen_move_insn(ptr noundef %0, ptr noundef %23) #15
  %25 = getelementptr inbounds %struct.st_expr, ptr %3, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !240
  %27 = icmp eq ptr %26, null
  br i1 %27, label %39, label %28, !prof !448

28:                                               ; preds = %20, %35
  %29 = phi ptr [ %37, %35 ], [ %26, %20 ]
  %30 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !240
  %32 = icmp eq ptr %31, %1
  br i1 %32, label %33, label %35, !prof !449

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  store ptr %24, ptr %34, align 8, !tbaa !240
  br label %39

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !240
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %28, !prof !450, !llvm.loop !451

39:                                               ; preds = %35, %20, %33
  %40 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !240
  %42 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 1, i32 1, i32 0, i32 0, i64 1
  store ptr %41, ptr %42, align 8, !tbaa !240
  %43 = tail call ptr @emit_insn_after(ptr noundef %24, ptr noundef nonnull %1) #15
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %45 = icmp eq ptr %44, null
  br i1 %45, label %56, label %46, !prof !447

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %48 = load i32, ptr %47, align 8, !tbaa !215
  %49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %44, ptr noundef nonnull @.str.17, i32 noundef %48) #16
  %50 = load ptr, ptr @dump_file, align 8, !tbaa !189
  tail call void @print_inline_rtx(ptr noundef %50, ptr noundef nonnull %1, i32 noundef 6) #15
  %51 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %52 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 41, i64 1, ptr %51)
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !189
  tail call void @print_inline_rtx(ptr noundef %53, ptr noundef %43, i32 noundef 6) #15
  %54 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %55 = tail call i32 @fputc(i32 10, ptr %54)
  br label %56

56:                                               ; preds = %46, %39
  %57 = tail call ptr @delete_insn(ptr noundef nonnull %1) #15
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %59 = load ptr, ptr %58, align 8, !tbaa !240
  %60 = getelementptr inbounds %struct.rtl_bb_info, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !241
  %62 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1, i32 0, i32 0, i64 2
  %63 = load ptr, ptr %62, align 8, !tbaa !240
  %64 = icmp eq ptr %43, %63
  br i1 %64, label %111, label %65, !prof !452

65:                                               ; preds = %56, %102
  %66 = phi ptr [ %104, %102 ], [ %43, %56 ]
  %67 = load i32, ptr %66, align 8
  %68 = and i32 %67, 65535
  %69 = add nsw i32 %68, -8
  %70 = icmp ult i32 %69, 3
  br i1 %70, label %71, label %102, !prof !453

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !240
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 23
  br i1 %76, label %80, label %77, !prof !454

77:                                               ; preds = %71
  %78 = tail call ptr @single_set_2(ptr noundef nonnull %66, ptr noundef nonnull %73) #15
  %79 = icmp eq ptr %78, null
  br i1 %79, label %102, label %80, !prof !455

80:                                               ; preds = %71, %77
  %81 = phi ptr [ %78, %77 ], [ %73, %71 ]
  %82 = getelementptr inbounds %struct.rtx_def, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !240
  %84 = tail call i32 @exp_equiv_p(ptr noundef %83, ptr noundef %5, i32 noundef 0, i8 noundef zeroext 1) #15
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %112, !prof !456

86:                                               ; preds = %80
  %87 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %66) #15
  %88 = icmp eq ptr %87, null
  br i1 %88, label %102, label %89, !prof !457

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !240
  %92 = tail call i32 @exp_equiv_p(ptr noundef %91, ptr noundef %5, i32 noundef 0, i8 noundef zeroext 1) #15
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %102, label %94, !prof !458

94:                                               ; preds = %89
  %95 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %96 = icmp eq ptr %95, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1
  %99 = load i32, ptr %98, align 8, !tbaa !240
  %100 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %95, ptr noundef nonnull @.str.19, i32 noundef %99) #16
  br label %101

101:                                              ; preds = %97, %94
  tail call void @remove_note(ptr noundef nonnull %66, ptr noundef nonnull %87) #15
  br label %102

102:                                              ; preds = %65, %101, %86, %89, %77
  %103 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1, i32 0, i32 0, i64 2
  %104 = load ptr, ptr %103, align 8, !tbaa !240
  %105 = load ptr, ptr %58, align 8, !tbaa !240
  %106 = getelementptr inbounds %struct.rtl_bb_info, ptr %105, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !241
  %108 = getelementptr inbounds %struct.rtx_def, ptr %107, i64 0, i32 1, i32 0, i32 0, i64 2
  %109 = load ptr, ptr %108, align 8, !tbaa !240
  %110 = icmp eq ptr %104, %109
  br i1 %110, label %111, label %65, !prof !459, !llvm.loop !460

111:                                              ; preds = %102, %56
  tail call fastcc void @remove_reachable_equiv_notes(ptr noundef nonnull %2, ptr noundef nonnull %3) #16
  br label %112

112:                                              ; preds = %80, %111
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #10 !prof !461 !PGOFuncName !462 {
  %3 = load ptr, ptr %0, align 8, !tbaa !463
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !465

5:                                                ; preds = %2
  %6 = and i32 %1, 63
  %7 = zext nneg i32 %6 to i64
  %8 = shl nuw i64 1, %7
  %9 = lshr i32 %1, 6
  %10 = zext nneg i32 %9 to i64
  br label %25

11:                                               ; preds = %2
  %12 = lshr i32 %1, 6
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !204
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !240
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !240
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !204
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !204
  ret void
}

; Function Attrs: optsize
declare void @dump_sbitmap_vector(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @print_inline_rtx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @delete_insn(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_reachable_equiv_notes(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !306 !PGOFuncName !466 {
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  %4 = load ptr, ptr @cfun, align 8, !tbaa !189
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !218
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !275
  %9 = tail call ptr @sbitmap_alloc(i32 noundef %8) #15
  %10 = load ptr, ptr %1, align 8, !tbaa !277
  %11 = load ptr, ptr @cfun, align 8, !tbaa !189
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !218
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !234
  %16 = sext i32 %15 to i64
  %17 = shl nsw i64 %16, 4
  %18 = tail call ptr @xmalloc(i64 noundef %17) #15
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %20 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %19) #16
  store i32 0, ptr %3, align 8, !tbaa.struct !317
  %21 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %20, ptr %21, align 8, !tbaa.struct !318
  tail call void @sbitmap_zero(ptr noundef %9) #15
  %22 = tail call fastcc ptr @ei_container(ptr %20) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24, !prof !467

24:                                               ; preds = %2
  %25 = tail call fastcc ptr @ei_container(ptr %20) #16
  br label %26

26:                                               ; preds = %2, %24
  %27 = phi ptr [ %25, %24 ], [ null, %2 ]
  %28 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %27) #16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30, !prof !467

30:                                               ; preds = %26
  %31 = tail call fastcc ptr @ei_container(ptr %20) #16
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !467

33:                                               ; preds = %30
  %34 = tail call fastcc ptr @ei_container(ptr %20) #16
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi ptr [ %34, %33 ], [ null, %30 ]
  %37 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %36, i32 noundef 0) #16
  br label %38

38:                                               ; preds = %26, %35
  %39 = phi ptr [ %37, %35 ], [ null, %26 ]
  %40 = getelementptr inbounds %struct.st_expr, ptr %1, i64 0, i32 5
  %41 = getelementptr inbounds %struct.st_expr, ptr %1, i64 0, i32 2
  br label %42

42:                                               ; preds = %185, %38
  %43 = phi ptr [ %20, %38 ], [ %186, %185 ]
  %44 = phi i32 [ 0, %38 ], [ %187, %185 ]
  %45 = phi ptr [ %20, %38 ], [ %188, %185 ]
  %46 = phi i32 [ 0, %38 ], [ %189, %185 ]
  %47 = phi ptr [ %39, %38 ], [ %190, %185 ]
  %48 = phi i32 [ 0, %38 ], [ %191, %185 ]
  %49 = icmp eq ptr %47, null
  br i1 %49, label %50, label %62, !prof !468

50:                                               ; preds = %42
  %51 = icmp eq i32 %48, 0
  br i1 %51, label %52, label %54, !prof !469

52:                                               ; preds = %50
  tail call void @free(ptr noundef %18) #16
  %53 = load ptr, ptr %9, align 8, !tbaa !463
  tail call void @free(ptr noundef %53) #16
  tail call void @free(ptr noundef %9) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  ret void

54:                                               ; preds = %50
  %55 = add nsw i32 %48, -1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.edge_iterator, ptr %18, i64 %56
  %58 = load i32, ptr %57, align 8
  %59 = getelementptr inbounds { i32, ptr }, ptr %57, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8
  %61 = tail call fastcc ptr @ei_edge(i32 %58, ptr %60) #16
  br label %62

62:                                               ; preds = %54, %42
  %63 = phi ptr [ %47, %42 ], [ %61, %54 ]
  %64 = phi i32 [ %48, %42 ], [ %55, %54 ]
  %65 = getelementptr inbounds %struct.edge_def, ptr %63, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !217
  %67 = load ptr, ptr @cfun, align 8, !tbaa !189
  %68 = getelementptr inbounds %struct.function, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !218
  %70 = getelementptr inbounds %struct.control_flow_graph, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !223
  %72 = icmp eq ptr %66, %71
  br i1 %72, label %85, label %73, !prof !470

73:                                               ; preds = %62
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %66, i64 0, i32 9
  %75 = load i32, ptr %74, align 8, !tbaa !215
  %76 = lshr i32 %75, 6
  %77 = zext nneg i32 %76 to i64
  %78 = getelementptr inbounds %struct.simple_bitmap_def, ptr %9, i64 0, i32 3, i64 %77
  %79 = load i64, ptr %78, align 8, !tbaa !204
  %80 = and i32 %75, 63
  %81 = zext nneg i32 %80 to i64
  %82 = shl nuw i64 1, %81
  %83 = and i64 %82, %79
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %98, label %85, !prof !471

85:                                               ; preds = %73, %62
  %86 = tail call fastcc zeroext i8 @ei_end_p(i32 %46, ptr %45) #16, !range !298
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %91, !prof !472

88:                                               ; preds = %85
  call fastcc void @ei_next(ptr noundef nonnull %3) #16
  %89 = load i32, ptr %3, align 8
  %90 = load ptr, ptr %21, align 8
  br label %91

91:                                               ; preds = %88, %85
  %92 = phi ptr [ %90, %88 ], [ %43, %85 ]
  %93 = phi i32 [ %89, %88 ], [ %44, %85 ]
  %94 = tail call fastcc zeroext i8 @ei_end_p(i32 %93, ptr %92) #16, !range !298
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %185, !prof !473

96:                                               ; preds = %91
  %97 = tail call fastcc ptr @ei_edge(i32 %93, ptr %92) #16
  br label %185

98:                                               ; preds = %73
  tail call fastcc void @SET_BIT(ptr noundef nonnull %9, i32 noundef %75) #16
  %99 = load ptr, ptr @st_antloc, align 8, !tbaa !189
  %100 = load i32, ptr %74, align 8, !tbaa !215
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds ptr, ptr %99, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !189
  %104 = load i32, ptr %40, align 8, !tbaa !202
  %105 = lshr i32 %104, 6
  %106 = zext nneg i32 %105 to i64
  %107 = getelementptr inbounds %struct.simple_bitmap_def, ptr %103, i64 0, i32 3, i64 %106
  %108 = load i64, ptr %107, align 8, !tbaa !204
  %109 = and i32 %104, 63
  %110 = zext nneg i32 %109 to i64
  %111 = shl nuw i64 1, %110
  %112 = and i64 %111, %108
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %123, label %114, !prof !474

114:                                              ; preds = %98, %114
  %115 = phi ptr [ %122, %114 ], [ %41, %98 ]
  %116 = load ptr, ptr %115, align 8, !tbaa !240
  %117 = getelementptr inbounds %struct.rtx_def, ptr %116, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !240
  %119 = getelementptr inbounds %struct.rtx_def, ptr %118, i64 0, i32 1, i32 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !240
  %121 = icmp eq ptr %120, %66
  %122 = getelementptr inbounds %struct.rtx_def, ptr %116, i64 0, i32 1, i32 0, i32 0, i64 1
  br i1 %121, label %130, label %114, !prof !475, !llvm.loop !476

123:                                              ; preds = %98
  %124 = getelementptr inbounds %struct.basic_block_def, ptr %66, i64 0, i32 7
  %125 = load ptr, ptr %124, align 8, !tbaa !240
  %126 = getelementptr inbounds %struct.rtl_bb_info, ptr %125, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !241
  %128 = getelementptr inbounds %struct.rtx_def, ptr %127, i64 0, i32 1, i32 0, i32 0, i64 2
  %129 = load ptr, ptr %128, align 8, !tbaa !240
  br label %133

130:                                              ; preds = %114
  %131 = getelementptr inbounds %struct.basic_block_def, ptr %66, i64 0, i32 7
  %132 = load ptr, ptr %131, align 8, !tbaa !240
  br label %133

133:                                              ; preds = %130, %123
  %134 = phi ptr [ %125, %123 ], [ %132, %130 ]
  %135 = phi ptr [ %129, %123 ], [ %118, %130 ]
  %136 = load ptr, ptr %134, align 8, !tbaa !240
  %137 = icmp eq ptr %136, %135
  br i1 %137, label %164, label %138, !prof !477

138:                                              ; preds = %133, %160
  %139 = phi ptr [ %162, %160 ], [ %136, %133 ]
  %140 = load i32, ptr %139, align 8
  %141 = and i32 %140, 65535
  %142 = add nsw i32 %141, -11
  %143 = icmp ult i32 %142, -3
  br i1 %143, label %160, label %144, !prof !478

144:                                              ; preds = %138
  %145 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %139) #15
  %146 = icmp eq ptr %145, null
  br i1 %146, label %160, label %147, !prof !479

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.rtx_def, ptr %145, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !240
  %150 = tail call i32 @exp_equiv_p(ptr noundef %149, ptr noundef %10, i32 noundef 0, i8 noundef zeroext 1) #15
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %160, label %152, !prof !480

152:                                              ; preds = %147
  %153 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %154 = icmp eq ptr %153, null
  br i1 %154, label %159, label %155, !prof !481

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.rtx_def, ptr %139, i64 0, i32 1
  %157 = load i32, ptr %156, align 8, !tbaa !240
  %158 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %153, ptr noundef nonnull @.str.19, i32 noundef %157) #16
  br label %159

159:                                              ; preds = %155, %152
  tail call void @remove_note(ptr noundef nonnull %139, ptr noundef nonnull %145) #15
  br label %160

160:                                              ; preds = %138, %159, %144, %147
  %161 = getelementptr inbounds %struct.rtx_def, ptr %139, i64 0, i32 1, i32 0, i32 0, i64 2
  %162 = load ptr, ptr %161, align 8, !tbaa !240
  %163 = icmp eq ptr %162, %135
  br i1 %163, label %164, label %138, !prof !482, !llvm.loop !483

164:                                              ; preds = %160, %133
  %165 = tail call fastcc zeroext i8 @ei_end_p(i32 %46, ptr %45) #16, !range !298
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %170, !prof !484

167:                                              ; preds = %164
  call fastcc void @ei_next(ptr noundef nonnull %3) #16
  %168 = load i32, ptr %3, align 8
  %169 = load ptr, ptr %21, align 8
  br label %170

170:                                              ; preds = %167, %164
  %171 = phi ptr [ %169, %167 ], [ %43, %164 ]
  %172 = phi i32 [ %168, %167 ], [ %44, %164 ]
  %173 = phi ptr [ %169, %167 ], [ %45, %164 ]
  %174 = phi i32 [ %168, %167 ], [ %46, %164 ]
  %175 = tail call fastcc zeroext i8 @ei_end_p(i32 %174, ptr %173) #16, !range !298
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %179, !prof !485

177:                                              ; preds = %170
  %178 = tail call fastcc ptr @ei_edge(i32 %174, ptr %173) #16
  br label %179

179:                                              ; preds = %170, %177
  %180 = phi ptr [ %178, %177 ], [ null, %170 ]
  %181 = getelementptr inbounds %struct.basic_block_def, ptr %66, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !486
  %183 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %182) #16
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %192, !prof !487

185:                                              ; preds = %179, %205, %214, %96, %91
  %186 = phi ptr [ %92, %96 ], [ %92, %91 ], [ %171, %179 ], [ %200, %214 ], [ %200, %205 ]
  %187 = phi i32 [ %93, %96 ], [ %93, %91 ], [ %172, %179 ], [ 0, %214 ], [ 0, %205 ]
  %188 = phi ptr [ %92, %96 ], [ %92, %91 ], [ %173, %179 ], [ %200, %214 ], [ %200, %205 ]
  %189 = phi i32 [ %93, %96 ], [ %93, %91 ], [ %174, %179 ], [ 0, %214 ], [ 0, %205 ]
  %190 = phi ptr [ %97, %96 ], [ null, %91 ], [ %180, %179 ], [ %216, %214 ], [ null, %205 ]
  %191 = phi i32 [ %64, %96 ], [ %64, %91 ], [ %64, %179 ], [ %199, %214 ], [ %199, %205 ]
  br label %42

192:                                              ; preds = %179
  %193 = icmp eq ptr %180, null
  br i1 %193, label %198, label %194, !prof !488

194:                                              ; preds = %192
  %195 = add nsw i32 %64, 1
  %196 = sext i32 %64 to i64
  %197 = getelementptr inbounds %struct.edge_iterator, ptr %18, i64 %196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %197, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !317
  br label %198

198:                                              ; preds = %194, %192
  %199 = phi i32 [ %195, %194 ], [ %64, %192 ]
  %200 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %181) #16
  store i32 0, ptr %3, align 8, !tbaa.struct !317
  store ptr %200, ptr %21, align 8, !tbaa.struct !318
  %201 = tail call fastcc ptr @ei_container(ptr %200) #16
  %202 = icmp eq ptr %201, null
  br i1 %202, label %205, label %203, !prof !487

203:                                              ; preds = %198
  %204 = tail call fastcc ptr @ei_container(ptr %200) #16
  br label %205

205:                                              ; preds = %198, %203
  %206 = phi ptr [ %204, %203 ], [ null, %198 ]
  %207 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %206) #16
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %185, label %209, !prof !487

209:                                              ; preds = %205
  %210 = tail call fastcc ptr @ei_container(ptr %200) #16
  %211 = icmp eq ptr %210, null
  br i1 %211, label %214, label %212, !prof !487

212:                                              ; preds = %209
  %213 = tail call fastcc ptr @ei_container(ptr %200) #16
  br label %214

214:                                              ; preds = %209, %212
  %215 = phi ptr [ %213, %212 ], [ null, %209 ]
  %216 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %215, i32 noundef 0) #16
  br label %185
}

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #11 !prof !489 !PGOFuncName !490 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !491 !PGOFuncName !492 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !493

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !494
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !496 !PGOFuncName !497 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !498

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 687, ptr noundef nonnull @.str.21) #15
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !189
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !499 !PGOFuncName !500 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !189
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !501 !PGOFuncName !502 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !503

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #16
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #16
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !504 !PGOFuncName !505 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !506

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #16
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #16
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !507 !PGOFuncName !508 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !509

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #16
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #16
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !510

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 738, ptr noundef nonnull @.str.21) #15
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !511
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !511
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !513 !PGOFuncName !514 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #16, !range !298
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !515

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #16
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !189
  ret i8 %10
}

; Function Attrs: optsize
declare i32 @find_edge_index(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #10 !prof !516 !PGOFuncName !517 {
  %3 = load ptr, ptr %0, align 8, !tbaa !463
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !518

5:                                                ; preds = %2
  %6 = and i32 %1, 63
  %7 = zext nneg i32 %6 to i64
  %8 = shl nuw i64 1, %7
  %9 = lshr i32 %1, 6
  %10 = zext nneg i32 %9 to i64
  br label %25

11:                                               ; preds = %2
  %12 = lshr i32 %1, 6
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !204
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !240
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !240
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !204
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !204
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_insn_start_basic_block(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !519 !PGOFuncName !520 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !240
  %5 = load ptr, ptr %4, align 8, !tbaa !297
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !240
  %8 = getelementptr inbounds %struct.rtl_bb_info, ptr %4, i64 0, i32 1
  br label %9

9:                                                ; preds = %2, %21
  %10 = phi ptr [ %5, %2 ], [ %23, %21 ]
  %11 = phi ptr [ %7, %2 ], [ %10, %21 ]
  %12 = load i32, ptr %10, align 8
  %13 = trunc i32 %12 to i16
  switch i16 %13, label %25 [
    i16 12, label %18
    i16 13, label %14
  ], !prof !521

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 1
  %16 = load i32, ptr %15, align 8, !tbaa !240
  %17 = icmp eq i32 %16, 10
  br i1 %17, label %18, label %25, !prof !522

18:                                               ; preds = %9, %14
  %19 = load ptr, ptr %8, align 8, !tbaa !241
  %20 = icmp eq ptr %10, %19
  br i1 %20, label %25, label %21, !prof !523

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  %23 = load ptr, ptr %22, align 8, !tbaa !240
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %9, !prof !524, !llvm.loop !525

25:                                               ; preds = %21, %14, %18, %9
  %26 = phi ptr [ %10, %21 ], [ %11, %14 ], [ %10, %18 ], [ %11, %9 ]
  %27 = tail call ptr @emit_insn_after_noloc(ptr noundef %0, ptr noundef %26, ptr noundef %1) #15
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %29 = icmp eq ptr %28, null
  br i1 %29, label %37, label %30, !prof !526

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !215
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %28, ptr noundef nonnull @.str.24, i32 noundef %32) #16
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !189
  tail call void @print_inline_rtx(ptr noundef %34, ptr noundef %27, i32 noundef 6) #15
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %36 = tail call i32 @fputc(i32 10, ptr %35)
  br label %37

37:                                               ; preds = %30, %25
  ret void
}

; Function Attrs: optsize
declare void @insert_insn_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @emit_insn_after_noloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_store_motion_mems() unnamed_addr #0 !prof !273 !PGOFuncName !527 {
  %1 = load ptr, ptr @store_motion_mems_table, align 8, !tbaa !189
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !332

3:                                                ; preds = %0
  tail call void @htab_delete(ptr noundef nonnull %1) #15
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @store_motion_mems_table, align 8, !tbaa !189
  %5 = load ptr, ptr @store_motion_mems, align 8, !tbaa !189
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7, !prof !198

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %11, %7 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.st_expr, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !268
  store ptr %10, ptr @store_motion_mems, align 8, !tbaa !189
  tail call fastcc void @free_st_expr_entry(ptr noundef nonnull %8) #16
  %11 = load ptr, ptr @store_motion_mems, align 8, !tbaa !189
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %7, !prof !230, !llvm.loop !528

13:                                               ; preds = %7, %4
  store ptr null, ptr @store_motion_mems, align 8, !tbaa !189
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nofree nounwind }
attributes #15 = { nounwind optsize }
attributes #16 = { optsize }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!181}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180}
!36 = !{ptr @gate_rtl_store_motion, ptr @optimize_function_for_speed_p, i64 6648}
!37 = !{ptr @gate_rtl_store_motion, ptr @dbg_cnt, i64 6647}
!38 = !{ptr @execute_rtl_store_motion, ptr @delete_unreachable_blocks, i64 6651}
!39 = !{ptr @execute_rtl_store_motion, ptr @df_analyze, i64 6651}
!40 = !{ptr @execute_rtl_store_motion, ptr @one_store_motion_pass, i64 6651}
!41 = !{ptr @one_store_motion_pass, ptr @init_alias_analysis, i64 6651}
!42 = !{ptr @one_store_motion_pass, ptr @compute_store_table, i64 6651}
!43 = !{ptr @one_store_motion_pass, ptr @htab_delete, i64 3843}
!44 = !{ptr @one_store_motion_pass, ptr @end_alias_analysis, i64 6651}
!45 = !{ptr @one_store_motion_pass, ptr @build_store_vectors, i64 2808}
!46 = !{ptr @one_store_motion_pass, ptr @add_noreturn_fake_exit_edges, i64 2808}
!47 = !{ptr @one_store_motion_pass, ptr @connect_infinite_loops_to_exit, i64 2808}
!48 = !{ptr @one_store_motion_pass, ptr @pre_edge_rev_lcm, i64 2808}
!49 = !{ptr @one_store_motion_pass, ptr @first_st_expr, i64 2808}
!50 = !{ptr @one_store_motion_pass, ptr @fprintf, i64 3}
!51 = !{ptr @one_store_motion_pass, ptr @delete_store, i64 798}
!52 = !{ptr @one_store_motion_pass, ptr @insert_store, i64 1274}
!53 = !{ptr @one_store_motion_pass, ptr @next_st_expr, i64 21588}
!54 = !{ptr @one_store_motion_pass, ptr @commit_edge_insertions, i64 174}
!55 = !{ptr @one_store_motion_pass, ptr @free_store_memory, i64 2808}
!56 = !{ptr @one_store_motion_pass, ptr @free_edge_list, i64 2808}
!57 = !{ptr @one_store_motion_pass, ptr @remove_fake_exit_edges, i64 2808}
!58 = !{ptr @one_store_motion_pass, ptr @current_function_name, i64 1}
!59 = !{ptr @compute_store_table, ptr @max_reg_num, i64 6651}
!60 = !{ptr @compute_store_table, ptr @htab_create, i64 6651}
!61 = !{ptr @compute_store_table, ptr @xcalloc, i64 6651}
!62 = !{ptr @compute_store_table, ptr @xmalloc, i64 6651}
!63 = !{ptr @compute_store_table, ptr @find_moveable_store, i64 1079475}
!64 = !{ptr @compute_store_table, ptr @first_st_expr, i64 274594}
!65 = !{ptr @compute_store_table, ptr @next_st_expr, i64 6241557}
!66 = !{ptr @compute_store_table, ptr @htab_remove_elt_with_hash, i64 39326}
!67 = !{ptr @compute_store_table, ptr @free_st_expr_entry, i64 39326}
!68 = !{ptr @compute_store_table, ptr @enumerate_store_motion_mems, i64 6651}
!69 = !{ptr @compute_store_table, ptr @print_store_motion_mems, i64 1}
!70 = !{ptr @compute_store_table, ptr @free, i64 13302}
!71 = !{ptr @build_store_vectors, ptr @max_reg_num, i64 2808}
!72 = !{ptr @build_store_vectors, ptr @sbitmap_vector_alloc, i64 11232}
!73 = !{ptr @build_store_vectors, ptr @sbitmap_vector_zero, i64 11232}
!74 = !{ptr @build_store_vectors, ptr @first_st_expr, i64 218299}
!75 = !{ptr @build_store_vectors, ptr @gen_reg_rtx_and_attrs, i64 146}
!76 = !{ptr @build_store_vectors, ptr @fwrite, i64 1}
!77 = !{ptr @build_store_vectors, ptr @replace_store_insn, i64 146}
!78 = !{ptr @build_store_vectors, ptr @SET_BIT, i64 5826896}
!79 = !{ptr @build_store_vectors, ptr @next_st_expr, i64 5799653}
!80 = !{ptr @build_store_vectors, ptr @xmalloc, i64 2808}
!81 = !{ptr @build_store_vectors, ptr @store_killed_after, i64 5778067}
!82 = !{ptr @build_store_vectors, ptr @free, i64 2808}
!83 = !{ptr @build_store_vectors, ptr @dump_sbitmap_vector, i64 4}
!84 = !{ptr @delete_store, ptr @gen_reg_rtx_and_attrs, i64 424}
!85 = !{ptr @delete_store, ptr @replace_store_insn, i64 790}
!86 = !{ptr @insert_store, ptr @copy_rtx, i64 1271}
!87 = !{ptr @insert_store, ptr @gen_move_insn, i64 1271}
!88 = !{ptr @insert_store, ptr @ei_start_1, i64 2178}
!89 = !{ptr @insert_store, ptr @ei_cond, i64 5209}
!90 = !{ptr @insert_store, ptr @find_edge_index, i64 3096}
!91 = !{ptr @insert_store, ptr @fancy_abort, i64 2}
!92 = !{ptr @insert_store, ptr @ei_next, i64 3031}
!93 = !{ptr @insert_store, ptr @RESET_BIT, i64 943}
!94 = !{ptr @insert_store, ptr @insert_insn_start_basic_block, i64 907}
!95 = !{ptr @insert_store, ptr @insert_insn_on_edge, i64 364}
!96 = !{ptr @insert_store, ptr @fprintf, i64 1}
!97 = !{ptr @insert_store, ptr @print_inline_rtx, i64 1}
!98 = !{ptr @insert_store, ptr @fputc, i64 1}
!99 = !{ptr @free_store_memory, ptr @free_store_motion_mems, i64 2808}
!100 = !{ptr @free_store_memory, ptr @free, i64 16842}
!101 = !{ptr @pre_st_expr_hash, ptr @hash_rtx, i64 42899}
!102 = !{ptr @pre_st_expr_eq, ptr @exp_equiv_p, i64 337479}
!103 = !{ptr @find_moveable_store, ptr @single_set_2, i64 1}
!104 = !{ptr @find_moveable_store, ptr @side_effects_p, i64 240627}
!105 = !{ptr @find_moveable_store, ptr @may_trap_p, i64 1}
!106 = !{ptr @find_moveable_store, ptr @find_reg_note, i64 240625}
!107 = !{ptr @find_moveable_store, ptr @can_assign_to_reg_without_clobbers_p, i64 240624}
!108 = !{ptr @find_moveable_store, ptr @st_expr_entry, i64 238346}
!109 = !{ptr @find_moveable_store, ptr @extract_mentioned_regs, i64 69926}
!110 = !{ptr @find_moveable_store, ptr @store_killed_before, i64 188673}
!111 = !{ptr @find_moveable_store, ptr @alloc_INSN_LIST, i64 215615}
!112 = !{ptr @find_moveable_store, ptr @store_killed_after, i64 189330}
!113 = !{ptr @free_st_expr_entry, ptr @free_INSN_LIST_list, i64 121850}
!114 = !{ptr @free_st_expr_entry, ptr @free, i64 60925}
!115 = !{ptr @st_expr_entry, ptr @hash_rtx, i64 231313}
!116 = !{ptr @st_expr_entry, ptr @htab_find_slot_with_hash, i64 231313}
!117 = !{ptr @st_expr_entry, ptr @xmalloc, i64 60925}
!118 = !{ptr @extract_mentioned_regs, ptr @for_each_rtx, i64 67862}
!119 = !{ptr @store_killed_before, ptr @store_ops_ok, i64 183593}
!120 = !{ptr @store_killed_before, ptr @store_killed_in_insn, i64 661104}
!121 = !{ptr @store_killed_after, ptr @store_ops_ok, i64 5963760}
!122 = !{ptr @store_killed_after, ptr @store_killed_in_insn, i64 22368254}
!123 = !{ptr @extract_mentioned_regs_1, ptr @alloc_EXPR_LIST, i64 57512}
!124 = !{ptr @store_ops_ok, ptr @rhs_regno, i64 5276123}
!125 = !{ptr @store_killed_in_insn, ptr @find_base_term, i64 5637}
!126 = !{ptr @store_killed_in_insn, ptr @store_killed_in_pat, i64 16107882}
!127 = !{ptr @store_killed_in_insn, ptr @find_loads, i64 498180}
!128 = !{ptr @store_killed_in_insn, ptr @find_reg_equal_equiv_note, i64 13420170}
!129 = !{ptr @store_killed_in_insn, ptr @exp_equiv_p, i64 485279}
!130 = !{ptr @store_killed_in_pat, ptr @exp_equiv_p, i64 1706729}
!131 = !{ptr @store_killed_in_pat, ptr @output_dependence, i64 1477589}
!132 = !{ptr @store_killed_in_pat, ptr @find_loads, i64 15477660}
!133 = !{ptr @find_loads, ptr @load_kills_store, i64 3918010}
!134 = !{ptr @find_loads, ptr @find_loads, i64 36804044}
!135 = !{ptr @load_kills_store, ptr @anti_dependence, i64 81789}
!136 = !{ptr @load_kills_store, ptr @true_dependence, i64 3836220}
!137 = !{ptr @replace_store_insn, ptr @single_set_2, i64 2}
!138 = !{ptr @replace_store_insn, ptr @gen_move_insn, i64 942}
!139 = !{ptr @replace_store_insn, ptr @emit_insn_after, i64 942}
!140 = !{ptr @replace_store_insn, ptr @fprintf, i64 2}
!141 = !{ptr @replace_store_insn, ptr @print_inline_rtx, i64 2}
!142 = !{ptr @replace_store_insn, ptr @fwrite, i64 1}
!143 = !{ptr @replace_store_insn, ptr @fputc, i64 1}
!144 = !{ptr @replace_store_insn, ptr @delete_insn, i64 942}
!145 = !{ptr @replace_store_insn, ptr @exp_equiv_p, i64 4250}
!146 = !{ptr @replace_store_insn, ptr @find_reg_equal_equiv_note, i64 3993}
!147 = !{ptr @replace_store_insn, ptr @remove_note, i64 1}
!148 = !{ptr @replace_store_insn, ptr @remove_reachable_equiv_notes, i64 792}
!149 = !{ptr @remove_reachable_equiv_notes, ptr @sbitmap_alloc, i64 797}
!150 = !{ptr @remove_reachable_equiv_notes, ptr @xmalloc, i64 797}
!151 = !{ptr @remove_reachable_equiv_notes, ptr @ei_start_1, i64 135299}
!152 = !{ptr @remove_reachable_equiv_notes, ptr @sbitmap_zero, i64 797}
!153 = !{ptr @remove_reachable_equiv_notes, ptr @ei_container, i64 541188}
!154 = !{ptr @remove_reachable_equiv_notes, ptr @VEC_edge_base_length, i64 269802}
!155 = !{ptr @remove_reachable_equiv_notes, ptr @VEC_edge_base_index, i64 135297}
!156 = !{ptr @remove_reachable_equiv_notes, ptr @free, i64 2391}
!157 = !{ptr @remove_reachable_equiv_notes, ptr @ei_edge, i64 139230}
!158 = !{ptr @remove_reachable_equiv_notes, ptr @ei_end_p, i64 423742}
!159 = !{ptr @remove_reachable_equiv_notes, ptr @ei_next, i64 149212}
!160 = !{ptr @remove_reachable_equiv_notes, ptr @SET_BIT, i64 134503}
!161 = !{ptr @remove_reachable_equiv_notes, ptr @find_reg_equal_equiv_note, i64 493915}
!162 = !{ptr @remove_reachable_equiv_notes, ptr @exp_equiv_p, i64 21049}
!163 = !{ptr @remove_reachable_equiv_notes, ptr @fprintf, i64 1}
!164 = !{ptr @remove_reachable_equiv_notes, ptr @remove_note, i64 57}
!165 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!166 = !{ptr @ei_edge, ptr @ei_container, i64 283853}
!167 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 141927}
!168 = !{ptr @ei_end_p, ptr @ei_container, i64 857221}
!169 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 428611}
!170 = !{ptr @ei_next, ptr @ei_container, i64 303117}
!171 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 151559}
!172 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!173 = !{ptr @ei_cond, ptr @ei_end_p, i64 4345}
!174 = !{ptr @ei_cond, ptr @ei_edge, i64 2525}
!175 = !{ptr @insert_insn_start_basic_block, ptr @emit_insn_after_noloc, i64 910}
!176 = !{ptr @insert_insn_start_basic_block, ptr @fprintf, i64 1}
!177 = !{ptr @insert_insn_start_basic_block, ptr @print_inline_rtx, i64 1}
!178 = !{ptr @insert_insn_start_basic_block, ptr @fputc, i64 1}
!179 = !{ptr @free_store_motion_mems, ptr @htab_delete, i64 2807}
!180 = !{ptr @free_store_motion_mems, ptr @free_st_expr_entry, i64 21586}
!181 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!182 = !{!"function_entry_count", i64 6652}
!183 = !{!"store-motion.c:gate_rtl_store_motion"}
!184 = !{!185, !185, i64 0}
!185 = !{!"int", !186, i64 0}
!186 = !{!"omnipotent char", !187, i64 0}
!187 = !{!"Simple C/C++ TBAA"}
!188 = !{!"branch_weights", i32 44262409, i32 13307}
!189 = !{!190, !190, i64 0}
!190 = !{!"any pointer", !186, i64 0}
!191 = !{!"branch_weights", i32 6652, i32 2}
!192 = !{!"branch_weights", i32 1, i32 6652}
!193 = !{!"function_entry_count", i64 6651}
!194 = !{!"store-motion.c:execute_rtl_store_motion"}
!195 = !{i32 0, i32 2}
!196 = !{!"store-motion.c:one_store_motion_pass"}
!197 = !{!"branch_weights", i32 3844, i32 2809}
!198 = !{!"branch_weights", i32 1, i32 2808}
!199 = !{!200, !185, i64 4}
!200 = !{!"edge_list", !185, i64 0, !185, i64 4, !190, i64 8}
!201 = !{!"branch_weights", i32 21593, i32 1}
!202 = !{!203, !185, i64 40}
!203 = !{!"st_expr", !190, i64 0, !190, i64 8, !190, i64 16, !190, i64 24, !190, i64 32, !185, i64 40, !185, i64 44, !190, i64 48}
!204 = !{!205, !205, i64 0}
!205 = !{!"long", !186, i64 0}
!206 = !{!"branch_weights", i32 9110118, i32 1310}
!207 = !{!200, !190, i64 8}
!208 = !{!209, !185, i64 48}
!209 = !{!"edge_def", !190, i64 0, !190, i64 8, !186, i64 16, !190, i64 24, !190, i64 32, !185, i64 40, !185, i64 44, !185, i64 48, !185, i64 52, !205, i64 56}
!210 = !{!"branch_weights", i32 1310, i32 1}
!211 = !{!"branch_weights", i32 9089834, i32 21593}
!212 = distinct !{!212, !213}
!213 = !{!"llvm.loop.mustprogress"}
!214 = !{!209, !190, i64 0}
!215 = !{!216, !185, i64 80}
!216 = !{!"basic_block_def", !190, i64 0, !190, i64 8, !190, i64 16, !190, i64 24, !186, i64 32, !190, i64 48, !190, i64 56, !186, i64 64, !205, i64 72, !185, i64 80, !185, i64 84, !185, i64 88, !185, i64 92, !185, i64 96}
!217 = !{!209, !190, i64 8}
!218 = !{!219, !190, i64 8}
!219 = !{!"function", !190, i64 0, !190, i64 8, !190, i64 16, !190, i64 24, !190, i64 32, !190, i64 40, !190, i64 48, !190, i64 56, !190, i64 64, !190, i64 72, !190, i64 80, !190, i64 88, !190, i64 96, !185, i64 104, !185, i64 108, !185, i64 112, !185, i64 116, !185, i64 120, !185, i64 124, !190, i64 128, !185, i64 136, !185, i64 137, !185, i64 138, !185, i64 138, !185, i64 138, !185, i64 138, !185, i64 138, !185, i64 138, !185, i64 138, !185, i64 139, !185, i64 139, !185, i64 139, !185, i64 139, !185, i64 139, !185, i64 139, !185, i64 139}
!220 = !{!221, !190, i64 0}
!221 = !{!"control_flow_graph", !190, i64 0, !190, i64 8, !190, i64 16, !185, i64 24, !185, i64 28, !185, i64 32, !190, i64 40, !185, i64 48, !186, i64 52, !186, i64 60, !185, i64 68, !185, i64 72}
!222 = !{!216, !190, i64 56}
!223 = !{!221, !190, i64 8}
!224 = !{!"branch_weights", i32 1, i32 21593}
!225 = !{!"branch_weights", i32 5779328, i32 798}
!226 = !{!"branch_weights", i32 21593, i32 5758532}
!227 = distinct !{!227, !213}
!228 = !{!"branch_weights", i32 9110154, i32 1274}
!229 = distinct !{!229, !213}
!230 = !{!"branch_weights", i32 2808, i32 18786}
!231 = distinct !{!231, !213}
!232 = !{!"branch_weights", i32 2014460436, i32 133023212}
!233 = !{!"branch_weights", i32 2809, i32 1}
!234 = !{!221, !185, i64 24}
!235 = !{!"branch_weights", i32 273, i32 2537}
!236 = !{!"store-motion.c:compute_store_table"}
!237 = !{!"branch_weights", i32 1, i32 6651}
!238 = !{!"branch_weights", i32 6651, i32 267984}
!239 = distinct !{!239, !213}
!240 = !{!186, !186, i64 0}
!241 = !{!242, !190, i64 8}
!242 = !{!"rtl_bb_info", !190, i64 0, !190, i64 8, !190, i64 16, !190, i64 24, !185, i64 32}
!243 = !{!"branch_weights", i32 274635, i32 1532488}
!244 = !{!"branch_weights", i32 1552017154, i32 -321244639}
!245 = !{!246, !190, i64 248}
!246 = !{!"df", !186, i64 0, !186, i64 64, !190, i64 128, !247, i64 136, !247, i64 176, !190, i64 216, !190, i64 224, !190, i64 232, !185, i64 240, !185, i64 244, !190, i64 248, !185, i64 256, !185, i64 260, !190, i64 264, !190, i64 272, !190, i64 280, !190, i64 288, !190, i64 296, !190, i64 304, !190, i64 312, !190, i64 320, !190, i64 328, !190, i64 336, !185, i64 344, !185, i64 348, !190, i64 352, !185, i64 360, !185, i64 364, !186, i64 365, !186, i64 366}
!247 = !{!"df_ref_info", !190, i64 0, !190, i64 8, !190, i64 16, !185, i64 24, !185, i64 28, !185, i64 32, !185, i64 36}
!248 = !{!249, !190, i64 8}
!249 = !{!"df_insn_info", !190, i64 0, !190, i64 8, !190, i64 16, !190, i64 24, !190, i64 32, !185, i64 40}
!250 = !{!"branch_weights", i32 1, i32 1102056}
!251 = !{!"branch_weights", i32 1102056, i32 3884620}
!252 = distinct !{!252, !213}
!253 = !{!"branch_weights", i32 6651, i32 1793820}
!254 = distinct !{!254, !213}
!255 = distinct !{!255, !213}
!256 = !{!"branch_weights", i32 3579681, i32 1406996}
!257 = distinct !{!257, !213}
!258 = distinct !{!258, !213}
!259 = !{!"branch_weights", i32 1, i32 274634}
!260 = !{!203, !190, i64 48}
!261 = !{!203, !190, i64 16}
!262 = !{!"branch_weights", i32 3427981, i32 2814515}
!263 = !{!"branch_weights", i32 74609, i32 2739907}
!264 = !{!"branch_weights", i32 274634, i32 5967861}
!265 = distinct !{!265, !213}
!266 = !{!203, !190, i64 24}
!267 = !{!"branch_weights", i32 39333, i32 21594}
!268 = !{!203, !190, i64 32}
!269 = !{!203, !185, i64 44}
!270 = !{!"branch_weights", i32 6651, i32 54275}
!271 = distinct !{!271, !213}
!272 = !{!"branch_weights", i32 6652, i32 1}
!273 = !{!"function_entry_count", i64 2808}
!274 = !{!"store-motion.c:build_store_vectors"}
!275 = !{!221, !185, i64 32}
!276 = !{!"branch_weights", i32 32321, i32 146}
!277 = !{!203, !190, i64 0}
!278 = !{!"branch_weights", i32 146, i32 1}
!279 = !{!"branch_weights", i32 21593, i32 10873}
!280 = distinct !{!280, !213}
!281 = !{!"branch_weights", i32 5010, i32 16584}
!282 = !{!"branch_weights", i32 16584, i32 0}
!283 = distinct !{!283, !213}
!284 = distinct !{!284, !213}
!285 = !{!"branch_weights", i32 2808, i32 212760}
!286 = distinct !{!286, !213}
!287 = !{!"branch_weights", i32 215568, i32 1200043}
!288 = !{!"branch_weights", i32 903514956, i32 -1977859694}
!289 = !{!"branch_weights", i32 1, i32 863381}
!290 = !{!"branch_weights", i32 3785968, i32 146}
!291 = !{!"branch_weights", i32 863381, i32 2922732}
!292 = distinct !{!292, !213}
!293 = !{!"branch_weights", i32 2808, i32 1409994}
!294 = distinct !{!294, !213}
!295 = !{!"branch_weights", i32 1, i32 215567}
!296 = !{!203, !190, i64 8}
!297 = !{!242, !190, i64 0}
!298 = !{i8 0, i8 2}
!299 = !{!"branch_weights", i32 3554302, i32 2225824}
!300 = !{!"branch_weights", i32 2222981, i32 2844}
!301 = !{!"branch_weights", i32 2788, i32 57}
!302 = !{!"branch_weights", i32 215567, i32 5564558}
!303 = distinct !{!303, !213}
!304 = !{!"function_entry_count", i64 495817}
!305 = !{!"store-motion.c:first_st_expr"}
!306 = !{!"function_entry_count", i64 797}
!307 = !{!"store-motion.c:delete_store"}
!308 = !{!"branch_weights", i32 425, i32 374}
!309 = !{!"branch_weights", i32 1, i32 127}
!310 = !{!"branch_weights", i32 127, i32 1073793}
!311 = distinct !{!311, !213}
!312 = !{!"branch_weights", i32 798, i32 7593}
!313 = !{!"function_entry_count", i64 1273}
!314 = !{!"store-motion.c:insert_store"}
!315 = !{!"branch_weights", i32 1, i32 1274}
!316 = !{!"branch_weights", i32 1274, i32 1}
!317 = !{i64 0, i64 4, !184, i64 8, i64 8, !189}
!318 = !{i64 0, i64 8, !189}
!319 = !{!"branch_weights", i32 1, i32 910}
!320 = !{!"branch_weights", i32 1580, i32 1}
!321 = !{!"branch_weights", i32 1, i32 1580}
!322 = !{!"branch_weights", i32 910, i32 670}
!323 = distinct !{!323, !213}
!324 = !{!"branch_weights", i32 911, i32 364}
!325 = !{!"branch_weights", i32 1, i32 911}
!326 = !{!"branch_weights", i32 910, i32 37}
!327 = distinct !{!327, !213}
!328 = !{!"branch_weights", i32 364, i32 1}
!329 = !{!"function_entry_count", i64 12065804}
!330 = !{!"store-motion.c:next_st_expr"}
!331 = !{!"store-motion.c:free_store_memory"}
!332 = !{!"branch_weights", i32 1, i32 2809}
!333 = !{!"function_entry_count", i64 42899}
!334 = !{!"store-motion.c:pre_st_expr_hash"}
!335 = !{!"function_entry_count", i64 337479}
!336 = !{!"store-motion.c:pre_st_expr_eq"}
!337 = !{!"function_entry_count", i64 1102056}
!338 = !{!"store-motion.c:find_moveable_store"}
!339 = !{!"branch_weights", i32 -1414921699, i32 2613}
!340 = !{!"branch_weights", i32 968466, i32 1}
!341 = !{!"branch_weights", i32 -2147483648, i32 0}
!342 = !{!"branch_weights", i32 -1574686124, i32 759870313}
!343 = !{!"branch_weights", i32 233524, i32 1}
!344 = !{!"branch_weights", i32 2211, i32 231314}
!345 = !{!"branch_weights", i32 67863, i32 163452}
!346 = !{!"branch_weights", i32 73377, i32 157938}
!347 = !{!"branch_weights", i32 19686, i32 138253}
!348 = !{!"branch_weights", i32 47721, i32 183594}
!349 = !{!"branch_weights", i32 108986, i32 74609}
!350 = !{!"branch_weights", i32 216065, i32 15250}
!351 = !{!"branch_weights", i32 146, i32 231169}
!352 = !{!"branch_weights", i32 183637, i32 47533}
!353 = !{!"branch_weights", i32 1, i32 289}
!354 = !{!"branch_weights", i32 289, i32 131364}
!355 = distinct !{!355, !213}
!356 = !{!"branch_weights", i32 47533, i32 84410}
!357 = !{!"branch_weights", i32 32466, i32 198849}
!358 = !{!"function_entry_count", i64 60925}
!359 = !{!"store-motion.c:free_st_expr_entry"}
!360 = !{!"store-motion.c:enumerate_store_motion_mems"}
!361 = !{!"branch_weights", i32 6651, i32 14943}
!362 = distinct !{!362, !213}
!363 = !{!"function_entry_count", i64 0}
!364 = !{!"store-motion.c:print_store_motion_mems"}
!365 = distinct !{!365, !213}
!366 = !{!"function_entry_count", i64 231313}
!367 = !{!"store-motion.c:st_expr_entry"}
!368 = !{!"branch_weights", i32 60926, i32 170389}
!369 = !{!"function_entry_count", i64 67862}
!370 = !{!"store-motion.c:extract_mentioned_regs"}
!371 = !{!"function_entry_count", i64 183593}
!372 = !{!"store-motion.c:store_killed_before"}
!373 = !{!"branch_weights", i32 14200, i32 169395}
!374 = !{!"branch_weights", i32 1, i32 108985}
!375 = !{!"branch_weights", i32 559241, i32 60410}
!376 = !{!"branch_weights", i32 108985, i32 510665}
!377 = distinct !{!377, !213}
!378 = !{!"function_entry_count", i64 5963760}
!379 = !{!"store-motion.c:store_killed_after"}
!380 = !{!"branch_weights", i32 31668, i32 5932094}
!381 = !{!"branch_weights", i32 1, i32 3586332}
!382 = !{!"branch_weights", i32 29815, i32 1854}
!383 = !{!"branch_weights", i32 18500825, i32 2345762}
!384 = !{!"branch_weights", i32 2196010, i32 149753}
!385 = !{!"branch_weights", i32 3586332, i32 17260254}
!386 = distinct !{!386, !213}
!387 = !{!"function_entry_count", i64 249528}
!388 = !{!"store-motion.c:extract_mentioned_regs_1"}
!389 = !{!"branch_weights", i32 57512, i32 192018}
!390 = !{!"function_entry_count", i64 6147353}
!391 = !{!"store-motion.c:store_ops_ok"}
!392 = !{!"branch_weights", i32 864730, i32 5236758}
!393 = !{!"branch_weights", i32 5190892, i32 45867}
!394 = !{!"branch_weights", i32 5236758, i32 0}
!395 = distinct !{!395, !213}
!396 = !{!"function_entry_count", i64 21466234}
!397 = !{!"store-motion.c:store_killed_in_insn"}
!398 = !{!"branch_weights", i32 -1881267046, i32 891984149}
!399 = !{!"branch_weights", i32 -813176691, i32 239, i32 266866192}
!400 = !{!"branch_weights", i32 1111040, i32 4785}
!401 = !{!"branch_weights", i32 1, i32 2232}
!402 = !{!"branch_weights", i32 2277, i32 1655}
!403 = !{!"branch_weights", i32 2389820, i32 352516}
!404 = !{!"branch_weights", i32 277, i32 1168}
!405 = !{!"branch_weights", i32 2232, i32 1699}
!406 = distinct !{!406, !213}
!407 = !{!"branch_weights", i32 2556769, i32 -1813835467, i32 296127335}
!408 = !{!409, !185, i64 0}
!409 = !{!"rtvec_def", !185, i64 0, !186, i64 8}
!410 = !{!"branch_weights", i32 1495123, i32 1}
!411 = !{!"branch_weights", i32 11912658, i32 1081216}
!412 = !{!"branch_weights", i32 1564215, i32 1495123}
!413 = distinct !{!413, !213}
!414 = !{!"branch_weights", i32 3003620, i32 55719}
!415 = !{!"branch_weights", i32 13390, i32 1}
!416 = !{!"branch_weights", i32 12935856, i32 485315}
!417 = !{!"branch_weights", i32 484827, i32 489}
!418 = !{!"function_entry_count", i64 5236757}
!419 = !{!"store-motion.c:rhs_regno"}
!420 = !{!"function_entry_count", i64 16053209}
!421 = !{!"store-motion.c:store_killed_in_pat"}
!422 = !{!"branch_weights", i32 14555308, i32 1497903}
!423 = !{!"branch_weights", i32 1, i32 14555308}
!424 = !{!"branch_weights", i32 1706729, i32 12848580}
!425 = !{!"branch_weights", i32 1477590, i32 229140}
!426 = !{!"branch_weights", i32 1331771, i32 145820}
!427 = !{!"branch_weights", i32 140092, i32 5729}
!428 = !{!"branch_weights", i32 761951, i32 569821}
!429 = !{!"function_entry_count", i64 52779901}
!430 = !{!"store-motion.c:find_loads"}
!431 = !{!"branch_weights", i32 1, i32 52779902}
!432 = !{!"branch_weights", i32 13979760, i32 38800143}
!433 = !{!"branch_weights", i32 3918010, i32 48861893}
!434 = !{!"branch_weights", i32 3200979, i32 717032}
!435 = !{!"branch_weights", i32 1, i32 52062870}
!436 = !{!"branch_weights", i32 -476323909, i32 -2073960281, i32 60}
!437 = distinct !{!437, !213}
!438 = !{!"branch_weights", i32 100118539, i32 52026614}
!439 = !{!"branch_weights", i32 48019412, i32 52062870}
!440 = distinct !{!440, !213}
!441 = !{!"function_entry_count", i64 3918009}
!442 = !{!"store-motion.c:load_kills_store"}
!443 = !{!"branch_weights", i32 3836222, i32 81789}
!444 = !{!"function_entry_count", i64 942}
!445 = !{!"store-motion.c:replace_store_insn"}
!446 = !{!"branch_weights", i32 3775, i32 1}
!447 = !{!"branch_weights", i32 943, i32 1}
!448 = !{!"branch_weights", i32 1, i32 369}
!449 = !{!"branch_weights", i32 574, i32 11912}
!450 = !{!"branch_weights", i32 369, i32 12116}
!451 = distinct !{!451, !213}
!452 = !{!"branch_weights", i32 1, i32 797}
!453 = !{!"branch_weights", i32 -1852346204, i32 17862900}
!454 = !{!"branch_weights", i32 3367, i32 1}
!455 = !{!"branch_weights", i32 899013377, i32 1248470271}
!456 = !{!"branch_weights", i32 3883, i32 146}
!457 = !{!"branch_weights", i32 3780, i32 104}
!458 = !{!"branch_weights", i32 104, i32 1}
!459 = !{!"branch_weights", i32 797, i32 3259}
!460 = distinct !{!460, !213}
!461 = !{!"function_entry_count", i64 5963641}
!462 = !{!"store-motion.c:SET_BIT"}
!463 = !{!464, !190, i64 0}
!464 = !{!"simple_bitmap_def", !190, i64 0, !185, i64 8, !185, i64 12, !186, i64 16}
!465 = !{!"branch_weights", i32 5963642, i32 1}
!466 = !{!"store-motion.c:remove_reachable_equiv_notes"}
!467 = !{!"branch_weights", i32 1, i32 798}
!468 = !{!"branch_weights", i32 63534, i32 149398}
!469 = !{!"branch_weights", i32 798, i32 62737}
!470 = !{!"branch_weights", i32 2781, i32 209354}
!471 = !{!"branch_weights", i32 134671, i32 74684}
!472 = !{!"branch_weights", i32 48025, i32 29440}
!473 = !{!"branch_weights", i32 13931, i32 63534}
!474 = !{!"branch_weights", i32 126496, i32 8176}
!475 = !{!"branch_weights", i32 8176, i32 269795}
!476 = distinct !{!476, !213}
!477 = !{!"branch_weights", i32 1, i32 134670}
!478 = !{!"branch_weights", i32 1059443748, i32 -1803777425}
!479 = !{!"branch_weights", i32 473457, i32 21075}
!480 = !{!"branch_weights", i32 21019, i32 57}
!481 = !{!"branch_weights", i32 57, i32 1}
!482 = !{!"branch_weights", i32 134670, i32 570174}
!483 = distinct !{!483, !213}
!484 = !{!"branch_weights", i32 101374, i32 33298}
!485 = !{!"branch_weights", i32 62737, i32 71935}
!486 = !{!216, !190, i64 8}
!487 = !{!"branch_weights", i32 1, i32 134671}
!488 = !{!"branch_weights", i32 71935, i32 62737}
!489 = !{!"function_entry_count", i64 137650}
!490 = !{!"store-motion.c:ei_start_1"}
!491 = !{!"function_entry_count", i64 850307}
!492 = !{!"store-motion.c:VEC_edge_base_length"}
!493 = !{!"branch_weights", i32 1, i32 850308}
!494 = !{!495, !185, i64 0}
!495 = !{!"VEC_edge_base", !185, i64 0, !185, i64 4, !186, i64 8}
!496 = !{!"function_entry_count", i64 1986062}
!497 = !{!"store-motion.c:ei_container"}
!498 = !{!"branch_weights", i32 1, i32 1986063}
!499 = !{!"function_entry_count", i64 277394}
!500 = !{!"store-motion.c:VEC_edge_base_index"}
!501 = !{!"function_entry_count", i64 141927}
!502 = !{!"store-motion.c:ei_edge"}
!503 = !{!"branch_weights", i32 1, i32 141928}
!504 = !{!"function_entry_count", i64 428611}
!505 = !{!"store-motion.c:ei_end_p"}
!506 = !{!"branch_weights", i32 1, i32 428612}
!507 = !{!"function_entry_count", i64 151559}
!508 = !{!"store-motion.c:ei_next"}
!509 = !{!"branch_weights", i32 1, i32 151560}
!510 = !{!"branch_weights", i32 151560, i32 1}
!511 = !{!512, !185, i64 0}
!512 = !{!"", !185, i64 0, !190, i64 8}
!513 = !{!"function_entry_count", i64 4345}
!514 = !{!"store-motion.c:ei_cond"}
!515 = !{!"branch_weights", i32 2526, i32 1821}
!516 = !{!"function_entry_count", i64 946}
!517 = !{!"store-motion.c:RESET_BIT"}
!518 = !{!"branch_weights", i32 947, i32 1}
!519 = !{!"function_entry_count", i64 910}
!520 = !{!"store-motion.c:insert_insn_start_basic_block"}
!521 = !{!"branch_weights", i32 1647100, i32 1431306, i32 1667120}
!522 = !{!"branch_weights", i32 911, i32 6}
!523 = !{!"branch_weights", i32 2, i32 1695}
!524 = !{!"branch_weights", i32 127, i32 333313}
!525 = distinct !{!525, !213}
!526 = !{!"branch_weights", i32 911, i32 1}
!527 = !{!"store-motion.c:free_store_motion_mems"}
!528 = distinct !{!528, !213}
