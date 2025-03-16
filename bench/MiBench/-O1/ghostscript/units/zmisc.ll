; ModuleID = 'zmisc.c'
source_filename = "zmisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.op_array_table_s = type { %struct.ref_s, ptr, i32, i32, i32, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@zmisc_op_defs.op_defs_ = internal constant [11 x %struct.op_def] [%struct.op_def { ptr @.str, ptr @zbind }, %struct.op_def { ptr @.str.1, ptr @zgetenv }, %struct.op_def { ptr @.str.2, ptr @zmakeoperator }, %struct.op_def { ptr @.str.3, ptr @zoserrno }, %struct.op_def { ptr @.str.4, ptr @zoserrorstring }, %struct.op_def { ptr @.str.5, ptr @zrealtime }, %struct.op_def { ptr @.str.6, ptr @zserialnumber }, %struct.op_def { ptr @.str.7, ptr @zsetdebug }, %struct.op_def { ptr @.str.8, ptr @zsetoserrno }, %struct.op_def { ptr @.str.9, ptr @zusertime }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [6 x i8] c"1bind\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"1getenv\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"2.makeoperator\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"0.oserrno\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"1.oserrorstring\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"0realtime\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"1serialnumber\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"2.setdebug\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"1.setoserrno\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"0usertime\00", align 1
@o_stack = external global %struct.ref_stack_s, align 8
@gs_imemory = external global %struct.gs_dual_memory_s, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"getenv name\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"getenv value\00", align 1
@op_array_table_global = external global %struct.op_array_table_s, align 8
@op_array_table_local = external global %struct.op_array_table_s, align 8
@.str.13 = private unnamed_addr constant [13 x i8] c"makeoperator\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c".oserrorstring\00", align 1
@gs_serialnumber = external local_unnamed_addr global i64, align 8
@gs_debug = external local_unnamed_addr global [128 x i8], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zmisc_op_defs() local_unnamed_addr #0 {
  ret ptr @zmisc_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zbind(ptr noundef %0) #1 {
  %2 = alloca %struct.ref_s, align 8
  %3 = alloca %struct.ref_s, align 8
  %4 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2)
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !5
  switch i8 %6, label %10 [
    i8 4, label %12
    i8 5, label %12
    i8 6, label %12
    i8 20, label %7
  ]

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  br label %12

10:                                               ; preds = %1
  %11 = tail call i32 @check_type_failed(ptr noundef %0) #10
  br label %165

12:                                               ; preds = %1, %1, %1, %7
  %13 = phi ptr [ %9, %7 ], [ %0, %1 ], [ %0, %1 ], [ %0, %1 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %13, i64 16, i1 false)
  %14 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %15 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !8
  %16 = icmp ugt ptr %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !15
  br label %165

18:                                               ; preds = %12
  store ptr %14, ptr @o_stack, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !17
  br label %19

19:                                               ; preds = %18, %148
  %20 = phi ptr [ %14, %18 ], [ %150, %148 ]
  %21 = phi i32 [ 1, %18 ], [ %151, %148 ]
  %22 = phi i32 [ undef, %18 ], [ %152, %148 ]
  br label %23

23:                                               ; preds = %19, %161
  %24 = phi ptr [ %162, %161 ], [ %20, %19 ]
  %25 = phi i32 [ %155, %161 ], [ %21, %19 ]
  %26 = getelementptr inbounds %struct.tas_s, ptr %24, i64 0, i32 1
  %27 = load i16, ptr %26, align 2, !tbaa !24
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %153, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.tas_s, ptr %24, i64 0, i32 1
  %31 = getelementptr inbounds %struct.ref_s, ptr %24, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !5
  %33 = add i16 %27, -1
  store i16 %33, ptr %30, align 2, !tbaa !24
  %34 = load i16, ptr %32, align 2, !tbaa !18
  %35 = icmp ugt i16 %34, 16383
  br i1 %35, label %36, label %76

36:                                               ; preds = %29
  %37 = icmp ugt i16 %34, -8193
  br i1 %37, label %38, label %74

38:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %39 = and i16 %34, 4095
  %40 = zext nneg i16 %39 to i32
  call void @name_index_ref(i32 noundef %40, ptr noundef nonnull %3) #10
  %41 = call i32 @name_index(ptr noundef nonnull %3) #10
  %42 = call ptr @dict_find_name_by_index(i32 noundef %41) #10
  %43 = icmp eq ptr %42, null
  br i1 %43, label %73, label %44

44:                                               ; preds = %38
  %45 = load i16, ptr %42, align 8, !tbaa !25
  %46 = icmp ugt i16 %45, 5375
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds i8, ptr %42, i64 1
  %49 = load i8, ptr %48, align 1, !tbaa !5
  %50 = zext i8 %49 to i32
  br label %51

51:                                               ; preds = %44, %47
  %52 = phi i32 [ %50, %47 ], [ 15, %44 ]
  %53 = icmp eq i32 %52, 15
  br i1 %53, label %61, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds i8, ptr %42, i64 1
  %56 = load i8, ptr %55, align 1, !tbaa !5
  %57 = icmp ne i8 %56, 20
  %58 = and i16 %45, 128
  %59 = icmp eq i16 %58, 0
  %60 = or i1 %59, %57
  br i1 %60, label %73, label %64

61:                                               ; preds = %51
  %62 = and i16 %45, 128
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %54, %61
  %65 = getelementptr inbounds %struct.tas_s, ptr %42, i64 0, i32 1
  %66 = load i16, ptr %65, align 2, !tbaa !24
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = call zeroext i16 @op_find_index(ptr noundef nonnull %42) #10
  br label %70

70:                                               ; preds = %64, %68
  %71 = phi i16 [ %69, %68 ], [ %66, %64 ]
  %72 = add i16 %71, 16384
  store i16 %72, ptr %32, align 2, !tbaa !18
  br label %73

73:                                               ; preds = %70, %61, %54, %38
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  br label %74

74:                                               ; preds = %73, %36
  %75 = getelementptr inbounds i16, ptr %32, i64 1
  store ptr %75, ptr %31, align 8, !tbaa !5
  br label %148

76:                                               ; preds = %29
  %77 = getelementptr inbounds %struct.ref_s, ptr %32, i64 1
  store ptr %77, ptr %31, align 8, !tbaa !5
  %78 = getelementptr inbounds i8, ptr %32, i64 1
  %79 = load i8, ptr %78, align 1, !tbaa !5
  switch i8 %79, label %148 [
    i8 13, label %80
    i8 4, label %121
    i8 5, label %125
    i8 6, label %125
  ]

80:                                               ; preds = %76
  %81 = load i16, ptr %32, align 8, !tbaa !25
  %82 = and i16 %81, 128
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %148, label %84

84:                                               ; preds = %80
  %85 = call i32 @name_index(ptr noundef nonnull %32) #10
  %86 = call ptr @dict_find_name_by_index(i32 noundef %85) #10
  %87 = icmp eq ptr %86, null
  br i1 %87, label %148, label %88

88:                                               ; preds = %84
  %89 = load i16, ptr %86, align 8, !tbaa !25
  %90 = icmp ugt i16 %89, 5375
  br i1 %90, label %95, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds i8, ptr %86, i64 1
  %93 = load i8, ptr %92, align 1, !tbaa !5
  %94 = zext i8 %93 to i32
  br label %95

95:                                               ; preds = %88, %91
  %96 = phi i32 [ %94, %91 ], [ 15, %88 ]
  %97 = icmp eq i32 %96, 15
  br i1 %97, label %105, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds i8, ptr %86, i64 1
  %100 = load i8, ptr %99, align 1, !tbaa !5
  %101 = icmp ne i8 %100, 20
  %102 = and i16 %89, 128
  %103 = icmp eq i16 %102, 0
  %104 = or i1 %103, %101
  br i1 %104, label %148, label %108

105:                                              ; preds = %95
  %106 = and i16 %89, 128
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %148, label %108

108:                                              ; preds = %98, %105
  %109 = load i16, ptr %32, align 8, !tbaa !25
  %110 = zext i16 %109 to i32
  %111 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 5), align 8, !tbaa !26
  %112 = and i32 %111, %110
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %108
  %115 = call i32 @alloc_save_change(ptr noundef nonnull @gs_imemory, ptr noundef %24, ptr noundef nonnull %32, ptr noundef nonnull @.str.10) #10
  br label %116

116:                                              ; preds = %108, %114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef nonnull align 8 dereferenceable(16) %86, i64 16, i1 false), !tbaa.struct !17
  %117 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !28
  %118 = load i16, ptr %32, align 8, !tbaa !25
  %119 = trunc i32 %117 to i16
  %120 = or i16 %118, %119
  store i16 %120, ptr %32, align 8, !tbaa !25
  br label %148

121:                                              ; preds = %76
  %122 = load i16, ptr %32, align 8, !tbaa !25
  %123 = and i16 %122, 16
  %124 = icmp eq i16 %123, 0
  br i1 %124, label %148, label %125

125:                                              ; preds = %121, %76, %76
  %126 = load i16, ptr %32, align 8, !tbaa !25
  %127 = and i16 %126, 128
  %128 = icmp eq i16 %127, 0
  br i1 %128, label %148, label %129

129:                                              ; preds = %125
  %130 = and i16 %126, -17
  store i16 %130, ptr %32, align 8, !tbaa !25
  %131 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !8
  %132 = icmp ult ptr %24, %131
  br i1 %132, label %142, label %133

133:                                              ; preds = %129
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %32, i64 16, i1 false), !tbaa.struct !17
  store ptr %24, ptr @o_stack, align 8, !tbaa !16
  %134 = call i32 @ref_stack_push(ptr noundef nonnull @o_stack, i32 noundef 1) #10
  %135 = icmp sgt i32 %134, -1
  br i1 %135, label %137, label %136

136:                                              ; preds = %133
  call void @ref_stack_pop(ptr noundef nonnull @o_stack, i32 noundef %25) #10
  br label %139

137:                                              ; preds = %133
  %138 = load ptr, ptr @o_stack, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %138, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !17
  br label %139

139:                                              ; preds = %137, %136
  %140 = phi ptr [ %24, %136 ], [ %138, %137 ]
  %141 = phi i32 [ %134, %136 ], [ %22, %137 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  br i1 %135, label %144, label %148

142:                                              ; preds = %129
  %143 = getelementptr inbounds %struct.ref_s, ptr %24, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %143, ptr noundef nonnull align 8 dereferenceable(16) %32, i64 16, i1 false), !tbaa.struct !17
  br label %144

144:                                              ; preds = %139, %142
  %145 = phi ptr [ %140, %139 ], [ %143, %142 ]
  %146 = phi i32 [ %141, %139 ], [ %22, %142 ]
  %147 = add i32 %25, 1
  br label %148

148:                                              ; preds = %74, %125, %144, %121, %80, %76, %116, %105, %98, %84, %139
  %149 = phi i1 [ false, %139 ], [ true, %84 ], [ true, %98 ], [ true, %105 ], [ true, %116 ], [ true, %76 ], [ true, %80 ], [ true, %121 ], [ true, %144 ], [ true, %125 ], [ true, %74 ]
  %150 = phi ptr [ %140, %139 ], [ %24, %84 ], [ %24, %98 ], [ %24, %105 ], [ %24, %116 ], [ %24, %76 ], [ %24, %80 ], [ %24, %121 ], [ %145, %144 ], [ %24, %125 ], [ %24, %74 ]
  %151 = phi i32 [ %25, %139 ], [ %25, %84 ], [ %25, %98 ], [ %25, %105 ], [ %25, %116 ], [ %25, %76 ], [ %25, %80 ], [ %25, %121 ], [ %147, %144 ], [ %25, %125 ], [ %25, %74 ]
  %152 = phi i32 [ %141, %139 ], [ %22, %84 ], [ %22, %98 ], [ %22, %105 ], [ %22, %116 ], [ %22, %76 ], [ %22, %80 ], [ %22, %121 ], [ %146, %144 ], [ %22, %125 ], [ %22, %74 ]
  br i1 %149, label %19, label %165, !llvm.loop !29

153:                                              ; preds = %23
  %154 = getelementptr inbounds %struct.ref_s, ptr %24, i64 -1
  %155 = add i32 %25, -1
  %156 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !31
  %157 = icmp ult ptr %154, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  store ptr %154, ptr @o_stack, align 8, !tbaa !16
  %159 = call i32 @ref_stack_pop_block(ptr noundef nonnull @o_stack) #10
  %160 = load ptr, ptr @o_stack, align 8, !tbaa !16
  br label %161

161:                                              ; preds = %158, %153
  %162 = phi ptr [ %160, %158 ], [ %154, %153 ]
  %163 = icmp eq i32 %155, 0
  br i1 %163, label %164, label %23, !llvm.loop !32

164:                                              ; preds = %161
  store ptr %162, ptr @o_stack, align 8, !tbaa !16
  br label %165

165:                                              ; preds = %148, %164, %17, %10
  %166 = phi i32 [ %11, %10 ], [ -16, %17 ], [ 0, %164 ], [ %152, %148 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2)
  ret i32 %166
}

; Function Attrs: nounwind uwtable
define internal i32 @zgetenv(ptr noundef %0) #1 {
  %2 = load i16, ptr %0, align 8, !tbaa !25
  %3 = and i16 %2, 16160
  %4 = icmp eq i16 %3, 4640
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !5
  %8 = icmp eq i8 %7, 18
  br i1 %8, label %38, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #10
  br label %38

11:                                               ; preds = %1
  %12 = load ptr, ptr @gs_imemory, align 8, !tbaa !33
  %13 = tail call ptr @ref_to_string(ptr noundef nonnull %0, ptr noundef %12, ptr noundef nonnull @.str.11) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %38, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @getenv(ptr noundef nonnull %13)
  %17 = load ptr, ptr @gs_imemory, align 8, !tbaa !33
  %18 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %17, i64 0, i32 15
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %21 = load i16, ptr %20, align 2, !tbaa !24
  %22 = zext i16 %21 to i32
  %23 = add nuw nsw i32 %22, 1
  tail call void %19(ptr noundef %17, ptr noundef nonnull %13, i32 noundef %23, ptr noundef nonnull @.str.11) #10
  %24 = icmp eq ptr %16, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  store i16 0, ptr %26, align 8, !tbaa !5
  store i16 256, ptr %0, align 8, !tbaa !25
  br label %38

27:                                               ; preds = %15
  %28 = load ptr, ptr @gs_imemory, align 8, !tbaa !33
  %29 = tail call i32 @string_to_ref(ptr noundef nonnull %16, ptr noundef nonnull %0, ptr noundef %28, ptr noundef nonnull @.str.12) #10
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %33 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !8
  %34 = icmp ugt ptr %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !15
  br label %38

36:                                               ; preds = %31
  store ptr %32, ptr @o_stack, align 8, !tbaa !16
  %37 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i16 1, ptr %37, align 8, !tbaa !5
  store i16 256, ptr %32, align 8, !tbaa !25
  br label %38

38:                                               ; preds = %27, %11, %9, %5, %36, %35, %25
  %39 = phi i32 [ 0, %25 ], [ -16, %35 ], [ 0, %36 ], [ %10, %9 ], [ -7, %5 ], [ -25, %11 ], [ %29, %27 ]
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal i32 @zmakeoperator(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %3 = getelementptr inbounds i8, ptr %0, i64 -15
  %4 = load i8, ptr %3, align 1, !tbaa !5
  %5 = icmp eq i8 %4, 13
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @check_type_failed(ptr noundef nonnull %2) #10
  br label %69

8:                                                ; preds = %1
  %9 = load i16, ptr %0, align 8, !tbaa !25
  %10 = zext i16 %9 to i32
  %11 = and i32 %10, 15552
  %12 = icmp eq i32 %11, 1216
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = tail call i32 @check_proc_failed(ptr noundef nonnull %0) #10
  br label %69

15:                                               ; preds = %8
  %16 = and i32 %10, 12
  switch i32 %16, label %69 [
    i32 8, label %18
    i32 12, label %17
  ]

17:                                               ; preds = %15
  br label %18

18:                                               ; preds = %15, %17
  %19 = phi ptr [ @op_array_table_local, %17 ], [ @op_array_table_global, %15 ]
  %20 = getelementptr inbounds %struct.op_array_table_s, ptr %19, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !37
  %22 = getelementptr inbounds %struct.ref_s, ptr %19, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = getelementptr inbounds i8, ptr %23, i64 1
  %25 = zext i32 %21 to i64
  %26 = getelementptr %struct.ref_s, ptr %24, i64 -1
  br label %27

27:                                               ; preds = %30, %18
  %28 = phi i64 [ %31, %30 ], [ %25, %18 ]
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = add nsw i64 %28, -1
  %32 = getelementptr %struct.ref_s, ptr %26, i64 %28
  %33 = load i8, ptr %32, align 1, !tbaa !5
  %34 = icmp eq i8 %33, 14
  br i1 %34, label %27, label %35, !llvm.loop !39

35:                                               ; preds = %30
  %36 = trunc i64 %28 to i32
  br label %37

37:                                               ; preds = %27, %35
  %38 = phi i32 [ %36, %35 ], [ 0, %27 ]
  %39 = getelementptr inbounds %struct.tas_s, ptr %19, i64 0, i32 1
  %40 = load i16, ptr %39, align 2, !tbaa !40
  %41 = zext i16 %40 to i32
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %69, label %43

43:                                               ; preds = %37
  %44 = zext i32 %38 to i64
  %45 = getelementptr inbounds %struct.ref_s, ptr %23, i64 %44
  %46 = load i16, ptr %45, align 8, !tbaa !25
  %47 = zext i16 %46 to i32
  %48 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 5), align 8, !tbaa !26
  %49 = and i32 %48, %47
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = tail call i32 @alloc_save_change(ptr noundef nonnull @gs_imemory, ptr noundef nonnull %19, ptr noundef nonnull %45, ptr noundef nonnull @.str.13) #10
  br label %53

53:                                               ; preds = %43, %51
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %45, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !17
  %54 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !28
  %55 = load i16, ptr %45, align 8, !tbaa !25
  %56 = trunc i32 %54 to i16
  %57 = or i16 %55, %56
  store i16 %57, ptr %45, align 8, !tbaa !25
  %58 = tail call i32 @name_index(ptr noundef nonnull %2) #10
  %59 = trunc i32 %58 to i16
  %60 = getelementptr inbounds %struct.op_array_table_s, ptr %19, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !41
  %62 = getelementptr inbounds i16, ptr %61, i64 %44
  store i16 %59, ptr %62, align 2, !tbaa !18
  %63 = getelementptr inbounds %struct.op_array_table_s, ptr %19, i64 0, i32 3
  %64 = load i32, ptr %63, align 4, !tbaa !42
  %65 = add i32 %64, %38
  tail call void @op_index_ref(i32 noundef %65, ptr noundef nonnull %2) #10
  %66 = add i32 %38, 1
  store i32 %66, ptr %20, align 8, !tbaa !37
  %67 = load ptr, ptr @o_stack, align 8, !tbaa !16
  %68 = getelementptr inbounds %struct.ref_s, ptr %67, i64 -1
  store ptr %68, ptr @o_stack, align 8, !tbaa !16
  br label %69

69:                                               ; preds = %37, %15, %53, %13, %6
  %70 = phi i32 [ 0, %53 ], [ %14, %13 ], [ %7, %6 ], [ -7, %15 ], [ -13, %37 ]
  ret i32 %70
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @zoserrno(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !8
  %4 = icmp ugt ptr %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !15
  br label %11

6:                                                ; preds = %1
  store ptr %2, ptr @o_stack, align 8, !tbaa !16
  %7 = tail call ptr @__errno_location() #11
  %8 = load i32, ptr %7, align 4, !tbaa !43
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i64 %9, ptr %10, align 8, !tbaa !5
  store i16 2816, ptr %2, align 8, !tbaa !25
  br label %11

11:                                               ; preds = %6, %5
  %12 = phi i32 [ -16, %5 ], [ 0, %6 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @zoserrorstring(ptr noundef %0) #1 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  %4 = icmp eq i8 %3, 11
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #10
  br label %53

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !5
  %10 = trunc i64 %9 to i32
  %11 = tail call ptr @gp_strerror(i32 noundef %10) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %7
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #12
  %15 = and i64 %14, 4294967295
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %7
  store i16 0, ptr %8, align 8, !tbaa !5
  store i16 256, ptr %0, align 8, !tbaa !25
  br label %53

18:                                               ; preds = %13
  %19 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !8
  %20 = load ptr, ptr @o_stack, align 8, !tbaa !16
  %21 = ptrtoint ptr %19 to i64
  %22 = ptrtoint ptr %20 to i64
  %23 = sub i64 %21, %22
  %24 = icmp slt i64 %23, 16
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !15
  br label %53

26:                                               ; preds = %18
  %27 = load ptr, ptr @gs_imemory, align 8, !tbaa !33
  %28 = tail call i32 @string_to_ref(ptr noundef nonnull %11, ptr noundef %0, ptr noundef %27, ptr noundef nonnull @.str.14) #10
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %53, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %32 = load i16, ptr %31, align 2, !tbaa !24
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %8, align 8, !tbaa !5
  %36 = getelementptr i8, ptr %35, i64 -1
  %37 = zext i16 %32 to i64
  br label %38

38:                                               ; preds = %34, %42
  %39 = phi i64 [ %37, %34 ], [ %43, %42 ]
  %40 = getelementptr i8, ptr %36, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !5
  switch i8 %41, label %46 [
    i8 13, label %42
    i8 10, label %42
  ]

42:                                               ; preds = %38, %38
  %43 = add nsw i64 %39, -1
  %44 = trunc i64 %43 to i16
  store i16 %44, ptr %31, align 2, !tbaa !24
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %46, label %38, !llvm.loop !44

46:                                               ; preds = %42, %38, %30
  %47 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %48 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !8
  %49 = icmp ugt ptr %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !15
  br label %53

51:                                               ; preds = %46
  store ptr %47, ptr @o_stack, align 8, !tbaa !16
  %52 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i16 1, ptr %52, align 8, !tbaa !5
  store i16 256, ptr %47, align 8, !tbaa !25
  br label %53

53:                                               ; preds = %26, %51, %50, %25, %17, %5
  %54 = phi i32 [ 0, %17 ], [ -16, %25 ], [ -16, %50 ], [ 0, %51 ], [ %6, %5 ], [ %28, %26 ]
  ret i32 %54
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zrealtime(ptr noundef %0) #1 {
  %2 = alloca [2 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #10
  call void @gp_get_realtime(ptr noundef nonnull %2) #10
  %3 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %4 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !8
  %5 = icmp ugt ptr %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !15
  br label %15

7:                                                ; preds = %1
  store ptr %3, ptr @o_stack, align 8, !tbaa !16
  %8 = load i64, ptr %2, align 16, !tbaa !19
  %9 = mul nsw i64 %8, 1000
  %10 = getelementptr inbounds [2 x i64], ptr %2, i64 0, i64 1
  %11 = load i64, ptr %10, align 8, !tbaa !19
  %12 = sdiv i64 %11, 1000000
  %13 = add nsw i64 %12, %9
  %14 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i64 %13, ptr %14, align 8, !tbaa !5
  store i16 2816, ptr %3, align 8, !tbaa !25
  br label %15

15:                                               ; preds = %7, %6
  %16 = phi i32 [ -16, %6 ], [ 0, %7 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #10
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define internal noundef i32 @zserialnumber(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !8
  %4 = icmp ugt ptr %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !15
  br label %9

6:                                                ; preds = %1
  store ptr %2, ptr @o_stack, align 8, !tbaa !16
  %7 = load i64, ptr @gs_serialnumber, align 8, !tbaa !19
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i64 %7, ptr %8, align 8, !tbaa !5
  store i16 2816, ptr %2, align 8, !tbaa !25
  br label %9

9:                                                ; preds = %6, %5
  %10 = phi i32 [ -16, %5 ], [ 0, %6 ]
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetdebug(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %3 = load i16, ptr %2, align 8, !tbaa !25
  %4 = and i16 %3, 16160
  %5 = icmp eq i16 %4, 4640
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %0, i64 -15
  %8 = load i8, ptr %7, align 1, !tbaa !5
  %9 = icmp eq i8 %8, 18
  br i1 %9, label %42, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @check_type_failed(ptr noundef nonnull %2) #10
  br label %42

12:                                               ; preds = %1
  %13 = getelementptr inbounds i8, ptr %0, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !5
  %15 = icmp eq i8 %14, 1
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  %18 = load i16, ptr %17, align 2, !tbaa !24
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %39, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %22 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  br label %25

23:                                               ; preds = %12
  %24 = tail call i32 @check_type_failed(ptr noundef %0) #10
  br label %42

25:                                               ; preds = %20, %25
  %26 = phi i64 [ 0, %20 ], [ %35, %25 ]
  %27 = load i16, ptr %21, align 8, !tbaa !5
  %28 = trunc i16 %27 to i8
  %29 = load ptr, ptr %22, align 8, !tbaa !5
  %30 = getelementptr inbounds i8, ptr %29, i64 %26
  %31 = load i8, ptr %30, align 1, !tbaa !5
  %32 = and i8 %31, 127
  %33 = zext nneg i8 %32 to i64
  %34 = getelementptr inbounds [128 x i8], ptr @gs_debug, i64 0, i64 %33
  store i8 %28, ptr %34, align 1, !tbaa !5
  %35 = add nuw nsw i64 %26, 1
  %36 = load i16, ptr %17, align 2, !tbaa !24
  %37 = zext i16 %36 to i64
  %38 = icmp ult i64 %35, %37
  br i1 %38, label %25, label %39, !llvm.loop !45

39:                                               ; preds = %25, %16
  %40 = load ptr, ptr @o_stack, align 8, !tbaa !16
  %41 = getelementptr inbounds %struct.ref_s, ptr %40, i64 -2
  store ptr %41, ptr @o_stack, align 8, !tbaa !16
  br label %42

42:                                               ; preds = %10, %6, %39, %23
  %43 = phi i32 [ 0, %39 ], [ %24, %23 ], [ %11, %10 ], [ -7, %6 ]
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetoserrno(ptr noundef %0) #1 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  %4 = icmp eq i8 %3, 11
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #10
  br label %14

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !5
  %10 = trunc i64 %9 to i32
  %11 = tail call ptr @__errno_location() #11
  store i32 %10, ptr %11, align 4, !tbaa !43
  %12 = load ptr, ptr @o_stack, align 8, !tbaa !16
  %13 = getelementptr inbounds %struct.ref_s, ptr %12, i64 -1
  store ptr %13, ptr @o_stack, align 8, !tbaa !16
  br label %14

14:                                               ; preds = %7, %5
  %15 = phi i32 [ 0, %7 ], [ %6, %5 ]
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zusertime(ptr noundef %0) #1 {
  %2 = alloca [2 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #10
  call void @gp_get_usertime(ptr noundef nonnull %2) #10
  %3 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %4 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !8
  %5 = icmp ugt ptr %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !15
  br label %15

7:                                                ; preds = %1
  store ptr %3, ptr @o_stack, align 8, !tbaa !16
  %8 = load i64, ptr %2, align 16, !tbaa !19
  %9 = mul nsw i64 %8, 1000
  %10 = getelementptr inbounds [2 x i64], ptr %2, i64 0, i64 1
  %11 = load i64, ptr %10, align 8, !tbaa !19
  %12 = sdiv i64 %11, 1000000
  %13 = add nsw i64 %12, %9
  %14 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i64 %13, ptr %14, align 8, !tbaa !5
  store i16 2816, ptr %3, align 8, !tbaa !25
  br label %15

15:                                               ; preds = %7, %6
  %16 = phi i32 [ -16, %6 ], [ 0, %7 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #10
  ret i32 %16
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #6

declare void @name_index_ref(i32 noundef, ptr noundef) local_unnamed_addr #6

declare ptr @dict_find_name_by_index(i32 noundef) local_unnamed_addr #6

declare i32 @name_index(ptr noundef) local_unnamed_addr #6

declare zeroext i16 @op_find_index(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare i32 @alloc_save_change(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @ref_stack_push(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @ref_stack_pop(ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @ref_stack_pop_block(ptr noundef) local_unnamed_addr #6

declare ptr @ref_to_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #7

declare i32 @string_to_ref(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @check_proc_failed(ptr noundef) local_unnamed_addr #6

declare void @op_index_ref(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

declare ptr @gp_strerror(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

declare void @gp_get_realtime(ptr noundef) local_unnamed_addr #6

declare void @gp_get_usertime(ptr noundef) local_unnamed_addr #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 16}
!9 = !{!"ref_stack_s", !10, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !14, i64 40, !14, i64 44, !11, i64 48, !14, i64 64, !14, i64 68, !14, i64 72, !14, i64 76, !14, i64 80, !11, i64 88, !14, i64 104, !14, i64 108, !14, i64 112, !10, i64 120}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"ref_s", !12, i64 0, !6, i64 8}
!12 = !{!"tas_s", !13, i64 0, !13, i64 2}
!13 = !{!"short", !6, i64 0}
!14 = !{!"int", !6, i64 0}
!15 = !{!9, !14, i64 64}
!16 = !{!9, !10, i64 0}
!17 = !{i64 0, i64 2, !18, i64 2, i64 2, !18, i64 8, i64 8, !19, i64 8, i64 2, !18, i64 8, i64 4, !21, i64 8, i64 8, !19, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23}
!18 = !{!13, !13, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"long", !6, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"float", !6, i64 0}
!23 = !{!10, !10, i64 0}
!24 = !{!11, !13, i64 2}
!25 = !{!11, !13, i64 0}
!26 = !{!27, !14, i64 56}
!27 = !{!"gs_dual_memory_s", !10, i64 0, !6, i64 8, !14, i64 40, !14, i64 44, !10, i64 48, !14, i64 56, !14, i64 60}
!28 = !{!27, !14, i64 60}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = !{!9, !10, i64 8}
!32 = distinct !{!32, !30}
!33 = !{!27, !10, i64 0}
!34 = !{!35, !10, i64 120}
!35 = !{!"gs_memory_s", !36, i64 0}
!36 = !{!"gs_memory_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152}
!37 = !{!38, !14, i64 24}
!38 = !{!"op_array_table_s", !11, i64 0, !10, i64 16, !14, i64 24, !14, i64 28, !14, i64 32, !10, i64 40}
!39 = distinct !{!39, !30}
!40 = !{!38, !13, i64 2}
!41 = !{!38, !10, i64 16}
!42 = !{!38, !14, i64 28}
!43 = !{!14, !14, i64 0}
!44 = distinct !{!44, !30}
!45 = distinct !{!45, !30}
