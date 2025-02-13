; ModuleID = 'cfgbuild.c'
source_filename = "cfgbuild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.eh_landing_pad_d = type { ptr, ptr, ptr, ptr, i32 }
%struct.edge_iterator = type { i32, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }

@.str = private unnamed_addr constant [11 x i8] c"cfgbuild.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@flag_non_call_exceptions = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@.str.2 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @inside_basic_block_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !111 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %25 [
    i16 12, label %4
    i16 9, label %18
    i16 10, label %26
    i16 8, label %26
    i16 7, label %26
    i16 11, label %24
    i16 13, label %24
  ], !prof !112

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !113
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8, !prof !116

8:                                                ; preds = %4
  %9 = load i32, ptr %6, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 9
  br i1 %11, label %12, label %26, !prof !116

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !113
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65534
  %17 = icmp ne i32 %16, 20
  br label %26

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !113
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65534
  %23 = icmp ne i32 %22, 20
  br label %26

24:                                               ; preds = %1, %1
  br label %26

25:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 74, ptr noundef nonnull @.str.1) #8
  br label %26

26:                                               ; preds = %12, %1, %1, %1, %4, %8, %25, %24, %18
  %27 = phi i1 [ false, %25 ], [ false, %24 ], [ %23, %18 ], [ true, %8 ], [ true, %4 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ %17, %12 ]
  %28 = zext i1 %27 to i8
  ret i8 %28
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @control_flow_insn_p(ptr noundef %0) local_unnamed_addr #0 !prof !117 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %40 [
    i16 13, label %43
    i16 12, label %43
    i16 7, label %43
    i16 9, label %4
    i16 10, label %11
    i16 8, label %26
    i16 11, label %43
  ], !prof !118

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !113
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65534
  %9 = icmp ne i32 %8, 20
  %10 = zext i1 %9 to i8
  br label %43

11:                                               ; preds = %1
  %12 = and i32 %2, 16777216
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17, !prof !119

14:                                               ; preds = %11
  %15 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 27, ptr noundef null) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17, !prof !120

17:                                               ; preds = %14, %11
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !113
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 14
  br i1 %22, label %23, label %43, !prof !121

23:                                               ; preds = %17, %14
  %24 = tail call zeroext i8 @can_nonlocal_goto(ptr noundef nonnull %0) #8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %41, label %43, !prof !122

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !113
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 29
  br i1 %31, label %32, label %37, !prof !123

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !113
  %35 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !124
  %36 = icmp eq ptr %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %32, %26
  %38 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !126
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %41, !prof !128

40:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 128, ptr noundef nonnull @.str.1) #8
  br label %41

41:                                               ; preds = %37, %23, %40
  %42 = tail call zeroext i8 @can_throw_internal(ptr noundef nonnull %0) #8
  br label %43

43:                                               ; preds = %1, %37, %32, %23, %17, %1, %1, %1, %41, %4
  %44 = phi i8 [ %42, %41 ], [ %10, %4 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 1, %17 ], [ 1, %23 ], [ 1, %32 ], [ 0, %37 ], [ 0, %1 ]
  ret i8 %44
}

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @can_nonlocal_goto(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @can_throw_internal(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rtl_make_eh_edge(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !129 {
  %4 = tail call ptr @get_eh_landing_pad_from_rtx(ptr noundef %2) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6, !prof !130

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !131
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %4, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !133
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 170, ptr noundef nonnull @.str.1) #8
  %15 = load ptr, ptr %11, align 8, !tbaa !133
  br label %16

16:                                               ; preds = %10, %14
  %17 = phi ptr [ %12, %10 ], [ %15, %14 ]
  %18 = tail call ptr @label_rtx(ptr noundef %17) #8
  br label %19

19:                                               ; preds = %16, %6
  %20 = phi ptr [ %18, %16 ], [ %8, %6 ]
  %21 = load i32, ptr %2, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 10
  %24 = select i1 %23, i32 14, i32 10
  tail call fastcc void @make_label_edge(ptr noundef %0, ptr noundef %1, ptr noundef %20, i32 noundef %24) #9
  br label %25

25:                                               ; preds = %19, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @get_eh_landing_pad_from_rtx(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @label_rtx(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_label_edge(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 !prof !134 !PGOFuncName !135 {
  %5 = load i32, ptr %2, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 12
  br i1 %7, label %9, label %8, !prof !136

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 143, ptr noundef nonnull @.str.1) #8
  br label %9

9:                                                ; preds = %4, %8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !113
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13, !prof !137

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !113
  %16 = tail call ptr @cached_make_edge(ptr noundef %0, ptr noundef %1, ptr noundef %15, i32 noundef %3) #8
  br label %17

17:                                               ; preds = %9, %13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @find_many_sub_basic_blocks(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !138 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = load ptr, ptr @cfun, align 8, !tbaa !124
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !139
  %7 = load ptr, ptr %6, align 8, !tbaa !141
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !143
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !144
  %12 = icmp eq ptr %11, %9
  br i1 %12, label %54, label %14, !prof !147

13:                                               ; preds = %14
  br i1 %12, label %54, label %33, !prof !148

14:                                               ; preds = %1, %14
  %15 = phi ptr [ %31, %14 ], [ %11, %1 ]
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !149
  %18 = lshr i32 %17, 6
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %19
  %21 = load i64, ptr %20, align 8, !tbaa !150
  %22 = and i32 %17, 63
  %23 = zext nneg i32 %22 to i64
  %24 = shl nuw i64 1, %23
  %25 = and i64 %24, %21
  %26 = icmp eq i64 %25, 0
  %27 = select i1 %26, i64 1, i64 2
  %28 = inttoptr i64 %27 to ptr
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 2
  store ptr %28, ptr %29, align 8, !tbaa !151
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !144
  %32 = icmp eq ptr %31, %9
  br i1 %32, label %13, label %14, !prof !152, !llvm.loop !153

33:                                               ; preds = %13, %43
  %34 = phi ptr [ %44, %43 ], [ %4, %13 ]
  %35 = phi ptr [ %46, %43 ], [ %11, %13 ]
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !151
  %38 = ptrtoint ptr %37 to i64
  %39 = and i64 %38, 4294967295
  %40 = icmp eq i64 %39, 2
  br i1 %40, label %41, label %43, !prof !155

41:                                               ; preds = %33
  tail call fastcc void @find_bb_boundaries(ptr noundef nonnull %35) #9
  %42 = load ptr, ptr @cfun, align 8, !tbaa !124
  br label %43

43:                                               ; preds = %33, %41
  %44 = phi ptr [ %34, %33 ], [ %42, %41 ]
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !144
  %47 = getelementptr inbounds %struct.function, ptr %44, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !139
  %49 = getelementptr inbounds %struct.control_flow_graph, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !143
  %51 = icmp eq ptr %46, %50
  br i1 %51, label %52, label %33, !prof !156, !llvm.loop !157

52:                                               ; preds = %43
  %53 = load ptr, ptr %48, align 8, !tbaa !141
  br label %54

54:                                               ; preds = %1, %52, %13
  %55 = phi ptr [ %7, %13 ], [ %53, %52 ], [ %7, %1 ]
  %56 = phi ptr [ %9, %13 ], [ %46, %52 ], [ %9, %1 ]
  br label %57

57:                                               ; preds = %62, %54
  %58 = phi ptr [ %55, %54 ], [ %60, %62 ]
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !144
  %61 = icmp eq ptr %60, %56
  br i1 %61, label %82, label %62, !prof !158

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !151
  %65 = ptrtoint ptr %64 to i64
  %66 = and i64 %65, 4294967295
  %67 = icmp eq i64 %66, 1
  br i1 %67, label %57, label %68, !prof !159, !llvm.loop !160

68:                                               ; preds = %62
  %69 = icmp eq ptr %60, %56
  br i1 %69, label %82, label %70, !prof !161

70:                                               ; preds = %68, %70
  %71 = phi ptr [ %80, %70 ], [ %60, %68 ]
  %72 = phi ptr [ %78, %70 ], [ %60, %68 ]
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %71, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !151
  %75 = ptrtoint ptr %74 to i64
  %76 = and i64 %75, 4294967295
  %77 = icmp eq i64 %76, 1
  %78 = select i1 %77, ptr %72, ptr %71, !prof !162
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %71, i64 0, i32 6
  %80 = load ptr, ptr %79, align 8, !tbaa !144
  %81 = icmp eq ptr %80, %56
  br i1 %81, label %82, label %70, !prof !163, !llvm.loop !164

82:                                               ; preds = %57, %70, %68
  %83 = phi ptr [ %60, %68 ], [ %60, %70 ], [ %56, %57 ]
  %84 = phi ptr [ %56, %68 ], [ %78, %70 ], [ %56, %57 ]
  tail call fastcc void @make_edges(ptr noundef %83, ptr noundef %84) #9
  %85 = load ptr, ptr @cfun, align 8, !tbaa !124
  %86 = getelementptr inbounds %struct.function, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !139
  %88 = getelementptr inbounds %struct.control_flow_graph, ptr %87, i64 0, i32 7
  %89 = load i32, ptr %88, align 8, !tbaa !165
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %141, label %91, !prof !166

91:                                               ; preds = %82
  %92 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 6
  %93 = load ptr, ptr %92, align 8, !tbaa !144
  %94 = icmp eq ptr %83, %93
  br i1 %94, label %141, label %95, !prof !147

95:                                               ; preds = %91
  %96 = getelementptr inbounds i8, ptr %3, i64 8
  br label %97

97:                                               ; preds = %95, %132
  %98 = phi ptr [ %93, %95 ], [ %133, %132 ]
  %99 = phi ptr [ %83, %95 ], [ %135, %132 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %99, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !151
  %102 = ptrtoint ptr %101 to i64
  %103 = trunc i64 %102 to i32
  switch i32 %103, label %130 [
    i32 1, label %132
    i32 0, label %104
  ], !prof !167

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.basic_block_def, ptr %99, i64 0, i32 8
  store i64 0, ptr %105, align 8, !tbaa !168
  %106 = getelementptr inbounds %struct.basic_block_def, ptr %99, i64 0, i32 11
  store i32 0, ptr %106, align 8, !tbaa !169
  %107 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %99) #9
  store i32 0, ptr %3, align 8, !tbaa.struct !170
  store ptr %107, ptr %96, align 8, !tbaa.struct !171
  %108 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %107, ptr noundef nonnull %2) #9, !range !172
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %130, label %110, !prof !173

110:                                              ; preds = %104, %110
  %111 = load ptr, ptr %2, align 8, !tbaa !124
  %112 = getelementptr inbounds %struct.edge_def, ptr %111, i64 0, i32 9
  %113 = load i64, ptr %112, align 8, !tbaa !174
  %114 = load i64, ptr %105, align 8, !tbaa !168
  %115 = add nsw i64 %114, %113
  store i64 %115, ptr %105, align 8, !tbaa !168
  %116 = load ptr, ptr %111, align 8, !tbaa !176
  %117 = getelementptr inbounds %struct.basic_block_def, ptr %116, i64 0, i32 11
  %118 = load i32, ptr %117, align 8, !tbaa !169
  %119 = getelementptr inbounds %struct.edge_def, ptr %111, i64 0, i32 8
  %120 = load i32, ptr %119, align 4, !tbaa !177
  %121 = mul nsw i32 %120, %118
  %122 = add nsw i32 %121, 5000
  %123 = sdiv i32 %122, 10000
  %124 = load i32, ptr %106, align 8, !tbaa !169
  %125 = add nsw i32 %123, %124
  store i32 %125, ptr %106, align 8, !tbaa !169
  call fastcc void @ei_next(ptr noundef nonnull %3) #9
  %126 = load i32, ptr %3, align 8
  %127 = load ptr, ptr %96, align 8
  %128 = call fastcc zeroext i8 @ei_cond(i32 %126, ptr %127, ptr noundef nonnull %2) #9, !range !172
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %110, !prof !178, !llvm.loop !179

130:                                              ; preds = %110, %104, %97
  tail call fastcc void @compute_outgoing_frequencies(ptr noundef nonnull %99) #9
  %131 = load ptr, ptr %92, align 8, !tbaa !144
  br label %132

132:                                              ; preds = %97, %130
  %133 = phi ptr [ %98, %97 ], [ %131, %130 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  %134 = getelementptr inbounds %struct.basic_block_def, ptr %99, i64 0, i32 6
  %135 = load ptr, ptr %134, align 8, !tbaa !144
  %136 = icmp eq ptr %135, %133
  br i1 %136, label %137, label %97, !prof !180, !llvm.loop !181

137:                                              ; preds = %132
  %138 = load ptr, ptr @cfun, align 8, !tbaa !124
  %139 = getelementptr inbounds %struct.function, ptr %138, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !139
  br label %141

141:                                              ; preds = %137, %91, %82
  %142 = phi ptr [ %140, %137 ], [ %87, %91 ], [ %87, %82 ]
  %143 = load ptr, ptr %142, align 8, !tbaa !141
  %144 = getelementptr inbounds %struct.control_flow_graph, ptr %142, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !143
  %146 = getelementptr inbounds %struct.basic_block_def, ptr %143, i64 0, i32 6
  %147 = load ptr, ptr %146, align 8, !tbaa !144
  %148 = icmp eq ptr %147, %145
  br i1 %148, label %155, label %149, !prof !147

149:                                              ; preds = %141, %149
  %150 = phi ptr [ %153, %149 ], [ %147, %141 ]
  %151 = getelementptr inbounds %struct.basic_block_def, ptr %150, i64 0, i32 2
  store ptr null, ptr %151, align 8, !tbaa !151
  %152 = getelementptr inbounds %struct.basic_block_def, ptr %150, i64 0, i32 6
  %153 = load ptr, ptr %152, align 8, !tbaa !144
  %154 = icmp eq ptr %153, %145
  br i1 %154, label %155, label %149, !prof !156, !llvm.loop !182

155:                                              ; preds = %149, %141
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_bb_boundaries(ptr noundef %0) unnamed_addr #0 !prof !183 !PGOFuncName !184 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !113
  %5 = load ptr, ptr %4, align 8, !tbaa !185
  %6 = getelementptr inbounds %struct.rtl_bb_info, ptr %4, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !187
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %125, label %9, !prof !188

9:                                                ; preds = %1
  %10 = load i32, ptr %5, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 12
  br i1 %12, label %13, label %19, !prof !189

13:                                               ; preds = %9, %88
  %14 = phi ptr [ %20, %88 ], [ %5, %9 ]
  %15 = phi ptr [ %93, %88 ], [ null, %9 ]
  %16 = phi ptr [ %90, %88 ], [ %0, %9 ]
  %17 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 2
  %18 = load ptr, ptr %17, align 8, !tbaa !113
  br label %19

19:                                               ; preds = %13, %9
  %20 = phi ptr [ %5, %9 ], [ %18, %13 ]
  %21 = phi ptr [ null, %9 ], [ %15, %13 ]
  %22 = phi ptr [ %0, %9 ], [ %16, %13 ]
  %23 = load i32, ptr %20, align 8
  %24 = and i32 %23, 65535
  %25 = icmp ne ptr %21, null
  %26 = icmp eq i32 %24, 12
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %28, label %83, !prof !190

28:                                               ; preds = %19
  %29 = tail call zeroext i8 @inside_basic_block_p(ptr noundef nonnull %20) #9, !range !172
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %83, label %31, !prof !191

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !113
  %34 = tail call ptr @split_block(ptr noundef %22, ptr noundef %33) #8
  br i1 %25, label %38, label %35, !prof !192

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !193
  br label %67

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !113
  %41 = getelementptr inbounds %struct.rtl_bb_info, ptr %40, i64 0, i32 1
  store ptr %21, ptr %41, align 8, !tbaa !187
  %42 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 1
  %43 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 2
  %44 = load ptr, ptr %43, align 8, !tbaa !113
  %45 = load ptr, ptr %42, align 8, !tbaa !193
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !113
  %48 = load ptr, ptr %47, align 8, !tbaa !185
  %49 = icmp eq ptr %44, %48
  br i1 %49, label %67, label %50, !prof !194

50:                                               ; preds = %38, %59
  %51 = phi ptr [ %60, %59 ], [ %45, %38 ]
  %52 = phi ptr [ %62, %59 ], [ %44, %38 ]
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 11
  br i1 %55, label %59, label %56, !prof !195

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %57, align 8, !tbaa !113
  %58 = load ptr, ptr %42, align 8, !tbaa !193
  br label %59

59:                                               ; preds = %50, %56
  %60 = phi ptr [ %51, %50 ], [ %58, %56 ]
  %61 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 2
  %62 = load ptr, ptr %61, align 8, !tbaa !113
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 7
  %64 = load ptr, ptr %63, align 8, !tbaa !113
  %65 = load ptr, ptr %64, align 8, !tbaa !185
  %66 = icmp eq ptr %62, %65
  br i1 %66, label %67, label %50, !prof !196, !llvm.loop !197

67:                                               ; preds = %59, %35, %38
  %68 = phi ptr [ %37, %35 ], [ %45, %38 ], [ %60, %59 ]
  tail call void @remove_edge(ptr noundef %34) #8
  br i1 %26, label %69, label %88, !prof !198

69:                                               ; preds = %67
  %70 = load i32, ptr %20, align 8
  %71 = lshr i32 %70, 23
  %72 = and i32 %71, 2
  %73 = lshr i32 %70, 25
  %74 = and i32 %73, 1
  %75 = or disjoint i32 %72, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %88, label %77, !prof !199

77:                                               ; preds = %69
  %78 = load ptr, ptr @cfun, align 8, !tbaa !124
  %79 = getelementptr inbounds %struct.function, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !139
  %81 = load ptr, ptr %80, align 8, !tbaa !141
  %82 = tail call ptr @make_edge(ptr noundef %81, ptr noundef %68, i32 noundef 0) #8
  br label %88

83:                                               ; preds = %19, %28
  %84 = icmp eq i32 %24, 11
  br i1 %84, label %85, label %88, !prof !200

85:                                               ; preds = %83
  br i1 %25, label %88, label %86, !prof !201

86:                                               ; preds = %85
  %87 = tail call ptr @prev_nonnote_insn_bb(ptr noundef nonnull %20) #8
  br label %88

88:                                               ; preds = %83, %86, %85, %67, %69, %77
  %89 = phi ptr [ null, %77 ], [ null, %69 ], [ null, %67 ], [ %21, %85 ], [ %87, %86 ], [ %21, %83 ]
  %90 = phi ptr [ %68, %77 ], [ %68, %69 ], [ %68, %67 ], [ %22, %85 ], [ %22, %86 ], [ %22, %83 ]
  %91 = tail call zeroext i8 @control_flow_insn_p(ptr noundef nonnull %20) #9
  %92 = icmp eq i8 %91, 0
  %93 = select i1 %92, ptr %89, ptr %20, !prof !202
  %94 = icmp eq ptr %20, %7
  br i1 %94, label %95, label %13, !prof !203

95:                                               ; preds = %88
  %96 = icmp eq ptr %93, null
  br i1 %96, label %113, label %97, !prof !204

97:                                               ; preds = %95
  %98 = getelementptr inbounds %struct.basic_block_def, ptr %90, i64 0, i32 7
  %99 = load ptr, ptr %98, align 8, !tbaa !113
  %100 = getelementptr inbounds %struct.rtl_bb_info, ptr %99, i64 0, i32 1
  store ptr %93, ptr %100, align 8, !tbaa !187
  %101 = icmp eq ptr %93, %7
  br i1 %101, label %113, label %102, !prof !205

102:                                              ; preds = %97, %111
  %103 = phi ptr [ %105, %111 ], [ %93, %97 ]
  %104 = getelementptr inbounds %struct.rtx_def, ptr %103, i64 0, i32 1, i32 0, i32 0, i64 2
  %105 = load ptr, ptr %104, align 8, !tbaa !113
  %106 = load i32, ptr %105, align 8
  %107 = and i32 %106, 65535
  %108 = icmp eq i32 %107, 11
  br i1 %108, label %111, label %109, !prof !206

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %110, align 8, !tbaa !113
  br label %111

111:                                              ; preds = %109, %102
  %112 = icmp eq ptr %105, %7
  br i1 %112, label %113, label %102, !prof !207, !llvm.loop !208

113:                                              ; preds = %111, %97, %95
  %114 = tail call zeroext i8 @purge_dead_edges(ptr noundef %90) #8
  %115 = icmp eq ptr %90, %0
  br i1 %115, label %125, label %116, !prof !209

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.basic_block_def, ptr %90, i64 0, i32 7
  %118 = load ptr, ptr %117, align 8, !tbaa !113
  %119 = getelementptr inbounds %struct.rtl_bb_info, ptr %118, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !187
  %121 = call zeroext i8 @tablejump_p(ptr noundef %120, ptr noundef null, ptr noundef nonnull %2) #8
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %125, label %123, !prof !210

123:                                              ; preds = %116
  %124 = load ptr, ptr %2, align 8, !tbaa !124
  call fastcc void @purge_dead_tablejump_edges(ptr noundef nonnull %90, ptr noundef %124) #9
  br label %125

125:                                              ; preds = %113, %116, %123, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_edges(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !138 !PGOFuncName !211 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 5), align 8, !tbaa !212
  %7 = icmp eq ptr %6, null
  %8 = load ptr, ptr @cfun, align 8, !tbaa !124
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !139
  br i1 %7, label %11, label %15, !prof !221

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 10
  %13 = load i32, ptr %12, align 4, !tbaa !222
  %14 = icmp sgt i32 %13, 100
  br i1 %14, label %15, label %22, !prof !223

15:                                               ; preds = %2, %11
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !224
  %18 = tail call ptr @sbitmap_alloc(i32 noundef %17) #8
  %19 = load ptr, ptr @cfun, align 8, !tbaa !124
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !139
  br label %22

22:                                               ; preds = %15, %11
  %23 = phi ptr [ %21, %15 ], [ %10, %11 ]
  %24 = phi ptr [ %18, %15 ], [ null, %11 ]
  %25 = load ptr, ptr %23, align 8, !tbaa !141
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !144
  %28 = icmp eq ptr %27, %0
  br i1 %28, label %29, label %31, !prof !225

29:                                               ; preds = %22
  %30 = tail call ptr @make_edge(ptr noundef nonnull %25, ptr noundef %0, i32 noundef 1) #8
  br label %31

31:                                               ; preds = %29, %22
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !144
  %34 = icmp eq ptr %33, %0
  br i1 %34, label %311, label %35, !prof !147

35:                                               ; preds = %31
  %36 = icmp eq ptr %24, null
  %37 = getelementptr inbounds i8, ptr %4, i64 8
  br label %38

38:                                               ; preds = %35, %306
  %39 = phi ptr [ %0, %35 ], [ %308, %306 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !151
  %42 = ptrtoint ptr %41 to i64
  %43 = and i64 %42, 4294967295
  %44 = icmp eq i64 %43, 1
  br i1 %44, label %306, label %45, !prof !226

45:                                               ; preds = %38
  br i1 %36, label %69, label %46, !prof !227

46:                                               ; preds = %45
  call void @sbitmap_zero(ptr noundef nonnull %24) #8
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 1
  %48 = call fastcc ptr @ei_start_1(ptr noundef nonnull %47) #9
  store i32 0, ptr %4, align 8, !tbaa.struct !170
  store ptr %48, ptr %37, align 8, !tbaa.struct !171
  %49 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %48, ptr noundef nonnull %3) #9, !range !172
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %69, label %51, !prof !228

51:                                               ; preds = %46, %64
  %52 = load ptr, ptr %3, align 8, !tbaa !124
  %53 = getelementptr inbounds %struct.edge_def, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !193
  %55 = load ptr, ptr @cfun, align 8, !tbaa !124
  %56 = getelementptr inbounds %struct.function, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !139
  %58 = getelementptr inbounds %struct.control_flow_graph, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !143
  %60 = icmp eq ptr %54, %59
  br i1 %60, label %64, label %61, !prof !229

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 9
  %63 = load i32, ptr %62, align 8, !tbaa !149
  call fastcc void @SET_BIT(ptr noundef nonnull %24, i32 noundef %63) #9
  br label %64

64:                                               ; preds = %51, %61
  call fastcc void @ei_next(ptr noundef nonnull %4) #9
  %65 = load i32, ptr %4, align 8
  %66 = load ptr, ptr %37, align 8
  %67 = call fastcc zeroext i8 @ei_cond(i32 %65, ptr %66, ptr noundef nonnull %3) #9, !range !172
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %51, !prof !230, !llvm.loop !231

69:                                               ; preds = %64, %46, %45
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 7
  %71 = load ptr, ptr %70, align 8, !tbaa !113
  %72 = load ptr, ptr %71, align 8, !tbaa !185
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 65535
  %75 = icmp eq i32 %74, 12
  br i1 %75, label %76, label %90, !prof !232

76:                                               ; preds = %69
  %77 = lshr i32 %73, 23
  %78 = and i32 %77, 2
  %79 = lshr i32 %73, 25
  %80 = and i32 %79, 1
  %81 = or disjoint i32 %78, %80
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %90, label %83, !prof !233

83:                                               ; preds = %76
  %84 = load ptr, ptr @cfun, align 8, !tbaa !124
  %85 = getelementptr inbounds %struct.function, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !139
  %87 = load ptr, ptr %86, align 8, !tbaa !141
  %88 = call ptr @cached_make_edge(ptr noundef null, ptr noundef %87, ptr noundef nonnull %39, i32 noundef 0) #8
  %89 = load ptr, ptr %70, align 8, !tbaa !113
  br label %90

90:                                               ; preds = %83, %76, %69
  %91 = phi ptr [ %89, %83 ], [ %71, %76 ], [ %71, %69 ]
  %92 = getelementptr inbounds %struct.rtl_bb_info, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !187
  %94 = load i32, ptr %93, align 8
  %95 = and i32 %94, 65535
  %96 = icmp eq i32 %95, 9
  br i1 %96, label %97, label %217, !prof !234

97:                                               ; preds = %90
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %98 = call ptr @find_reg_note(ptr noundef nonnull %93, i32 noundef 28, ptr noundef null) #8
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %216, !prof !235

100:                                              ; preds = %97
  %101 = call zeroext i8 @tablejump_p(ptr noundef nonnull %93, ptr noundef null, ptr noundef nonnull %5) #8
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %162, label %103, !prof !236

103:                                              ; preds = %100
  %104 = load ptr, ptr %5, align 8, !tbaa !124
  %105 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 1
  %106 = load ptr, ptr %105, align 8, !tbaa !113
  %107 = load i32, ptr %106, align 8
  %108 = and i32 %107, 65535
  %109 = icmp eq i32 %108, 20
  %110 = getelementptr inbounds %struct.rtx_def, ptr %106, i64 0, i32 1
  %111 = getelementptr inbounds %struct.rtx_def, ptr %106, i64 0, i32 1, i32 0, i32 0, i64 1
  %112 = select i1 %109, ptr %110, ptr %111, !prof !237
  %113 = load ptr, ptr %112, align 8, !tbaa !113
  %114 = load i32, ptr %113, align 8, !tbaa !238
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %126, !prof !240

116:                                              ; preds = %103
  %117 = zext nneg i32 %114 to i64
  br label %118

118:                                              ; preds = %116, %118
  %119 = phi i64 [ %117, %116 ], [ %120, %118 ]
  %120 = add nsw i64 %119, -1
  %121 = getelementptr inbounds %struct.rtvec_def, ptr %113, i64 0, i32 1, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !124
  %123 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !113
  call fastcc void @make_label_edge(ptr noundef %24, ptr noundef %39, ptr noundef %124, i32 noundef 0) #9
  %125 = icmp ugt i64 %119, 1
  br i1 %125, label %118, label %126, !prof !241, !llvm.loop !242

126:                                              ; preds = %118, %103
  %127 = load i32, ptr %93, align 8
  %128 = and i32 %127, 65535
  %129 = add nsw i32 %128, -7
  %130 = icmp ult i32 %129, 4
  br i1 %130, label %131, label %216, !prof !243

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 1
  %133 = load ptr, ptr %132, align 8, !tbaa !113
  %134 = load i32, ptr %133, align 8
  %135 = and i32 %134, 65535
  %136 = icmp eq i32 %135, 23
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  store ptr %133, ptr %5, align 8, !tbaa !124
  br label %141

138:                                              ; preds = %131
  %139 = call ptr @single_set_2(ptr noundef nonnull %93, ptr noundef nonnull %133) #8
  store ptr %139, ptr %5, align 8, !tbaa !124
  %140 = icmp eq ptr %139, null
  br i1 %140, label %216, label %141, !prof !244

141:                                              ; preds = %137, %138
  %142 = phi ptr [ %133, %137 ], [ %139, %138 ]
  %143 = getelementptr inbounds %struct.rtx_def, ptr %142, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !113
  %145 = load ptr, ptr @global_rtl, align 16, !tbaa !124
  %146 = icmp eq ptr %144, %145
  br i1 %146, label %147, label %216, !prof !237

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.rtx_def, ptr %142, i64 0, i32 1, i32 0, i32 0, i64 1
  %149 = load ptr, ptr %148, align 8, !tbaa !113
  %150 = load i32, ptr %149, align 8
  %151 = and i32 %150, 65535
  %152 = icmp eq i32 %151, 47
  br i1 %152, label %153, label %216, !prof !245

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.rtx_def, ptr %149, i64 0, i32 1, i32 0, i32 0, i64 2
  %155 = load ptr, ptr %154, align 8, !tbaa !113
  %156 = load i32, ptr %155, align 8
  %157 = and i32 %156, 65535
  %158 = icmp eq i32 %157, 44
  br i1 %158, label %159, label %216

159:                                              ; preds = %153
  %160 = getelementptr inbounds %struct.rtx_def, ptr %155, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !113
  call fastcc void @make_label_edge(ptr noundef %24, ptr noundef %39, ptr noundef %161, i32 noundef 0) #9
  br label %216

162:                                              ; preds = %100
  %163 = call i32 @computed_jump_p(ptr noundef nonnull %93) #8
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %175, label %165, !prof !246

165:                                              ; preds = %162
  %166 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 5), align 8, !tbaa !113
  %167 = icmp eq ptr %166, null
  br i1 %167, label %216, label %168

168:                                              ; preds = %165, %168
  %169 = phi ptr [ %173, %168 ], [ %166, %165 ]
  %170 = getelementptr inbounds %struct.rtx_def, ptr %169, i64 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !113
  call fastcc void @make_label_edge(ptr noundef %24, ptr noundef %39, ptr noundef %171, i32 noundef 2) #9
  %172 = getelementptr inbounds %struct.rtx_def, ptr %169, i64 0, i32 1, i32 0, i32 0, i64 1
  %173 = load ptr, ptr %172, align 8, !tbaa !113
  %174 = icmp eq ptr %173, null
  br i1 %174, label %216, label %168, !llvm.loop !247

175:                                              ; preds = %162
  %176 = call i32 @returnjump_p(ptr noundef nonnull %93) #8
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %185, label %178, !prof !248

178:                                              ; preds = %175
  %179 = load ptr, ptr @cfun, align 8, !tbaa !124
  %180 = getelementptr inbounds %struct.function, ptr %179, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !139
  %182 = getelementptr inbounds %struct.control_flow_graph, ptr %181, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !143
  %184 = call ptr @cached_make_edge(ptr noundef %24, ptr noundef nonnull %39, ptr noundef %183, i32 noundef 0) #8
  br label %216

185:                                              ; preds = %175
  %186 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 1
  %187 = load ptr, ptr %186, align 8, !tbaa !113
  %188 = call ptr @extract_asm_operands(ptr noundef %187) #8
  store ptr %188, ptr %5, align 8, !tbaa !124
  %189 = icmp eq ptr %188, null
  br i1 %189, label %208, label %190, !prof !249

190:                                              ; preds = %185
  %191 = getelementptr inbounds %struct.rtx_def, ptr %188, i64 1
  %192 = load ptr, ptr %191, align 8, !tbaa !113
  %193 = load i32, ptr %192, align 8, !tbaa !238
  %194 = icmp sgt i32 %193, 0
  br i1 %194, label %195, label %216

195:                                              ; preds = %190
  %196 = zext nneg i32 %193 to i64
  br label %197

197:                                              ; preds = %195, %197
  %198 = phi i64 [ 0, %195 ], [ %206, %197 ]
  %199 = load ptr, ptr %5, align 8, !tbaa !124
  %200 = getelementptr inbounds %struct.rtx_def, ptr %199, i64 1
  %201 = load ptr, ptr %200, align 8, !tbaa !113
  %202 = getelementptr inbounds %struct.rtvec_def, ptr %201, i64 0, i32 1, i64 %198
  %203 = load ptr, ptr %202, align 8, !tbaa !124
  %204 = getelementptr inbounds %struct.rtx_def, ptr %203, i64 0, i32 1
  %205 = load ptr, ptr %204, align 8, !tbaa !113
  call fastcc void @make_label_edge(ptr noundef %24, ptr noundef %39, ptr noundef %205, i32 noundef 0) #9
  %206 = add nuw nsw i64 %198, 1
  %207 = icmp eq i64 %206, %196
  br i1 %207, label %216, label %197, !llvm.loop !250

208:                                              ; preds = %185
  %209 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 1, i32 1, i32 0, i32 0, i64 2
  %210 = load ptr, ptr %209, align 8, !tbaa !113
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %214, !prof !251

212:                                              ; preds = %208
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 321, ptr noundef nonnull @.str.1) #8
  %213 = load ptr, ptr %209, align 8, !tbaa !113
  br label %214

214:                                              ; preds = %208, %212
  %215 = phi ptr [ %210, %208 ], [ %213, %212 ]
  call fastcc void @make_label_edge(ptr noundef %24, ptr noundef nonnull %39, ptr noundef %215, i32 noundef 0) #9
  br label %216

216:                                              ; preds = %168, %197, %126, %165, %190, %138, %141, %147, %153, %159, %178, %214, %97
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br label %217

217:                                              ; preds = %216, %90
  %218 = icmp eq i32 %95, 10
  br i1 %218, label %219, label %230, !prof !252

219:                                              ; preds = %217
  %220 = load i32, ptr %93, align 8
  %221 = and i32 %220, 16777216
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %233, label %223, !prof !253

223:                                              ; preds = %219
  %224 = load ptr, ptr @cfun, align 8, !tbaa !124
  %225 = getelementptr inbounds %struct.function, ptr %224, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !139
  %227 = getelementptr inbounds %struct.control_flow_graph, ptr %226, i64 0, i32 1
  %228 = load ptr, ptr %227, align 8, !tbaa !143
  %229 = call ptr @cached_make_edge(ptr noundef %24, ptr noundef %39, ptr noundef %228, i32 noundef 258) #8
  br label %250

230:                                              ; preds = %217
  %231 = load i32, ptr @flag_non_call_exceptions, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %250, label %233, !prof !254

233:                                              ; preds = %219, %230
  call void @rtl_make_eh_edge(ptr noundef %24, ptr noundef %39, ptr noundef nonnull %93) #9
  %234 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 10), align 8
  %235 = icmp ne ptr %234, null
  %236 = select i1 %218, i1 %235, i1 false
  br i1 %236, label %237, label %250, !prof !255

237:                                              ; preds = %233
  %238 = call zeroext i8 @can_nonlocal_goto(ptr noundef nonnull %93) #8
  %239 = icmp eq i8 %238, 0
  %240 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 10), align 8
  %241 = icmp eq ptr %240, null
  %242 = select i1 %239, i1 true, i1 %241
  br i1 %242, label %250, label %243

243:                                              ; preds = %237, %243
  %244 = phi ptr [ %248, %243 ], [ %240, %237 ]
  %245 = getelementptr inbounds %struct.rtx_def, ptr %244, i64 0, i32 1
  %246 = load ptr, ptr %245, align 8, !tbaa !113
  call fastcc void @make_label_edge(ptr noundef %24, ptr noundef %39, ptr noundef %246, i32 noundef 6) #9
  %247 = getelementptr inbounds %struct.rtx_def, ptr %244, i64 0, i32 1, i32 0, i32 0, i64 1
  %248 = load ptr, ptr %247, align 8, !tbaa !113
  %249 = icmp eq ptr %248, null
  br i1 %249, label %250, label %243, !llvm.loop !256

250:                                              ; preds = %243, %230, %237, %233, %223
  %251 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1, i32 0, i32 0, i64 2
  %252 = load ptr, ptr %251, align 8, !tbaa !113
  %253 = load ptr, ptr @cfun, align 8, !tbaa !124
  %254 = getelementptr inbounds %struct.function, ptr %253, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !139
  %256 = getelementptr inbounds %struct.control_flow_graph, ptr %255, i64 0, i32 1
  %257 = load ptr, ptr %256, align 8, !tbaa !143
  %258 = call ptr @find_edge(ptr noundef %39, ptr noundef %257) #8
  %259 = icmp eq ptr %258, null
  br i1 %259, label %267, label %260, !prof !257

260:                                              ; preds = %250
  %261 = getelementptr inbounds %struct.edge_def, ptr %258, i64 0, i32 7
  %262 = load i32, ptr %261, align 8, !tbaa !258
  %263 = and i32 %262, 1
  %264 = icmp ne i32 %263, 0
  %265 = icmp eq ptr %252, null
  %266 = select i1 %264, i1 true, i1 %265
  br i1 %266, label %283, label %269, !prof !259

267:                                              ; preds = %250
  %268 = icmp eq ptr %252, null
  br i1 %268, label %283, label %269, !prof !260

269:                                              ; preds = %260, %267
  br label %270

270:                                              ; preds = %269, %279
  %271 = phi ptr [ %281, %279 ], [ %252, %269 ]
  %272 = load i32, ptr %271, align 8
  %273 = and i32 %272, 65535
  %274 = icmp eq i32 %273, 13
  br i1 %274, label %275, label %290, !prof !261

275:                                              ; preds = %270
  %276 = getelementptr inbounds %struct.rtx_def, ptr %271, i64 1
  %277 = load i32, ptr %276, align 8, !tbaa !113
  %278 = icmp eq i32 %277, 10
  br i1 %278, label %290, label %279, !prof !262

279:                                              ; preds = %275
  %280 = getelementptr inbounds %struct.rtx_def, ptr %271, i64 0, i32 1, i32 0, i32 0, i64 2
  %281 = load ptr, ptr %280, align 8, !tbaa !113
  %282 = icmp eq ptr %281, null
  br i1 %282, label %283, label %270, !prof !263, !llvm.loop !264

283:                                              ; preds = %279, %260, %267
  %284 = load ptr, ptr @cfun, align 8, !tbaa !124
  %285 = getelementptr inbounds %struct.function, ptr %284, i64 0, i32 1
  %286 = load ptr, ptr %285, align 8, !tbaa !139
  %287 = getelementptr inbounds %struct.control_flow_graph, ptr %286, i64 0, i32 1
  %288 = load ptr, ptr %287, align 8, !tbaa !143
  %289 = call ptr @cached_make_edge(ptr noundef %24, ptr noundef %39, ptr noundef %288, i32 noundef 1) #8
  br label %306

290:                                              ; preds = %275, %270
  %291 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 6
  %292 = load ptr, ptr %291, align 8, !tbaa !144
  %293 = load ptr, ptr @cfun, align 8, !tbaa !124
  %294 = getelementptr inbounds %struct.function, ptr %293, i64 0, i32 1
  %295 = load ptr, ptr %294, align 8, !tbaa !139
  %296 = getelementptr inbounds %struct.control_flow_graph, ptr %295, i64 0, i32 1
  %297 = load ptr, ptr %296, align 8, !tbaa !143
  %298 = icmp eq ptr %292, %297
  br i1 %298, label %306, label %299, !prof !265

299:                                              ; preds = %290
  %300 = getelementptr inbounds %struct.basic_block_def, ptr %292, i64 0, i32 7
  %301 = load ptr, ptr %300, align 8, !tbaa !113
  %302 = load ptr, ptr %301, align 8, !tbaa !185
  %303 = icmp eq ptr %271, %302
  br i1 %303, label %304, label %306, !prof !266

304:                                              ; preds = %299
  %305 = call ptr @cached_make_edge(ptr noundef %24, ptr noundef nonnull %39, ptr noundef nonnull %292, i32 noundef 1) #8
  br label %306

306:                                              ; preds = %283, %299, %304, %290, %38
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  %307 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 6
  %308 = load ptr, ptr %307, align 8, !tbaa !144
  %309 = load ptr, ptr %32, align 8, !tbaa !144
  %310 = icmp eq ptr %308, %309
  br i1 %310, label %311, label %38, !prof !180, !llvm.loop !267

311:                                              ; preds = %306, %31
  %312 = icmp eq ptr %24, null
  br i1 %312, label %314, label %313, !prof !268

313:                                              ; preds = %311
  call void @free(ptr noundef nonnull %24) #9
  br label %314

314:                                              ; preds = %313, %311
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #3 !prof !269 !PGOFuncName !270 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !271 !PGOFuncName !272 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #9, !range !172
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !273

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #9
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !124
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !274 !PGOFuncName !275 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !276

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #9
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #9
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !277

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 738, ptr noundef nonnull @.str.1) #8
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !278
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !278
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_outgoing_frequencies(ptr noundef %0) unnamed_addr #0 !prof !280 !PGOFuncName !281 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !282
  %6 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %5) #9
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %52, !prof !283

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !113
  %11 = getelementptr inbounds %struct.rtl_bb_info, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !187
  %13 = tail call ptr @find_reg_note(ptr noundef %12, i32 noundef 13, ptr noundef null) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %52, label %15, !prof !284

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !113
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !113
  %20 = trunc i64 %19 to i32
  %21 = load ptr, ptr %4, align 8, !tbaa !282
  %22 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %21, i32 noundef 0) #9
  %23 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !258
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27, !prof !285

27:                                               ; preds = %15
  %28 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %21, i32 noundef 1) #9
  br label %29

29:                                               ; preds = %15, %27
  %30 = phi ptr [ %28, %27 ], [ %22, %15 ]
  %31 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 8
  store i32 %20, ptr %31, align 4, !tbaa !177
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %33 = load i64, ptr %32, align 8, !tbaa !168
  %34 = shl i64 %19, 32
  %35 = ashr exact i64 %34, 32
  %36 = mul nsw i64 %33, %35
  %37 = add nsw i64 %36, 5000
  %38 = sdiv i64 %37, 10000
  %39 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 9
  store i64 %38, ptr %39, align 8, !tbaa !174
  %40 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %21, i32 noundef 0) #9
  %41 = getelementptr inbounds %struct.edge_def, ptr %40, i64 0, i32 7
  %42 = load i32, ptr %41, align 8, !tbaa !258
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47, !prof !285

45:                                               ; preds = %29
  %46 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %21, i32 noundef 1) #9
  br label %47

47:                                               ; preds = %29, %45
  %48 = phi ptr [ %46, %45 ], [ %40, %29 ]
  %49 = sub nsw i32 10000, %20
  %50 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 8
  store i32 %49, ptr %50, align 4, !tbaa !177
  %51 = sub nsw i64 %33, %38
  br label %83

52:                                               ; preds = %8, %1
  %53 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %0) #9, !range !172
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %60, label %55, !prof !286

55:                                               ; preds = %52
  %56 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %0) #9
  %57 = getelementptr inbounds %struct.edge_def, ptr %56, i64 0, i32 8
  store i32 10000, ptr %57, align 4, !tbaa !177
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %59 = load i64, ptr %58, align 8, !tbaa !168
  br label %83

60:                                               ; preds = %52
  tail call void @guess_outgoing_edge_probabilities(ptr noundef nonnull %0) #8
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %62 = load i64, ptr %61, align 8, !tbaa !168
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %87, label %64, !prof !287

64:                                               ; preds = %60
  %65 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %4) #9
  store i32 0, ptr %3, align 8, !tbaa.struct !170
  %66 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %65, ptr %66, align 8, !tbaa.struct !171
  %67 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %65, ptr noundef nonnull %2) #9, !range !172
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %87, label %69

69:                                               ; preds = %64, %69
  %70 = load i64, ptr %61, align 8, !tbaa !168
  %71 = load ptr, ptr %2, align 8, !tbaa !124
  %72 = getelementptr inbounds %struct.edge_def, ptr %71, i64 0, i32 8
  %73 = load i32, ptr %72, align 4, !tbaa !177
  %74 = sext i32 %73 to i64
  %75 = mul nsw i64 %70, %74
  %76 = add nsw i64 %75, 5000
  %77 = sdiv i64 %76, 10000
  %78 = getelementptr inbounds %struct.edge_def, ptr %71, i64 0, i32 9
  store i64 %77, ptr %78, align 8, !tbaa !174
  call fastcc void @ei_next(ptr noundef nonnull %3) #9
  %79 = load i32, ptr %3, align 8
  %80 = load ptr, ptr %66, align 8
  %81 = call fastcc zeroext i8 @ei_cond(i32 %79, ptr %80, ptr noundef nonnull %2) #9, !range !172
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %87, label %69, !llvm.loop !288

83:                                               ; preds = %55, %47
  %84 = phi ptr [ %48, %47 ], [ %56, %55 ]
  %85 = phi i64 [ %51, %47 ], [ %59, %55 ]
  %86 = getelementptr inbounds %struct.edge_def, ptr %84, i64 0, i32 9
  store i64 %85, ptr %86, align 8, !tbaa !174
  br label %87

87:                                               ; preds = %69, %83, %64, %60
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret void
}

; Function Attrs: optsize
declare ptr @cached_make_edge(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @split_block(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @remove_edge(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @prev_nonnote_insn_bb(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @purge_dead_edges(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @tablejump_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @purge_dead_tablejump_edges(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !289 !PGOFuncName !290 {
  %3 = alloca %struct.edge_iterator, align 8
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !113
  %6 = getelementptr inbounds %struct.rtl_bb_info, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !187
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !113
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 20
  %13 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %14 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = select i1 %12, ptr %13, ptr %14, !prof !237
  %16 = load ptr, ptr %15, align 8, !tbaa !113
  %17 = load i32, ptr %16, align 8, !tbaa !238
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %29, !prof !240

19:                                               ; preds = %2
  %20 = zext nneg i32 %17 to i64
  br label %21

21:                                               ; preds = %19, %21
  %22 = phi i64 [ %20, %19 ], [ %23, %21 ]
  %23 = add nsw i64 %22, -1
  %24 = getelementptr inbounds %struct.rtvec_def, ptr %16, i64 0, i32 1, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !124
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !113
  tail call fastcc void @mark_tablejump_edge(ptr noundef %27) #9
  %28 = icmp ugt i64 %22, 1
  br i1 %28, label %21, label %29, !prof !241, !llvm.loop !291

29:                                               ; preds = %21, %2
  %30 = load i32, ptr %7, align 8
  %31 = and i32 %30, 65535
  %32 = add nsw i32 %31, -7
  %33 = icmp ult i32 %32, 4
  br i1 %33, label %34, label %64, !prof !243

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !113
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 23
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = tail call ptr @single_set_2(ptr noundef nonnull %7, ptr noundef nonnull %36) #8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %64, label %43, !prof !244

43:                                               ; preds = %34, %40
  %44 = phi ptr [ %41, %40 ], [ %36, %34 ]
  %45 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !113
  %47 = load ptr, ptr @global_rtl, align 16, !tbaa !124
  %48 = icmp eq ptr %46, %47
  br i1 %48, label %49, label %64, !prof !237

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1, i32 0, i32 0, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !113
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 65535
  %54 = icmp eq i32 %53, 47
  br i1 %54, label %55, label %64, !prof !245

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 2
  %57 = load ptr, ptr %56, align 8, !tbaa !113
  %58 = load i32, ptr %57, align 8
  %59 = and i32 %58, 65535
  %60 = icmp eq i32 %59, 44
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !113
  tail call fastcc void @mark_tablejump_edge(ptr noundef %63) #9
  br label %64

64:                                               ; preds = %29, %61, %55, %49, %43, %40
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %66 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %65) #9
  store i32 0, ptr %3, align 8, !tbaa.struct !170
  %67 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %66, ptr %67, align 8, !tbaa.struct !171
  %68 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %66) #9
  %69 = icmp eq ptr %68, null
  br i1 %69, label %98, label %70, !prof !292

70:                                               ; preds = %64, %90
  %71 = phi ptr [ %91, %90 ], [ %66, %64 ]
  %72 = phi i32 [ %92, %90 ], [ 0, %64 ]
  %73 = phi ptr [ %93, %90 ], [ %68, %64 ]
  %74 = getelementptr inbounds %struct.edge_def, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !193
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !151
  %78 = ptrtoint ptr %77 to i64
  %79 = and i64 %78, 32
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %84, label %81, !prof !293

81:                                               ; preds = %70
  %82 = and i64 %78, -33
  %83 = inttoptr i64 %82 to ptr
  store ptr %83, ptr %76, align 8, !tbaa !151
  br label %95

84:                                               ; preds = %70
  %85 = getelementptr inbounds %struct.edge_def, ptr %73, i64 0, i32 7
  %86 = load i32, ptr %85, align 8, !tbaa !258
  %87 = and i32 %86, 10
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  tail call void @remove_edge(ptr noundef nonnull %73) #8
  br label %90

90:                                               ; preds = %89, %95
  %91 = phi ptr [ %71, %89 ], [ %97, %95 ]
  %92 = phi i32 [ %72, %89 ], [ %96, %95 ]
  %93 = tail call fastcc ptr @ei_safe_edge(i32 %92, ptr %91) #9
  %94 = icmp eq ptr %93, null
  br i1 %94, label %98, label %70, !prof !294, !llvm.loop !295

95:                                               ; preds = %84, %81
  call fastcc void @ei_next(ptr noundef nonnull %3) #9
  %96 = load i32, ptr %3, align 8
  %97 = load ptr, ptr %67, align 8
  br label %90

98:                                               ; preds = %90, %64
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_tablejump_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !296 !PGOFuncName !297 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 12
  br i1 %4, label %6, label %5, !prof !298

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 387, ptr noundef nonnull @.str.1) #8
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !113
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10, !prof !299

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !113
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !151
  %15 = ptrtoint ptr %14 to i64
  %16 = or i64 %15, 32
  %17 = inttoptr i64 %16 to ptr
  store ptr %17, ptr %13, align 8, !tbaa !151
  br label %18

18:                                               ; preds = %6, %10
  ret void
}

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_safe_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !300 !PGOFuncName !301 {
  %3 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #9, !range !172
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7, !prof !302

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #9
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !303 !PGOFuncName !304 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !305

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #9
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #9
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !274 !PGOFuncName !306 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !276

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #9
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #9
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !307 !PGOFuncName !308 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !309

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !310
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !312 !PGOFuncName !313 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !314

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 687, ptr noundef nonnull @.str.1) #8
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !124
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !315 !PGOFuncName !316 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !124
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #5 !prof !317 !PGOFuncName !318 {
  %3 = load ptr, ptr %0, align 8, !tbaa !319
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !321

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
  %15 = load i64, ptr %14, align 8, !tbaa !150
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !113
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !113
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !150
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !150
  ret void
}

; Function Attrs: optsize
declare i32 @computed_jump_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @returnjump_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @extract_asm_operands(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !322 !PGOFuncName !323 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !282
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #9
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !324 !PGOFuncName !325 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #9, !range !172
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !326

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 645, ptr noundef nonnull @.str.1) #8
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !282
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #9
  ret ptr %8
}

; Function Attrs: optsize
declare void @guess_outgoing_edge_probabilities(ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!110}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109}
!35 = !{ptr @inside_basic_block_p, ptr @fancy_abort, i64 1}
!36 = !{ptr @control_flow_insn_p, ptr @find_reg_note, i64 298925}
!37 = !{ptr @control_flow_insn_p, ptr @can_nonlocal_goto, i64 298739}
!38 = !{ptr @control_flow_insn_p, ptr @fancy_abort, i64 1}
!39 = !{ptr @control_flow_insn_p, ptr @can_throw_internal, i64 298740}
!40 = !{ptr @rtl_make_eh_edge, ptr @get_eh_landing_pad_from_rtx, i64 63}
!41 = !{ptr @rtl_make_eh_edge, ptr @make_label_edge, i64 1}
!42 = !{ptr @make_label_edge, ptr @fancy_abort, i64 1}
!43 = !{ptr @make_label_edge, ptr @cached_make_edge, i64 274896}
!44 = !{ptr @find_many_sub_basic_blocks, ptr @find_bb_boundaries, i64 228360}
!45 = !{ptr @find_many_sub_basic_blocks, ptr @make_edges, i64 133}
!46 = !{ptr @find_many_sub_basic_blocks, ptr @ei_start_1, i64 18469}
!47 = !{ptr @find_many_sub_basic_blocks, ptr @ei_cond, i64 45342}
!48 = !{ptr @find_many_sub_basic_blocks, ptr @ei_next, i64 26873}
!49 = !{ptr @find_many_sub_basic_blocks, ptr @compute_outgoing_frequencies, i64 245137}
!50 = !{ptr @find_bb_boundaries, ptr @inside_basic_block_p, i64 19054}
!51 = !{ptr @find_bb_boundaries, ptr @split_block, i64 18747}
!52 = !{ptr @find_bb_boundaries, ptr @remove_edge, i64 18747}
!53 = !{ptr @find_bb_boundaries, ptr @make_edge, i64 1}
!54 = !{ptr @find_bb_boundaries, ptr @prev_nonnote_insn_bb, i64 1}
!55 = !{ptr @find_bb_boundaries, ptr @control_flow_insn_p, i64 1088767}
!56 = !{ptr @find_bb_boundaries, ptr @purge_dead_edges, i64 230076}
!57 = !{ptr @find_bb_boundaries, ptr @tablejump_p, i64 9241}
!58 = !{ptr @find_bb_boundaries, ptr @purge_dead_tablejump_edges, i64 24}
!59 = !{ptr @make_edges, ptr @sbitmap_alloc, i64 90}
!60 = !{ptr @make_edges, ptr @make_edge, i64 76}
!61 = !{ptr @make_edges, ptr @sbitmap_zero, i64 245317}
!62 = !{ptr @make_edges, ptr @ei_start_1, i64 245317}
!63 = !{ptr @make_edges, ptr @ei_cond, i64 616392}
!64 = !{ptr @make_edges, ptr @SET_BIT, i64 371028}
!65 = !{ptr @make_edges, ptr @ei_next, i64 371075}
!66 = !{ptr @make_edges, ptr @cached_make_edge, i64 174000}
!67 = !{ptr @make_edges, ptr @find_reg_note, i64 232707}
!68 = !{ptr @make_edges, ptr @tablejump_p, i64 232706}
!69 = !{ptr @make_edges, ptr @make_label_edge, i64 272896}
!70 = !{ptr @make_edges, ptr @single_set_2, i64 12}
!71 = !{ptr @make_edges, ptr @computed_jump_p, i64 232682}
!72 = !{ptr @make_edges, ptr @returnjump_p, i64 232681}
!73 = !{ptr @make_edges, ptr @extract_asm_operands, i64 232642}
!74 = !{ptr @make_edges, ptr @fancy_abort, i64 1}
!75 = !{ptr @make_edges, ptr @rtl_make_eh_edge, i64 65}
!76 = !{ptr @make_edges, ptr @can_nonlocal_goto, i64 1}
!77 = !{ptr @make_edges, ptr @find_edge, i64 246967}
!78 = !{ptr @make_edges, ptr @free, i64 90}
!79 = !{ptr @ei_cond, ptr @ei_end_p, i64 667050}
!80 = !{ptr @ei_cond, ptr @ei_edge, i64 401142}
!81 = !{ptr @ei_next, ptr @ei_container, i64 807809}
!82 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 403905}
!83 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!84 = !{ptr @compute_outgoing_frequencies, ptr @VEC_edge_base_length, i64 248823}
!85 = !{ptr @compute_outgoing_frequencies, ptr @find_reg_note, i64 160501}
!86 = !{ptr @compute_outgoing_frequencies, ptr @VEC_edge_base_index, i64 479427}
!87 = !{ptr @compute_outgoing_frequencies, ptr @single_succ_p, i64 89014}
!88 = !{ptr @compute_outgoing_frequencies, ptr @single_succ_edge, i64 88236}
!89 = !{ptr @compute_outgoing_frequencies, ptr @guess_outgoing_edge_probabilities, i64 778}
!90 = !{ptr @compute_outgoing_frequencies, ptr @ei_start_1, i64 1}
!91 = !{ptr @compute_outgoing_frequencies, ptr @ei_cond, i64 21}
!92 = !{ptr @compute_outgoing_frequencies, ptr @ei_next, i64 20}
!93 = !{ptr @purge_dead_tablejump_edges, ptr @mark_tablejump_edge, i64 38814}
!94 = !{ptr @purge_dead_tablejump_edges, ptr @single_set_2, i64 11}
!95 = !{ptr @purge_dead_tablejump_edges, ptr @ei_start_1, i64 23}
!96 = !{ptr @purge_dead_tablejump_edges, ptr @ei_safe_edge, i64 2672}
!97 = !{ptr @purge_dead_tablejump_edges, ptr @ei_next, i64 2648}
!98 = !{ptr @mark_tablejump_edge, ptr @fancy_abort, i64 1}
!99 = !{ptr @ei_safe_edge, ptr @ei_end_p, i64 2786}
!100 = !{ptr @ei_safe_edge, ptr @ei_edge, i64 2762}
!101 = !{ptr @ei_end_p, ptr @ei_container, i64 1339671}
!102 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 669836}
!103 = !{ptr @ei_edge, ptr @ei_container, i64 807809}
!104 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 403905}
!105 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!106 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 177249}
!107 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 88236}
!108 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!109 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 88236}
!110 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!111 = !{!"function_entry_count", i64 19052}
!112 = !{!"branch_weights", i32 1, i32 8795, i32 282, i32 1, i32 9672, i32 1, i32 307, i32 1}
!113 = !{!114, !114, i64 0}
!114 = !{!"omnipotent char", !115, i64 0}
!115 = !{!"Simple C/C++ TBAA"}
!116 = !{!"branch_weights", i32 1, i32 8795}
!117 = !{!"function_entry_count", i64 7460705}
!118 = !{!"branch_weights", i32 1, i32 259923, i32 8795, i32 1, i32 1053416, i32 298951, i32 5839319, i32 307}
!119 = !{!"branch_weights", i32 298926, i32 26}
!120 = !{!"branch_weights", i32 298740, i32 187}
!121 = !{!"branch_weights", i32 1, i32 212}
!122 = !{!"branch_weights", i32 298740, i32 1}
!123 = !{!"branch_weights", i32 1, i32 5839319}
!124 = !{!125, !125, i64 0}
!125 = !{!"any pointer", !114, i64 0}
!126 = !{!127, !127, i64 0}
!127 = !{!"int", !114, i64 0}
!128 = !{!"branch_weights", i32 5839319, i32 1}
!129 = !{!"function_entry_count", i64 63}
!130 = !{!"branch_weights", i32 64, i32 1}
!131 = !{!132, !125, i64 24}
!132 = !{!"eh_landing_pad_d", !125, i64 0, !125, i64 8, !125, i64 16, !125, i64 24, !127, i64 32}
!133 = !{!132, !125, i64 16}
!134 = !{!"function_entry_count", i64 274897}
!135 = !{!"cfgbuild.c:make_label_edge"}
!136 = !{!"branch_weights", i32 274898, i32 1}
!137 = !{!"branch_weights", i32 1, i32 274898}
!138 = !{!"function_entry_count", i64 133}
!139 = !{!140, !125, i64 8}
!140 = !{!"function", !125, i64 0, !125, i64 8, !125, i64 16, !125, i64 24, !125, i64 32, !125, i64 40, !125, i64 48, !125, i64 56, !125, i64 64, !125, i64 72, !125, i64 80, !125, i64 88, !125, i64 96, !127, i64 104, !127, i64 108, !127, i64 112, !127, i64 116, !127, i64 120, !127, i64 124, !125, i64 128, !127, i64 136, !127, i64 137, !127, i64 138, !127, i64 138, !127, i64 138, !127, i64 138, !127, i64 138, !127, i64 138, !127, i64 138, !127, i64 139, !127, i64 139, !127, i64 139, !127, i64 139, !127, i64 139, !127, i64 139, !127, i64 139}
!141 = !{!142, !125, i64 0}
!142 = !{!"control_flow_graph", !125, i64 0, !125, i64 8, !125, i64 16, !127, i64 24, !127, i64 28, !127, i64 32, !125, i64 40, !127, i64 48, !114, i64 52, !114, i64 60, !127, i64 68, !127, i64 72}
!143 = !{!142, !125, i64 8}
!144 = !{!145, !125, i64 56}
!145 = !{!"basic_block_def", !125, i64 0, !125, i64 8, !125, i64 16, !125, i64 24, !114, i64 32, !125, i64 48, !125, i64 56, !114, i64 64, !146, i64 72, !127, i64 80, !127, i64 84, !127, i64 88, !127, i64 92, !127, i64 96}
!146 = !{!"long", !114, i64 0}
!147 = !{!"branch_weights", i32 1, i32 133}
!148 = !{!"branch_weights", i32 0, i32 -2147483648}
!149 = !{!145, !127, i64 80}
!150 = !{!146, !146, i64 0}
!151 = !{!145, !125, i64 16}
!152 = !{!"branch_weights", i32 133, i32 684147}
!153 = distinct !{!153, !154}
!154 = !{!"llvm.loop.mustprogress"}
!155 = !{!"branch_weights", i32 230078, i32 472949}
!156 = !{!"branch_weights", i32 133, i32 702893}
!157 = distinct !{!157, !154}
!158 = !{!"branch_weights", i32 1, i32 3767}
!159 = !{!"branch_weights", i32 3634, i32 134}
!160 = distinct !{!160, !154}
!161 = !{!"branch_weights", i32 115364, i32 2147368284}
!162 = !{!"branch_weights", i32 450570, i32 248824}
!163 = !{!"branch_weights", i32 133, i32 699260}
!164 = distinct !{!164, !154}
!165 = !{!142, !127, i64 48}
!166 = !{!"branch_weights", i32 1, i32 134}
!167 = !{!"branch_weights", i32 1789029008, i32 -942913533, i32 145771985}
!168 = !{!145, !146, i64 72}
!169 = !{!145, !127, i64 88}
!170 = !{i64 0, i64 4, !126, i64 8, i64 8, !124}
!171 = !{i64 0, i64 8, !124}
!172 = !{i8 0, i8 2}
!173 = !{!"branch_weights", i32 1, i32 18746}
!174 = !{!175, !146, i64 56}
!175 = !{!"edge_def", !125, i64 0, !125, i64 8, !114, i64 16, !125, i64 24, !125, i64 32, !127, i64 40, !127, i64 44, !127, i64 48, !127, i64 52, !146, i64 56}
!176 = !{!175, !125, i64 0}
!177 = !{!175, !127, i64 52}
!178 = !{!"branch_weights", i32 18746, i32 8531}
!179 = distinct !{!179, !154}
!180 = !{!"branch_weights", i32 133, i32 679779}
!181 = distinct !{!181, !154}
!182 = distinct !{!182, !154}
!183 = !{!"function_entry_count", i64 230077}
!184 = !{!"cfgbuild.c:find_bb_boundaries"}
!185 = !{!186, !125, i64 0}
!186 = !{!"rtl_bb_info", !125, i64 0, !125, i64 8, !125, i64 16, !125, i64 24, !127, i64 32}
!187 = !{!186, !125, i64 8}
!188 = !{!"branch_weights", i32 1, i32 230078}
!189 = !{!"branch_weights", i32 124071, i32 106008}
!190 = !{!"branch_weights", i32 39811025, i32 -2059912714}
!191 = !{!"branch_weights", i32 307, i32 18747}
!192 = !{!"branch_weights", i32 18709, i32 39}
!193 = !{!175, !125, i64 8}
!194 = !{!"branch_weights", i32 18444, i32 265}
!195 = !{!"branch_weights", i32 265, i32 1}
!196 = !{!"branch_weights", i32 265, i32 0}
!197 = distinct !{!197, !154}
!198 = !{!"branch_weights", i32 8795, i32 9953}
!199 = !{!"branch_weights", i32 8795, i32 1}
!200 = !{!"branch_weights", i32 307, i32 1069723}
!201 = !{!"branch_weights", i32 307, i32 1}
!202 = !{!"branch_weights", i32 854236, i32 234540}
!203 = !{!"branch_weights", i32 230078, i32 858698}
!204 = !{!"branch_weights", i32 14247, i32 215832}
!205 = !{!"branch_weights", i32 215789, i32 43}
!206 = !{!"branch_weights", i32 43, i32 1}
!207 = !{!"branch_weights", i32 43, i32 0}
!208 = distinct !{!208, !154}
!209 = !{!"branch_weights", i32 220838, i32 9241}
!210 = !{!"branch_weights", i32 9218, i32 24}
!211 = !{!"cfgbuild.c:make_edges"}
!212 = !{!213, !125, i64 32}
!213 = !{!"rtl_data", !214, i64 0, !215, i64 40, !216, i64 96, !217, i64 112, !219, i64 208, !220, i64 248, !127, i64 312, !125, i64 320, !125, i64 328, !125, i64 336, !125, i64 344, !125, i64 352, !125, i64 360, !125, i64 368, !125, i64 376, !125, i64 384, !125, i64 392, !146, i64 400, !125, i64 408, !125, i64 416, !125, i64 424, !127, i64 432, !127, i64 436, !127, i64 440, !127, i64 444, !127, i64 448, !127, i64 452, !125, i64 456, !114, i64 464, !114, i64 465, !114, i64 466, !114, i64 467, !114, i64 468, !114, i64 469, !114, i64 470, !114, i64 471, !114, i64 472, !114, i64 473, !114, i64 474, !114, i64 475, !114, i64 476, !114, i64 477, !114, i64 478, !114, i64 479, !114, i64 480, !114, i64 481, !114, i64 482, !114, i64 483, !114, i64 484, !114, i64 485}
!214 = !{!"expr_status", !127, i64 0, !127, i64 4, !127, i64 8, !125, i64 16, !125, i64 24, !125, i64 32}
!215 = !{!"emit_status", !127, i64 0, !127, i64 4, !125, i64 8, !125, i64 16, !125, i64 24, !127, i64 32, !127, i64 36, !127, i64 40, !127, i64 44, !125, i64 48}
!216 = !{!"varasm_status", !125, i64 0, !127, i64 8}
!217 = !{!"incoming_args", !127, i64 0, !127, i64 4, !127, i64 8, !125, i64 16, !218, i64 24, !125, i64 88}
!218 = !{!"ix86_args", !127, i64 0, !127, i64 4, !127, i64 8, !127, i64 12, !127, i64 16, !127, i64 20, !127, i64 24, !127, i64 28, !127, i64 32, !127, i64 36, !127, i64 40, !127, i64 44, !127, i64 48, !127, i64 52, !127, i64 56, !127, i64 60}
!219 = !{!"function_subsections", !125, i64 0, !125, i64 8, !125, i64 16, !125, i64 24, !125, i64 32}
!220 = !{!"rtl_eh", !125, i64 0, !125, i64 8, !125, i64 16, !125, i64 24, !125, i64 32, !125, i64 40, !114, i64 48}
!221 = !{!"branch_weights", i32 134, i32 1}
!222 = !{!142, !127, i64 68}
!223 = !{!"branch_weights", i32 91, i32 44}
!224 = !{!142, !127, i64 32}
!225 = !{!"branch_weights", i32 77, i32 58}
!226 = !{!"branch_weights", i32 431089, i32 248824}
!227 = !{!"branch_weights", i32 1662, i32 247163}
!228 = !{!"branch_weights", i32 1, i32 247162}
!229 = !{!"branch_weights", i32 47, i32 373821}
!230 = !{!"branch_weights", i32 247162, i32 126705}
!231 = distinct !{!231, !154}
!232 = !{!"branch_weights", i32 132865, i32 115960}
!233 = !{!"branch_weights", i32 132865, i32 1}
!234 = !{!"branch_weights", i32 234458, i32 14367}
!235 = !{!"branch_weights", i32 234458, i32 1}
!236 = !{!"branch_weights", i32 234435, i32 24}
!237 = !{!"branch_weights", i32 24, i32 1}
!238 = !{!239, !127, i64 0}
!239 = !{!"rtvec_def", !127, i64 0, !114, i64 8}
!240 = !{!"branch_weights", i32 191, i32 1}
!241 = !{!"branch_weights", i32 323825, i32 191}
!242 = distinct !{!242, !154}
!243 = !{!"branch_weights", i32 30674, i32 576}
!244 = !{!"branch_weights", i32 94373343, i32 2053110305}
!245 = !{!"branch_weights", i32 1, i32 24}
!246 = !{!"branch_weights", i32 234435, i32 1}
!247 = distinct !{!247, !154}
!248 = !{!"branch_weights", i32 234397, i32 39}
!249 = !{!"branch_weights", i32 234397, i32 1}
!250 = distinct !{!250, !154}
!251 = !{!"branch_weights", i32 1, i32 234397}
!252 = !{!"branch_weights", i32 83, i32 248742}
!253 = !{!"branch_weights", i32 64, i32 20}
!254 = !{!"branch_weights", i32 2147468439, i32 15209}
!255 = !{!"branch_weights", i32 64, i32 4161}
!256 = distinct !{!256, !154}
!257 = !{!"branch_weights", i32 248729, i32 96}
!258 = !{!175, !127, i64 48}
!259 = !{!"branch_weights", i32 -1653370870, i32 -427003915}
!260 = !{!"branch_weights", i32 13434886, i32 2134048762}
!261 = !{!"branch_weights", i32 118069, i32 130718}
!262 = !{!"branch_weights", i32 248824, i32 1}
!263 = !{!"branch_weights", i32 155, i32 994989}
!264 = distinct !{!264, !154}
!265 = !{!"branch_weights", i32 32, i32 248755}
!266 = !{!"branch_weights", i32 174748, i32 74008}
!267 = distinct !{!267, !154}
!268 = !{!"branch_weights", i32 44, i32 91}
!269 = !{!"function_entry_count", i64 265931}
!270 = !{!"cfgbuild.c:ei_start_1"}
!271 = !{!"function_entry_count", i64 667050}
!272 = !{!"cfgbuild.c:ei_cond"}
!273 = !{!"branch_weights", i32 401143, i32 265909}
!274 = !{!"function_entry_count", i64 403905}
!275 = !{!"cfgbuild.c:ei_next"}
!276 = !{!"branch_weights", i32 1, i32 403906}
!277 = !{!"branch_weights", i32 403906, i32 1}
!278 = !{!279, !127, i64 0}
!279 = !{!"", !127, i64 0, !125, i64 8}
!280 = !{!"function_entry_count", i64 248823}
!281 = !{!"cfgbuild.c:compute_outgoing_frequencies"}
!282 = !{!145, !125, i64 8}
!283 = !{!"branch_weights", i32 160502, i32 88323}
!284 = !{!"branch_weights", i32 692, i32 159811}
!285 = !{!"branch_weights", i32 87665, i32 72147}
!286 = !{!"branch_weights", i32 778, i32 88237}
!287 = !{!"branch_weights", i32 778, i32 1}
!288 = distinct !{!288, !154}
!289 = !{!"function_entry_count", i64 23}
!290 = !{!"cfgbuild.c:purge_dead_tablejump_edges"}
!291 = distinct !{!291, !154}
!292 = !{!"branch_weights", i32 1, i32 191}
!293 = !{!"branch_weights", i32 1, i32 2764}
!294 = !{!"branch_weights", i32 191, i32 21921}
!295 = distinct !{!295, !154}
!296 = !{!"function_entry_count", i64 40501}
!297 = !{!"cfgbuild.c:mark_tablejump_edge"}
!298 = !{!"branch_weights", i32 40502, i32 1}
!299 = !{!"branch_weights", i32 1, i32 40502}
!300 = !{!"function_entry_count", i64 2786}
!301 = !{!"cfgbuild.c:ei_safe_edge"}
!302 = !{!"branch_weights", i32 2764, i32 24}
!303 = !{!"function_entry_count", i64 669836}
!304 = !{!"cfgbuild.c:ei_end_p"}
!305 = !{!"branch_weights", i32 1, i32 669837}
!306 = !{!"cfgbuild.c:ei_edge"}
!307 = !{!"function_entry_count", i64 1499813}
!308 = !{!"cfgbuild.c:VEC_edge_base_length"}
!309 = !{!"branch_weights", i32 1, i32 1499814}
!310 = !{!311, !127, i64 0}
!311 = !{!"VEC_edge_base", !127, i64 0, !127, i64 4, !114, i64 8}
!312 = !{!"function_entry_count", i64 2955292}
!313 = !{!"cfgbuild.c:ei_container"}
!314 = !{!"branch_weights", i32 1, i32 2955293}
!315 = !{!"function_entry_count", i64 1131381}
!316 = !{!"cfgbuild.c:VEC_edge_base_index"}
!317 = !{!"function_entry_count", i64 373820}
!318 = !{!"cfgbuild.c:SET_BIT"}
!319 = !{!320, !125, i64 0}
!320 = !{!"simple_bitmap_def", !125, i64 0, !127, i64 8, !127, i64 12, !114, i64 16}
!321 = !{!"branch_weights", i32 373821, i32 1}
!322 = !{!"function_entry_count", i64 177249}
!323 = !{!"cfgbuild.c:single_succ_p"}
!324 = !{!"function_entry_count", i64 88236}
!325 = !{!"cfgbuild.c:single_succ_edge"}
!326 = !{!"branch_weights", i32 1, i32 88237}
