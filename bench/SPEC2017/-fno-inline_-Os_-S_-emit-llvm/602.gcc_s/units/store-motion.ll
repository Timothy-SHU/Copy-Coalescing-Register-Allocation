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
define internal zeroext i8 @gate_rtl_store_motion() #0 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !6
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_gcse_sm, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %19

6:                                                ; preds = %0
  %7 = load ptr, ptr @cfun, align 8, !tbaa !10
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 20
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 262144
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = tail call zeroext i8 @optimize_function_for_speed_p(ptr noundef nonnull %7) #15
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

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
define internal noundef i32 @execute_rtl_store_motion() #0 {
  %1 = tail call zeroext i8 @delete_unreachable_blocks() #15
  tail call void @df_analyze() #15
  %2 = tail call fastcc i32 @one_store_motion_pass() #16, !range !12
  %3 = load i32, ptr @flag_rerun_cse_after_global_opts, align 4, !tbaa !6
  %4 = or i32 %3, %2
  store i32 %4, ptr @flag_rerun_cse_after_global_opts, align 4, !tbaa !6
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
define internal fastcc i32 @one_store_motion_pass() unnamed_addr #0 {
  tail call void @init_alias_analysis() #15
  %1 = tail call fastcc i32 @compute_store_table() #16
  store i32 %1, ptr @num_stores, align 4, !tbaa !6
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = load ptr, ptr @store_motion_mems_table, align 8, !tbaa !10
  tail call void @htab_delete(ptr noundef %4) #15
  store ptr null, ptr @store_motion_mems_table, align 8, !tbaa !10
  tail call void @end_alias_analysis() #15
  br label %200

5:                                                ; preds = %0
  tail call fastcc void @build_store_vectors() #16
  tail call void @add_noreturn_fake_exit_edges() #15
  tail call void @connect_infinite_loops_to_exit() #15
  %6 = load i32, ptr @num_stores, align 4, !tbaa !6
  %7 = load ptr, ptr @st_transp, align 8, !tbaa !10
  %8 = load ptr, ptr @st_avloc, align 8, !tbaa !10
  %9 = load ptr, ptr @st_antloc, align 8, !tbaa !10
  %10 = load ptr, ptr @st_kill, align 8, !tbaa !10
  %11 = tail call ptr @pre_edge_rev_lcm(i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef nonnull @st_insert_map, ptr noundef nonnull @st_delete_map) #15
  store ptr %11, ptr @edge_list, align 8, !tbaa !10
  %12 = tail call fastcc ptr @first_st_expr() #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %179, label %14

14:                                               ; preds = %5, %167
  %15 = phi ptr [ %168, %167 ], [ %11, %5 ]
  %16 = phi ptr [ %169, %167 ], [ %11, %5 ]
  %17 = phi ptr [ %170, %167 ], [ %11, %5 ]
  %18 = phi i32 [ %173, %167 ], [ 0, %5 ]
  %19 = phi i32 [ %172, %167 ], [ 0, %5 ]
  %20 = phi i32 [ %171, %167 ], [ 0, %5 ]
  %21 = phi ptr [ %174, %167 ], [ %12, %5 ]
  %22 = getelementptr inbounds %struct.edge_list, ptr %17, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !13
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %68

25:                                               ; preds = %14
  %26 = load ptr, ptr @st_insert_map, align 8, !tbaa !10
  %27 = getelementptr inbounds %struct.st_expr, ptr %21, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !15
  %29 = lshr i32 %28, 6
  %30 = zext nneg i32 %29 to i64
  %31 = and i32 %28, 63
  %32 = zext nneg i32 %31 to i64
  %33 = shl nuw i64 1, %32
  %34 = getelementptr inbounds %struct.edge_list, ptr %17, i64 0, i32 2
  %35 = zext nneg i32 %23 to i64
  br label %36

36:                                               ; preds = %25, %53
  %37 = phi i64 [ %35, %25 ], [ %38, %53 ]
  %38 = add nsw i64 %37, -1
  %39 = getelementptr inbounds ptr, ptr %26, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !10
  %41 = getelementptr inbounds %struct.simple_bitmap_def, ptr %40, i64 0, i32 3, i64 %30
  %42 = load i64, ptr %41, align 8, !tbaa !17
  %43 = and i64 %33, %42
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %36
  %46 = load ptr, ptr %34, align 8, !tbaa !19
  %47 = getelementptr inbounds ptr, ptr %46, i64 %38
  %48 = load ptr, ptr %47, align 8, !tbaa !10
  %49 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 7
  %50 = load i32, ptr %49, align 8, !tbaa !20
  %51 = and i32 %50, 2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %36, %45
  %54 = icmp ugt i64 %37, 1
  br i1 %54, label %36, label %68, !llvm.loop !22

55:                                               ; preds = %45
  %56 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %57 = icmp eq ptr %56, null
  br i1 %57, label %167, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %48, align 8, !tbaa !24
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 9
  %61 = load i32, ptr %60, align 8, !tbaa !25
  %62 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !27
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 9
  %65 = load i32, ptr %64, align 8, !tbaa !25
  %66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %56, ptr noundef nonnull @.str.1, i32 noundef %28, i32 noundef %61, i32 noundef %65) #16
  %67 = load ptr, ptr @edge_list, align 8, !tbaa !10
  br label %167

68:                                               ; preds = %53, %14
  %69 = load ptr, ptr @cfun, align 8, !tbaa !10
  %70 = getelementptr inbounds %struct.function, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !28
  %72 = load ptr, ptr %71, align 8, !tbaa !30
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %72, i64 0, i32 6
  %74 = load ptr, ptr %73, align 8, !tbaa !32
  %75 = getelementptr inbounds %struct.control_flow_graph, ptr %71, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !33
  %77 = icmp eq ptr %74, %76
  br i1 %77, label %83, label %78

78:                                               ; preds = %68
  %79 = getelementptr inbounds %struct.st_expr, ptr %21, i64 0, i32 5
  %80 = load ptr, ptr @st_delete_map, align 8, !tbaa !10
  br label %93

81:                                               ; preds = %117
  %82 = load ptr, ptr @edge_list, align 8, !tbaa !10
  br label %83

83:                                               ; preds = %81, %68
  %84 = phi ptr [ %15, %68 ], [ %82, %81 ]
  %85 = phi ptr [ %16, %68 ], [ %82, %81 ]
  %86 = phi i32 [ %19, %68 ], [ %120, %81 ]
  %87 = getelementptr inbounds %struct.edge_list, ptr %85, i64 0, i32 1
  %88 = load i32, ptr %87, align 4, !tbaa !13
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %167

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.st_expr, ptr %21, i64 0, i32 5
  %92 = load ptr, ptr @st_insert_map, align 8, !tbaa !10
  br label %128

93:                                               ; preds = %78, %117
  %94 = phi ptr [ %69, %78 ], [ %118, %117 ]
  %95 = phi ptr [ %80, %78 ], [ %119, %117 ]
  %96 = phi ptr [ %74, %78 ], [ %122, %117 ]
  %97 = phi i32 [ %19, %78 ], [ %120, %117 ]
  %98 = getelementptr inbounds %struct.basic_block_def, ptr %96, i64 0, i32 9
  %99 = load i32, ptr %98, align 8, !tbaa !25
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds ptr, ptr %95, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !10
  %103 = load i32, ptr %79, align 8, !tbaa !15
  %104 = lshr i32 %103, 6
  %105 = zext nneg i32 %104 to i64
  %106 = getelementptr inbounds %struct.simple_bitmap_def, ptr %102, i64 0, i32 3, i64 %105
  %107 = load i64, ptr %106, align 8, !tbaa !17
  %108 = and i32 %103, 63
  %109 = zext nneg i32 %108 to i64
  %110 = shl nuw i64 1, %109
  %111 = and i64 %110, %107
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %93
  tail call fastcc void @delete_store(ptr noundef nonnull %21, ptr noundef nonnull %96) #16
  %114 = add nsw i32 %97, 1
  %115 = load ptr, ptr @st_delete_map, align 8, !tbaa !10
  %116 = load ptr, ptr @cfun, align 8, !tbaa !10
  br label %117

117:                                              ; preds = %93, %113
  %118 = phi ptr [ %116, %113 ], [ %94, %93 ]
  %119 = phi ptr [ %115, %113 ], [ %95, %93 ]
  %120 = phi i32 [ %114, %113 ], [ %97, %93 ]
  %121 = getelementptr inbounds %struct.basic_block_def, ptr %96, i64 0, i32 6
  %122 = load ptr, ptr %121, align 8, !tbaa !32
  %123 = getelementptr inbounds %struct.function, ptr %118, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !28
  %125 = getelementptr inbounds %struct.control_flow_graph, ptr %124, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !33
  %127 = icmp eq ptr %122, %126
  br i1 %127, label %81, label %93, !llvm.loop !34

128:                                              ; preds = %90, %157
  %129 = phi ptr [ %84, %90 ], [ %158, %157 ]
  %130 = phi ptr [ %92, %90 ], [ %159, %157 ]
  %131 = phi i64 [ 0, %90 ], [ %162, %157 ]
  %132 = phi ptr [ %85, %90 ], [ %158, %157 ]
  %133 = phi i32 [ %18, %90 ], [ %161, %157 ]
  %134 = phi i32 [ %20, %90 ], [ %160, %157 ]
  %135 = getelementptr inbounds ptr, ptr %130, i64 %131
  %136 = load ptr, ptr %135, align 8, !tbaa !10
  %137 = load i32, ptr %91, align 8, !tbaa !15
  %138 = lshr i32 %137, 6
  %139 = zext nneg i32 %138 to i64
  %140 = getelementptr inbounds %struct.simple_bitmap_def, ptr %136, i64 0, i32 3, i64 %139
  %141 = load i64, ptr %140, align 8, !tbaa !17
  %142 = and i32 %137, 63
  %143 = zext nneg i32 %142 to i64
  %144 = shl nuw i64 1, %143
  %145 = and i64 %144, %141
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %157, label %147

147:                                              ; preds = %128
  %148 = getelementptr inbounds %struct.edge_list, ptr %132, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !19
  %150 = getelementptr inbounds ptr, ptr %149, i64 %131
  %151 = load ptr, ptr %150, align 8, !tbaa !10
  %152 = tail call fastcc i32 @insert_store(ptr noundef nonnull %21, ptr noundef %151) #16, !range !12
  %153 = or i32 %152, %134
  %154 = add nsw i32 %133, 1
  %155 = load ptr, ptr @st_insert_map, align 8, !tbaa !10
  %156 = load ptr, ptr @edge_list, align 8, !tbaa !10
  br label %157

157:                                              ; preds = %128, %147
  %158 = phi ptr [ %156, %147 ], [ %129, %128 ]
  %159 = phi ptr [ %155, %147 ], [ %130, %128 ]
  %160 = phi i32 [ %153, %147 ], [ %134, %128 ]
  %161 = phi i32 [ %154, %147 ], [ %133, %128 ]
  %162 = add nuw nsw i64 %131, 1
  %163 = getelementptr inbounds %struct.edge_list, ptr %158, i64 0, i32 1
  %164 = load i32, ptr %163, align 4, !tbaa !13
  %165 = sext i32 %164 to i64
  %166 = icmp slt i64 %162, %165
  br i1 %166, label %128, label %167, !llvm.loop !35

167:                                              ; preds = %157, %83, %55, %58
  %168 = phi ptr [ %67, %58 ], [ %15, %55 ], [ %84, %83 ], [ %158, %157 ]
  %169 = phi ptr [ %67, %58 ], [ %16, %55 ], [ %85, %83 ], [ %158, %157 ]
  %170 = phi ptr [ %67, %58 ], [ %17, %55 ], [ %85, %83 ], [ %158, %157 ]
  %171 = phi i32 [ %20, %58 ], [ %20, %55 ], [ %20, %83 ], [ %160, %157 ]
  %172 = phi i32 [ %19, %58 ], [ %19, %55 ], [ %86, %83 ], [ %86, %157 ]
  %173 = phi i32 [ %18, %58 ], [ %18, %55 ], [ %18, %83 ], [ %161, %157 ]
  %174 = tail call fastcc ptr @next_st_expr(ptr noundef nonnull %21) #16
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %14, !llvm.loop !36

176:                                              ; preds = %167
  %177 = icmp eq i32 %171, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %176
  tail call void @commit_edge_insertions() #15
  br label %179

179:                                              ; preds = %5, %178, %176
  %180 = phi i32 [ %173, %178 ], [ %173, %176 ], [ 0, %5 ]
  %181 = phi i32 [ %172, %178 ], [ %172, %176 ], [ 0, %5 ]
  tail call fastcc void @free_store_memory() #16
  %182 = load ptr, ptr @edge_list, align 8, !tbaa !10
  tail call void @free_edge_list(ptr noundef %182) #15
  tail call void @remove_fake_exit_edges() #15
  tail call void @end_alias_analysis() #15
  %183 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %184 = icmp eq ptr %183, null
  br i1 %184, label %195, label %185

185:                                              ; preds = %179
  %186 = tail call ptr @current_function_name() #15
  %187 = load ptr, ptr @cfun, align 8, !tbaa !10
  %188 = getelementptr inbounds %struct.function, ptr %187, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !28
  %190 = getelementptr inbounds %struct.control_flow_graph, ptr %189, i64 0, i32 3
  %191 = load i32, ptr %190, align 8, !tbaa !37
  %192 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %183, ptr noundef nonnull @.str.2, ptr noundef %186, i32 noundef %191) #16
  %193 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %194 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %193, ptr noundef nonnull @.str.3, i32 noundef %181, i32 noundef %180) #16
  br label %195

195:                                              ; preds = %185, %179
  %196 = icmp sgt i32 %181, 0
  %197 = icmp sgt i32 %180, 0
  %198 = select i1 %196, i1 true, i1 %197
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
define internal fastcc i32 @compute_store_table() unnamed_addr #0 {
  %1 = tail call i32 @max_reg_num() #15
  store ptr null, ptr @store_motion_mems, align 8, !tbaa !10
  %2 = tail call ptr @htab_create(i64 noundef 13, ptr noundef nonnull @pre_st_expr_hash, ptr noundef nonnull @pre_st_expr_eq, ptr noundef null) #15
  store ptr %2, ptr @store_motion_mems_table, align 8, !tbaa !10
  %3 = zext i32 %1 to i64
  %4 = tail call ptr @xcalloc(i64 noundef %3, i64 noundef 4) #15
  %5 = shl nuw nsw i64 %3, 2
  %6 = tail call ptr @xmalloc(i64 noundef %5) #15
  %7 = load ptr, ptr @cfun, align 8, !tbaa !10
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !28
  %10 = load ptr, ptr %9, align 8, !tbaa !30
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !32
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !33
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %25, label %28

16:                                               ; preds = %162, %146
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !32
  %19 = load ptr, ptr @cfun, align 8, !tbaa !10
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !28
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !33
  %24 = icmp eq ptr %18, %23
  br i1 %24, label %25, label %28, !llvm.loop !38

25:                                               ; preds = %16, %0
  %26 = load ptr, ptr @store_motion_mems, align 8, !tbaa !10
  %27 = icmp eq ptr %26, null
  br i1 %27, label %181, label %165

28:                                               ; preds = %0, %16
  %29 = phi ptr [ %18, %16 ], [ %12, %0 ]
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !39
  %32 = load ptr, ptr %31, align 8, !tbaa !39
  %33 = icmp eq ptr %32, null
  br i1 %33, label %75, label %34

34:                                               ; preds = %28
  %35 = load ptr, ptr @df, align 8
  %36 = getelementptr inbounds %struct.df, ptr %35, i64 0, i32 10
  br label %37

37:                                               ; preds = %34, %71
  %38 = phi ptr [ %32, %34 ], [ %73, %71 ]
  %39 = load ptr, ptr %30, align 8, !tbaa !39
  %40 = getelementptr inbounds %struct.rtl_bb_info, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !40
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 0, i64 2
  %43 = load ptr, ptr %42, align 8, !tbaa !39
  %44 = icmp eq ptr %38, %43
  br i1 %44, label %75, label %45

45:                                               ; preds = %37
  %46 = load i32, ptr %38, align 8
  %47 = and i32 %46, 65535
  %48 = add nsw i32 %47, -11
  %49 = icmp ult i32 %48, -3
  br i1 %49, label %71, label %50

50:                                               ; preds = %45
  %51 = load ptr, ptr %36, align 8, !tbaa !42
  %52 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %53 = load i32, ptr %52, align 8, !tbaa !39
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds ptr, ptr %51, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !10
  %57 = getelementptr inbounds %struct.df_insn_info, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !45
  %59 = load ptr, ptr %58, align 8, !tbaa !10
  %60 = icmp eq ptr %59, null
  br i1 %60, label %71, label %61

61:                                               ; preds = %50, %61
  %62 = phi ptr [ %69, %61 ], [ %59, %50 ]
  %63 = phi ptr [ %68, %61 ], [ %58, %50 ]
  %64 = getelementptr inbounds %struct.df_base_ref, ptr %62, i64 0, i32 6
  %65 = load i32, ptr %64, align 8, !tbaa !39
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, ptr %4, i64 %66
  store i32 %53, ptr %67, align 4, !tbaa !6
  %68 = getelementptr inbounds ptr, ptr %63, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !10
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %61, !llvm.loop !47

71:                                               ; preds = %61, %50, %45
  %72 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 2
  %73 = load ptr, ptr %72, align 8, !tbaa !39
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %37, !llvm.loop !48

75:                                               ; preds = %37, %71, %28
  tail call void @llvm.memset.p0.i64(ptr align 4 %6, i8 0, i64 %5, i1 false)
  %76 = load ptr, ptr %30, align 8, !tbaa !39
  %77 = load ptr, ptr %76, align 8, !tbaa !39
  %78 = icmp eq ptr %77, null
  br i1 %78, label %146, label %79

79:                                               ; preds = %75, %142
  %80 = phi ptr [ %144, %142 ], [ %77, %75 ]
  %81 = load ptr, ptr %30, align 8, !tbaa !39
  %82 = getelementptr inbounds %struct.rtl_bb_info, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !40
  %84 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1, i32 0, i32 0, i64 2
  %85 = load ptr, ptr %84, align 8, !tbaa !39
  %86 = icmp eq ptr %80, %85
  br i1 %86, label %146, label %87

87:                                               ; preds = %79
  %88 = load i32, ptr %80, align 8
  %89 = and i32 %88, 65535
  %90 = add nsw i32 %89, -11
  %91 = icmp ult i32 %90, -3
  br i1 %91, label %142, label %92

92:                                               ; preds = %87
  %93 = load ptr, ptr @df, align 8, !tbaa !10
  %94 = getelementptr inbounds %struct.df, ptr %93, i64 0, i32 10
  %95 = load ptr, ptr %94, align 8, !tbaa !42
  %96 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 0, i32 1
  %97 = load i32, ptr %96, align 8, !tbaa !39
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds ptr, ptr %95, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !10
  %101 = getelementptr inbounds %struct.df_insn_info, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !45
  %103 = load ptr, ptr %102, align 8, !tbaa !10
  %104 = icmp eq ptr %103, null
  br i1 %104, label %115, label %105

105:                                              ; preds = %92, %105
  %106 = phi ptr [ %113, %105 ], [ %103, %92 ]
  %107 = phi ptr [ %112, %105 ], [ %102, %92 ]
  %108 = getelementptr inbounds %struct.df_base_ref, ptr %106, i64 0, i32 6
  %109 = load i32, ptr %108, align 8, !tbaa !39
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, ptr %6, i64 %110
  store i32 %97, ptr %111, align 4, !tbaa !6
  %112 = getelementptr inbounds ptr, ptr %107, i64 1
  %113 = load ptr, ptr %112, align 8, !tbaa !10
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %105, !llvm.loop !49

115:                                              ; preds = %105, %92
  tail call fastcc void @find_moveable_store(ptr noundef nonnull %80, ptr noundef %6, ptr noundef %4) #16
  %116 = load ptr, ptr @df, align 8, !tbaa !10
  %117 = getelementptr inbounds %struct.df, ptr %116, i64 0, i32 10
  %118 = load ptr, ptr %117, align 8, !tbaa !42
  %119 = load i32, ptr %96, align 8, !tbaa !39
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds ptr, ptr %118, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !10
  %123 = getelementptr inbounds %struct.df_insn_info, ptr %122, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !45
  %125 = load ptr, ptr %124, align 8, !tbaa !10
  %126 = icmp eq ptr %125, null
  br i1 %126, label %142, label %127

127:                                              ; preds = %115, %138
  %128 = phi ptr [ %140, %138 ], [ %125, %115 ]
  %129 = phi ptr [ %139, %138 ], [ %124, %115 ]
  %130 = getelementptr inbounds %struct.df_base_ref, ptr %128, i64 0, i32 6
  %131 = load i32, ptr %130, align 8, !tbaa !39
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32, ptr %4, i64 %132
  %134 = load i32, ptr %133, align 4, !tbaa !6
  %135 = load i32, ptr %96, align 8, !tbaa !39
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %127
  store i32 0, ptr %133, align 4, !tbaa !6
  br label %138

138:                                              ; preds = %127, %137
  %139 = getelementptr inbounds ptr, ptr %129, i64 1
  %140 = load ptr, ptr %139, align 8, !tbaa !10
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %127, !llvm.loop !50

142:                                              ; preds = %138, %115, %87
  %143 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 0, i32 1, i32 0, i32 0, i64 2
  %144 = load ptr, ptr %143, align 8, !tbaa !39
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %79, !llvm.loop !51

146:                                              ; preds = %79, %142, %75
  %147 = tail call fastcc ptr @first_st_expr() #16
  %148 = icmp eq ptr %147, null
  br i1 %148, label %16, label %149

149:                                              ; preds = %146, %162
  %150 = phi ptr [ %163, %162 ], [ %147, %146 ]
  %151 = getelementptr inbounds %struct.st_expr, ptr %150, i64 0, i32 7
  store ptr null, ptr %151, align 8, !tbaa !52
  %152 = getelementptr inbounds %struct.st_expr, ptr %150, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !53
  %154 = icmp eq ptr %153, null
  br i1 %154, label %162, label %155

155:                                              ; preds = %149
  %156 = getelementptr inbounds %struct.rtx_def, ptr %153, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !39
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.rtx_def, ptr %153, i64 0, i32 1, i32 0, i32 0, i64 1
  %161 = load ptr, ptr %160, align 8, !tbaa !39
  store ptr %161, ptr %152, align 8, !tbaa !53
  br label %162

162:                                              ; preds = %149, %155, %159
  %163 = tail call fastcc ptr @next_st_expr(ptr noundef nonnull %150) #16
  %164 = icmp eq ptr %163, null
  br i1 %164, label %16, label %149, !llvm.loop !54

165:                                              ; preds = %25, %177
  %166 = phi ptr [ %179, %177 ], [ %26, %25 ]
  %167 = phi ptr [ %178, %177 ], [ @store_motion_mems, %25 ]
  %168 = getelementptr inbounds %struct.st_expr, ptr %166, i64 0, i32 3
  %169 = load ptr, ptr %168, align 8, !tbaa !55
  %170 = icmp eq ptr %169, null
  %171 = getelementptr inbounds %struct.st_expr, ptr %166, i64 0, i32 4
  br i1 %170, label %172, label %177

172:                                              ; preds = %165
  %173 = load ptr, ptr %171, align 8, !tbaa !56
  store ptr %173, ptr %167, align 8, !tbaa !10
  %174 = load ptr, ptr @store_motion_mems_table, align 8, !tbaa !10
  %175 = getelementptr inbounds %struct.st_expr, ptr %166, i64 0, i32 6
  %176 = load i32, ptr %175, align 4, !tbaa !57
  tail call void @htab_remove_elt_with_hash(ptr noundef %174, ptr noundef nonnull %166, i32 noundef %176) #15
  tail call fastcc void @free_st_expr_entry(ptr noundef nonnull %166) #16
  br label %177

177:                                              ; preds = %165, %172
  %178 = phi ptr [ %167, %172 ], [ %171, %165 ]
  %179 = load ptr, ptr %178, align 8, !tbaa !10
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %165, !llvm.loop !58

181:                                              ; preds = %177, %25
  %182 = tail call fastcc i32 @enumerate_store_motion_mems() #16
  %183 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %184 = icmp eq ptr %183, null
  br i1 %184, label %186, label %185

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
define internal fastcc void @build_store_vectors() unnamed_addr #0 {
  %1 = tail call i32 @max_reg_num() #15
  %2 = load ptr, ptr @cfun, align 8, !tbaa !10
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !28
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !59
  %7 = load i32, ptr @num_stores, align 4, !tbaa !6
  %8 = tail call ptr @sbitmap_vector_alloc(i32 noundef %6, i32 noundef %7) #15
  store ptr %8, ptr @st_avloc, align 8, !tbaa !10
  %9 = load ptr, ptr @cfun, align 8, !tbaa !10
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !28
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !59
  tail call void @sbitmap_vector_zero(ptr noundef %8, i32 noundef %13) #15
  %14 = load ptr, ptr @cfun, align 8, !tbaa !10
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !28
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !59
  %19 = load i32, ptr @num_stores, align 4, !tbaa !6
  %20 = tail call ptr @sbitmap_vector_alloc(i32 noundef %18, i32 noundef %19) #15
  store ptr %20, ptr @st_antloc, align 8, !tbaa !10
  %21 = load ptr, ptr @cfun, align 8, !tbaa !10
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !28
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !59
  tail call void @sbitmap_vector_zero(ptr noundef %20, i32 noundef %25) #15
  %26 = tail call fastcc ptr @first_st_expr() #16
  %27 = icmp eq ptr %26, null
  br i1 %27, label %99, label %28

28:                                               ; preds = %0, %96
  %29 = phi ptr [ %97, %96 ], [ %26, %0 ]
  %30 = getelementptr inbounds %struct.st_expr, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !39
  %32 = icmp eq ptr %31, null
  br i1 %32, label %74, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.st_expr, ptr %29, i64 0, i32 5
  %35 = load ptr, ptr @st_avloc, align 8, !tbaa !10
  br label %36

36:                                               ; preds = %33, %69
  %37 = phi ptr [ %35, %33 ], [ %70, %69 ]
  %38 = phi ptr [ %31, %33 ], [ %72, %69 ]
  %39 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !39
  %41 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !39
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 9
  %44 = load i32, ptr %43, align 8, !tbaa !25
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds ptr, ptr %37, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !10
  %48 = load i32, ptr %34, align 8, !tbaa !15
  %49 = lshr i32 %48, 6
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds %struct.simple_bitmap_def, ptr %47, i64 0, i32 3, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !17
  %53 = and i32 %48, 63
  %54 = zext nneg i32 %53 to i64
  %55 = shl nuw i64 1, %54
  %56 = and i64 %55, %52
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %36
  %59 = load ptr, ptr %29, align 8, !tbaa !60
  %60 = tail call ptr @gen_reg_rtx_and_attrs(ptr noundef %59) #15
  %61 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %58
  %64 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 26, i64 1, ptr nonnull %61)
  br label %65

65:                                               ; preds = %63, %58
  %66 = load ptr, ptr %39, align 8, !tbaa !39
  tail call fastcc void @replace_store_insn(ptr noundef %60, ptr noundef %66, ptr noundef nonnull %42, ptr noundef nonnull %29) #16
  %67 = load ptr, ptr @st_avloc, align 8, !tbaa !10
  br label %69

68:                                               ; preds = %36
  tail call fastcc void @SET_BIT(ptr noundef nonnull %47, i32 noundef %48) #16
  br label %69

69:                                               ; preds = %68, %65
  %70 = phi ptr [ %37, %68 ], [ %67, %65 ]
  %71 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !39
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %36, !llvm.loop !61

74:                                               ; preds = %69, %28
  %75 = getelementptr inbounds %struct.st_expr, ptr %29, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !39
  %77 = icmp eq ptr %76, null
  br i1 %77, label %96, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr @st_antloc, align 8, !tbaa !10
  %80 = getelementptr inbounds %struct.st_expr, ptr %29, i64 0, i32 5
  br label %81

81:                                               ; preds = %78, %81
  %82 = phi ptr [ %76, %78 ], [ %94, %81 ]
  %83 = getelementptr inbounds %struct.rtx_def, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !39
  %85 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1, i32 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !39
  %87 = getelementptr inbounds %struct.basic_block_def, ptr %86, i64 0, i32 9
  %88 = load i32, ptr %87, align 8, !tbaa !25
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds ptr, ptr %79, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !10
  %92 = load i32, ptr %80, align 8, !tbaa !15
  tail call fastcc void @SET_BIT(ptr noundef %91, i32 noundef %92) #16
  %93 = getelementptr inbounds %struct.rtx_def, ptr %82, i64 0, i32 1, i32 0, i32 0, i64 1
  %94 = load ptr, ptr %93, align 8, !tbaa !39
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %81, !llvm.loop !62

96:                                               ; preds = %81, %74
  %97 = tail call fastcc ptr @next_st_expr(ptr noundef nonnull %29) #16
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %28, !llvm.loop !63

99:                                               ; preds = %96, %0
  %100 = load ptr, ptr @cfun, align 8, !tbaa !10
  %101 = getelementptr inbounds %struct.function, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !28
  %103 = getelementptr inbounds %struct.control_flow_graph, ptr %102, i64 0, i32 5
  %104 = load i32, ptr %103, align 8, !tbaa !59
  %105 = load i32, ptr @num_stores, align 4, !tbaa !6
  %106 = tail call ptr @sbitmap_vector_alloc(i32 noundef %104, i32 noundef %105) #15
  store ptr %106, ptr @st_kill, align 8, !tbaa !10
  %107 = load ptr, ptr @cfun, align 8, !tbaa !10
  %108 = getelementptr inbounds %struct.function, ptr %107, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !28
  %110 = getelementptr inbounds %struct.control_flow_graph, ptr %109, i64 0, i32 5
  %111 = load i32, ptr %110, align 8, !tbaa !59
  tail call void @sbitmap_vector_zero(ptr noundef %106, i32 noundef %111) #15
  %112 = load ptr, ptr @cfun, align 8, !tbaa !10
  %113 = getelementptr inbounds %struct.function, ptr %112, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !28
  %115 = getelementptr inbounds %struct.control_flow_graph, ptr %114, i64 0, i32 5
  %116 = load i32, ptr %115, align 8, !tbaa !59
  %117 = load i32, ptr @num_stores, align 4, !tbaa !6
  %118 = tail call ptr @sbitmap_vector_alloc(i32 noundef %116, i32 noundef %117) #15
  store ptr %118, ptr @st_transp, align 8, !tbaa !10
  %119 = load ptr, ptr @cfun, align 8, !tbaa !10
  %120 = getelementptr inbounds %struct.function, ptr %119, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !28
  %122 = getelementptr inbounds %struct.control_flow_graph, ptr %121, i64 0, i32 5
  %123 = load i32, ptr %122, align 8, !tbaa !59
  tail call void @sbitmap_vector_zero(ptr noundef %118, i32 noundef %123) #15
  %124 = zext i32 %1 to i64
  %125 = shl nuw nsw i64 %124, 2
  %126 = tail call ptr @xmalloc(i64 noundef %125) #15
  %127 = load ptr, ptr @cfun, align 8, !tbaa !10
  %128 = getelementptr inbounds %struct.function, ptr %127, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !28
  %130 = load ptr, ptr %129, align 8, !tbaa !30
  %131 = getelementptr inbounds %struct.basic_block_def, ptr %130, i64 0, i32 6
  %132 = load ptr, ptr %131, align 8, !tbaa !32
  %133 = getelementptr inbounds %struct.control_flow_graph, ptr %129, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !33
  %135 = icmp eq ptr %132, %134
  br i1 %135, label %242, label %145

136:                                              ; preds = %239, %195
  %137 = getelementptr inbounds %struct.basic_block_def, ptr %146, i64 0, i32 6
  %138 = load ptr, ptr %137, align 8, !tbaa !32
  %139 = load ptr, ptr @cfun, align 8, !tbaa !10
  %140 = getelementptr inbounds %struct.function, ptr %139, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !28
  %142 = getelementptr inbounds %struct.control_flow_graph, ptr %141, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !33
  %144 = icmp eq ptr %138, %143
  br i1 %144, label %242, label %145, !llvm.loop !64

145:                                              ; preds = %99, %136
  %146 = phi ptr [ %138, %136 ], [ %132, %99 ]
  tail call void @llvm.memset.p0.i64(ptr align 4 %126, i8 0, i64 %125, i1 false)
  %147 = getelementptr inbounds %struct.basic_block_def, ptr %146, i64 0, i32 7
  %148 = load ptr, ptr %147, align 8, !tbaa !39
  %149 = load ptr, ptr %148, align 8, !tbaa !39
  %150 = icmp eq ptr %149, null
  br i1 %150, label %195, label %151

151:                                              ; preds = %145
  %152 = load ptr, ptr @df, align 8
  %153 = getelementptr inbounds %struct.df, ptr %152, i64 0, i32 10
  br label %154

154:                                              ; preds = %151, %191
  %155 = phi ptr [ %149, %151 ], [ %193, %191 ]
  %156 = load ptr, ptr %147, align 8, !tbaa !39
  %157 = getelementptr inbounds %struct.rtl_bb_info, ptr %156, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !40
  %159 = getelementptr inbounds %struct.rtx_def, ptr %158, i64 0, i32 1, i32 0, i32 0, i64 2
  %160 = load ptr, ptr %159, align 8, !tbaa !39
  %161 = icmp eq ptr %155, %160
  br i1 %161, label %195, label %162

162:                                              ; preds = %154
  %163 = load i32, ptr %155, align 8
  %164 = and i32 %163, 65535
  %165 = add nsw i32 %164, -11
  %166 = icmp ult i32 %165, -3
  br i1 %166, label %191, label %167

167:                                              ; preds = %162
  %168 = load ptr, ptr %153, align 8, !tbaa !42
  %169 = getelementptr inbounds %struct.rtx_def, ptr %155, i64 0, i32 1
  %170 = load i32, ptr %169, align 8, !tbaa !39
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds ptr, ptr %168, i64 %171
  %173 = load ptr, ptr %172, align 8, !tbaa !10
  %174 = getelementptr inbounds %struct.df_insn_info, ptr %173, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !45
  %176 = load ptr, ptr %175, align 8, !tbaa !10
  %177 = icmp eq ptr %176, null
  br i1 %177, label %191, label %178

178:                                              ; preds = %167, %187
  %179 = phi ptr [ %189, %187 ], [ %176, %167 ]
  %180 = phi ptr [ %188, %187 ], [ %175, %167 ]
  %181 = getelementptr inbounds %struct.df_base_ref, ptr %179, i64 0, i32 6
  %182 = load i32, ptr %181, align 8, !tbaa !39
  %183 = icmp ult i32 %182, %1
  br i1 %183, label %184, label %187

184:                                              ; preds = %178
  %185 = zext i32 %182 to i64
  %186 = getelementptr inbounds i32, ptr %126, i64 %185
  store i32 1, ptr %186, align 4, !tbaa !6
  br label %187

187:                                              ; preds = %184, %178
  %188 = getelementptr inbounds ptr, ptr %180, i64 1
  %189 = load ptr, ptr %188, align 8, !tbaa !10
  %190 = icmp eq ptr %189, null
  br i1 %190, label %191, label %178, !llvm.loop !65

191:                                              ; preds = %187, %167, %162
  %192 = getelementptr inbounds %struct.rtx_def, ptr %155, i64 0, i32 1, i32 0, i32 0, i64 2
  %193 = load ptr, ptr %192, align 8, !tbaa !39
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %154, !llvm.loop !66

195:                                              ; preds = %154, %191, %145
  %196 = tail call fastcc ptr @first_st_expr() #16
  %197 = icmp eq ptr %196, null
  br i1 %197, label %136, label %198

198:                                              ; preds = %195
  %199 = getelementptr inbounds %struct.basic_block_def, ptr %146, i64 0, i32 9
  br label %200

200:                                              ; preds = %198, %239
  %201 = phi ptr [ %196, %198 ], [ %240, %239 ]
  %202 = load ptr, ptr %201, align 8, !tbaa !60
  %203 = getelementptr inbounds %struct.st_expr, ptr %201, i64 0, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !67
  %205 = load ptr, ptr %147, align 8, !tbaa !39
  %206 = load ptr, ptr %205, align 8, !tbaa !68
  %207 = tail call fastcc zeroext i8 @store_killed_after(ptr noundef %202, ptr noundef %204, ptr noundef %206, ptr noundef %146, ptr noundef %126, ptr noundef null) #16, !range !69
  %208 = icmp eq i8 %207, 0
  %209 = load i32, ptr %199, align 8, !tbaa !25
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.st_expr, ptr %201, i64 0, i32 5
  %212 = load i32, ptr %211, align 8, !tbaa !15
  br i1 %208, label %234, label %213

213:                                              ; preds = %200
  %214 = load ptr, ptr @st_antloc, align 8, !tbaa !10
  %215 = getelementptr inbounds ptr, ptr %214, i64 %210
  %216 = load ptr, ptr %215, align 8, !tbaa !10
  %217 = lshr i32 %212, 6
  %218 = zext nneg i32 %217 to i64
  %219 = getelementptr inbounds %struct.simple_bitmap_def, ptr %216, i64 0, i32 3, i64 %218
  %220 = load i64, ptr %219, align 8, !tbaa !17
  %221 = and i32 %212, 63
  %222 = zext nneg i32 %221 to i64
  %223 = shl nuw i64 1, %222
  %224 = and i64 %223, %220
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %234, label %226

226:                                              ; preds = %213
  %227 = load ptr, ptr @st_avloc, align 8, !tbaa !10
  %228 = getelementptr inbounds ptr, ptr %227, i64 %210
  %229 = load ptr, ptr %228, align 8, !tbaa !10
  %230 = getelementptr inbounds %struct.simple_bitmap_def, ptr %229, i64 0, i32 3, i64 %218
  %231 = load i64, ptr %230, align 8, !tbaa !17
  %232 = and i64 %231, %223
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %239

234:                                              ; preds = %200, %213, %226
  %235 = phi ptr [ @st_kill, %226 ], [ @st_kill, %213 ], [ @st_transp, %200 ]
  %236 = load ptr, ptr %235, align 8, !tbaa !10
  %237 = getelementptr inbounds ptr, ptr %236, i64 %210
  %238 = load ptr, ptr %237, align 8, !tbaa !10
  tail call fastcc void @SET_BIT(ptr noundef %238, i32 noundef %212) #16
  br label %239

239:                                              ; preds = %234, %226
  %240 = tail call fastcc ptr @next_st_expr(ptr noundef nonnull %201) #16
  %241 = icmp eq ptr %240, null
  br i1 %241, label %136, label %200, !llvm.loop !70

242:                                              ; preds = %136, %99
  tail call void @free(ptr noundef %126) #16
  %243 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %244 = icmp eq ptr %243, null
  br i1 %244, label %273, label %245

245:                                              ; preds = %242
  %246 = load ptr, ptr @st_antloc, align 8, !tbaa !10
  %247 = load ptr, ptr @cfun, align 8, !tbaa !10
  %248 = getelementptr inbounds %struct.function, ptr %247, i64 0, i32 1
  %249 = load ptr, ptr %248, align 8, !tbaa !28
  %250 = getelementptr inbounds %struct.control_flow_graph, ptr %249, i64 0, i32 5
  %251 = load i32, ptr %250, align 8, !tbaa !59
  tail call void @dump_sbitmap_vector(ptr noundef nonnull %243, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef %246, i32 noundef %251) #15
  %252 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %253 = load ptr, ptr @st_kill, align 8, !tbaa !10
  %254 = load ptr, ptr @cfun, align 8, !tbaa !10
  %255 = getelementptr inbounds %struct.function, ptr %254, i64 0, i32 1
  %256 = load ptr, ptr %255, align 8, !tbaa !28
  %257 = getelementptr inbounds %struct.control_flow_graph, ptr %256, i64 0, i32 5
  %258 = load i32, ptr %257, align 8, !tbaa !59
  tail call void @dump_sbitmap_vector(ptr noundef %252, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, ptr noundef %253, i32 noundef %258) #15
  %259 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %260 = load ptr, ptr @st_transp, align 8, !tbaa !10
  %261 = load ptr, ptr @cfun, align 8, !tbaa !10
  %262 = getelementptr inbounds %struct.function, ptr %261, i64 0, i32 1
  %263 = load ptr, ptr %262, align 8, !tbaa !28
  %264 = getelementptr inbounds %struct.control_flow_graph, ptr %263, i64 0, i32 5
  %265 = load i32, ptr %264, align 8, !tbaa !59
  tail call void @dump_sbitmap_vector(ptr noundef %259, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, ptr noundef %260, i32 noundef %265) #15
  %266 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %267 = load ptr, ptr @st_avloc, align 8, !tbaa !10
  %268 = load ptr, ptr @cfun, align 8, !tbaa !10
  %269 = getelementptr inbounds %struct.function, ptr %268, i64 0, i32 1
  %270 = load ptr, ptr %269, align 8, !tbaa !28
  %271 = getelementptr inbounds %struct.control_flow_graph, ptr %270, i64 0, i32 5
  %272 = load i32, ptr %271, align 8, !tbaa !59
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
define internal fastcc ptr @first_st_expr() unnamed_addr #3 {
  %1 = load ptr, ptr @store_motion_mems, align 8, !tbaa !10
  ret ptr %1
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_store(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.st_expr, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !60
  %8 = tail call ptr @gen_reg_rtx_and_attrs(ptr noundef %7) #15
  store ptr %8, ptr %3, align 8, !tbaa !52
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi ptr [ %8, %6 ], [ %4, %2 ]
  %11 = getelementptr inbounds %struct.st_expr, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !39
  %13 = icmp eq ptr %12, null
  br i1 %13, label %26, label %18

14:                                               ; preds = %18
  %15 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !39
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18, !llvm.loop !71

18:                                               ; preds = %9, %14
  %19 = phi ptr [ %16, %14 ], [ %12, %9 ]
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !39
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !39
  %24 = icmp eq ptr %23, %1
  br i1 %24, label %25, label %14

25:                                               ; preds = %18
  tail call fastcc void @replace_store_insn(ptr noundef %10, ptr noundef nonnull %21, ptr noundef %1, ptr noundef %0) #16
  br label %26

26:                                               ; preds = %14, %9, %25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @insert_store(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  %5 = getelementptr inbounds %struct.st_expr, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = icmp eq ptr %6, null
  br i1 %7, label %112, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !20
  %11 = and i32 %10, 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %112

13:                                               ; preds = %8
  %14 = load ptr, ptr %0, align 8, !tbaa !60
  %15 = tail call ptr @copy_rtx(ptr noundef %14) #15
  %16 = tail call ptr @gen_move_insn(ptr noundef %15, ptr noundef nonnull %6) #15
  %17 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !27
  %19 = tail call fastcc ptr @ei_start_1(ptr noundef %18) #16
  store i32 0, ptr %4, align 8, !tbaa.struct !72
  %20 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %19, ptr %20, align 8, !tbaa.struct !73
  %21 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %19, ptr noundef nonnull %3) #16, !range !69
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %59, label %23

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.st_expr, ptr %0, i64 0, i32 5
  br label %25

25:                                               ; preds = %23, %54
  %26 = load ptr, ptr %3, align 8, !tbaa !10
  %27 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 7
  %28 = load i32, ptr %27, align 8, !tbaa !20
  %29 = and i32 %28, 16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %25
  %32 = load ptr, ptr @edge_list, align 8, !tbaa !10
  %33 = load ptr, ptr %26, align 8, !tbaa !24
  %34 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !27
  %36 = tail call i32 @find_edge_index(ptr noundef %32, ptr noundef %33, ptr noundef %35) #15
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 807, ptr noundef nonnull @.str.21) #15
  br label %39

39:                                               ; preds = %31, %38
  %40 = load ptr, ptr @st_insert_map, align 8, !tbaa !10
  %41 = sext i32 %36 to i64
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !10
  %44 = load i32, ptr %24, align 8, !tbaa !15
  %45 = lshr i32 %44, 6
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds %struct.simple_bitmap_def, ptr %43, i64 0, i32 3, i64 %46
  %48 = load i64, ptr %47, align 8, !tbaa !17
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
  %57 = call fastcc zeroext i8 @ei_cond(i32 %55, ptr %56, ptr noundef nonnull %3) #16, !range !69
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %25, !llvm.loop !74

59:                                               ; preds = %54, %39, %13
  %60 = load ptr, ptr %3, align 8, !tbaa !10
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %93

62:                                               ; preds = %59
  %63 = load ptr, ptr @cfun, align 8, !tbaa !10
  %64 = getelementptr inbounds %struct.function, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !28
  %66 = getelementptr inbounds %struct.control_flow_graph, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !33
  %68 = icmp eq ptr %18, %67
  br i1 %68, label %93, label %69

69:                                               ; preds = %62
  %70 = load ptr, ptr %17, align 8, !tbaa !27
  %71 = tail call fastcc ptr @ei_start_1(ptr noundef %70) #16
  store i32 0, ptr %4, align 8, !tbaa.struct !72
  store ptr %71, ptr %20, align 8, !tbaa.struct !73
  %72 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %71, ptr noundef nonnull %3) #16, !range !69
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %92, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.st_expr, ptr %0, i64 0, i32 5
  br label %76

76:                                               ; preds = %74, %76
  %77 = load ptr, ptr @edge_list, align 8, !tbaa !10
  %78 = load ptr, ptr %3, align 8, !tbaa !10
  %79 = load ptr, ptr %78, align 8, !tbaa !24
  %80 = getelementptr inbounds %struct.edge_def, ptr %78, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !27
  %82 = tail call i32 @find_edge_index(ptr noundef %77, ptr noundef %79, ptr noundef %81) #15
  %83 = load ptr, ptr @st_insert_map, align 8, !tbaa !10
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds ptr, ptr %83, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !10
  %87 = load i32, ptr %75, align 8, !tbaa !15
  tail call fastcc void @RESET_BIT(ptr noundef %86, i32 noundef %87) #16
  call fastcc void @ei_next(ptr noundef nonnull %4) #16
  %88 = load i32, ptr %4, align 8
  %89 = load ptr, ptr %20, align 8
  %90 = call fastcc zeroext i8 @ei_cond(i32 %88, ptr %89, ptr noundef nonnull %3) #16, !range !69
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %76, !llvm.loop !75

92:                                               ; preds = %76, %69
  tail call fastcc void @insert_insn_start_basic_block(ptr noundef %16, ptr noundef %18) #16
  br label %112

93:                                               ; preds = %62, %59
  %94 = load i32, ptr %9, align 8, !tbaa !20
  %95 = and i32 %94, 2
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  tail call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 827, ptr noundef nonnull @.str.21) #15
  br label %98

98:                                               ; preds = %93, %97
  tail call void @insert_insn_on_edge(ptr noundef %16, ptr noundef nonnull %1) #15
  %99 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %100 = icmp eq ptr %99, null
  br i1 %100, label %112, label %101

101:                                              ; preds = %98
  %102 = load ptr, ptr %1, align 8, !tbaa !24
  %103 = getelementptr inbounds %struct.basic_block_def, ptr %102, i64 0, i32 9
  %104 = load i32, ptr %103, align 8, !tbaa !25
  %105 = load ptr, ptr %17, align 8, !tbaa !27
  %106 = getelementptr inbounds %struct.basic_block_def, ptr %105, i64 0, i32 9
  %107 = load i32, ptr %106, align 8, !tbaa !25
  %108 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %99, ptr noundef nonnull @.str.23, i32 noundef %104, i32 noundef %107) #16
  %109 = load ptr, ptr @dump_file, align 8, !tbaa !10
  tail call void @print_inline_rtx(ptr noundef %109, ptr noundef %16, i32 noundef 6) #15
  %110 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %111 = tail call i32 @fputc(i32 10, ptr %110)
  br label %112

112:                                              ; preds = %98, %101, %8, %2, %92
  %113 = phi i32 [ 0, %92 ], [ 0, %2 ], [ 0, %8 ], [ 1, %101 ], [ 1, %98 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret i32 %113
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @next_st_expr(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.st_expr, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  ret ptr %3
}

; Function Attrs: optsize
declare void @commit_edge_insertions() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_store_memory() unnamed_addr #0 {
  tail call fastcc void @free_store_motion_mems() #16
  %1 = load ptr, ptr @st_avloc, align 8, !tbaa !10
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #16
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @st_kill, align 8, !tbaa !10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @free(ptr noundef nonnull %5) #16
  br label %8

8:                                                ; preds = %7, %4
  %9 = load ptr, ptr @st_transp, align 8, !tbaa !10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @free(ptr noundef nonnull %9) #16
  br label %12

12:                                               ; preds = %11, %8
  %13 = load ptr, ptr @st_antloc, align 8, !tbaa !10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @free(ptr noundef nonnull %13) #16
  br label %16

16:                                               ; preds = %15, %12
  %17 = load ptr, ptr @st_insert_map, align 8, !tbaa !10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @free(ptr noundef nonnull %17) #16
  br label %20

20:                                               ; preds = %19, %16
  %21 = load ptr, ptr @st_delete_map, align 8, !tbaa !10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @free(ptr noundef nonnull %21) #16
  br label %24

24:                                               ; preds = %23, %20
  store ptr null, ptr @st_antloc, align 8, !tbaa !10
  store ptr null, ptr @st_transp, align 8, !tbaa !10
  store ptr null, ptr @st_kill, align 8, !tbaa !10
  store ptr null, ptr @st_avloc, align 8, !tbaa !10
  store ptr null, ptr @st_delete_map, align 8, !tbaa !10
  store ptr null, ptr @st_insert_map, align 8, !tbaa !10
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
define internal i32 @pre_st_expr_hash(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  store i32 0, ptr %2, align 4, !tbaa !6
  %3 = load ptr, ptr %0, align 8, !tbaa !60
  %4 = load i32, ptr %3, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = call i32 @hash_rtx(ptr noundef nonnull %3, i32 noundef %6, ptr noundef nonnull %2, ptr noundef null, i8 noundef zeroext 0) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @pre_st_expr_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !60
  %4 = load ptr, ptr %1, align 8, !tbaa !60
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
define internal fastcc void @find_moveable_store(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !39
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = add nsw i32 %7, -7
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %10, label %108

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !39
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 23
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %12) #15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %108, label %19

19:                                               ; preds = %10, %16
  %20 = phi ptr [ %17, %16 ], [ %12, %10 ]
  %21 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !39
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 134283263
  %25 = icmp ne i32 %24, 43
  %26 = and i32 %23, 16711680
  %27 = icmp eq i32 %26, 65536
  %28 = or i1 %25, %27
  br i1 %28, label %108, label %29

29:                                               ; preds = %19
  %30 = tail call i32 @side_effects_p(ptr noundef nonnull %22) #15
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %108

32:                                               ; preds = %29
  %33 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !6
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = tail call i32 @may_trap_p(ptr noundef nonnull %22) #15
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %108

38:                                               ; preds = %35, %32
  %39 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 25, ptr noundef null) #15
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %108

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !39
  %44 = tail call zeroext i8 @can_assign_to_reg_without_clobbers_p(ptr noundef %43) #15
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %108, label %46

46:                                               ; preds = %41
  %47 = tail call fastcc ptr @st_expr_entry(ptr noundef nonnull %22) #16
  %48 = getelementptr inbounds %struct.st_expr, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !67
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = tail call fastcc ptr @extract_mentioned_regs(ptr noundef nonnull %22) #16
  store ptr %52, ptr %48, align 8, !tbaa !67
  br label %53

53:                                               ; preds = %51, %46
  %54 = phi ptr [ %52, %51 ], [ %49, %46 ]
  %55 = getelementptr inbounds %struct.st_expr, ptr %47, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !53
  %57 = icmp eq ptr %56, null
  br i1 %57, label %66, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !39
  %61 = icmp eq ptr %60, null
  br i1 %61, label %72, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !39
  %65 = icmp eq ptr %64, %5
  br i1 %65, label %72, label %66

66:                                               ; preds = %53, %62
  %67 = tail call fastcc zeroext i8 @store_killed_before(ptr noundef nonnull %22, ptr noundef %54, ptr noundef nonnull %0, ptr noundef %5, ptr noundef %1) #16, !range !69
  %68 = icmp eq i8 %67, 0
  %69 = select i1 %68, ptr %0, ptr null
  %70 = load ptr, ptr %55, align 8, !tbaa !53
  %71 = tail call ptr @alloc_INSN_LIST(ptr noundef %69, ptr noundef %70) #15
  store ptr %71, ptr %55, align 8, !tbaa !53
  br label %72

72:                                               ; preds = %58, %66, %62
  %73 = getelementptr inbounds %struct.st_expr, ptr %47, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !55
  %75 = icmp eq ptr %74, null
  br i1 %75, label %82, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !39
  %79 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1, i32 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !39
  %81 = icmp eq ptr %80, %5
  br i1 %81, label %105, label %82

82:                                               ; preds = %72, %76
  %83 = getelementptr inbounds %struct.st_expr, ptr %47, i64 0, i32 7
  %84 = load ptr, ptr %83, align 8, !tbaa !52
  %85 = icmp eq ptr %84, null
  br i1 %85, label %99, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 7
  %88 = load ptr, ptr %87, align 8, !tbaa !39
  %89 = getelementptr inbounds %struct.rtl_bb_info, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !39
  %91 = icmp eq ptr %90, %0
  br i1 %91, label %105, label %96

92:                                               ; preds = %96
  %93 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1, i32 0, i32 0, i64 1
  %94 = load ptr, ptr %93, align 8, !tbaa !39
  %95 = icmp eq ptr %94, %0
  br i1 %95, label %105, label %96, !llvm.loop !76

96:                                               ; preds = %86, %92
  %97 = phi ptr [ %94, %92 ], [ %90, %86 ]
  %98 = icmp eq ptr %97, %84
  br i1 %98, label %108, label %92

99:                                               ; preds = %82
  %100 = load ptr, ptr %48, align 8, !tbaa !67
  %101 = tail call fastcc zeroext i8 @store_killed_after(ptr noundef nonnull %22, ptr noundef %100, ptr noundef nonnull %0, ptr noundef %5, ptr noundef %2, ptr noundef nonnull %83) #16, !range !69
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load ptr, ptr %73, align 8, !tbaa !55
  br label %105

105:                                              ; preds = %92, %103, %86, %76
  %106 = phi ptr [ %104, %103 ], [ %74, %86 ], [ %74, %76 ], [ %74, %92 ]
  %107 = tail call ptr @alloc_INSN_LIST(ptr noundef nonnull %0, ptr noundef %106) #15
  store ptr %107, ptr %73, align 8, !tbaa !55
  br label %108

108:                                              ; preds = %96, %3, %99, %105, %41, %38, %35, %29, %19, %16
  ret void
}

; Function Attrs: optsize
declare void @htab_remove_elt_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_st_expr_entry(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.st_expr, ptr %0, i64 0, i32 2
  tail call void @free_INSN_LIST_list(ptr noundef nonnull %2) #15
  %3 = getelementptr inbounds %struct.st_expr, ptr %0, i64 0, i32 3
  tail call void @free_INSN_LIST_list(ptr noundef nonnull %3) #15
  tail call void @free(ptr noundef %0) #16
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @enumerate_store_motion_mems() unnamed_addr #7 {
  %1 = load ptr, ptr @store_motion_mems, align 8, !tbaa !10
  %2 = icmp eq ptr %1, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %0, %3
  %4 = phi ptr [ %9, %3 ], [ %1, %0 ]
  %5 = phi i32 [ %6, %3 ], [ 0, %0 ]
  %6 = add nuw nsw i32 %5, 1
  %7 = getelementptr inbounds %struct.st_expr, ptr %4, i64 0, i32 5
  store i32 %5, ptr %7, align 8, !tbaa !15
  %8 = getelementptr inbounds %struct.st_expr, ptr %4, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %3, !llvm.loop !77

11:                                               ; preds = %3, %0
  %12 = phi i32 [ 0, %0 ], [ %6, %3 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_store_motion_mems(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %3 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 43, i64 1, ptr %2)
  %4 = tail call fastcc ptr @first_st_expr() #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %1, %27
  %7 = phi ptr [ %29, %27 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.st_expr, ptr %7, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !15
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %9) #16
  %11 = load ptr, ptr %7, align 8, !tbaa !60
  tail call void @print_rtl(ptr noundef %0, ptr noundef %11) #15
  %12 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 18, i64 1, ptr %0)
  %13 = getelementptr inbounds %struct.st_expr, ptr %7, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !53
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
  %22 = load ptr, ptr %21, align 8, !tbaa !55
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
  br i1 %30, label %31, label %6, !llvm.loop !78

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
define internal fastcc ptr @st_expr_entry(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.st_expr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  store i32 0, ptr %2, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #17
  %4 = load i32, ptr %0, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = call i32 @hash_rtx(ptr noundef nonnull %0, i32 noundef %6, ptr noundef nonnull %2, ptr noundef null, i8 noundef zeroext 0) #15
  store ptr %0, ptr %3, align 8, !tbaa !60
  %8 = load ptr, ptr @store_motion_mems_table, align 8, !tbaa !10
  %9 = call ptr @htab_find_slot_with_hash(ptr noundef %8, ptr noundef nonnull %3, i32 noundef %7, i32 noundef 1) #15
  %10 = load ptr, ptr %9, align 8, !tbaa !10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = call ptr @xmalloc(i64 noundef 56) #15
  %14 = load ptr, ptr @store_motion_mems, align 8, !tbaa !10
  %15 = getelementptr inbounds %struct.st_expr, ptr %13, i64 0, i32 4
  store ptr %14, ptr %15, align 8, !tbaa !56
  store ptr %0, ptr %13, align 8, !tbaa !60
  %16 = getelementptr inbounds %struct.st_expr, ptr %13, i64 0, i32 1
  %17 = getelementptr inbounds %struct.st_expr, ptr %13, i64 0, i32 7
  store ptr null, ptr %17, align 8, !tbaa !52
  %18 = getelementptr inbounds %struct.st_expr, ptr %13, i64 0, i32 5
  store i32 0, ptr %18, align 8, !tbaa !15
  %19 = getelementptr inbounds %struct.st_expr, ptr %13, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  store i32 %7, ptr %19, align 4, !tbaa !57
  store ptr %13, ptr @store_motion_mems, align 8, !tbaa !10
  store ptr %13, ptr %9, align 8, !tbaa !10
  br label %20

20:                                               ; preds = %1, %12
  %21 = phi ptr [ %13, %12 ], [ %10, %1 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @extract_mentioned_regs(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  store ptr null, ptr %3, align 8, !tbaa !10
  %4 = call i32 @for_each_rtx(ptr noundef nonnull %2, ptr noundef nonnull @extract_mentioned_regs_1, ptr noundef nonnull %3) #15
  %5 = load ptr, ptr %3, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @store_killed_before(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = tail call fastcc zeroext i8 @store_ops_ok(ptr noundef %1, ptr noundef %4) #16, !range !69
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !39
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  %12 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !39
  %14 = icmp eq ptr %13, %2
  br i1 %14, label %24, label %15

15:                                               ; preds = %8, %19
  %16 = phi ptr [ %21, %19 ], [ %2, %8 ]
  %17 = tail call fastcc zeroext i8 @store_killed_in_insn(ptr noundef %0, ptr noundef %1, ptr noundef %16, i32 noundef 1) #16, !range !69
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !39
  %22 = load ptr, ptr %12, align 8, !tbaa !39
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %24, label %15, !llvm.loop !79

24:                                               ; preds = %15, %19, %8, %5
  %25 = phi i8 [ 1, %5 ], [ 0, %8 ], [ 1, %15 ], [ 0, %19 ]
  ret i8 %25
}

; Function Attrs: optsize
declare ptr @alloc_INSN_LIST(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @store_killed_after(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr noundef writeonly %5) unnamed_addr #0 {
  %7 = tail call fastcc zeroext i8 @store_ops_ok(ptr noundef %1, ptr noundef %4) #16, !range !69
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !39
  %12 = getelementptr inbounds %struct.rtl_bb_info, ptr %11, i64 0, i32 1
  %13 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %12, align 8, !tbaa !39
  %15 = load ptr, ptr %13, align 8, !tbaa !39
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %32, label %19

17:                                               ; preds = %6
  %18 = icmp eq ptr %5, null
  br i1 %18, label %32, label %30

19:                                               ; preds = %9, %25
  %20 = phi ptr [ %27, %25 ], [ %14, %9 ]
  %21 = tail call fastcc zeroext i8 @store_killed_in_insn(ptr noundef %0, ptr noundef %1, ptr noundef %20, i32 noundef 0) #16, !range !69
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = icmp eq ptr %5, null
  br i1 %24, label %32, label %30

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !39
  %28 = load ptr, ptr %13, align 8, !tbaa !39
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %32, label %19, !llvm.loop !80

30:                                               ; preds = %23, %17
  %31 = phi ptr [ null, %17 ], [ %20, %23 ]
  store ptr %31, ptr %5, align 8, !tbaa !10
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
define internal noundef i32 @extract_mentioned_regs_1(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !10
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 8, !tbaa !10
  %9 = tail call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef nonnull %3, ptr noundef %8) #15
  store ptr %9, ptr %1, align 8, !tbaa !10
  br label %10

10:                                               ; preds = %7, %2
  ret i32 0
}

; Function Attrs: optsize
declare ptr @alloc_EXPR_LIST(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @store_ops_ok(ptr noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2, %13
  %5 = phi ptr [ %15, %13 ], [ %0, %2 ]
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !39
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef %7) #16
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %1, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !39
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %4, !llvm.loop !81

17:                                               ; preds = %4, %13, %2
  %18 = phi i8 [ 1, %2 ], [ 1, %13 ], [ 0, %4 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @store_killed_in_insn(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load i32, ptr %2, align 8
  %6 = and i32 %5, 65535
  %7 = add nsw i32 %6, -7
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %9, label %73

9:                                                ; preds = %4
  switch i32 %6, label %34 [
    i32 7, label %73
    i32 10, label %10
  ]

10:                                               ; preds = %9
  %11 = and i32 %5, 67108864
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %73, label %13

13:                                               ; preds = %10
  %14 = icmp eq ptr %1, null
  br i1 %14, label %73, label %15

15:                                               ; preds = %13, %30
  %16 = phi ptr [ %32, %30 ], [ %1, %13 ]
  %17 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !39
  %19 = tail call ptr @find_base_term(ptr noundef %18) #15
  %20 = icmp eq ptr %19, null
  br i1 %20, label %73, label %21

21:                                               ; preds = %15
  %22 = load i32, ptr %19, align 8
  %23 = and i32 %22, 16777215
  %24 = icmp eq i32 %23, 1048582
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !39
  %28 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !10
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %73, label %30

30:                                               ; preds = %21, %25
  %31 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !39
  %33 = icmp eq ptr %32, null
  br i1 %33, label %73, label %15, !llvm.loop !82

34:                                               ; preds = %9
  %35 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !39
  %37 = load i32, ptr %36, align 8
  %38 = trunc i32 %37 to i16
  switch i16 %38, label %60 [
    i16 23, label %44
    i16 15, label %39
  ]

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !39
  %42 = load i32, ptr %41, align 8, !tbaa !83
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %53, label %63

44:                                               ; preds = %34
  %45 = tail call fastcc zeroext i8 @store_killed_in_pat(ptr noundef %0, ptr noundef nonnull %36, i32 noundef %3) #16, !range !69
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %63, label %73

47:                                               ; preds = %53
  %48 = add nuw nsw i64 %54, 1
  %49 = load ptr, ptr %40, align 8, !tbaa !39
  %50 = load i32, ptr %49, align 8, !tbaa !83
  %51 = sext i32 %50 to i64
  %52 = icmp slt i64 %48, %51
  br i1 %52, label %53, label %63, !llvm.loop !85

53:                                               ; preds = %39, %47
  %54 = phi i64 [ %48, %47 ], [ 0, %39 ]
  %55 = phi ptr [ %49, %47 ], [ %41, %39 ]
  %56 = getelementptr inbounds %struct.rtvec_def, ptr %55, i64 0, i32 1, i64 %54
  %57 = load ptr, ptr %56, align 8, !tbaa !10
  %58 = tail call fastcc zeroext i8 @store_killed_in_pat(ptr noundef %0, ptr noundef %57, i32 noundef %3) #16, !range !69
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %47, label %73

60:                                               ; preds = %34
  %61 = tail call fastcc zeroext i8 @find_loads(ptr noundef nonnull %36, ptr noundef %0, i32 noundef %3) #16, !range !69
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %47, %39, %60, %44
  %64 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %2) #15
  %65 = icmp eq ptr %64, null
  br i1 %65, label %73, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !39
  %69 = tail call i32 @exp_equiv_p(ptr noundef %68, ptr noundef %0, i32 noundef 0, i8 noundef zeroext 1) #15
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = tail call fastcc zeroext i8 @find_loads(ptr noundef %68, ptr noundef %0, i32 noundef %3) #16, !range !69
  br label %73

73:                                               ; preds = %25, %15, %30, %53, %13, %4, %66, %63, %60, %44, %10, %9, %71
  %74 = phi i8 [ %72, %71 ], [ 0, %4 ], [ 0, %9 ], [ 1, %10 ], [ 1, %44 ], [ 1, %60 ], [ 0, %63 ], [ 0, %66 ], [ 0, %13 ], [ 1, %53 ], [ 1, %25 ], [ 1, %15 ], [ 0, %30 ]
  ret i8 %74
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !39
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @find_base_term(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @store_killed_in_pat(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 23
  br i1 %6, label %7, label %33

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 120
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !39
  %16 = load i32, ptr %15, align 8
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi i32 [ %16, %13 ], [ %10, %7 ]
  %19 = phi ptr [ %15, %13 ], [ %9, %7 ]
  %20 = and i32 %18, 65535
  %21 = icmp eq i32 %20, 43
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = tail call i32 @exp_equiv_p(ptr noundef nonnull %19, ptr noundef %0, i32 noundef 0, i8 noundef zeroext 1) #15
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = icmp eq i32 %2, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %25
  %28 = tail call i32 @output_dependence(ptr noundef nonnull %19, ptr noundef %0) #15
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %35

30:                                               ; preds = %25
  %31 = tail call i32 @output_dependence(ptr noundef %0, ptr noundef nonnull %19) #15
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27, %30, %22, %17, %3
  %34 = tail call fastcc zeroext i8 @find_loads(ptr noundef nonnull %1, ptr noundef %0, i32 noundef %2) #16, !range !69
  br label %35

35:                                               ; preds = %30, %27, %33
  %36 = phi i8 [ %34, %33 ], [ 1, %27 ], [ 1, %30 ]
  ret i8 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @find_loads(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %70, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 23
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !39
  %12 = load i32, ptr %11, align 8
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi i32 [ %12, %9 ], [ %6, %5 ]
  %15 = phi ptr [ %11, %9 ], [ %0, %5 ]
  %16 = and i32 %14, 65535
  %17 = icmp eq i32 %16, 43
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = tail call fastcc zeroext i8 @load_kills_store(ptr noundef nonnull %15, ptr noundef %1, i32 noundef %2) #16
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %70

21:                                               ; preds = %18
  %22 = load i32, ptr %15, align 8
  %23 = and i32 %22, 65535
  br label %24

24:                                               ; preds = %21, %13
  %25 = phi i32 [ %23, %21 ], [ %16, %13 ]
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !10
  %29 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %26
  %30 = load i8, ptr %29, align 1, !tbaa !39
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %70, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %34 = zext i8 %30 to i64
  br label %35

35:                                               ; preds = %32, %63
  %36 = phi i64 [ %34, %32 ], [ %37, %63 ]
  %37 = add nsw i64 %36, -1
  %38 = getelementptr inbounds i8, ptr %28, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !39
  switch i8 %39, label %63 [
    i8 101, label %40
    i8 69, label %45
  ]

40:                                               ; preds = %35
  %41 = getelementptr inbounds [1 x %union.rtunion_def], ptr %33, i64 0, i64 %37
  %42 = load ptr, ptr %41, align 8, !tbaa !39
  %43 = tail call fastcc zeroext i8 @find_loads(ptr noundef %42, ptr noundef %1, i32 noundef %2) #16, !range !69
  %44 = zext nneg i8 %43 to i32
  br label %63

45:                                               ; preds = %35
  %46 = getelementptr inbounds [1 x %union.rtunion_def], ptr %33, i64 0, i64 %37
  %47 = load ptr, ptr %46, align 8, !tbaa !39
  %48 = load i32, ptr %47, align 8, !tbaa !83
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = zext nneg i32 %48 to i64
  br label %52

52:                                               ; preds = %50, %52
  %53 = phi i64 [ %51, %50 ], [ %55, %52 ]
  %54 = phi i32 [ 0, %50 ], [ %61, %52 ]
  %55 = add nsw i64 %53, -1
  %56 = load ptr, ptr %46, align 8, !tbaa !39
  %57 = getelementptr inbounds %struct.rtvec_def, ptr %56, i64 0, i32 1, i64 %55
  %58 = load ptr, ptr %57, align 8, !tbaa !10
  %59 = tail call fastcc zeroext i8 @find_loads(ptr noundef %58, ptr noundef %1, i32 noundef %2) #16, !range !69
  %60 = zext nneg i8 %59 to i32
  %61 = or i32 %54, %60
  %62 = icmp ugt i64 %53, 1
  br i1 %62, label %52, label %63, !llvm.loop !86

63:                                               ; preds = %52, %45, %35, %40
  %64 = phi i32 [ %44, %40 ], [ 0, %35 ], [ 0, %45 ], [ %61, %52 ]
  %65 = icmp sgt i64 %36, 1
  %66 = icmp eq i32 %64, 0
  %67 = select i1 %65, i1 %66, i1 false
  br i1 %67, label %35, label %68, !llvm.loop !87

68:                                               ; preds = %63
  %69 = trunc i32 %64 to i8
  br label %70

70:                                               ; preds = %24, %68, %18, %3
  %71 = phi i8 [ 0, %3 ], [ 1, %18 ], [ 0, %24 ], [ %69, %68 ]
  ret i8 %71
}

; Function Attrs: optsize
declare ptr @find_reg_equal_equiv_note(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @output_dependence(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @load_kills_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %7, label %5

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
define internal fastcc void @replace_store_insn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = load ptr, ptr %3, align 8, !tbaa !60
  %6 = load i32, ptr %1, align 8
  %7 = and i32 %6, 65535
  %8 = add nsw i32 %7, -7
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = icmp eq i32 %7, 10
  tail call void @llvm.assume(i1 %11)
  br label %12

12:                                               ; preds = %4, %10
  %13 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !39
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 23
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = tail call ptr @single_set_2(ptr noundef nonnull %1, ptr noundef nonnull %14) #15
  br label %20

20:                                               ; preds = %12, %18
  %21 = phi ptr [ %19, %18 ], [ %14, %12 ]
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !39
  %24 = tail call ptr @gen_move_insn(ptr noundef %0, ptr noundef %23) #15
  %25 = getelementptr inbounds %struct.st_expr, ptr %3, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !39
  %27 = icmp eq ptr %26, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %20, %35
  %29 = phi ptr [ %37, %35 ], [ %26, %20 ]
  %30 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !39
  %32 = icmp eq ptr %31, %1
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  store ptr %24, ptr %34, align 8, !tbaa !39
  br label %39

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !39
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %28, !llvm.loop !88

39:                                               ; preds = %35, %20, %33
  %40 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !39
  %42 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 1, i32 1, i32 0, i32 0, i64 1
  store ptr %41, ptr %42, align 8, !tbaa !39
  %43 = tail call ptr @emit_insn_after(ptr noundef %24, ptr noundef nonnull %1) #15
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %45 = icmp eq ptr %44, null
  br i1 %45, label %56, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %48 = load i32, ptr %47, align 8, !tbaa !25
  %49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %44, ptr noundef nonnull @.str.17, i32 noundef %48) #16
  %50 = load ptr, ptr @dump_file, align 8, !tbaa !10
  tail call void @print_inline_rtx(ptr noundef %50, ptr noundef nonnull %1, i32 noundef 6) #15
  %51 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %52 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 41, i64 1, ptr %51)
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !10
  tail call void @print_inline_rtx(ptr noundef %53, ptr noundef %43, i32 noundef 6) #15
  %54 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %55 = tail call i32 @fputc(i32 10, ptr %54)
  br label %56

56:                                               ; preds = %46, %39
  %57 = tail call ptr @delete_insn(ptr noundef nonnull %1) #15
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %59 = load ptr, ptr %58, align 8, !tbaa !39
  %60 = getelementptr inbounds %struct.rtl_bb_info, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !40
  %62 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1, i32 0, i32 0, i64 2
  %63 = load ptr, ptr %62, align 8, !tbaa !39
  %64 = icmp eq ptr %43, %63
  br i1 %64, label %111, label %65

65:                                               ; preds = %56, %102
  %66 = phi ptr [ %104, %102 ], [ %43, %56 ]
  %67 = load i32, ptr %66, align 8
  %68 = and i32 %67, 65535
  %69 = add nsw i32 %68, -8
  %70 = icmp ult i32 %69, 3
  br i1 %70, label %71, label %102

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !39
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 23
  br i1 %76, label %80, label %77

77:                                               ; preds = %71
  %78 = tail call ptr @single_set_2(ptr noundef nonnull %66, ptr noundef nonnull %73) #15
  %79 = icmp eq ptr %78, null
  br i1 %79, label %102, label %80

80:                                               ; preds = %71, %77
  %81 = phi ptr [ %78, %77 ], [ %73, %71 ]
  %82 = getelementptr inbounds %struct.rtx_def, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !39
  %84 = tail call i32 @exp_equiv_p(ptr noundef %83, ptr noundef %5, i32 noundef 0, i8 noundef zeroext 1) #15
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %112

86:                                               ; preds = %80
  %87 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %66) #15
  %88 = icmp eq ptr %87, null
  br i1 %88, label %102, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !39
  %92 = tail call i32 @exp_equiv_p(ptr noundef %91, ptr noundef %5, i32 noundef 0, i8 noundef zeroext 1) #15
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %89
  %95 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %96 = icmp eq ptr %95, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1
  %99 = load i32, ptr %98, align 8, !tbaa !39
  %100 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %95, ptr noundef nonnull @.str.19, i32 noundef %99) #16
  br label %101

101:                                              ; preds = %97, %94
  tail call void @remove_note(ptr noundef nonnull %66, ptr noundef nonnull %87) #15
  br label %102

102:                                              ; preds = %65, %101, %86, %89, %77
  %103 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1, i32 0, i32 0, i64 2
  %104 = load ptr, ptr %103, align 8, !tbaa !39
  %105 = load ptr, ptr %58, align 8, !tbaa !39
  %106 = getelementptr inbounds %struct.rtl_bb_info, ptr %105, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !40
  %108 = getelementptr inbounds %struct.rtx_def, ptr %107, i64 0, i32 1, i32 0, i32 0, i64 2
  %109 = load ptr, ptr %108, align 8, !tbaa !39
  %110 = icmp eq ptr %104, %109
  br i1 %110, label %111, label %65, !llvm.loop !89

111:                                              ; preds = %102, %56
  tail call fastcc void @remove_reachable_equiv_notes(ptr noundef nonnull %2, ptr noundef nonnull %3) #16
  br label %112

112:                                              ; preds = %80, %111
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #10 {
  %3 = load ptr, ptr %0, align 8, !tbaa !90
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11

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
  %15 = load i64, ptr %14, align 8, !tbaa !17
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !39
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !39
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !17
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !17
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
define internal fastcc void @remove_reachable_equiv_notes(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  %4 = load ptr, ptr @cfun, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !28
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !59
  %9 = tail call ptr @sbitmap_alloc(i32 noundef %8) #15
  %10 = load ptr, ptr %1, align 8, !tbaa !60
  %11 = load ptr, ptr @cfun, align 8, !tbaa !10
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !28
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !37
  %16 = sext i32 %15 to i64
  %17 = shl nsw i64 %16, 4
  %18 = tail call ptr @xmalloc(i64 noundef %17) #15
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %20 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %19) #16
  store i32 0, ptr %3, align 8, !tbaa.struct !72
  %21 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %20, ptr %21, align 8, !tbaa.struct !73
  tail call void @sbitmap_zero(ptr noundef %9) #15
  %22 = tail call fastcc ptr @ei_container(ptr %20) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = tail call fastcc ptr @ei_container(ptr %20) #16
  br label %26

26:                                               ; preds = %2, %24
  %27 = phi ptr [ %25, %24 ], [ null, %2 ]
  %28 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %27) #16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = tail call fastcc ptr @ei_container(ptr %20) #16
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

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
  br i1 %49, label %50, label %62

50:                                               ; preds = %42
  %51 = icmp eq i32 %48, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %50
  tail call void @free(ptr noundef %18) #16
  %53 = load ptr, ptr %9, align 8, !tbaa !90
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
  %66 = load ptr, ptr %65, align 8, !tbaa !27
  %67 = load ptr, ptr @cfun, align 8, !tbaa !10
  %68 = getelementptr inbounds %struct.function, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !28
  %70 = getelementptr inbounds %struct.control_flow_graph, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !33
  %72 = icmp eq ptr %66, %71
  br i1 %72, label %85, label %73

73:                                               ; preds = %62
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %66, i64 0, i32 9
  %75 = load i32, ptr %74, align 8, !tbaa !25
  %76 = lshr i32 %75, 6
  %77 = zext nneg i32 %76 to i64
  %78 = getelementptr inbounds %struct.simple_bitmap_def, ptr %9, i64 0, i32 3, i64 %77
  %79 = load i64, ptr %78, align 8, !tbaa !17
  %80 = and i32 %75, 63
  %81 = zext nneg i32 %80 to i64
  %82 = shl nuw i64 1, %81
  %83 = and i64 %82, %79
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %98, label %85

85:                                               ; preds = %73, %62
  %86 = tail call fastcc zeroext i8 @ei_end_p(i32 %46, ptr %45) #16, !range !69
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  call fastcc void @ei_next(ptr noundef nonnull %3) #16
  %89 = load i32, ptr %3, align 8
  %90 = load ptr, ptr %21, align 8
  br label %91

91:                                               ; preds = %88, %85
  %92 = phi ptr [ %90, %88 ], [ %43, %85 ]
  %93 = phi i32 [ %89, %88 ], [ %44, %85 ]
  %94 = tail call fastcc zeroext i8 @ei_end_p(i32 %93, ptr %92) #16, !range !69
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %185

96:                                               ; preds = %91
  %97 = tail call fastcc ptr @ei_edge(i32 %93, ptr %92) #16
  br label %185

98:                                               ; preds = %73
  tail call fastcc void @SET_BIT(ptr noundef nonnull %9, i32 noundef %75) #16
  %99 = load ptr, ptr @st_antloc, align 8, !tbaa !10
  %100 = load i32, ptr %74, align 8, !tbaa !25
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds ptr, ptr %99, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !10
  %104 = load i32, ptr %40, align 8, !tbaa !15
  %105 = lshr i32 %104, 6
  %106 = zext nneg i32 %105 to i64
  %107 = getelementptr inbounds %struct.simple_bitmap_def, ptr %103, i64 0, i32 3, i64 %106
  %108 = load i64, ptr %107, align 8, !tbaa !17
  %109 = and i32 %104, 63
  %110 = zext nneg i32 %109 to i64
  %111 = shl nuw i64 1, %110
  %112 = and i64 %111, %108
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %123, label %114

114:                                              ; preds = %98, %114
  %115 = phi ptr [ %122, %114 ], [ %41, %98 ]
  %116 = load ptr, ptr %115, align 8, !tbaa !39
  %117 = getelementptr inbounds %struct.rtx_def, ptr %116, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !39
  %119 = getelementptr inbounds %struct.rtx_def, ptr %118, i64 0, i32 1, i32 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !39
  %121 = icmp eq ptr %120, %66
  %122 = getelementptr inbounds %struct.rtx_def, ptr %116, i64 0, i32 1, i32 0, i32 0, i64 1
  br i1 %121, label %130, label %114, !llvm.loop !92

123:                                              ; preds = %98
  %124 = getelementptr inbounds %struct.basic_block_def, ptr %66, i64 0, i32 7
  %125 = load ptr, ptr %124, align 8, !tbaa !39
  %126 = getelementptr inbounds %struct.rtl_bb_info, ptr %125, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !40
  %128 = getelementptr inbounds %struct.rtx_def, ptr %127, i64 0, i32 1, i32 0, i32 0, i64 2
  %129 = load ptr, ptr %128, align 8, !tbaa !39
  br label %133

130:                                              ; preds = %114
  %131 = getelementptr inbounds %struct.basic_block_def, ptr %66, i64 0, i32 7
  %132 = load ptr, ptr %131, align 8, !tbaa !39
  br label %133

133:                                              ; preds = %130, %123
  %134 = phi ptr [ %125, %123 ], [ %132, %130 ]
  %135 = phi ptr [ %129, %123 ], [ %118, %130 ]
  %136 = load ptr, ptr %134, align 8, !tbaa !39
  %137 = icmp eq ptr %136, %135
  br i1 %137, label %164, label %138

138:                                              ; preds = %133, %160
  %139 = phi ptr [ %162, %160 ], [ %136, %133 ]
  %140 = load i32, ptr %139, align 8
  %141 = and i32 %140, 65535
  %142 = add nsw i32 %141, -11
  %143 = icmp ult i32 %142, -3
  br i1 %143, label %160, label %144

144:                                              ; preds = %138
  %145 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %139) #15
  %146 = icmp eq ptr %145, null
  br i1 %146, label %160, label %147

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.rtx_def, ptr %145, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !39
  %150 = tail call i32 @exp_equiv_p(ptr noundef %149, ptr noundef %10, i32 noundef 0, i8 noundef zeroext 1) #15
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %160, label %152

152:                                              ; preds = %147
  %153 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %154 = icmp eq ptr %153, null
  br i1 %154, label %159, label %155

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.rtx_def, ptr %139, i64 0, i32 1
  %157 = load i32, ptr %156, align 8, !tbaa !39
  %158 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %153, ptr noundef nonnull @.str.19, i32 noundef %157) #16
  br label %159

159:                                              ; preds = %155, %152
  tail call void @remove_note(ptr noundef nonnull %139, ptr noundef nonnull %145) #15
  br label %160

160:                                              ; preds = %138, %159, %144, %147
  %161 = getelementptr inbounds %struct.rtx_def, ptr %139, i64 0, i32 1, i32 0, i32 0, i64 2
  %162 = load ptr, ptr %161, align 8, !tbaa !39
  %163 = icmp eq ptr %162, %135
  br i1 %163, label %164, label %138, !llvm.loop !93

164:                                              ; preds = %160, %133
  %165 = tail call fastcc zeroext i8 @ei_end_p(i32 %46, ptr %45) #16, !range !69
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %170

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
  %175 = tail call fastcc zeroext i8 @ei_end_p(i32 %174, ptr %173) #16, !range !69
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %170
  %178 = tail call fastcc ptr @ei_edge(i32 %174, ptr %173) #16
  br label %179

179:                                              ; preds = %170, %177
  %180 = phi ptr [ %178, %177 ], [ null, %170 ]
  %181 = getelementptr inbounds %struct.basic_block_def, ptr %66, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !94
  %183 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %182) #16
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %192

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
  br i1 %193, label %198, label %194

194:                                              ; preds = %192
  %195 = add nsw i32 %64, 1
  %196 = sext i32 %64 to i64
  %197 = getelementptr inbounds %struct.edge_iterator, ptr %18, i64 %196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %197, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !72
  br label %198

198:                                              ; preds = %194, %192
  %199 = phi i32 [ %195, %194 ], [ %64, %192 ]
  %200 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %181) #16
  store i32 0, ptr %3, align 8, !tbaa.struct !72
  store ptr %200, ptr %21, align 8, !tbaa.struct !73
  %201 = tail call fastcc ptr @ei_container(ptr %200) #16
  %202 = icmp eq ptr %201, null
  br i1 %202, label %205, label %203

203:                                              ; preds = %198
  %204 = tail call fastcc ptr @ei_container(ptr %200) #16
  br label %205

205:                                              ; preds = %198, %203
  %206 = phi ptr [ %204, %203 ], [ null, %198 ]
  %207 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %206) #16
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %185, label %209

209:                                              ; preds = %205
  %210 = tail call fastcc ptr @ei_container(ptr %200) #16
  %211 = icmp eq ptr %210, null
  br i1 %211, label %214, label %212

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
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #11 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !95
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 687, ptr noundef nonnull @.str.21) #15
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !10
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #16
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #16
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

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
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #16
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #16
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 738, ptr noundef nonnull @.str.21) #15
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !97
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !97
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #16, !range !69
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #16
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !10
  ret i8 %10
}

; Function Attrs: optsize
declare i32 @find_edge_index(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #10 {
  %3 = load ptr, ptr %0, align 8, !tbaa !90
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11

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
  %15 = load i64, ptr %14, align 8, !tbaa !17
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !39
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !39
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !17
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_insn_start_basic_block(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !39
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
  ]

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 1
  %16 = load i32, ptr %15, align 8, !tbaa !39
  %17 = icmp eq i32 %16, 10
  br i1 %17, label %18, label %25

18:                                               ; preds = %9, %14
  %19 = load ptr, ptr %8, align 8, !tbaa !40
  %20 = icmp eq ptr %10, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  %23 = load ptr, ptr %22, align 8, !tbaa !39
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %9, !llvm.loop !99

25:                                               ; preds = %21, %14, %18, %9
  %26 = phi ptr [ %10, %21 ], [ %11, %14 ], [ %10, %18 ], [ %11, %9 ]
  %27 = tail call ptr @emit_insn_after_noloc(ptr noundef %0, ptr noundef %26, ptr noundef %1) #15
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %29 = icmp eq ptr %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !25
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %28, ptr noundef nonnull @.str.24, i32 noundef %32) #16
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !10
  tail call void @print_inline_rtx(ptr noundef %34, ptr noundef %27, i32 noundef 6) #15
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !10
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
define internal fastcc void @free_store_motion_mems() unnamed_addr #0 {
  %1 = load ptr, ptr @store_motion_mems_table, align 8, !tbaa !10
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @htab_delete(ptr noundef nonnull %1) #15
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @store_motion_mems_table, align 8, !tbaa !10
  %5 = load ptr, ptr @store_motion_mems, align 8, !tbaa !10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %11, %7 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.st_expr, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  store ptr %10, ptr @store_motion_mems, align 8, !tbaa !10
  tail call fastcc void @free_st_expr_entry(ptr noundef nonnull %8) #16
  %11 = load ptr, ptr @store_motion_mems, align 8, !tbaa !10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %7, !llvm.loop !100

13:                                               ; preds = %7, %4
  store ptr null, ptr @store_motion_mems, align 8, !tbaa !10
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

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{i32 0, i32 2}
!13 = !{!14, !7, i64 4}
!14 = !{!"edge_list", !7, i64 0, !7, i64 4, !11, i64 8}
!15 = !{!16, !7, i64 40}
!16 = !{!"st_expr", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !7, i64 40, !7, i64 44, !11, i64 48}
!17 = !{!18, !18, i64 0}
!18 = !{!"long", !8, i64 0}
!19 = !{!14, !11, i64 8}
!20 = !{!21, !7, i64 48}
!21 = !{!"edge_def", !11, i64 0, !11, i64 8, !8, i64 16, !11, i64 24, !11, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !18, i64 56}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!21, !11, i64 0}
!25 = !{!26, !7, i64 80}
!26 = !{!"basic_block_def", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !11, i64 48, !11, i64 56, !8, i64 64, !18, i64 72, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96}
!27 = !{!21, !11, i64 8}
!28 = !{!29, !11, i64 8}
!29 = !{!"function", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !11, i64 128, !7, i64 136, !7, i64 137, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139}
!30 = !{!31, !11, i64 0}
!31 = !{!"control_flow_graph", !11, i64 0, !11, i64 8, !11, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !11, i64 40, !7, i64 48, !8, i64 52, !8, i64 60, !7, i64 68, !7, i64 72}
!32 = !{!26, !11, i64 56}
!33 = !{!31, !11, i64 8}
!34 = distinct !{!34, !23}
!35 = distinct !{!35, !23}
!36 = distinct !{!36, !23}
!37 = !{!31, !7, i64 24}
!38 = distinct !{!38, !23}
!39 = !{!8, !8, i64 0}
!40 = !{!41, !11, i64 8}
!41 = !{!"rtl_bb_info", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !7, i64 32}
!42 = !{!43, !11, i64 248}
!43 = !{!"df", !8, i64 0, !8, i64 64, !11, i64 128, !44, i64 136, !44, i64 176, !11, i64 216, !11, i64 224, !11, i64 232, !7, i64 240, !7, i64 244, !11, i64 248, !7, i64 256, !7, i64 260, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !7, i64 344, !7, i64 348, !11, i64 352, !7, i64 360, !7, i64 364, !8, i64 365, !8, i64 366}
!44 = !{!"df_ref_info", !11, i64 0, !11, i64 8, !11, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36}
!45 = !{!46, !11, i64 8}
!46 = !{!"df_insn_info", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !7, i64 40}
!47 = distinct !{!47, !23}
!48 = distinct !{!48, !23}
!49 = distinct !{!49, !23}
!50 = distinct !{!50, !23}
!51 = distinct !{!51, !23}
!52 = !{!16, !11, i64 48}
!53 = !{!16, !11, i64 16}
!54 = distinct !{!54, !23}
!55 = !{!16, !11, i64 24}
!56 = !{!16, !11, i64 32}
!57 = !{!16, !7, i64 44}
!58 = distinct !{!58, !23}
!59 = !{!31, !7, i64 32}
!60 = !{!16, !11, i64 0}
!61 = distinct !{!61, !23}
!62 = distinct !{!62, !23}
!63 = distinct !{!63, !23}
!64 = distinct !{!64, !23}
!65 = distinct !{!65, !23}
!66 = distinct !{!66, !23}
!67 = !{!16, !11, i64 8}
!68 = !{!41, !11, i64 0}
!69 = !{i8 0, i8 2}
!70 = distinct !{!70, !23}
!71 = distinct !{!71, !23}
!72 = !{i64 0, i64 4, !6, i64 8, i64 8, !10}
!73 = !{i64 0, i64 8, !10}
!74 = distinct !{!74, !23}
!75 = distinct !{!75, !23}
!76 = distinct !{!76, !23}
!77 = distinct !{!77, !23}
!78 = distinct !{!78, !23}
!79 = distinct !{!79, !23}
!80 = distinct !{!80, !23}
!81 = distinct !{!81, !23}
!82 = distinct !{!82, !23}
!83 = !{!84, !7, i64 0}
!84 = !{!"rtvec_def", !7, i64 0, !8, i64 8}
!85 = distinct !{!85, !23}
!86 = distinct !{!86, !23}
!87 = distinct !{!87, !23}
!88 = distinct !{!88, !23}
!89 = distinct !{!89, !23}
!90 = !{!91, !11, i64 0}
!91 = !{!"simple_bitmap_def", !11, i64 0, !7, i64 8, !7, i64 12, !8, i64 16}
!92 = distinct !{!92, !23}
!93 = distinct !{!93, !23}
!94 = !{!26, !11, i64 8}
!95 = !{!96, !7, i64 0}
!96 = !{!"VEC_edge_base", !7, i64 0, !7, i64 4, !8, i64 8}
!97 = !{!98, !7, i64 0}
!98 = !{!"", !7, i64 0, !11, i64 8}
!99 = distinct !{!99, !23}
!100 = distinct !{!100, !23}
