; ModuleID = 'scfe.c'
source_filename = "scfe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.hce_code_s = type { i16, i16 }
%struct.stream_CFE_state_s = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stream_state_s = type { ptr, ptr, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }
%struct.stream_cursor_write_s = type { ptr, ptr, ptr }

@st_CFE_state = internal constant %struct.gs_memory_struct_type_s { i32 144, ptr @.str, ptr null, ptr null, ptr @cfe_enum_ptrs, ptr @cfe_reloc_ptrs, ptr null }, align 8
@s_CFE_template = dso_local local_unnamed_addr constant %struct.stream_template_s { ptr @st_CFE_state, ptr @s_CFE_init, ptr @s_CFE_process, i32 2, i32 15, ptr @s_CFE_release, ptr @s_CFE_set_defaults, ptr null }, align 8
@.str = private unnamed_addr constant [21 x i8] c"CCITTFaxEncode state\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"CFE lbuf\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"CFE lprev\00", align 1
@cf_run_eol = external local_unnamed_addr constant %struct.hce_code_s, align 2
@cf2_run_eol_2d = external local_unnamed_addr constant %struct.hce_code_s, align 2
@cf2_run_eol_1d = external local_unnamed_addr constant %struct.hce_code_s, align 2
@cf_encode_2d.initial_count_bit = internal unnamed_addr constant [8 x i8] c"\00\01\02\04\08\10 @", align 1
@cf_encode_2d.further_count_bit = internal unnamed_addr constant [8 x i8] c"\80\01\02\04\08\10 @", align 1
@byte_bit_run_length_neg = external local_unnamed_addr global [8 x ptr], align 16
@byte_bit_run_length_0 = external local_unnamed_addr constant [256 x i8], align 16
@cf2_run_vertical = external local_unnamed_addr constant [7 x %struct.hce_code_s], align 16
@cf_white_make_up = external local_unnamed_addr constant [41 x %struct.hce_code_s], align 16
@cf_white_termination = external local_unnamed_addr constant [64 x %struct.hce_code_s], align 16
@cf_black_make_up = external local_unnamed_addr constant [41 x %struct.hce_code_s], align 16
@cf_black_termination = external local_unnamed_addr constant [64 x %struct.hce_code_s], align 16
@.str.3 = private unnamed_addr constant [17 x i8] c"CFE lprev(close)\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"CFE lbuf(close)\00", align 1

; Function Attrs: nounwind uwtable
define internal noundef i32 @s_CFE_init(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 10
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 15
  %5 = load i32, ptr %4, align 8, !tbaa !11
  %6 = add nsw i32 %5, -1
  %7 = tail call i32 @llvm.ctpop.i32(i32 %5), !range !12
  %8 = icmp ult i32 %7, 2
  %9 = add nsw i32 %3, 7
  %10 = ashr i32 %9, 3
  %11 = add nsw i32 %10, %6
  %12 = freeze i32 %11
  br i1 %8, label %16, label %13

13:                                               ; preds = %1
  %14 = srem i32 %12, %5
  %15 = sub nsw i32 %12, %14
  br label %19

16:                                               ; preds = %1
  %17 = sub nsw i32 0, %5
  %18 = and i32 %12, %17
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i32 [ %15, %13 ], [ %18, %16 ]
  %21 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 16
  store i32 %20, ptr %21, align 4, !tbaa !13
  %22 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 4
  store i32 0, ptr %22, align 4, !tbaa !14
  %23 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 5
  store i32 32, ptr %23, align 8, !tbaa !15
  %24 = shl i32 %20, 3
  %25 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 26
  store i32 %24, ptr %25, align 4, !tbaa !16
  %26 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 18
  %27 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 17
  %28 = icmp sgt i32 %3, 54613333
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, i8 0, i64 16, i1 false)
  br i1 %28, label %99, label %29

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.stream_state_s, ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !17
  %32 = load ptr, ptr %31, align 8, !tbaa !19
  %33 = add nsw i32 %20, 4
  %34 = tail call ptr %32(ptr noundef nonnull %31, i32 noundef %33, ptr noundef nonnull @.str.1) #8
  store ptr %34, ptr %27, align 8, !tbaa !22
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load ptr, ptr %30, align 8, !tbaa !17
  %38 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %37, i64 0, i32 11
  %39 = load ptr, ptr %38, align 8, !tbaa !23
  %40 = load ptr, ptr %26, align 8, !tbaa !24
  tail call void %39(ptr noundef %37, ptr noundef %40, ptr noundef nonnull @.str.3) #8
  %41 = load ptr, ptr %30, align 8, !tbaa !17
  %42 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %41, i64 0, i32 11
  %43 = load ptr, ptr %42, align 8, !tbaa !23
  %44 = load ptr, ptr %27, align 8, !tbaa !22
  tail call void %43(ptr noundef %41, ptr noundef %44, ptr noundef nonnull @.str.4) #8
  br label %99

45:                                               ; preds = %29
  %46 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 7
  %47 = load i32, ptr %46, align 8, !tbaa !25
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %83, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %30, align 8, !tbaa !17
  %51 = load ptr, ptr %50, align 8, !tbaa !19
  %52 = tail call ptr %51(ptr noundef nonnull %50, i32 noundef %33, ptr noundef nonnull @.str.2) #8
  store ptr %52, ptr %26, align 8, !tbaa !24
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load ptr, ptr %30, align 8, !tbaa !17
  %56 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %55, i64 0, i32 11
  %57 = load ptr, ptr %56, align 8, !tbaa !23
  tail call void %57(ptr noundef %55, ptr noundef %52, ptr noundef nonnull @.str.3) #8
  %58 = load ptr, ptr %30, align 8, !tbaa !17
  %59 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %58, i64 0, i32 11
  %60 = load ptr, ptr %59, align 8, !tbaa !23
  %61 = load ptr, ptr %27, align 8, !tbaa !22
  tail call void %60(ptr noundef %58, ptr noundef %61, ptr noundef nonnull @.str.4) #8
  br label %99

62:                                               ; preds = %49
  %63 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 13
  %64 = load i32, ptr %63, align 8, !tbaa !26
  %65 = icmp eq i32 %64, 0
  %66 = sext i1 %65 to i8
  %67 = sext i32 %20 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %52, i8 %66, i64 %67, i1 false)
  %68 = and i32 %3, 7
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %62
  %71 = lshr exact i32 128, %68
  %72 = load ptr, ptr %26, align 8, !tbaa !24
  %73 = getelementptr i8, ptr %72, i64 %67
  %74 = getelementptr i8, ptr %73, i64 -1
  %75 = load i8, ptr %74, align 1, !tbaa !27
  %76 = trunc i32 %71 to i8
  %77 = xor i8 %75, %76
  store i8 %77, ptr %74, align 1, !tbaa !27
  br label %83

78:                                               ; preds = %62
  %79 = load ptr, ptr %26, align 8, !tbaa !24
  %80 = load i8, ptr %79, align 1, !tbaa !27
  %81 = xor i8 %80, -1
  %82 = getelementptr inbounds i8, ptr %79, i64 %67
  store i8 %81, ptr %82, align 1, !tbaa !27
  br label %83

83:                                               ; preds = %70, %78, %45
  %84 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 28
  store i32 %20, ptr %84, align 4, !tbaa !28
  %85 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 29
  store i32 1, ptr %85, align 8, !tbaa !29
  %86 = load i32, ptr %46, align 8, !tbaa !25
  %87 = tail call i32 @llvm.smin.i32(i32 %86, i32 1)
  %88 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 19
  store i32 %87, ptr %88, align 8, !tbaa !30
  %89 = sdiv i32 %3, 2560
  %90 = mul nsw i32 %89, 3
  %91 = sdiv i32 %90, 2
  %92 = add nsw i32 %91, 5
  %93 = shl nsw i32 %92, 1
  %94 = add nsw i32 %93, 4
  %95 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 23
  store i32 %94, ptr %95, align 8, !tbaa !31
  %96 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 24
  store i32 %93, ptr %96, align 4, !tbaa !32
  %97 = mul nsw i32 %92, 3
  %98 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 25
  store i32 %97, ptr %98, align 8, !tbaa !33
  br label %99

99:                                               ; preds = %19, %83, %54, %36
  %100 = phi i32 [ -2, %36 ], [ -2, %54 ], [ 0, %83 ], [ -2, %19 ]
  ret i32 %100
}

; Function Attrs: nounwind uwtable
define internal i32 @s_CFE_process(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.hce_code_s, align 4
  %6 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !36
  %10 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 16
  %11 = load i32, ptr %10, align 4, !tbaa !13
  %12 = shl i32 %11, 3
  %13 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 10
  %14 = load i32, ptr %13, align 4, !tbaa !5
  %15 = sub nsw i32 0, %14
  %16 = and i32 %15, 7
  %17 = shl nuw nsw i32 1, %16
  %18 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 4
  %19 = load i32, ptr %18, align 4, !tbaa !14
  %20 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !15
  %22 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 26
  %23 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 17
  %24 = sext i32 %11 to i64
  %25 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 28
  %26 = ptrtoint ptr %7 to i64
  %27 = trunc i32 %17 to i8
  %28 = sub i8 0, %27
  %29 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 29
  %30 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %31 = ptrtoint ptr %9 to i64
  %32 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 23
  %33 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 8
  %34 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 7
  %35 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 19
  %36 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 9
  %37 = getelementptr inbounds %struct.hce_code_s, ptr %5, i64 0, i32 1
  %38 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 3
  %39 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 9
  %40 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 20
  %41 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 7
  %42 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 18
  %43 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 19
  %44 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 18
  %45 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 26
  %46 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 18
  br label %47

47:                                               ; preds = %222, %4
  %48 = phi i32 [ %21, %4 ], [ %223, %222 ]
  %49 = phi i32 [ %19, %4 ], [ %225, %222 ]
  %50 = phi i32 [ 0, %4 ], [ %226, %222 ]
  %51 = load ptr, ptr %1, align 8, !tbaa !38
  %52 = icmp ult ptr %51, %7
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load i32, ptr %22, align 4, !tbaa !16
  %55 = icmp eq i32 %54, %12
  br i1 %55, label %227, label %56

56:                                               ; preds = %47, %53
  %57 = load ptr, ptr %23, align 8, !tbaa !22
  %58 = getelementptr inbounds i8, ptr %57, i64 %24
  %59 = getelementptr inbounds i8, ptr %58, i64 -1
  %60 = load i32, ptr %25, align 4, !tbaa !28
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %95, label %62

62:                                               ; preds = %56
  %63 = ptrtoint ptr %51 to i64
  %64 = sub i64 %26, %63
  %65 = trunc i64 %64 to i32
  %66 = tail call i32 @llvm.smin.i32(i32 %60, i32 %65)
  %67 = sext i32 %60 to i64
  %68 = sub nsw i64 0, %67
  %69 = getelementptr inbounds i8, ptr %58, i64 %68
  %70 = getelementptr inbounds i8, ptr %51, i64 1
  %71 = sext i32 %66 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %69, ptr nonnull align 1 %70, i64 %71, i1 false)
  %72 = load ptr, ptr %1, align 8, !tbaa !38
  %73 = getelementptr inbounds i8, ptr %72, i64 %71
  store ptr %73, ptr %1, align 8, !tbaa !38
  %74 = load i32, ptr %25, align 4, !tbaa !28
  %75 = sub nsw i32 %74, %66
  store i32 %75, ptr %25, align 4, !tbaa !28
  %76 = icmp eq i32 %74, %66
  br i1 %76, label %77, label %93

77:                                               ; preds = %62
  %78 = load i8, ptr %59, align 1, !tbaa !27
  %79 = and i8 %78, %27
  %80 = xor i8 %79, %27
  %81 = and i8 %78, %28
  store i8 %81, ptr %59, align 1, !tbaa !27
  switch i32 %16, label %88 [
    i32 0, label %82
    i32 1, label %85
  ]

82:                                               ; preds = %77
  %83 = icmp eq i8 %79, 0
  %84 = select i1 %83, i8 -128, i8 64
  store i8 %84, ptr %58, align 1, !tbaa !27
  br label %93

85:                                               ; preds = %77
  %86 = lshr exact i8 %80, 1
  %87 = or i8 %86, %81
  store i8 %87, ptr %59, align 1, !tbaa !27
  store i8 0, ptr %58, align 1, !tbaa !27
  br label %93

88:                                               ; preds = %77
  %89 = lshr exact i8 %80, 1
  %90 = lshr i8 %79, 2
  %91 = or i8 %90, %89
  %92 = or i8 %91, %81
  store i8 %92, ptr %59, align 1, !tbaa !27
  br label %93

93:                                               ; preds = %82, %88, %85, %62
  %94 = phi i32 [ 6, %62 ], [ 0, %85 ], [ 0, %88 ], [ 0, %82 ]
  br i1 %76, label %95, label %222

95:                                               ; preds = %93, %56
  %96 = load i32, ptr %29, align 8, !tbaa !29
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %174, label %98

98:                                               ; preds = %95
  %99 = load ptr, ptr %30, align 8, !tbaa !39
  %100 = ptrtoint ptr %99 to i64
  %101 = sub i64 %31, %100
  %102 = load i32, ptr %32, align 8, !tbaa !31
  %103 = sext i32 %102 to i64
  %104 = icmp slt i64 %101, %103
  br i1 %104, label %169, label %105

105:                                              ; preds = %98
  %106 = load i32, ptr %33, align 4, !tbaa !40
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %161, label %108

108:                                              ; preds = %105
  %109 = load i32, ptr %34, align 8, !tbaa !25
  %110 = icmp slt i32 %109, 1
  br i1 %110, label %115, label %111

111:                                              ; preds = %108
  %112 = load i32, ptr %35, align 8, !tbaa !30
  %113 = icmp sgt i32 %112, 1
  %114 = select i1 %113, ptr @cf2_run_eol_2d, ptr @cf2_run_eol_1d
  br label %115

115:                                              ; preds = %108, %111
  %116 = phi ptr [ %114, %111 ], [ @cf_run_eol, %108 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  %117 = load i32, ptr %36, align 8, !tbaa !41
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %132, label %119

119:                                              ; preds = %115
  %120 = load i32, ptr %116, align 2
  store i32 %120, ptr %5, align 4
  %121 = load i16, ptr %37, align 2, !tbaa !42
  %122 = trunc i32 %48 to i16
  %123 = and i16 %122, 7
  %124 = xor i16 %123, 4
  %125 = add i16 %121, %124
  %126 = icmp ugt i16 %125, 16
  %127 = and i16 %125, 7
  %128 = tail call i16 @llvm.umin.i16(i16 %125, i16 16)
  %129 = select i1 %126, i16 %127, i16 0
  %130 = zext nneg i16 %129 to i32
  %131 = sub nsw i32 %48, %130
  store i16 %128, ptr %37, align 2, !tbaa !42
  br label %132

132:                                              ; preds = %119, %115
  %133 = phi i32 [ %131, %119 ], [ %48, %115 ]
  %134 = phi ptr [ %5, %119 ], [ %116, %115 ]
  %135 = getelementptr inbounds %struct.hce_code_s, ptr %134, i64 0, i32 1
  %136 = load i16, ptr %135, align 2, !tbaa !42
  %137 = zext i16 %136 to i32
  %138 = sub nsw i32 %133, %137
  %139 = icmp sgt i32 %138, -1
  br i1 %139, label %140, label %145

140:                                              ; preds = %132
  %141 = load i16, ptr %134, align 2, !tbaa !45
  %142 = zext i16 %141 to i32
  %143 = shl i32 %142, %138
  %144 = add i32 %143, %49
  br label %157

145:                                              ; preds = %132
  %146 = load i32, ptr %38, align 8, !tbaa !46
  %147 = getelementptr inbounds i8, ptr %99, i64 4
  %148 = load i16, ptr %134, align 2, !tbaa !45
  %149 = zext i16 %148 to i32
  %150 = sub nsw i32 0, %138
  %151 = lshr i32 %149, %150
  %152 = add i32 %151, %49
  tail call void @hc_put_code_proc(i32 noundef %146, ptr noundef nonnull %147, i32 noundef %152) #8
  %153 = load i16, ptr %134, align 2, !tbaa !45
  %154 = zext i16 %153 to i32
  %155 = add nsw i32 %138, 32
  %156 = shl i32 %154, %155
  br label %157

157:                                              ; preds = %145, %140
  %158 = phi i32 [ %138, %140 ], [ %155, %145 ]
  %159 = phi ptr [ %99, %140 ], [ %147, %145 ]
  %160 = phi i32 [ %144, %140 ], [ %156, %145 ]
  store ptr %159, ptr %30, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %166

161:                                              ; preds = %105
  %162 = load i32, ptr %39, align 8, !tbaa !41
  %163 = icmp eq i32 %162, 0
  %164 = and i32 %48, -8
  %165 = select i1 %163, i32 %48, i32 %164
  br label %166

166:                                              ; preds = %161, %157
  %167 = phi i32 [ %158, %157 ], [ %165, %161 ]
  %168 = phi i32 [ %160, %157 ], [ %49, %161 ]
  store i32 0, ptr %40, align 4, !tbaa !47
  store i32 0, ptr %29, align 8, !tbaa !29
  br label %169

169:                                              ; preds = %98, %166
  %170 = phi i32 [ %167, %166 ], [ %48, %98 ]
  %171 = phi i32 [ 0, %166 ], [ 3, %98 ]
  %172 = phi i32 [ %168, %166 ], [ %49, %98 ]
  %173 = phi i32 [ %50, %166 ], [ 1, %98 ]
  br i1 %104, label %222, label %174

174:                                              ; preds = %169, %95
  %175 = phi i32 [ %170, %169 ], [ %48, %95 ]
  %176 = phi i32 [ %172, %169 ], [ %49, %95 ]
  store i32 %176, ptr %18, align 4, !tbaa !14
  store i32 %175, ptr %20, align 8, !tbaa !15
  %177 = load i32, ptr %41, align 8, !tbaa !25
  %178 = icmp sgt i32 %177, 0
  br i1 %178, label %179, label %199

179:                                              ; preds = %174
  %180 = load i32, ptr %43, align 8, !tbaa !30
  %181 = add nsw i32 %180, -1
  store i32 %181, ptr %43, align 8, !tbaa !30
  %182 = icmp eq i32 %181, 0
  %183 = load ptr, ptr %23, align 8, !tbaa !22
  br i1 %182, label %191, label %184

184:                                              ; preds = %179
  %185 = load ptr, ptr %44, align 8, !tbaa !24
  %186 = tail call fastcc i32 @cf_encode_2d(ptr noundef %0, ptr noundef %183, ptr noundef %2, i32 noundef %16, ptr noundef %185)
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %207, label %188

188:                                              ; preds = %184
  %189 = load i32, ptr %43, align 8, !tbaa !30
  %190 = add nsw i32 %189, 1
  store i32 %190, ptr %43, align 8, !tbaa !30
  br label %207

191:                                              ; preds = %179
  %192 = tail call fastcc i32 @cf_encode_1d(ptr noundef %0, ptr noundef %183, ptr noundef %2, i32 noundef %16), !range !48
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %191
  %195 = load i32, ptr %43, align 8, !tbaa !30
  %196 = add nsw i32 %195, 1
  store i32 %196, ptr %43, align 8, !tbaa !30
  br label %207

197:                                              ; preds = %191
  %198 = load i32, ptr %41, align 8, !tbaa !25
  store i32 %198, ptr %43, align 8, !tbaa !30
  br label %207

199:                                              ; preds = %174
  %200 = icmp eq i32 %177, 0
  %201 = load ptr, ptr %23, align 8, !tbaa !22
  br i1 %200, label %202, label %204

202:                                              ; preds = %199
  %203 = tail call fastcc i32 @cf_encode_1d(ptr noundef %0, ptr noundef %201, ptr noundef %2, i32 noundef %16), !range !48
  br label %207

204:                                              ; preds = %199
  %205 = load ptr, ptr %42, align 8, !tbaa !24
  %206 = tail call fastcc i32 @cf_encode_2d(ptr noundef %0, ptr noundef %201, ptr noundef %2, i32 noundef %16, ptr noundef %205)
  br label %207

207:                                              ; preds = %202, %204, %188, %184, %197, %194
  %208 = phi i32 [ 1, %188 ], [ 0, %184 ], [ 1, %194 ], [ 0, %197 ], [ %203, %202 ], [ %206, %204 ]
  %209 = load i32, ptr %18, align 4, !tbaa !14
  %210 = load i32, ptr %20, align 8, !tbaa !15
  %211 = icmp eq i32 %208, 0
  br i1 %211, label %212, label %222

212:                                              ; preds = %207
  %213 = load i32, ptr %45, align 4, !tbaa !16
  %214 = icmp eq i32 %213, %16
  br i1 %214, label %215, label %222

215:                                              ; preds = %212
  store i32 %12, ptr %45, align 4, !tbaa !16
  store i32 1, ptr %29, align 8, !tbaa !29
  %216 = load i32, ptr %41, align 8, !tbaa !25
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %221, label %218

218:                                              ; preds = %215
  %219 = load ptr, ptr %23, align 8, !tbaa !22
  %220 = load ptr, ptr %46, align 8, !tbaa !24
  store ptr %220, ptr %23, align 8, !tbaa !22
  store ptr %219, ptr %46, align 8, !tbaa !24
  br label %221

221:                                              ; preds = %218, %215
  store i32 %11, ptr %25, align 4, !tbaa !28
  br label %222

222:                                              ; preds = %212, %221, %207, %93, %169
  %223 = phi i32 [ %170, %169 ], [ %48, %93 ], [ %210, %207 ], [ %210, %221 ], [ %210, %212 ]
  %224 = phi i32 [ %171, %169 ], [ %94, %93 ], [ 3, %207 ], [ 0, %221 ], [ 0, %212 ]
  %225 = phi i32 [ %172, %169 ], [ %49, %93 ], [ %209, %207 ], [ %209, %221 ], [ %209, %212 ]
  %226 = phi i32 [ %173, %169 ], [ %50, %93 ], [ %208, %207 ], [ 0, %221 ], [ 0, %212 ]
  switch i32 %224, label %309 [
    i32 0, label %47
    i32 3, label %227
    i32 6, label %305
  ], !llvm.loop !49

227:                                              ; preds = %222, %53
  %228 = phi i32 [ %223, %222 ], [ %48, %53 ]
  %229 = phi i32 [ %225, %222 ], [ %49, %53 ]
  %230 = phi i32 [ %226, %222 ], [ %50, %53 ]
  %231 = icmp ne i32 %3, 0
  %232 = icmp eq i32 %230, 0
  %233 = select i1 %231, i1 %232, i1 false
  br i1 %233, label %234, label %305

234:                                              ; preds = %227
  %235 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 7
  %236 = load i32, ptr %235, align 8, !tbaa !25
  %237 = icmp sgt i32 %236, 0
  %238 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 12
  %239 = load i32, ptr %238, align 4, !tbaa !51
  %240 = icmp eq i32 %239, 0
  %241 = icmp slt i32 %236, 0
  %242 = select i1 %241, i32 2, i32 6
  %243 = select i1 %240, i32 0, i32 %242
  %244 = load i16, ptr getelementptr inbounds (%struct.hce_code_s, ptr @cf2_run_eol_1d, i64 0, i32 1), align 2
  %245 = load i16, ptr getelementptr inbounds (%struct.hce_code_s, ptr @cf_run_eol, i64 0, i32 1), align 2
  %246 = select i1 %237, i16 %244, i16 %245
  %247 = zext i16 %246 to i32
  %248 = mul nuw nsw i32 %243, %247
  %249 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %250 = load ptr, ptr %249, align 8, !tbaa !39
  %251 = ptrtoint ptr %9 to i64
  %252 = ptrtoint ptr %250 to i64
  %253 = sub i64 %251, %252
  %254 = sub i32 %248, %228
  %255 = add i32 %254, 39
  %256 = lshr i32 %255, 3
  %257 = zext nneg i32 %256 to i64
  %258 = icmp slt i64 %253, %257
  br i1 %258, label %301, label %259

259:                                              ; preds = %234
  %260 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 9
  %261 = load i32, ptr %260, align 8, !tbaa !41
  %262 = icmp eq i32 %261, 0
  %263 = and i32 %228, -8
  %264 = select i1 %262, i32 %228, i32 %263
  br i1 %240, label %296, label %265

265:                                              ; preds = %259
  %266 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 3
  %267 = load i16, ptr @cf2_run_eol_1d, align 2
  %268 = load i16, ptr @cf_run_eol, align 2
  %269 = select i1 %237, i16 %267, i16 %268
  %270 = zext i16 %269 to i32
  %271 = zext i16 %269 to i32
  br label %272

272:                                              ; preds = %265, %291
  %273 = phi i32 [ %243, %265 ], [ %277, %291 ]
  %274 = phi ptr [ %250, %265 ], [ %294, %291 ]
  %275 = phi i32 [ %229, %265 ], [ %293, %291 ]
  %276 = phi i32 [ %264, %265 ], [ %292, %291 ]
  %277 = add nsw i32 %273, -1
  %278 = sub nsw i32 %276, %247
  %279 = icmp sgt i32 %278, -1
  br i1 %279, label %280, label %283

280:                                              ; preds = %272
  %281 = shl i32 %271, %278
  %282 = add i32 %281, %275
  br label %291

283:                                              ; preds = %272
  %284 = load i32, ptr %266, align 8, !tbaa !46
  %285 = getelementptr inbounds i8, ptr %274, i64 4
  %286 = sub nsw i32 0, %278
  %287 = lshr i32 %270, %286
  %288 = add i32 %287, %275
  tail call void @hc_put_code_proc(i32 noundef %284, ptr noundef nonnull %285, i32 noundef %288) #8
  %289 = add nsw i32 %278, 32
  %290 = shl i32 %270, %289
  br label %291

291:                                              ; preds = %283, %280
  %292 = phi i32 [ %278, %280 ], [ %289, %283 ]
  %293 = phi i32 [ %282, %280 ], [ %290, %283 ]
  %294 = phi ptr [ %274, %280 ], [ %285, %283 ]
  %295 = icmp sgt i32 %273, 1
  br i1 %295, label %272, label %296, !llvm.loop !52

296:                                              ; preds = %291, %259
  %297 = phi i32 [ %264, %259 ], [ %292, %291 ]
  %298 = phi i32 [ %229, %259 ], [ %293, %291 ]
  %299 = phi ptr [ %250, %259 ], [ %294, %291 ]
  %300 = tail call ptr @hc_put_last_bits_proc(ptr noundef %0, ptr noundef %299, i32 noundef %298, i32 noundef %297) #8
  store ptr %300, ptr %249, align 8, !tbaa !39
  br label %301

301:                                              ; preds = %234, %296
  %302 = phi i32 [ %297, %296 ], [ %228, %234 ]
  %303 = phi i32 [ %298, %296 ], [ %229, %234 ]
  %304 = phi i32 [ 0, %296 ], [ 1, %234 ]
  br i1 %258, label %305, label %309

305:                                              ; preds = %222, %301, %227
  %306 = phi i32 [ %302, %301 ], [ %228, %227 ], [ %223, %222 ]
  %307 = phi i32 [ %303, %301 ], [ %229, %227 ], [ %225, %222 ]
  %308 = phi i32 [ %304, %301 ], [ %230, %227 ], [ %226, %222 ]
  store i32 %307, ptr %18, align 4, !tbaa !14
  store i32 %306, ptr %20, align 8, !tbaa !15
  br label %309

309:                                              ; preds = %222, %301, %305
  %310 = phi i32 [ %308, %305 ], [ %304, %301 ], [ undef, %222 ]
  ret i32 %310
}

; Function Attrs: nounwind uwtable
define internal void @s_CFE_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.stream_state_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !17
  %4 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %3, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !23
  %6 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !24
  tail call void %5(ptr noundef %3, ptr noundef %7, ptr noundef nonnull @.str.3) #8
  %8 = load ptr, ptr %2, align 8, !tbaa !17
  %9 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %8, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !23
  %11 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  tail call void %10(ptr noundef %8, ptr noundef %12, ptr noundef nonnull @.str.4) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @s_CFE_set_defaults(ptr nocapture noundef writeonly %0) #1 {
  %2 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 6
  %3 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store i32 1728, ptr %3, align 4, !tbaa !5
  %4 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 11
  store i32 0, ptr %4, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 12
  store i32 1, ptr %5, align 4, !tbaa !51
  %6 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 13
  store i32 0, ptr %6, align 8, !tbaa !26
  %7 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 14
  store i32 0, ptr %7, align 4, !tbaa !54
  %8 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 3
  store i32 0, ptr %8, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 15
  store i32 1, ptr %9, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @cfe_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #2 {
  switch i32 %2, label %12 [
    i32 0, label %5
    i32 1, label %7
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 17
  br label %9

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 18
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %6, %5 ], [ %8, %7 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  store ptr %11, ptr %3, align 8, !tbaa !55
  br label %12

12:                                               ; preds = %9, %4
  %13 = phi ptr [ null, %4 ], [ @ptr_struct_procs, %9 ]
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define internal void @cfe_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %5, ptr noundef %2) #8
  store ptr %6, ptr %4, align 8, !tbaa !22
  %7 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !24
  %9 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %8, ptr noundef %2) #8
  store ptr %9, ptr %7, align 8, !tbaa !24
  ret void
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare void @hc_put_code_proc(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cf_encode_2d(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr noundef readonly %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 13
  %7 = load i32, ptr %6, align 8, !tbaa !26
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 20
  %10 = select i1 %8, i32 255, i32 0
  %11 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 26
  %12 = load i32, ptr %11, align 4, !tbaa !16
  %13 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !39
  %15 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !14
  %17 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !15
  %19 = icmp eq i32 %12, %3
  br i1 %19, label %1123, label %20

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 16
  %22 = load i32, ptr %21, align 4, !tbaa !13
  %23 = shl i32 %22, 3
  %24 = icmp eq i32 %12, %23
  %25 = select i1 %24, ptr @cf_encode_2d.initial_count_bit, ptr @cf_encode_2d.further_count_bit
  %26 = zext i32 %22 to i64
  %27 = getelementptr inbounds i8, ptr %1, i64 %26
  %28 = add i32 %12, 7
  %29 = lshr i32 %28, 3
  %30 = zext nneg i32 %29 to i64
  %31 = sub nsw i64 0, %30
  %32 = getelementptr inbounds i8, ptr %27, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !27
  %34 = zext i8 %33 to i32
  %35 = load i32, ptr %9, align 4, !tbaa !47
  %36 = icmp ne i32 %35, 0
  %37 = sext i1 %36 to i32
  %38 = xor i32 %10, %37
  %39 = and i32 %38, 255
  %40 = xor i32 %39, %34
  %41 = getelementptr inbounds i8, ptr %32, i64 1
  %42 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !36
  %44 = trunc i32 %38 to i8
  %45 = ptrtoint ptr %1 to i64
  %46 = ptrtoint ptr %43 to i64
  %47 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 25
  %48 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 3
  %49 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 3
  %50 = load i16, ptr getelementptr inbounds ([41 x %struct.hce_code_s], ptr @cf_black_make_up, i64 0, i64 40), align 16
  %51 = load i16, ptr getelementptr inbounds ([41 x %struct.hce_code_s], ptr @cf_black_make_up, i64 0, i64 40, i32 1), align 2
  %52 = zext i16 %51 to i32
  %53 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 3
  %54 = zext i16 %50 to i32
  %55 = zext i16 %50 to i32
  %56 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 3
  %57 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 3
  %58 = load i16, ptr getelementptr inbounds ([41 x %struct.hce_code_s], ptr @cf_white_make_up, i64 0, i64 40), align 16
  %59 = load i16, ptr getelementptr inbounds ([41 x %struct.hce_code_s], ptr @cf_white_make_up, i64 0, i64 40, i32 1), align 2
  %60 = zext i16 %59 to i32
  %61 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 3
  %62 = zext i16 %58 to i32
  %63 = zext i16 %58 to i32
  %64 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 3
  %65 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 3
  %66 = load i16, ptr getelementptr inbounds ([41 x %struct.hce_code_s], ptr @cf_white_make_up, i64 0, i64 40), align 16
  %67 = load i16, ptr getelementptr inbounds ([41 x %struct.hce_code_s], ptr @cf_white_make_up, i64 0, i64 40, i32 1), align 2
  %68 = zext i16 %67 to i32
  %69 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 3
  %70 = zext i16 %66 to i32
  %71 = zext i16 %66 to i32
  %72 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 3
  %73 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 3
  %74 = load i16, ptr getelementptr inbounds ([41 x %struct.hce_code_s], ptr @cf_black_make_up, i64 0, i64 40), align 16
  %75 = load i16, ptr getelementptr inbounds ([41 x %struct.hce_code_s], ptr @cf_black_make_up, i64 0, i64 40, i32 1), align 2
  %76 = zext i16 %75 to i32
  %77 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 3
  %78 = zext i16 %74 to i32
  %79 = zext i16 %74 to i32
  %80 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 3
  %81 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 3
  %82 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 3
  br label %83

83:                                               ; preds = %20, %1121
  %84 = phi i8 [ %44, %20 ], [ %1119, %1121 ]
  %85 = phi ptr [ %25, %20 ], [ %1118, %1121 ]
  %86 = phi i32 [ %18, %20 ], [ %1117, %1121 ]
  %87 = phi i32 [ %16, %20 ], [ %1116, %1121 ]
  %88 = phi i32 [ 0, %20 ], [ %1115, %1121 ]
  %89 = phi i32 [ %40, %20 ], [ %1114, %1121 ]
  %90 = phi i32 [ %12, %20 ], [ %1113, %1121 ]
  %91 = phi ptr [ %14, %20 ], [ %1112, %1121 ]
  %92 = phi ptr [ %41, %20 ], [ %1111, %1121 ]
  %93 = ptrtoint ptr %92 to i64
  %94 = sub i64 %93, %45
  %95 = getelementptr inbounds i8, ptr %4, i64 %94
  %96 = getelementptr inbounds i8, ptr %95, i64 -1
  %97 = load i8, ptr %96, align 1, !tbaa !27
  %98 = zext i8 %84 to i32
  %99 = xor i8 %97, %84
  %100 = ptrtoint ptr %91 to i64
  %101 = sub i64 %46, %100
  %102 = load i32, ptr %47, align 8, !tbaa !33
  %103 = sext i32 %102 to i64
  %104 = icmp slt i64 %101, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %83
  %106 = icmp ne i32 %10, %98
  %107 = zext i1 %106 to i32
  store i32 %107, ptr %9, align 4, !tbaa !47
  br label %1110

108:                                              ; preds = %83
  %109 = and i32 %90, 7
  %110 = zext nneg i32 %109 to i64
  %111 = getelementptr inbounds [8 x ptr], ptr @byte_bit_run_length_neg, i64 0, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !55
  %113 = xor i32 %89, 255
  %114 = zext nneg i32 %113 to i64
  %115 = getelementptr inbounds i8, ptr %112, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !27
  %117 = zext i8 %116 to i32
  %118 = icmp ugt i8 %116, 7
  br i1 %118, label %119, label %238

119:                                              ; preds = %108
  %120 = icmp eq i8 %84, 0
  %121 = load i8, ptr %92, align 1, !tbaa !27
  br i1 %120, label %122, label %172

122:                                              ; preds = %119
  %123 = icmp eq i8 %121, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %122
  %125 = zext i8 %121 to i32
  %126 = getelementptr inbounds i8, ptr %92, i64 1
  %127 = add nsw i32 %117, -8
  br label %228

128:                                              ; preds = %122
  %129 = getelementptr inbounds i8, ptr %92, i64 1
  %130 = load i8, ptr %129, align 1, !tbaa !27
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %128
  %133 = zext i8 %130 to i32
  %134 = getelementptr inbounds i8, ptr %92, i64 2
  br label %228

135:                                              ; preds = %128, %135
  %136 = phi ptr [ %145, %135 ], [ %92, %128 ]
  %137 = phi i32 [ %154, %135 ], [ %117, %128 ]
  %138 = getelementptr inbounds i8, ptr %136, i64 2
  %139 = load i8, ptr %138, align 1, !tbaa !27
  %140 = zext i8 %139 to i32
  %141 = getelementptr inbounds i8, ptr %136, i64 3
  %142 = load i8, ptr %141, align 1, !tbaa !27
  %143 = zext i8 %142 to i32
  %144 = or i32 %143, %140
  %145 = getelementptr inbounds i8, ptr %136, i64 4
  %146 = load i8, ptr %145, align 1, !tbaa !27
  %147 = zext i8 %146 to i32
  %148 = or i32 %144, %147
  %149 = getelementptr inbounds i8, ptr %136, i64 5
  %150 = load i8, ptr %149, align 1, !tbaa !27
  %151 = zext i8 %150 to i32
  %152 = or i32 %148, %151
  %153 = icmp eq i32 %152, 0
  %154 = add nuw nsw i32 %137, 32
  br i1 %153, label %135, label %155, !llvm.loop !56

155:                                              ; preds = %135
  %156 = getelementptr inbounds i8, ptr %136, i64 5
  %157 = icmp eq i8 %139, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %155
  %159 = getelementptr inbounds i8, ptr %136, i64 3
  %160 = add nuw nsw i32 %137, 8
  br label %228

161:                                              ; preds = %155
  %162 = icmp eq i8 %142, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %161
  %164 = add nuw nsw i32 %137, 16
  br label %228

165:                                              ; preds = %161
  %166 = icmp eq i8 %146, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %165
  %168 = add nuw nsw i32 %137, 24
  br label %228

169:                                              ; preds = %165
  %170 = getelementptr inbounds i8, ptr %136, i64 6
  %171 = add nuw nsw i32 %137, 32
  br label %228

172:                                              ; preds = %119
  %173 = icmp eq i8 %121, -1
  br i1 %173, label %179, label %174

174:                                              ; preds = %172
  %175 = xor i8 %121, -1
  %176 = zext i8 %175 to i32
  %177 = getelementptr inbounds i8, ptr %92, i64 1
  %178 = add nsw i32 %117, -8
  br label %228

179:                                              ; preds = %172
  %180 = getelementptr inbounds i8, ptr %92, i64 1
  %181 = load i8, ptr %180, align 1, !tbaa !27
  %182 = icmp eq i8 %181, -1
  br i1 %182, label %187, label %183

183:                                              ; preds = %179
  %184 = xor i8 %181, -1
  %185 = zext i8 %184 to i32
  %186 = getelementptr inbounds i8, ptr %92, i64 2
  br label %228

187:                                              ; preds = %179, %187
  %188 = phi ptr [ %194, %187 ], [ %92, %179 ]
  %189 = phi i32 [ %202, %187 ], [ %117, %179 ]
  %190 = getelementptr inbounds i8, ptr %188, i64 2
  %191 = load i8, ptr %190, align 1, !tbaa !27
  %192 = getelementptr inbounds i8, ptr %188, i64 3
  %193 = load i8, ptr %192, align 1, !tbaa !27
  %194 = getelementptr inbounds i8, ptr %188, i64 4
  %195 = load i8, ptr %194, align 1, !tbaa !27
  %196 = getelementptr inbounds i8, ptr %188, i64 5
  %197 = load i8, ptr %196, align 1, !tbaa !27
  %198 = and i8 %193, %191
  %199 = and i8 %198, %195
  %200 = and i8 %199, %197
  %201 = icmp eq i8 %200, -1
  %202 = add nuw nsw i32 %189, 32
  br i1 %201, label %187, label %203, !llvm.loop !57

203:                                              ; preds = %187
  %204 = getelementptr inbounds i8, ptr %188, i64 5
  %205 = icmp eq i8 %191, -1
  br i1 %205, label %211, label %206

206:                                              ; preds = %203
  %207 = getelementptr inbounds i8, ptr %188, i64 3
  %208 = xor i8 %191, -1
  %209 = zext i8 %208 to i32
  %210 = add nuw nsw i32 %189, 8
  br label %228

211:                                              ; preds = %203
  %212 = icmp eq i8 %193, -1
  br i1 %212, label %217, label %213

213:                                              ; preds = %211
  %214 = xor i8 %193, -1
  %215 = zext i8 %214 to i32
  %216 = add nuw nsw i32 %189, 16
  br label %228

217:                                              ; preds = %211
  %218 = icmp eq i8 %195, -1
  br i1 %218, label %223, label %219

219:                                              ; preds = %217
  %220 = xor i8 %195, -1
  %221 = zext i8 %220 to i32
  %222 = add nuw nsw i32 %189, 24
  br label %228

223:                                              ; preds = %217
  %224 = xor i8 %197, -1
  %225 = zext i8 %224 to i32
  %226 = getelementptr inbounds i8, ptr %188, i64 6
  %227 = add nuw nsw i32 %189, 32
  br label %228

228:                                              ; preds = %174, %206, %219, %223, %213, %183, %124, %158, %167, %169, %163, %132
  %229 = phi ptr [ %126, %124 ], [ %134, %132 ], [ %159, %158 ], [ %145, %163 ], [ %156, %167 ], [ %170, %169 ], [ %177, %174 ], [ %186, %183 ], [ %207, %206 ], [ %194, %213 ], [ %204, %219 ], [ %226, %223 ]
  %230 = phi i32 [ %125, %124 ], [ %133, %132 ], [ %140, %158 ], [ %143, %163 ], [ %147, %167 ], [ %151, %169 ], [ %176, %174 ], [ %185, %183 ], [ %209, %206 ], [ %215, %213 ], [ %221, %219 ], [ %225, %223 ]
  %231 = phi i32 [ %127, %124 ], [ %117, %132 ], [ %160, %158 ], [ %164, %163 ], [ %168, %167 ], [ %171, %169 ], [ %178, %174 ], [ %117, %183 ], [ %210, %206 ], [ %216, %213 ], [ %222, %219 ], [ %227, %223 ]
  %232 = xor i32 %230, 255
  %233 = zext nneg i32 %232 to i64
  %234 = getelementptr inbounds [256 x i8], ptr @byte_bit_run_length_0, i64 0, i64 %233
  %235 = load i8, ptr %234, align 1, !tbaa !27
  %236 = zext i8 %235 to i32
  %237 = add nsw i32 %231, %236
  br label %238

238:                                              ; preds = %228, %108
  %239 = phi ptr [ %229, %228 ], [ %92, %108 ]
  %240 = phi i32 [ %230, %228 ], [ %89, %108 ]
  %241 = phi i32 [ %237, %228 ], [ %117, %108 ]
  %242 = sub i32 %90, %241
  %243 = getelementptr inbounds i8, ptr %85, i64 %110
  %244 = load i8, ptr %243, align 1, !tbaa !27
  %245 = and i8 %244, %99
  %246 = icmp eq i8 %245, 0
  br i1 %246, label %340, label %247

247:                                              ; preds = %238
  %248 = zext i8 %99 to i64
  %249 = getelementptr inbounds i8, ptr %112, i64 %248
  %250 = load i8, ptr %249, align 1, !tbaa !27
  %251 = zext i8 %250 to i32
  %252 = icmp ugt i8 %250, 7
  br i1 %252, label %253, label %335

253:                                              ; preds = %247
  %254 = icmp eq i8 %84, 0
  %255 = load i8, ptr %95, align 1, !tbaa !27
  br i1 %254, label %258, label %256

256:                                              ; preds = %253
  %257 = icmp eq i8 %255, 0
  br i1 %257, label %296, label %289

258:                                              ; preds = %253
  %259 = icmp eq i8 %255, -1
  br i1 %259, label %266, label %260

260:                                              ; preds = %285, %258
  %261 = phi ptr [ %95, %258 ], [ %282, %285 ]
  %262 = phi i32 [ %251, %258 ], [ %286, %285 ]
  %263 = phi i8 [ %255, %258 ], [ %287, %285 ]
  %264 = getelementptr inbounds i8, ptr %261, i64 1
  %265 = add nsw i32 %262, -8
  br label %326

266:                                              ; preds = %258, %285
  %267 = phi i32 [ %286, %285 ], [ %251, %258 ]
  %268 = phi ptr [ %282, %285 ], [ %95, %258 ]
  %269 = getelementptr inbounds i8, ptr %268, i64 1
  %270 = load i8, ptr %269, align 1, !tbaa !27
  %271 = icmp eq i8 %270, -1
  %272 = getelementptr inbounds i8, ptr %268, i64 2
  br i1 %271, label %273, label %326

273:                                              ; preds = %266
  %274 = load i8, ptr %272, align 1, !tbaa !27
  %275 = icmp eq i8 %274, -1
  %276 = getelementptr inbounds i8, ptr %268, i64 3
  br i1 %275, label %279, label %277

277:                                              ; preds = %273
  %278 = add nuw nsw i32 %267, 8
  br label %326

279:                                              ; preds = %273
  %280 = load i8, ptr %276, align 1, !tbaa !27
  %281 = icmp eq i8 %280, -1
  %282 = getelementptr inbounds i8, ptr %268, i64 4
  br i1 %281, label %285, label %283

283:                                              ; preds = %279
  %284 = add nuw nsw i32 %267, 16
  br label %326

285:                                              ; preds = %279
  %286 = add nuw nsw i32 %267, 32
  %287 = load i8, ptr %282, align 1, !tbaa !27
  %288 = icmp eq i8 %287, -1
  br i1 %288, label %266, label %260, !llvm.loop !58

289:                                              ; preds = %321, %256
  %290 = phi ptr [ %95, %256 ], [ %322, %321 ]
  %291 = phi i32 [ %251, %256 ], [ %323, %321 ]
  %292 = phi i8 [ %255, %256 ], [ %324, %321 ]
  %293 = xor i8 %292, -1
  %294 = getelementptr inbounds i8, ptr %290, i64 1
  %295 = add nsw i32 %291, -8
  br label %326

296:                                              ; preds = %256, %321
  %297 = phi i32 [ %323, %321 ], [ %251, %256 ]
  %298 = phi ptr [ %322, %321 ], [ %95, %256 ]
  %299 = getelementptr inbounds i8, ptr %298, i64 1
  %300 = load i8, ptr %299, align 1, !tbaa !27
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %305, label %302

302:                                              ; preds = %296
  %303 = xor i8 %300, -1
  %304 = getelementptr inbounds i8, ptr %298, i64 2
  br label %326

305:                                              ; preds = %296
  %306 = getelementptr inbounds i8, ptr %298, i64 2
  %307 = load i8, ptr %306, align 1, !tbaa !27
  %308 = icmp eq i8 %307, 0
  br i1 %308, label %313, label %309

309:                                              ; preds = %305
  %310 = xor i8 %307, -1
  %311 = getelementptr inbounds i8, ptr %298, i64 3
  %312 = add nuw nsw i32 %297, 8
  br label %326

313:                                              ; preds = %305
  %314 = getelementptr inbounds i8, ptr %298, i64 3
  %315 = load i8, ptr %314, align 1, !tbaa !27
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %321, label %317

317:                                              ; preds = %313
  %318 = xor i8 %315, -1
  %319 = getelementptr inbounds i8, ptr %298, i64 4
  %320 = add nuw nsw i32 %297, 16
  br label %326

321:                                              ; preds = %313
  %322 = getelementptr inbounds i8, ptr %298, i64 4
  %323 = add nuw nsw i32 %297, 32
  %324 = load i8, ptr %322, align 1, !tbaa !27
  %325 = icmp eq i8 %324, 0
  br i1 %325, label %296, label %289, !llvm.loop !59

326:                                              ; preds = %266, %289, %302, %309, %317, %260, %277, %283
  %327 = phi ptr [ %264, %260 ], [ %276, %277 ], [ %282, %283 ], [ %294, %289 ], [ %304, %302 ], [ %311, %309 ], [ %319, %317 ], [ %272, %266 ]
  %328 = phi i8 [ %263, %260 ], [ %274, %277 ], [ %280, %283 ], [ %293, %289 ], [ %303, %302 ], [ %310, %309 ], [ %318, %317 ], [ %270, %266 ]
  %329 = phi i32 [ %265, %260 ], [ %278, %277 ], [ %284, %283 ], [ %295, %289 ], [ %297, %302 ], [ %312, %309 ], [ %320, %317 ], [ %267, %266 ]
  %330 = zext i8 %328 to i64
  %331 = getelementptr inbounds [256 x i8], ptr @byte_bit_run_length_0, i64 0, i64 %330
  %332 = load i8, ptr %331, align 1, !tbaa !27
  %333 = zext i8 %332 to i32
  %334 = add nsw i32 %329, %333
  br label %335

335:                                              ; preds = %326, %247
  %336 = phi ptr [ %327, %326 ], [ %95, %247 ]
  %337 = phi i8 [ %328, %326 ], [ %99, %247 ]
  %338 = phi i32 [ %334, %326 ], [ %251, %247 ]
  %339 = sub i32 %90, %338
  br label %340

340:                                              ; preds = %335, %238
  %341 = phi i32 [ %339, %335 ], [ %90, %238 ]
  %342 = phi ptr [ %336, %335 ], [ %95, %238 ]
  %343 = phi i8 [ %337, %335 ], [ %99, %238 ]
  %344 = icmp eq i8 %84, 0
  %345 = icmp eq i8 %84, 0
  br label %346

346:                                              ; preds = %596, %340
  %347 = phi ptr [ %91, %340 ], [ %597, %596 ]
  %348 = phi i32 [ %87, %340 ], [ %598, %596 ]
  %349 = phi i32 [ %86, %340 ], [ %599, %596 ]
  %350 = phi i32 [ %90, %340 ], [ %581, %596 ]
  %351 = phi i32 [ %341, %340 ], [ %581, %596 ]
  %352 = phi ptr [ %342, %340 ], [ %582, %596 ]
  %353 = phi i8 [ %343, %340 ], [ %583, %596 ]
  %354 = icmp eq i32 %351, %3
  br i1 %354, label %476, label %355

355:                                              ; preds = %346
  %356 = and i32 %351, 7
  %357 = zext nneg i32 %356 to i64
  %358 = getelementptr inbounds [8 x ptr], ptr @byte_bit_run_length_neg, i64 0, i64 %357
  %359 = load ptr, ptr %358, align 8, !tbaa !55
  %360 = xor i8 %353, -1
  %361 = zext i8 %360 to i64
  %362 = getelementptr inbounds i8, ptr %359, i64 %361
  %363 = load i8, ptr %362, align 1, !tbaa !27
  %364 = zext i8 %363 to i32
  %365 = icmp ugt i8 %363, 7
  br i1 %365, label %366, label %471

366:                                              ; preds = %355
  %367 = load i8, ptr %352, align 1, !tbaa !27
  br i1 %344, label %368, label %411

368:                                              ; preds = %366
  %369 = icmp eq i8 %367, 0
  %370 = getelementptr inbounds i8, ptr %352, i64 1
  br i1 %369, label %373, label %371

371:                                              ; preds = %368
  %372 = add nsw i32 %364, -8
  br label %461

373:                                              ; preds = %368
  %374 = load i8, ptr %370, align 1, !tbaa !27
  %375 = icmp eq i8 %374, 0
  br i1 %375, label %378, label %376

376:                                              ; preds = %373
  %377 = getelementptr inbounds i8, ptr %352, i64 2
  br label %461

378:                                              ; preds = %373, %378
  %379 = phi ptr [ %386, %378 ], [ %352, %373 ]
  %380 = phi i32 [ %393, %378 ], [ %364, %373 ]
  %381 = getelementptr inbounds i8, ptr %379, i64 2
  %382 = load i8, ptr %381, align 1, !tbaa !27
  %383 = getelementptr inbounds i8, ptr %379, i64 3
  %384 = load i8, ptr %383, align 1, !tbaa !27
  %385 = or i8 %384, %382
  %386 = getelementptr inbounds i8, ptr %379, i64 4
  %387 = load i8, ptr %386, align 1, !tbaa !27
  %388 = or i8 %385, %387
  %389 = getelementptr inbounds i8, ptr %379, i64 5
  %390 = load i8, ptr %389, align 1, !tbaa !27
  %391 = or i8 %388, %390
  %392 = icmp eq i8 %391, 0
  %393 = add nuw nsw i32 %380, 32
  br i1 %392, label %378, label %394, !llvm.loop !60

394:                                              ; preds = %378
  %395 = getelementptr inbounds i8, ptr %379, i64 5
  %396 = icmp eq i8 %382, 0
  br i1 %396, label %400, label %397

397:                                              ; preds = %394
  %398 = getelementptr inbounds i8, ptr %379, i64 3
  %399 = add nuw nsw i32 %380, 8
  br label %461

400:                                              ; preds = %394
  %401 = icmp eq i8 %384, 0
  br i1 %401, label %404, label %402

402:                                              ; preds = %400
  %403 = add nuw nsw i32 %380, 16
  br label %461

404:                                              ; preds = %400
  %405 = icmp eq i8 %387, 0
  br i1 %405, label %408, label %406

406:                                              ; preds = %404
  %407 = add nuw nsw i32 %380, 24
  br label %461

408:                                              ; preds = %404
  %409 = getelementptr inbounds i8, ptr %379, i64 6
  %410 = add nuw nsw i32 %380, 32
  br label %461

411:                                              ; preds = %366
  %412 = icmp eq i8 %367, -1
  br i1 %412, label %417, label %413

413:                                              ; preds = %411
  %414 = xor i8 %367, -1
  %415 = getelementptr inbounds i8, ptr %352, i64 1
  %416 = add nsw i32 %364, -8
  br label %461

417:                                              ; preds = %411
  %418 = getelementptr inbounds i8, ptr %352, i64 1
  %419 = load i8, ptr %418, align 1, !tbaa !27
  %420 = icmp eq i8 %419, -1
  br i1 %420, label %424, label %421

421:                                              ; preds = %417
  %422 = xor i8 %419, -1
  %423 = getelementptr inbounds i8, ptr %352, i64 2
  br label %461

424:                                              ; preds = %417, %424
  %425 = phi ptr [ %431, %424 ], [ %352, %417 ]
  %426 = phi i32 [ %439, %424 ], [ %364, %417 ]
  %427 = getelementptr inbounds i8, ptr %425, i64 2
  %428 = load i8, ptr %427, align 1, !tbaa !27
  %429 = getelementptr inbounds i8, ptr %425, i64 3
  %430 = load i8, ptr %429, align 1, !tbaa !27
  %431 = getelementptr inbounds i8, ptr %425, i64 4
  %432 = load i8, ptr %431, align 1, !tbaa !27
  %433 = getelementptr inbounds i8, ptr %425, i64 5
  %434 = load i8, ptr %433, align 1, !tbaa !27
  %435 = and i8 %430, %428
  %436 = and i8 %435, %432
  %437 = and i8 %436, %434
  %438 = icmp eq i8 %437, -1
  %439 = add nuw nsw i32 %426, 32
  br i1 %438, label %424, label %440, !llvm.loop !61

440:                                              ; preds = %424
  %441 = getelementptr inbounds i8, ptr %425, i64 5
  %442 = icmp eq i8 %428, -1
  br i1 %442, label %447, label %443

443:                                              ; preds = %440
  %444 = getelementptr inbounds i8, ptr %425, i64 3
  %445 = xor i8 %428, -1
  %446 = add nuw nsw i32 %426, 8
  br label %461

447:                                              ; preds = %440
  %448 = icmp eq i8 %430, -1
  br i1 %448, label %452, label %449

449:                                              ; preds = %447
  %450 = xor i8 %430, -1
  %451 = add nuw nsw i32 %426, 16
  br label %461

452:                                              ; preds = %447
  %453 = icmp eq i8 %432, -1
  br i1 %453, label %457, label %454

454:                                              ; preds = %452
  %455 = xor i8 %432, -1
  %456 = add nuw nsw i32 %426, 24
  br label %461

457:                                              ; preds = %452
  %458 = xor i8 %434, -1
  %459 = getelementptr inbounds i8, ptr %425, i64 6
  %460 = add nuw nsw i32 %426, 32
  br label %461

461:                                              ; preds = %413, %443, %454, %457, %449, %421, %371, %397, %406, %408, %402, %376
  %462 = phi ptr [ %370, %371 ], [ %377, %376 ], [ %398, %397 ], [ %386, %402 ], [ %395, %406 ], [ %409, %408 ], [ %415, %413 ], [ %423, %421 ], [ %444, %443 ], [ %431, %449 ], [ %441, %454 ], [ %459, %457 ]
  %463 = phi i8 [ %367, %371 ], [ %374, %376 ], [ %382, %397 ], [ %384, %402 ], [ %387, %406 ], [ %390, %408 ], [ %414, %413 ], [ %422, %421 ], [ %445, %443 ], [ %450, %449 ], [ %455, %454 ], [ %458, %457 ]
  %464 = phi i32 [ %372, %371 ], [ %364, %376 ], [ %399, %397 ], [ %403, %402 ], [ %407, %406 ], [ %410, %408 ], [ %416, %413 ], [ %364, %421 ], [ %446, %443 ], [ %451, %449 ], [ %456, %454 ], [ %460, %457 ]
  %465 = xor i8 %463, -1
  %466 = zext i8 %465 to i64
  %467 = getelementptr inbounds [256 x i8], ptr @byte_bit_run_length_0, i64 0, i64 %466
  %468 = load i8, ptr %467, align 1, !tbaa !27
  %469 = zext i8 %468 to i32
  %470 = add nsw i32 %464, %469
  br label %471

471:                                              ; preds = %461, %355
  %472 = phi ptr [ %462, %461 ], [ %352, %355 ]
  %473 = phi i8 [ %463, %461 ], [ %353, %355 ]
  %474 = phi i32 [ %470, %461 ], [ %364, %355 ]
  %475 = sub i32 %351, %474
  br label %476

476:                                              ; preds = %471, %346
  %477 = phi i32 [ %475, %471 ], [ %351, %346 ]
  %478 = phi ptr [ %472, %471 ], [ %352, %346 ]
  %479 = phi i8 [ %473, %471 ], [ %353, %346 ]
  %480 = sub i32 %242, %477
  %481 = icmp slt i32 %480, -1
  br i1 %481, label %482, label %608

482:                                              ; preds = %476
  %483 = icmp eq i32 %477, %3
  br i1 %483, label %580, label %484

484:                                              ; preds = %482
  %485 = and i32 %477, 7
  %486 = zext nneg i32 %485 to i64
  %487 = getelementptr inbounds [8 x ptr], ptr @byte_bit_run_length_neg, i64 0, i64 %486
  %488 = load ptr, ptr %487, align 8, !tbaa !55
  %489 = zext i8 %479 to i64
  %490 = getelementptr inbounds i8, ptr %488, i64 %489
  %491 = load i8, ptr %490, align 1, !tbaa !27
  %492 = zext i8 %491 to i32
  %493 = icmp ugt i8 %491, 7
  br i1 %493, label %494, label %575

494:                                              ; preds = %484
  %495 = load i8, ptr %478, align 1, !tbaa !27
  br i1 %345, label %498, label %496

496:                                              ; preds = %494
  %497 = icmp eq i8 %495, 0
  br i1 %497, label %536, label %529

498:                                              ; preds = %494
  %499 = icmp eq i8 %495, -1
  br i1 %499, label %506, label %500

500:                                              ; preds = %525, %498
  %501 = phi ptr [ %478, %498 ], [ %522, %525 ]
  %502 = phi i32 [ %492, %498 ], [ %526, %525 ]
  %503 = phi i8 [ %495, %498 ], [ %527, %525 ]
  %504 = getelementptr inbounds i8, ptr %501, i64 1
  %505 = add nsw i32 %502, -8
  br label %566

506:                                              ; preds = %498, %525
  %507 = phi i32 [ %526, %525 ], [ %492, %498 ]
  %508 = phi ptr [ %522, %525 ], [ %478, %498 ]
  %509 = getelementptr inbounds i8, ptr %508, i64 1
  %510 = load i8, ptr %509, align 1, !tbaa !27
  %511 = icmp eq i8 %510, -1
  %512 = getelementptr inbounds i8, ptr %508, i64 2
  br i1 %511, label %513, label %566

513:                                              ; preds = %506
  %514 = load i8, ptr %512, align 1, !tbaa !27
  %515 = icmp eq i8 %514, -1
  %516 = getelementptr inbounds i8, ptr %508, i64 3
  br i1 %515, label %519, label %517

517:                                              ; preds = %513
  %518 = add nuw nsw i32 %507, 8
  br label %566

519:                                              ; preds = %513
  %520 = load i8, ptr %516, align 1, !tbaa !27
  %521 = icmp eq i8 %520, -1
  %522 = getelementptr inbounds i8, ptr %508, i64 4
  br i1 %521, label %525, label %523

523:                                              ; preds = %519
  %524 = add nuw nsw i32 %507, 16
  br label %566

525:                                              ; preds = %519
  %526 = add nuw nsw i32 %507, 32
  %527 = load i8, ptr %522, align 1, !tbaa !27
  %528 = icmp eq i8 %527, -1
  br i1 %528, label %506, label %500, !llvm.loop !62

529:                                              ; preds = %561, %496
  %530 = phi ptr [ %478, %496 ], [ %562, %561 ]
  %531 = phi i32 [ %492, %496 ], [ %563, %561 ]
  %532 = phi i8 [ %495, %496 ], [ %564, %561 ]
  %533 = xor i8 %532, -1
  %534 = getelementptr inbounds i8, ptr %530, i64 1
  %535 = add nsw i32 %531, -8
  br label %566

536:                                              ; preds = %496, %561
  %537 = phi i32 [ %563, %561 ], [ %492, %496 ]
  %538 = phi ptr [ %562, %561 ], [ %478, %496 ]
  %539 = getelementptr inbounds i8, ptr %538, i64 1
  %540 = load i8, ptr %539, align 1, !tbaa !27
  %541 = icmp eq i8 %540, 0
  br i1 %541, label %545, label %542

542:                                              ; preds = %536
  %543 = xor i8 %540, -1
  %544 = getelementptr inbounds i8, ptr %538, i64 2
  br label %566

545:                                              ; preds = %536
  %546 = getelementptr inbounds i8, ptr %538, i64 2
  %547 = load i8, ptr %546, align 1, !tbaa !27
  %548 = icmp eq i8 %547, 0
  br i1 %548, label %553, label %549

549:                                              ; preds = %545
  %550 = xor i8 %547, -1
  %551 = getelementptr inbounds i8, ptr %538, i64 3
  %552 = add nuw nsw i32 %537, 8
  br label %566

553:                                              ; preds = %545
  %554 = getelementptr inbounds i8, ptr %538, i64 3
  %555 = load i8, ptr %554, align 1, !tbaa !27
  %556 = icmp eq i8 %555, 0
  br i1 %556, label %561, label %557

557:                                              ; preds = %553
  %558 = xor i8 %555, -1
  %559 = getelementptr inbounds i8, ptr %538, i64 4
  %560 = add nuw nsw i32 %537, 16
  br label %566

561:                                              ; preds = %553
  %562 = getelementptr inbounds i8, ptr %538, i64 4
  %563 = add nuw nsw i32 %537, 32
  %564 = load i8, ptr %562, align 1, !tbaa !27
  %565 = icmp eq i8 %564, 0
  br i1 %565, label %536, label %529, !llvm.loop !63

566:                                              ; preds = %506, %529, %542, %549, %557, %500, %517, %523
  %567 = phi ptr [ %504, %500 ], [ %516, %517 ], [ %522, %523 ], [ %534, %529 ], [ %544, %542 ], [ %551, %549 ], [ %559, %557 ], [ %512, %506 ]
  %568 = phi i8 [ %503, %500 ], [ %514, %517 ], [ %520, %523 ], [ %533, %529 ], [ %543, %542 ], [ %550, %549 ], [ %558, %557 ], [ %510, %506 ]
  %569 = phi i32 [ %505, %500 ], [ %518, %517 ], [ %524, %523 ], [ %535, %529 ], [ %537, %542 ], [ %552, %549 ], [ %560, %557 ], [ %507, %506 ]
  %570 = zext i8 %568 to i64
  %571 = getelementptr inbounds [256 x i8], ptr @byte_bit_run_length_0, i64 0, i64 %570
  %572 = load i8, ptr %571, align 1, !tbaa !27
  %573 = zext i8 %572 to i32
  %574 = add nsw i32 %569, %573
  br label %575

575:                                              ; preds = %566, %484
  %576 = phi ptr [ %567, %566 ], [ %478, %484 ]
  %577 = phi i8 [ %568, %566 ], [ %479, %484 ]
  %578 = phi i32 [ %574, %566 ], [ %492, %484 ]
  %579 = sub i32 %477, %578
  br label %580

580:                                              ; preds = %575, %482
  %581 = phi i32 [ %579, %575 ], [ %477, %482 ]
  %582 = phi ptr [ %576, %575 ], [ %478, %482 ]
  %583 = phi i8 [ %577, %575 ], [ %479, %482 ]
  %584 = icmp ugt i32 %581, %242
  br i1 %584, label %585, label %608

585:                                              ; preds = %580
  %586 = icmp sgt i32 %349, 3
  br i1 %586, label %587, label %591

587:                                              ; preds = %585
  %588 = add nsw i32 %349, -4
  %589 = shl nuw i32 1, %588
  %590 = add i32 %589, %348
  br label %596

591:                                              ; preds = %585
  %592 = load i32, ptr %48, align 8, !tbaa !46
  %593 = getelementptr inbounds i8, ptr %347, i64 4
  tail call void @hc_put_code_proc(i32 noundef %592, ptr noundef nonnull %593, i32 noundef %348) #8
  %594 = add nsw i32 %349, 28
  %595 = shl nuw i32 1, %594
  br label %596

596:                                              ; preds = %591, %587
  %597 = phi ptr [ %347, %587 ], [ %593, %591 ]
  %598 = phi i32 [ %590, %587 ], [ %595, %591 ]
  %599 = phi i32 [ %588, %587 ], [ %594, %591 ]
  %600 = ptrtoint ptr %597 to i64
  %601 = sub i64 %46, %600
  %602 = load i32, ptr %47, align 8, !tbaa !33
  %603 = sext i32 %602 to i64
  %604 = icmp slt i64 %601, %603
  br i1 %604, label %605, label %346

605:                                              ; preds = %596
  %606 = icmp ne i32 %10, %98
  %607 = zext i1 %606 to i32
  store i32 %607, ptr %9, align 4, !tbaa !47
  br label %1110

608:                                              ; preds = %580, %476
  %609 = add i32 %480, 3
  %610 = icmp ult i32 %609, 7
  br i1 %610, label %611, label %640

611:                                              ; preds = %608
  %612 = zext nneg i32 %609 to i64
  %613 = getelementptr inbounds [7 x %struct.hce_code_s], ptr @cf2_run_vertical, i64 0, i64 %612
  %614 = getelementptr inbounds [7 x %struct.hce_code_s], ptr @cf2_run_vertical, i64 0, i64 %612, i32 1
  %615 = load i16, ptr %614, align 2, !tbaa !42
  %616 = zext i16 %615 to i32
  %617 = sub nsw i32 %349, %616
  %618 = icmp sgt i32 %617, -1
  br i1 %618, label %619, label %624

619:                                              ; preds = %611
  %620 = load i16, ptr %613, align 4, !tbaa !45
  %621 = zext i16 %620 to i32
  %622 = shl i32 %621, %617
  %623 = add i32 %622, %348
  br label %634

624:                                              ; preds = %611
  %625 = load i32, ptr %82, align 8, !tbaa !46
  %626 = getelementptr inbounds i8, ptr %347, i64 4
  %627 = load i16, ptr %613, align 4, !tbaa !45
  %628 = zext i16 %627 to i32
  %629 = sub nsw i32 0, %617
  %630 = lshr i32 %628, %629
  %631 = add i32 %630, %348
  tail call void @hc_put_code_proc(i32 noundef %625, ptr noundef nonnull %626, i32 noundef %631) #8
  %632 = add nsw i32 %617, 32
  %633 = shl i32 %628, %632
  br label %634

634:                                              ; preds = %624, %619
  %635 = phi ptr [ %347, %619 ], [ %626, %624 ]
  %636 = phi i32 [ %623, %619 ], [ %633, %624 ]
  %637 = phi i32 [ %617, %619 ], [ %632, %624 ]
  %638 = xor i8 %84, -1
  %639 = xor i32 %240, 255
  br label %1110

640:                                              ; preds = %608
  %641 = icmp eq i32 %242, %3
  br i1 %641, label %740, label %642

642:                                              ; preds = %640
  %643 = and i32 %242, 7
  %644 = zext nneg i32 %643 to i64
  %645 = getelementptr inbounds [8 x ptr], ptr @byte_bit_run_length_neg, i64 0, i64 %644
  %646 = load ptr, ptr %645, align 8, !tbaa !55
  %647 = zext nneg i32 %240 to i64
  %648 = getelementptr inbounds i8, ptr %646, i64 %647
  %649 = load i8, ptr %648, align 1, !tbaa !27
  %650 = zext i8 %649 to i32
  %651 = icmp ugt i8 %649, 7
  br i1 %651, label %652, label %735

652:                                              ; preds = %642
  %653 = icmp eq i8 %84, 0
  %654 = load i8, ptr %239, align 1, !tbaa !27
  br i1 %653, label %657, label %655

655:                                              ; preds = %652
  %656 = icmp eq i8 %654, 0
  br i1 %656, label %695, label %688

657:                                              ; preds = %652
  %658 = icmp eq i8 %654, -1
  br i1 %658, label %665, label %659

659:                                              ; preds = %684, %657
  %660 = phi ptr [ %239, %657 ], [ %681, %684 ]
  %661 = phi i32 [ %650, %657 ], [ %685, %684 ]
  %662 = phi i8 [ %654, %657 ], [ %686, %684 ]
  %663 = getelementptr inbounds i8, ptr %660, i64 1
  %664 = add nsw i32 %661, -8
  br label %725

665:                                              ; preds = %657, %684
  %666 = phi i32 [ %685, %684 ], [ %650, %657 ]
  %667 = phi ptr [ %681, %684 ], [ %239, %657 ]
  %668 = getelementptr inbounds i8, ptr %667, i64 1
  %669 = load i8, ptr %668, align 1, !tbaa !27
  %670 = icmp eq i8 %669, -1
  %671 = getelementptr inbounds i8, ptr %667, i64 2
  br i1 %670, label %672, label %725

672:                                              ; preds = %665
  %673 = load i8, ptr %671, align 1, !tbaa !27
  %674 = icmp eq i8 %673, -1
  %675 = getelementptr inbounds i8, ptr %667, i64 3
  br i1 %674, label %678, label %676

676:                                              ; preds = %672
  %677 = add nuw nsw i32 %666, 8
  br label %725

678:                                              ; preds = %672
  %679 = load i8, ptr %675, align 1, !tbaa !27
  %680 = icmp eq i8 %679, -1
  %681 = getelementptr inbounds i8, ptr %667, i64 4
  br i1 %680, label %684, label %682

682:                                              ; preds = %678
  %683 = add nuw nsw i32 %666, 16
  br label %725

684:                                              ; preds = %678
  %685 = add nuw nsw i32 %666, 32
  %686 = load i8, ptr %681, align 1, !tbaa !27
  %687 = icmp eq i8 %686, -1
  br i1 %687, label %665, label %659, !llvm.loop !64

688:                                              ; preds = %720, %655
  %689 = phi ptr [ %239, %655 ], [ %721, %720 ]
  %690 = phi i32 [ %650, %655 ], [ %722, %720 ]
  %691 = phi i8 [ %654, %655 ], [ %723, %720 ]
  %692 = xor i8 %691, -1
  %693 = getelementptr inbounds i8, ptr %689, i64 1
  %694 = add nsw i32 %690, -8
  br label %725

695:                                              ; preds = %655, %720
  %696 = phi i32 [ %722, %720 ], [ %650, %655 ]
  %697 = phi ptr [ %721, %720 ], [ %239, %655 ]
  %698 = getelementptr inbounds i8, ptr %697, i64 1
  %699 = load i8, ptr %698, align 1, !tbaa !27
  %700 = icmp eq i8 %699, 0
  br i1 %700, label %704, label %701

701:                                              ; preds = %695
  %702 = xor i8 %699, -1
  %703 = getelementptr inbounds i8, ptr %697, i64 2
  br label %725

704:                                              ; preds = %695
  %705 = getelementptr inbounds i8, ptr %697, i64 2
  %706 = load i8, ptr %705, align 1, !tbaa !27
  %707 = icmp eq i8 %706, 0
  br i1 %707, label %712, label %708

708:                                              ; preds = %704
  %709 = xor i8 %706, -1
  %710 = getelementptr inbounds i8, ptr %697, i64 3
  %711 = add nuw nsw i32 %696, 8
  br label %725

712:                                              ; preds = %704
  %713 = getelementptr inbounds i8, ptr %697, i64 3
  %714 = load i8, ptr %713, align 1, !tbaa !27
  %715 = icmp eq i8 %714, 0
  br i1 %715, label %720, label %716

716:                                              ; preds = %712
  %717 = xor i8 %714, -1
  %718 = getelementptr inbounds i8, ptr %697, i64 4
  %719 = add nuw nsw i32 %696, 16
  br label %725

720:                                              ; preds = %712
  %721 = getelementptr inbounds i8, ptr %697, i64 4
  %722 = add nuw nsw i32 %696, 32
  %723 = load i8, ptr %721, align 1, !tbaa !27
  %724 = icmp eq i8 %723, 0
  br i1 %724, label %695, label %688, !llvm.loop !65

725:                                              ; preds = %665, %688, %701, %708, %716, %659, %676, %682
  %726 = phi ptr [ %663, %659 ], [ %675, %676 ], [ %681, %682 ], [ %693, %688 ], [ %703, %701 ], [ %710, %708 ], [ %718, %716 ], [ %671, %665 ]
  %727 = phi i8 [ %662, %659 ], [ %673, %676 ], [ %679, %682 ], [ %692, %688 ], [ %702, %701 ], [ %709, %708 ], [ %717, %716 ], [ %669, %665 ]
  %728 = phi i32 [ %664, %659 ], [ %677, %676 ], [ %683, %682 ], [ %694, %688 ], [ %696, %701 ], [ %711, %708 ], [ %719, %716 ], [ %666, %665 ]
  %729 = zext i8 %727 to i32
  %730 = zext i8 %727 to i64
  %731 = getelementptr inbounds [256 x i8], ptr @byte_bit_run_length_0, i64 0, i64 %730
  %732 = load i8, ptr %731, align 1, !tbaa !27
  %733 = zext i8 %732 to i32
  %734 = add nsw i32 %728, %733
  br label %735

735:                                              ; preds = %725, %642
  %736 = phi ptr [ %726, %725 ], [ %239, %642 ]
  %737 = phi i32 [ %729, %725 ], [ %240, %642 ]
  %738 = phi i32 [ %734, %725 ], [ %650, %642 ]
  %739 = sub i32 %242, %738
  br label %740

740:                                              ; preds = %735, %640
  %741 = phi ptr [ %736, %735 ], [ %239, %640 ]
  %742 = phi i32 [ %739, %735 ], [ %242, %640 ]
  %743 = phi i32 [ %737, %735 ], [ %240, %640 ]
  %744 = icmp sgt i32 %349, 2
  br i1 %744, label %745, label %749

745:                                              ; preds = %740
  %746 = add nsw i32 %349, -3
  %747 = shl nuw i32 1, %746
  %748 = add i32 %747, %348
  br label %754

749:                                              ; preds = %740
  %750 = load i32, ptr %49, align 8, !tbaa !46
  %751 = getelementptr inbounds i8, ptr %347, i64 4
  tail call void @hc_put_code_proc(i32 noundef %750, ptr noundef nonnull %751, i32 noundef %348) #8
  %752 = add nsw i32 %349, 29
  %753 = shl nuw i32 1, %752
  br label %754

754:                                              ; preds = %749, %745
  %755 = phi ptr [ %347, %745 ], [ %751, %749 ]
  %756 = phi i32 [ %748, %745 ], [ %753, %749 ]
  %757 = phi i32 [ %746, %745 ], [ %752, %749 ]
  %758 = sub i32 %350, %242
  %759 = sub i32 %242, %742
  %760 = icmp eq i32 %10, %98
  %761 = icmp ugt i32 %758, 63
  br i1 %760, label %762, label %936

762:                                              ; preds = %754
  br i1 %761, label %763, label %821

763:                                              ; preds = %762
  %764 = icmp ugt i32 %758, 2623
  br i1 %764, label %765, label %789

765:                                              ; preds = %763, %783
  %766 = phi i32 [ %787, %783 ], [ %758, %763 ]
  %767 = phi i32 [ %786, %783 ], [ %757, %763 ]
  %768 = phi i32 [ %785, %783 ], [ %756, %763 ]
  %769 = phi ptr [ %784, %783 ], [ %755, %763 ]
  %770 = sub nsw i32 %767, %68
  %771 = icmp sgt i32 %770, -1
  br i1 %771, label %772, label %775

772:                                              ; preds = %765
  %773 = shl i32 %71, %770
  %774 = add i32 %773, %768
  br label %783

775:                                              ; preds = %765
  %776 = load i32, ptr %69, align 8, !tbaa !46
  %777 = getelementptr inbounds i8, ptr %769, i64 4
  %778 = sub nsw i32 0, %770
  %779 = lshr i32 %70, %778
  %780 = add i32 %779, %768
  tail call void @hc_put_code_proc(i32 noundef %776, ptr noundef nonnull %777, i32 noundef %780) #8
  %781 = add nsw i32 %770, 32
  %782 = shl i32 %70, %781
  br label %783

783:                                              ; preds = %775, %772
  %784 = phi ptr [ %769, %772 ], [ %777, %775 ]
  %785 = phi i32 [ %774, %772 ], [ %782, %775 ]
  %786 = phi i32 [ %770, %772 ], [ %781, %775 ]
  %787 = add i32 %766, -2560
  %788 = icmp ugt i32 %787, 2623
  br i1 %788, label %765, label %789, !llvm.loop !66

789:                                              ; preds = %783, %763
  %790 = phi ptr [ %755, %763 ], [ %784, %783 ]
  %791 = phi i32 [ %756, %763 ], [ %785, %783 ]
  %792 = phi i32 [ %757, %763 ], [ %786, %783 ]
  %793 = phi i32 [ %758, %763 ], [ %787, %783 ]
  %794 = lshr i32 %793, 6
  %795 = zext nneg i32 %794 to i64
  %796 = getelementptr inbounds [41 x %struct.hce_code_s], ptr @cf_white_make_up, i64 0, i64 %795
  %797 = load i16, ptr %796, align 4, !tbaa.struct !67
  %798 = getelementptr inbounds i8, ptr %796, i64 2
  %799 = load i16, ptr %798, align 2, !tbaa.struct !69
  %800 = zext i16 %799 to i32
  %801 = sub nsw i32 %792, %800
  %802 = icmp sgt i32 %801, -1
  br i1 %802, label %803, label %807

803:                                              ; preds = %789
  %804 = zext i16 %797 to i32
  %805 = shl i32 %804, %801
  %806 = add i32 %805, %791
  br label %816

807:                                              ; preds = %789
  %808 = load i32, ptr %72, align 8, !tbaa !46
  %809 = getelementptr inbounds i8, ptr %790, i64 4
  %810 = zext i16 %797 to i32
  %811 = sub nsw i32 0, %801
  %812 = lshr i32 %810, %811
  %813 = add i32 %812, %791
  tail call void @hc_put_code_proc(i32 noundef %808, ptr noundef nonnull %809, i32 noundef %813) #8
  %814 = add nsw i32 %801, 32
  %815 = shl i32 %810, %814
  br label %816

816:                                              ; preds = %807, %803
  %817 = phi ptr [ %790, %803 ], [ %809, %807 ]
  %818 = phi i32 [ %806, %803 ], [ %815, %807 ]
  %819 = phi i32 [ %801, %803 ], [ %814, %807 ]
  %820 = and i32 %793, 63
  br label %821

821:                                              ; preds = %816, %762
  %822 = phi ptr [ %817, %816 ], [ %755, %762 ]
  %823 = phi i32 [ %818, %816 ], [ %756, %762 ]
  %824 = phi i32 [ %819, %816 ], [ %757, %762 ]
  %825 = phi i32 [ %820, %816 ], [ %758, %762 ]
  %826 = zext nneg i32 %825 to i64
  %827 = getelementptr inbounds [64 x %struct.hce_code_s], ptr @cf_white_termination, i64 0, i64 %826
  %828 = load i16, ptr %827, align 4, !tbaa.struct !67
  %829 = getelementptr inbounds i8, ptr %827, i64 2
  %830 = load i16, ptr %829, align 2, !tbaa.struct !69
  %831 = zext i16 %830 to i32
  %832 = sub nsw i32 %824, %831
  %833 = icmp sgt i32 %832, -1
  br i1 %833, label %834, label %838

834:                                              ; preds = %821
  %835 = zext i16 %828 to i32
  %836 = shl i32 %835, %832
  %837 = add i32 %836, %823
  br label %847

838:                                              ; preds = %821
  %839 = load i32, ptr %73, align 8, !tbaa !46
  %840 = getelementptr inbounds i8, ptr %822, i64 4
  %841 = zext i16 %828 to i32
  %842 = sub nsw i32 0, %832
  %843 = lshr i32 %841, %842
  %844 = add i32 %843, %823
  tail call void @hc_put_code_proc(i32 noundef %839, ptr noundef nonnull %840, i32 noundef %844) #8
  %845 = add nsw i32 %832, 32
  %846 = shl i32 %841, %845
  br label %847

847:                                              ; preds = %838, %834
  %848 = phi ptr [ %822, %834 ], [ %840, %838 ]
  %849 = phi i32 [ %837, %834 ], [ %846, %838 ]
  %850 = phi i32 [ %832, %834 ], [ %845, %838 ]
  %851 = icmp ugt i32 %759, 63
  br i1 %851, label %852, label %910

852:                                              ; preds = %847
  %853 = icmp ugt i32 %759, 2623
  br i1 %853, label %854, label %878

854:                                              ; preds = %852, %872
  %855 = phi i32 [ %876, %872 ], [ %759, %852 ]
  %856 = phi i32 [ %875, %872 ], [ %850, %852 ]
  %857 = phi i32 [ %874, %872 ], [ %849, %852 ]
  %858 = phi ptr [ %873, %872 ], [ %848, %852 ]
  %859 = sub nsw i32 %856, %76
  %860 = icmp sgt i32 %859, -1
  br i1 %860, label %861, label %864

861:                                              ; preds = %854
  %862 = shl i32 %79, %859
  %863 = add i32 %862, %857
  br label %872

864:                                              ; preds = %854
  %865 = load i32, ptr %77, align 8, !tbaa !46
  %866 = getelementptr inbounds i8, ptr %858, i64 4
  %867 = sub nsw i32 0, %859
  %868 = lshr i32 %78, %867
  %869 = add i32 %868, %857
  tail call void @hc_put_code_proc(i32 noundef %865, ptr noundef nonnull %866, i32 noundef %869) #8
  %870 = add nsw i32 %859, 32
  %871 = shl i32 %78, %870
  br label %872

872:                                              ; preds = %864, %861
  %873 = phi ptr [ %858, %861 ], [ %866, %864 ]
  %874 = phi i32 [ %863, %861 ], [ %871, %864 ]
  %875 = phi i32 [ %859, %861 ], [ %870, %864 ]
  %876 = add i32 %855, -2560
  %877 = icmp ugt i32 %876, 2623
  br i1 %877, label %854, label %878, !llvm.loop !70

878:                                              ; preds = %872, %852
  %879 = phi ptr [ %848, %852 ], [ %873, %872 ]
  %880 = phi i32 [ %849, %852 ], [ %874, %872 ]
  %881 = phi i32 [ %850, %852 ], [ %875, %872 ]
  %882 = phi i32 [ %759, %852 ], [ %876, %872 ]
  %883 = lshr i32 %882, 6
  %884 = zext nneg i32 %883 to i64
  %885 = getelementptr inbounds [41 x %struct.hce_code_s], ptr @cf_black_make_up, i64 0, i64 %884
  %886 = load i16, ptr %885, align 4, !tbaa.struct !67
  %887 = getelementptr inbounds i8, ptr %885, i64 2
  %888 = load i16, ptr %887, align 2, !tbaa.struct !69
  %889 = zext i16 %888 to i32
  %890 = sub nsw i32 %881, %889
  %891 = icmp sgt i32 %890, -1
  br i1 %891, label %892, label %896

892:                                              ; preds = %878
  %893 = zext i16 %886 to i32
  %894 = shl i32 %893, %890
  %895 = add i32 %894, %880
  br label %905

896:                                              ; preds = %878
  %897 = load i32, ptr %80, align 8, !tbaa !46
  %898 = getelementptr inbounds i8, ptr %879, i64 4
  %899 = zext i16 %886 to i32
  %900 = sub nsw i32 0, %890
  %901 = lshr i32 %899, %900
  %902 = add i32 %901, %880
  tail call void @hc_put_code_proc(i32 noundef %897, ptr noundef nonnull %898, i32 noundef %902) #8
  %903 = add nsw i32 %890, 32
  %904 = shl i32 %899, %903
  br label %905

905:                                              ; preds = %896, %892
  %906 = phi ptr [ %879, %892 ], [ %898, %896 ]
  %907 = phi i32 [ %895, %892 ], [ %904, %896 ]
  %908 = phi i32 [ %890, %892 ], [ %903, %896 ]
  %909 = and i32 %882, 63
  br label %910

910:                                              ; preds = %905, %847
  %911 = phi ptr [ %906, %905 ], [ %848, %847 ]
  %912 = phi i32 [ %907, %905 ], [ %849, %847 ]
  %913 = phi i32 [ %908, %905 ], [ %850, %847 ]
  %914 = phi i32 [ %909, %905 ], [ %759, %847 ]
  %915 = zext nneg i32 %914 to i64
  %916 = getelementptr inbounds [64 x %struct.hce_code_s], ptr @cf_black_termination, i64 0, i64 %915
  %917 = load i16, ptr %916, align 4, !tbaa.struct !67
  %918 = getelementptr inbounds i8, ptr %916, i64 2
  %919 = load i16, ptr %918, align 2, !tbaa.struct !69
  %920 = zext i16 %919 to i32
  %921 = sub nsw i32 %913, %920
  %922 = icmp sgt i32 %921, -1
  br i1 %922, label %923, label %927

923:                                              ; preds = %910
  %924 = zext i16 %917 to i32
  %925 = shl i32 %924, %921
  %926 = add i32 %925, %912
  br label %1110

927:                                              ; preds = %910
  %928 = load i32, ptr %81, align 8, !tbaa !46
  %929 = getelementptr inbounds i8, ptr %911, i64 4
  %930 = zext i16 %917 to i32
  %931 = sub nsw i32 0, %921
  %932 = lshr i32 %930, %931
  %933 = add i32 %932, %912
  tail call void @hc_put_code_proc(i32 noundef %928, ptr noundef nonnull %929, i32 noundef %933) #8
  %934 = add nsw i32 %921, 32
  %935 = shl i32 %930, %934
  br label %1110

936:                                              ; preds = %754
  br i1 %761, label %937, label %995

937:                                              ; preds = %936
  %938 = icmp ugt i32 %758, 2623
  br i1 %938, label %939, label %963

939:                                              ; preds = %937, %957
  %940 = phi i32 [ %961, %957 ], [ %758, %937 ]
  %941 = phi i32 [ %960, %957 ], [ %757, %937 ]
  %942 = phi i32 [ %959, %957 ], [ %756, %937 ]
  %943 = phi ptr [ %958, %957 ], [ %755, %937 ]
  %944 = sub nsw i32 %941, %52
  %945 = icmp sgt i32 %944, -1
  br i1 %945, label %946, label %949

946:                                              ; preds = %939
  %947 = shl i32 %55, %944
  %948 = add i32 %947, %942
  br label %957

949:                                              ; preds = %939
  %950 = load i32, ptr %53, align 8, !tbaa !46
  %951 = getelementptr inbounds i8, ptr %943, i64 4
  %952 = sub nsw i32 0, %944
  %953 = lshr i32 %54, %952
  %954 = add i32 %953, %942
  tail call void @hc_put_code_proc(i32 noundef %950, ptr noundef nonnull %951, i32 noundef %954) #8
  %955 = add nsw i32 %944, 32
  %956 = shl i32 %54, %955
  br label %957

957:                                              ; preds = %949, %946
  %958 = phi ptr [ %943, %946 ], [ %951, %949 ]
  %959 = phi i32 [ %948, %946 ], [ %956, %949 ]
  %960 = phi i32 [ %944, %946 ], [ %955, %949 ]
  %961 = add i32 %940, -2560
  %962 = icmp ugt i32 %961, 2623
  br i1 %962, label %939, label %963, !llvm.loop !71

963:                                              ; preds = %957, %937
  %964 = phi ptr [ %755, %937 ], [ %958, %957 ]
  %965 = phi i32 [ %756, %937 ], [ %959, %957 ]
  %966 = phi i32 [ %757, %937 ], [ %960, %957 ]
  %967 = phi i32 [ %758, %937 ], [ %961, %957 ]
  %968 = lshr i32 %967, 6
  %969 = zext nneg i32 %968 to i64
  %970 = getelementptr inbounds [41 x %struct.hce_code_s], ptr @cf_black_make_up, i64 0, i64 %969
  %971 = load i16, ptr %970, align 4, !tbaa.struct !67
  %972 = getelementptr inbounds i8, ptr %970, i64 2
  %973 = load i16, ptr %972, align 2, !tbaa.struct !69
  %974 = zext i16 %973 to i32
  %975 = sub nsw i32 %966, %974
  %976 = icmp sgt i32 %975, -1
  br i1 %976, label %977, label %981

977:                                              ; preds = %963
  %978 = zext i16 %971 to i32
  %979 = shl i32 %978, %975
  %980 = add i32 %979, %965
  br label %990

981:                                              ; preds = %963
  %982 = load i32, ptr %56, align 8, !tbaa !46
  %983 = getelementptr inbounds i8, ptr %964, i64 4
  %984 = zext i16 %971 to i32
  %985 = sub nsw i32 0, %975
  %986 = lshr i32 %984, %985
  %987 = add i32 %986, %965
  tail call void @hc_put_code_proc(i32 noundef %982, ptr noundef nonnull %983, i32 noundef %987) #8
  %988 = add nsw i32 %975, 32
  %989 = shl i32 %984, %988
  br label %990

990:                                              ; preds = %981, %977
  %991 = phi ptr [ %964, %977 ], [ %983, %981 ]
  %992 = phi i32 [ %980, %977 ], [ %989, %981 ]
  %993 = phi i32 [ %975, %977 ], [ %988, %981 ]
  %994 = and i32 %967, 63
  br label %995

995:                                              ; preds = %990, %936
  %996 = phi ptr [ %991, %990 ], [ %755, %936 ]
  %997 = phi i32 [ %992, %990 ], [ %756, %936 ]
  %998 = phi i32 [ %993, %990 ], [ %757, %936 ]
  %999 = phi i32 [ %994, %990 ], [ %758, %936 ]
  %1000 = zext nneg i32 %999 to i64
  %1001 = getelementptr inbounds [64 x %struct.hce_code_s], ptr @cf_black_termination, i64 0, i64 %1000
  %1002 = load i16, ptr %1001, align 4, !tbaa.struct !67
  %1003 = getelementptr inbounds i8, ptr %1001, i64 2
  %1004 = load i16, ptr %1003, align 2, !tbaa.struct !69
  %1005 = zext i16 %1004 to i32
  %1006 = sub nsw i32 %998, %1005
  %1007 = icmp sgt i32 %1006, -1
  br i1 %1007, label %1008, label %1012

1008:                                             ; preds = %995
  %1009 = zext i16 %1002 to i32
  %1010 = shl i32 %1009, %1006
  %1011 = add i32 %1010, %997
  br label %1021

1012:                                             ; preds = %995
  %1013 = load i32, ptr %57, align 8, !tbaa !46
  %1014 = getelementptr inbounds i8, ptr %996, i64 4
  %1015 = zext i16 %1002 to i32
  %1016 = sub nsw i32 0, %1006
  %1017 = lshr i32 %1015, %1016
  %1018 = add i32 %1017, %997
  tail call void @hc_put_code_proc(i32 noundef %1013, ptr noundef nonnull %1014, i32 noundef %1018) #8
  %1019 = add nsw i32 %1006, 32
  %1020 = shl i32 %1015, %1019
  br label %1021

1021:                                             ; preds = %1012, %1008
  %1022 = phi ptr [ %996, %1008 ], [ %1014, %1012 ]
  %1023 = phi i32 [ %1011, %1008 ], [ %1020, %1012 ]
  %1024 = phi i32 [ %1006, %1008 ], [ %1019, %1012 ]
  %1025 = icmp ugt i32 %759, 63
  br i1 %1025, label %1026, label %1084

1026:                                             ; preds = %1021
  %1027 = icmp ugt i32 %759, 2623
  br i1 %1027, label %1028, label %1052

1028:                                             ; preds = %1026, %1046
  %1029 = phi i32 [ %1050, %1046 ], [ %759, %1026 ]
  %1030 = phi i32 [ %1049, %1046 ], [ %1024, %1026 ]
  %1031 = phi i32 [ %1048, %1046 ], [ %1023, %1026 ]
  %1032 = phi ptr [ %1047, %1046 ], [ %1022, %1026 ]
  %1033 = sub nsw i32 %1030, %60
  %1034 = icmp sgt i32 %1033, -1
  br i1 %1034, label %1035, label %1038

1035:                                             ; preds = %1028
  %1036 = shl i32 %63, %1033
  %1037 = add i32 %1036, %1031
  br label %1046

1038:                                             ; preds = %1028
  %1039 = load i32, ptr %61, align 8, !tbaa !46
  %1040 = getelementptr inbounds i8, ptr %1032, i64 4
  %1041 = sub nsw i32 0, %1033
  %1042 = lshr i32 %62, %1041
  %1043 = add i32 %1042, %1031
  tail call void @hc_put_code_proc(i32 noundef %1039, ptr noundef nonnull %1040, i32 noundef %1043) #8
  %1044 = add nsw i32 %1033, 32
  %1045 = shl i32 %62, %1044
  br label %1046

1046:                                             ; preds = %1038, %1035
  %1047 = phi ptr [ %1032, %1035 ], [ %1040, %1038 ]
  %1048 = phi i32 [ %1037, %1035 ], [ %1045, %1038 ]
  %1049 = phi i32 [ %1033, %1035 ], [ %1044, %1038 ]
  %1050 = add i32 %1029, -2560
  %1051 = icmp ugt i32 %1050, 2623
  br i1 %1051, label %1028, label %1052, !llvm.loop !72

1052:                                             ; preds = %1046, %1026
  %1053 = phi ptr [ %1022, %1026 ], [ %1047, %1046 ]
  %1054 = phi i32 [ %1023, %1026 ], [ %1048, %1046 ]
  %1055 = phi i32 [ %1024, %1026 ], [ %1049, %1046 ]
  %1056 = phi i32 [ %759, %1026 ], [ %1050, %1046 ]
  %1057 = lshr i32 %1056, 6
  %1058 = zext nneg i32 %1057 to i64
  %1059 = getelementptr inbounds [41 x %struct.hce_code_s], ptr @cf_white_make_up, i64 0, i64 %1058
  %1060 = load i16, ptr %1059, align 4, !tbaa.struct !67
  %1061 = getelementptr inbounds i8, ptr %1059, i64 2
  %1062 = load i16, ptr %1061, align 2, !tbaa.struct !69
  %1063 = zext i16 %1062 to i32
  %1064 = sub nsw i32 %1055, %1063
  %1065 = icmp sgt i32 %1064, -1
  br i1 %1065, label %1066, label %1070

1066:                                             ; preds = %1052
  %1067 = zext i16 %1060 to i32
  %1068 = shl i32 %1067, %1064
  %1069 = add i32 %1068, %1054
  br label %1079

1070:                                             ; preds = %1052
  %1071 = load i32, ptr %64, align 8, !tbaa !46
  %1072 = getelementptr inbounds i8, ptr %1053, i64 4
  %1073 = zext i16 %1060 to i32
  %1074 = sub nsw i32 0, %1064
  %1075 = lshr i32 %1073, %1074
  %1076 = add i32 %1075, %1054
  tail call void @hc_put_code_proc(i32 noundef %1071, ptr noundef nonnull %1072, i32 noundef %1076) #8
  %1077 = add nsw i32 %1064, 32
  %1078 = shl i32 %1073, %1077
  br label %1079

1079:                                             ; preds = %1070, %1066
  %1080 = phi ptr [ %1053, %1066 ], [ %1072, %1070 ]
  %1081 = phi i32 [ %1069, %1066 ], [ %1078, %1070 ]
  %1082 = phi i32 [ %1064, %1066 ], [ %1077, %1070 ]
  %1083 = and i32 %1056, 63
  br label %1084

1084:                                             ; preds = %1079, %1021
  %1085 = phi ptr [ %1080, %1079 ], [ %1022, %1021 ]
  %1086 = phi i32 [ %1081, %1079 ], [ %1023, %1021 ]
  %1087 = phi i32 [ %1082, %1079 ], [ %1024, %1021 ]
  %1088 = phi i32 [ %1083, %1079 ], [ %759, %1021 ]
  %1089 = zext nneg i32 %1088 to i64
  %1090 = getelementptr inbounds [64 x %struct.hce_code_s], ptr @cf_white_termination, i64 0, i64 %1089
  %1091 = load i16, ptr %1090, align 4, !tbaa.struct !67
  %1092 = getelementptr inbounds i8, ptr %1090, i64 2
  %1093 = load i16, ptr %1092, align 2, !tbaa.struct !69
  %1094 = zext i16 %1093 to i32
  %1095 = sub nsw i32 %1087, %1094
  %1096 = icmp sgt i32 %1095, -1
  br i1 %1096, label %1097, label %1101

1097:                                             ; preds = %1084
  %1098 = zext i16 %1091 to i32
  %1099 = shl i32 %1098, %1095
  %1100 = add i32 %1099, %1086
  br label %1110

1101:                                             ; preds = %1084
  %1102 = load i32, ptr %65, align 8, !tbaa !46
  %1103 = getelementptr inbounds i8, ptr %1085, i64 4
  %1104 = zext i16 %1091 to i32
  %1105 = sub nsw i32 0, %1095
  %1106 = lshr i32 %1104, %1105
  %1107 = add i32 %1106, %1086
  tail call void @hc_put_code_proc(i32 noundef %1102, ptr noundef nonnull %1103, i32 noundef %1107) #8
  %1108 = add nsw i32 %1095, 32
  %1109 = shl i32 %1104, %1108
  br label %1110

1110:                                             ; preds = %927, %923, %1101, %1097, %105, %634, %605
  %1111 = phi ptr [ %92, %105 ], [ %239, %605 ], [ %239, %634 ], [ %741, %1097 ], [ %741, %1101 ], [ %741, %923 ], [ %741, %927 ]
  %1112 = phi ptr [ %91, %105 ], [ %597, %605 ], [ %635, %634 ], [ %1085, %1097 ], [ %1103, %1101 ], [ %911, %923 ], [ %929, %927 ]
  %1113 = phi i32 [ %90, %105 ], [ %581, %605 ], [ %242, %634 ], [ %742, %1097 ], [ %742, %1101 ], [ %742, %923 ], [ %742, %927 ]
  %1114 = phi i32 [ %89, %105 ], [ %240, %605 ], [ %639, %634 ], [ %743, %1097 ], [ %743, %1101 ], [ %743, %923 ], [ %743, %927 ]
  %1115 = phi i32 [ 1, %105 ], [ 1, %605 ], [ %88, %634 ], [ %88, %1097 ], [ %88, %1101 ], [ %88, %923 ], [ %88, %927 ]
  %1116 = phi i32 [ %87, %105 ], [ %598, %605 ], [ %636, %634 ], [ %1100, %1097 ], [ %1109, %1101 ], [ %926, %923 ], [ %935, %927 ]
  %1117 = phi i32 [ %86, %105 ], [ %599, %605 ], [ %637, %634 ], [ %1095, %1097 ], [ %1108, %1101 ], [ %921, %923 ], [ %934, %927 ]
  %1118 = phi ptr [ %85, %105 ], [ @cf_encode_2d.further_count_bit, %605 ], [ @cf_encode_2d.further_count_bit, %634 ], [ @cf_encode_2d.further_count_bit, %1097 ], [ @cf_encode_2d.further_count_bit, %1101 ], [ @cf_encode_2d.further_count_bit, %923 ], [ @cf_encode_2d.further_count_bit, %927 ]
  %1119 = phi i8 [ %84, %105 ], [ %84, %605 ], [ %638, %634 ], [ %84, %1097 ], [ %84, %1101 ], [ %84, %923 ], [ %84, %927 ]
  %1120 = phi i32 [ 4, %105 ], [ 3, %605 ], [ 2, %634 ], [ 0, %1097 ], [ 0, %1101 ], [ 0, %923 ], [ 0, %927 ]
  switch i32 %1120, label %1129 [
    i32 0, label %1121
    i32 3, label %1123
    i32 2, label %1121
    i32 4, label %1123
  ]

1121:                                             ; preds = %1110, %1110
  %1122 = icmp eq i32 %1113, %3
  br i1 %1122, label %1123, label %83, !llvm.loop !73

1123:                                             ; preds = %1110, %1110, %1121, %5
  %1124 = phi ptr [ %14, %5 ], [ %1112, %1121 ], [ %1112, %1110 ], [ %1112, %1110 ]
  %1125 = phi i32 [ %12, %5 ], [ %1113, %1121 ], [ %1113, %1110 ], [ %1113, %1110 ]
  %1126 = phi i32 [ 0, %5 ], [ %1115, %1121 ], [ %1115, %1110 ], [ %1115, %1110 ]
  %1127 = phi i32 [ %16, %5 ], [ %1116, %1121 ], [ %1116, %1110 ], [ %1116, %1110 ]
  %1128 = phi i32 [ %18, %5 ], [ %1117, %1121 ], [ %1117, %1110 ], [ %1117, %1110 ]
  store i32 %1127, ptr %15, align 4, !tbaa !14
  store i32 %1128, ptr %17, align 8, !tbaa !15
  store ptr %1124, ptr %13, align 8, !tbaa !39
  store i32 %1125, ptr %11, align 4, !tbaa !16
  br label %1129

1129:                                             ; preds = %1110, %1123
  %1130 = phi i32 [ %1126, %1123 ], [ undef, %1110 ]
  ret i32 %1130
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @cf_encode_1d(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 26
  %6 = load i32, ptr %5, align 4, !tbaa !16
  %7 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 13
  %10 = load i32, ptr %9, align 8, !tbaa !26
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !14
  %14 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !15
  %16 = icmp eq i32 %6, %3
  br i1 %16, label %477, label %17

17:                                               ; preds = %4
  %18 = select i1 %11, i32 255, i32 0
  %19 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 16
  %20 = load i32, ptr %19, align 4, !tbaa !13
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %1, i64 %21
  %23 = add i32 %6, 7
  %24 = lshr i32 %23, 3
  %25 = zext nneg i32 %24 to i64
  %26 = sub nsw i64 0, %25
  %27 = getelementptr inbounds i8, ptr %22, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !27
  %29 = zext i8 %28 to i32
  %30 = xor i32 %18, %29
  %31 = getelementptr inbounds i8, ptr %27, i64 1
  %32 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !36
  %34 = ptrtoint ptr %33 to i64
  %35 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 24
  %36 = load i16, ptr getelementptr inbounds ([41 x %struct.hce_code_s], ptr @cf_white_make_up, i64 0, i64 40), align 16
  %37 = load i16, ptr getelementptr inbounds ([41 x %struct.hce_code_s], ptr @cf_white_make_up, i64 0, i64 40, i32 1), align 2
  %38 = zext i16 %37 to i32
  %39 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 3
  %40 = zext i16 %36 to i32
  %41 = zext i16 %36 to i32
  %42 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 3
  %43 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 3
  %44 = load i16, ptr getelementptr inbounds ([41 x %struct.hce_code_s], ptr @cf_black_make_up, i64 0, i64 40), align 16
  %45 = load i16, ptr getelementptr inbounds ([41 x %struct.hce_code_s], ptr @cf_black_make_up, i64 0, i64 40, i32 1), align 2
  %46 = zext i16 %45 to i32
  %47 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 3
  %48 = zext i16 %44 to i32
  %49 = zext i16 %44 to i32
  %50 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 3
  %51 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 3
  br label %52

52:                                               ; preds = %17, %472
  %53 = phi i32 [ %30, %17 ], [ %385, %472 ]
  %54 = phi ptr [ %31, %17 ], [ %384, %472 ]
  %55 = phi i32 [ %15, %17 ], [ %475, %472 ]
  %56 = phi i32 [ %13, %17 ], [ %474, %472 ]
  %57 = phi i32 [ %6, %17 ], [ %386, %472 ]
  %58 = phi ptr [ %8, %17 ], [ %473, %472 ]
  %59 = ptrtoint ptr %58 to i64
  %60 = sub i64 %34, %59
  %61 = load i32, ptr %35, align 4, !tbaa !32
  %62 = sext i32 %61 to i64
  %63 = icmp slt i64 %60, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %52
  %65 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %0, i64 0, i32 20
  store i32 0, ptr %65, align 4, !tbaa !47
  br label %477

66:                                               ; preds = %52
  %67 = and i32 %57, 7
  %68 = zext nneg i32 %67 to i64
  %69 = getelementptr inbounds [8 x ptr], ptr @byte_bit_run_length_neg, i64 0, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !55
  %71 = xor i32 %53, 255
  %72 = zext nneg i32 %71 to i64
  %73 = getelementptr inbounds i8, ptr %70, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !27
  %75 = zext i8 %74 to i32
  %76 = icmp ugt i8 %74, 7
  br i1 %76, label %77, label %195

77:                                               ; preds = %66
  %78 = load i8, ptr %54, align 1, !tbaa !27
  br i1 %11, label %129, label %79

79:                                               ; preds = %77
  %80 = icmp eq i8 %78, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %79
  %82 = zext i8 %78 to i32
  %83 = getelementptr inbounds i8, ptr %54, i64 1
  %84 = add nsw i32 %75, -8
  br label %185

85:                                               ; preds = %79
  %86 = getelementptr inbounds i8, ptr %54, i64 1
  %87 = load i8, ptr %86, align 1, !tbaa !27
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %85
  %90 = zext i8 %87 to i32
  %91 = getelementptr inbounds i8, ptr %54, i64 2
  br label %185

92:                                               ; preds = %85, %92
  %93 = phi i32 [ %111, %92 ], [ %75, %85 ]
  %94 = phi ptr [ %102, %92 ], [ %54, %85 ]
  %95 = getelementptr inbounds i8, ptr %94, i64 2
  %96 = load i8, ptr %95, align 1, !tbaa !27
  %97 = zext i8 %96 to i32
  %98 = getelementptr inbounds i8, ptr %94, i64 3
  %99 = load i8, ptr %98, align 1, !tbaa !27
  %100 = zext i8 %99 to i32
  %101 = or i32 %100, %97
  %102 = getelementptr inbounds i8, ptr %94, i64 4
  %103 = load i8, ptr %102, align 1, !tbaa !27
  %104 = zext i8 %103 to i32
  %105 = or i32 %101, %104
  %106 = getelementptr inbounds i8, ptr %94, i64 5
  %107 = load i8, ptr %106, align 1, !tbaa !27
  %108 = zext i8 %107 to i32
  %109 = or i32 %105, %108
  %110 = icmp eq i32 %109, 0
  %111 = add nuw nsw i32 %93, 32
  br i1 %110, label %92, label %112, !llvm.loop !74

112:                                              ; preds = %92
  %113 = getelementptr inbounds i8, ptr %94, i64 5
  %114 = icmp eq i8 %96, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds i8, ptr %94, i64 3
  %117 = add nuw nsw i32 %93, 8
  br label %185

118:                                              ; preds = %112
  %119 = icmp eq i8 %99, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %118
  %121 = add nuw nsw i32 %93, 16
  br label %185

122:                                              ; preds = %118
  %123 = icmp eq i8 %103, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %122
  %125 = add nuw nsw i32 %93, 24
  br label %185

126:                                              ; preds = %122
  %127 = getelementptr inbounds i8, ptr %94, i64 6
  %128 = add nuw nsw i32 %93, 32
  br label %185

129:                                              ; preds = %77
  %130 = icmp eq i8 %78, -1
  br i1 %130, label %136, label %131

131:                                              ; preds = %129
  %132 = xor i8 %78, -1
  %133 = zext i8 %132 to i32
  %134 = getelementptr inbounds i8, ptr %54, i64 1
  %135 = add nsw i32 %75, -8
  br label %185

136:                                              ; preds = %129
  %137 = getelementptr inbounds i8, ptr %54, i64 1
  %138 = load i8, ptr %137, align 1, !tbaa !27
  %139 = icmp eq i8 %138, -1
  br i1 %139, label %144, label %140

140:                                              ; preds = %136
  %141 = xor i8 %138, -1
  %142 = zext i8 %141 to i32
  %143 = getelementptr inbounds i8, ptr %54, i64 2
  br label %185

144:                                              ; preds = %136, %144
  %145 = phi i32 [ %159, %144 ], [ %75, %136 ]
  %146 = phi ptr [ %151, %144 ], [ %54, %136 ]
  %147 = getelementptr inbounds i8, ptr %146, i64 2
  %148 = load i8, ptr %147, align 1, !tbaa !27
  %149 = getelementptr inbounds i8, ptr %146, i64 3
  %150 = load i8, ptr %149, align 1, !tbaa !27
  %151 = getelementptr inbounds i8, ptr %146, i64 4
  %152 = load i8, ptr %151, align 1, !tbaa !27
  %153 = getelementptr inbounds i8, ptr %146, i64 5
  %154 = load i8, ptr %153, align 1, !tbaa !27
  %155 = and i8 %150, %148
  %156 = and i8 %155, %152
  %157 = and i8 %156, %154
  %158 = icmp eq i8 %157, -1
  %159 = add nuw nsw i32 %145, 32
  br i1 %158, label %144, label %160, !llvm.loop !75

160:                                              ; preds = %144
  %161 = getelementptr inbounds i8, ptr %146, i64 5
  %162 = icmp eq i8 %148, -1
  br i1 %162, label %168, label %163

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %146, i64 3
  %165 = xor i8 %148, -1
  %166 = zext i8 %165 to i32
  %167 = add nuw nsw i32 %145, 8
  br label %185

168:                                              ; preds = %160
  %169 = icmp eq i8 %150, -1
  br i1 %169, label %174, label %170

170:                                              ; preds = %168
  %171 = xor i8 %150, -1
  %172 = zext i8 %171 to i32
  %173 = add nuw nsw i32 %145, 16
  br label %185

174:                                              ; preds = %168
  %175 = icmp eq i8 %152, -1
  br i1 %175, label %180, label %176

176:                                              ; preds = %174
  %177 = xor i8 %152, -1
  %178 = zext i8 %177 to i32
  %179 = add nuw nsw i32 %145, 24
  br label %185

180:                                              ; preds = %174
  %181 = xor i8 %154, -1
  %182 = zext i8 %181 to i32
  %183 = getelementptr inbounds i8, ptr %146, i64 6
  %184 = add nuw nsw i32 %145, 32
  br label %185

185:                                              ; preds = %131, %163, %176, %180, %170, %140, %81, %115, %124, %126, %120, %89
  %186 = phi i32 [ %84, %81 ], [ %75, %89 ], [ %117, %115 ], [ %121, %120 ], [ %125, %124 ], [ %128, %126 ], [ %135, %131 ], [ %75, %140 ], [ %167, %163 ], [ %173, %170 ], [ %179, %176 ], [ %184, %180 ]
  %187 = phi ptr [ %83, %81 ], [ %91, %89 ], [ %116, %115 ], [ %102, %120 ], [ %113, %124 ], [ %127, %126 ], [ %134, %131 ], [ %143, %140 ], [ %164, %163 ], [ %151, %170 ], [ %161, %176 ], [ %183, %180 ]
  %188 = phi i32 [ %82, %81 ], [ %90, %89 ], [ %97, %115 ], [ %100, %120 ], [ %104, %124 ], [ %108, %126 ], [ %133, %131 ], [ %142, %140 ], [ %166, %163 ], [ %172, %170 ], [ %178, %176 ], [ %182, %180 ]
  %189 = xor i32 %188, 255
  %190 = zext nneg i32 %189 to i64
  %191 = getelementptr inbounds [256 x i8], ptr @byte_bit_run_length_0, i64 0, i64 %190
  %192 = load i8, ptr %191, align 1, !tbaa !27
  %193 = zext i8 %192 to i32
  %194 = add nsw i32 %186, %193
  br label %195

195:                                              ; preds = %185, %66
  %196 = phi i32 [ %194, %185 ], [ %75, %66 ]
  %197 = phi ptr [ %187, %185 ], [ %54, %66 ]
  %198 = phi i32 [ %188, %185 ], [ %53, %66 ]
  %199 = sub i32 %57, %196
  %200 = icmp sgt i32 %196, 63
  br i1 %200, label %201, label %259

201:                                              ; preds = %195
  %202 = icmp sgt i32 %196, 2623
  br i1 %202, label %203, label %227

203:                                              ; preds = %201, %221
  %204 = phi i32 [ %224, %221 ], [ %55, %201 ]
  %205 = phi i32 [ %223, %221 ], [ %56, %201 ]
  %206 = phi i32 [ %225, %221 ], [ %196, %201 ]
  %207 = phi ptr [ %222, %221 ], [ %58, %201 ]
  %208 = sub nsw i32 %204, %38
  %209 = icmp sgt i32 %208, -1
  br i1 %209, label %210, label %213

210:                                              ; preds = %203
  %211 = shl i32 %41, %208
  %212 = add i32 %211, %205
  br label %221

213:                                              ; preds = %203
  %214 = load i32, ptr %39, align 8, !tbaa !46
  %215 = getelementptr inbounds i8, ptr %207, i64 4
  %216 = sub nsw i32 0, %208
  %217 = lshr i32 %40, %216
  %218 = add i32 %217, %205
  tail call void @hc_put_code_proc(i32 noundef %214, ptr noundef nonnull %215, i32 noundef %218) #8
  %219 = add nsw i32 %208, 32
  %220 = shl i32 %40, %219
  br label %221

221:                                              ; preds = %213, %210
  %222 = phi ptr [ %207, %210 ], [ %215, %213 ]
  %223 = phi i32 [ %212, %210 ], [ %220, %213 ]
  %224 = phi i32 [ %208, %210 ], [ %219, %213 ]
  %225 = add nsw i32 %206, -2560
  %226 = icmp sgt i32 %206, 5183
  br i1 %226, label %203, label %227, !llvm.loop !76

227:                                              ; preds = %221, %201
  %228 = phi ptr [ %58, %201 ], [ %222, %221 ]
  %229 = phi i32 [ %196, %201 ], [ %225, %221 ]
  %230 = phi i32 [ %56, %201 ], [ %223, %221 ]
  %231 = phi i32 [ %55, %201 ], [ %224, %221 ]
  %232 = lshr i32 %229, 6
  %233 = zext nneg i32 %232 to i64
  %234 = getelementptr inbounds [41 x %struct.hce_code_s], ptr @cf_white_make_up, i64 0, i64 %233
  %235 = load i16, ptr %234, align 4, !tbaa.struct !67
  %236 = getelementptr inbounds i8, ptr %234, i64 2
  %237 = load i16, ptr %236, align 2, !tbaa.struct !69
  %238 = zext i16 %237 to i32
  %239 = sub nsw i32 %231, %238
  %240 = icmp sgt i32 %239, -1
  br i1 %240, label %241, label %245

241:                                              ; preds = %227
  %242 = zext i16 %235 to i32
  %243 = shl i32 %242, %239
  %244 = add i32 %243, %230
  br label %254

245:                                              ; preds = %227
  %246 = load i32, ptr %42, align 8, !tbaa !46
  %247 = getelementptr inbounds i8, ptr %228, i64 4
  %248 = zext i16 %235 to i32
  %249 = sub nsw i32 0, %239
  %250 = lshr i32 %248, %249
  %251 = add i32 %250, %230
  tail call void @hc_put_code_proc(i32 noundef %246, ptr noundef nonnull %247, i32 noundef %251) #8
  %252 = add nsw i32 %239, 32
  %253 = shl i32 %248, %252
  br label %254

254:                                              ; preds = %245, %241
  %255 = phi ptr [ %228, %241 ], [ %247, %245 ]
  %256 = phi i32 [ %244, %241 ], [ %253, %245 ]
  %257 = phi i32 [ %239, %241 ], [ %252, %245 ]
  %258 = and i32 %229, 63
  br label %259

259:                                              ; preds = %254, %195
  %260 = phi ptr [ %255, %254 ], [ %58, %195 ]
  %261 = phi i32 [ %258, %254 ], [ %196, %195 ]
  %262 = phi i32 [ %256, %254 ], [ %56, %195 ]
  %263 = phi i32 [ %257, %254 ], [ %55, %195 ]
  %264 = sext i32 %261 to i64
  %265 = getelementptr inbounds [64 x %struct.hce_code_s], ptr @cf_white_termination, i64 0, i64 %264
  %266 = load i16, ptr %265, align 4, !tbaa.struct !67
  %267 = getelementptr inbounds i8, ptr %265, i64 2
  %268 = load i16, ptr %267, align 2, !tbaa.struct !69
  %269 = zext i16 %268 to i32
  %270 = sub nsw i32 %263, %269
  %271 = icmp sgt i32 %270, -1
  br i1 %271, label %272, label %276

272:                                              ; preds = %259
  %273 = zext i16 %266 to i32
  %274 = shl i32 %273, %270
  %275 = add i32 %274, %262
  br label %285

276:                                              ; preds = %259
  %277 = load i32, ptr %43, align 8, !tbaa !46
  %278 = getelementptr inbounds i8, ptr %260, i64 4
  %279 = zext i16 %266 to i32
  %280 = sub nsw i32 0, %270
  %281 = lshr i32 %279, %280
  %282 = add i32 %281, %262
  tail call void @hc_put_code_proc(i32 noundef %277, ptr noundef nonnull %278, i32 noundef %282) #8
  %283 = add nsw i32 %270, 32
  %284 = shl i32 %279, %283
  br label %285

285:                                              ; preds = %276, %272
  %286 = phi ptr [ %260, %272 ], [ %278, %276 ]
  %287 = phi i32 [ %275, %272 ], [ %284, %276 ]
  %288 = phi i32 [ %270, %272 ], [ %283, %276 ]
  %289 = icmp eq i32 %199, %3
  br i1 %289, label %477, label %290

290:                                              ; preds = %285
  %291 = and i32 %199, 7
  %292 = zext nneg i32 %291 to i64
  %293 = getelementptr inbounds [8 x ptr], ptr @byte_bit_run_length_neg, i64 0, i64 %292
  %294 = load ptr, ptr %293, align 8, !tbaa !55
  %295 = zext nneg i32 %198 to i64
  %296 = getelementptr inbounds i8, ptr %294, i64 %295
  %297 = load i8, ptr %296, align 1, !tbaa !27
  %298 = zext i8 %297 to i32
  %299 = icmp ugt i8 %297, 7
  br i1 %299, label %300, label %382

300:                                              ; preds = %290
  %301 = load i8, ptr %197, align 1, !tbaa !27
  br i1 %11, label %304, label %302

302:                                              ; preds = %300
  %303 = icmp eq i8 %301, -1
  br i1 %303, label %312, label %306

304:                                              ; preds = %300
  %305 = icmp eq i8 %301, 0
  br i1 %305, label %342, label %335

306:                                              ; preds = %331, %302
  %307 = phi i32 [ %298, %302 ], [ %332, %331 ]
  %308 = phi ptr [ %197, %302 ], [ %328, %331 ]
  %309 = phi i8 [ %301, %302 ], [ %333, %331 ]
  %310 = getelementptr inbounds i8, ptr %308, i64 1
  %311 = add nsw i32 %307, -8
  br label %372

312:                                              ; preds = %302, %331
  %313 = phi ptr [ %328, %331 ], [ %197, %302 ]
  %314 = phi i32 [ %332, %331 ], [ %298, %302 ]
  %315 = getelementptr inbounds i8, ptr %313, i64 1
  %316 = load i8, ptr %315, align 1, !tbaa !27
  %317 = icmp eq i8 %316, -1
  %318 = getelementptr inbounds i8, ptr %313, i64 2
  br i1 %317, label %319, label %372

319:                                              ; preds = %312
  %320 = load i8, ptr %318, align 1, !tbaa !27
  %321 = icmp eq i8 %320, -1
  %322 = getelementptr inbounds i8, ptr %313, i64 3
  br i1 %321, label %325, label %323

323:                                              ; preds = %319
  %324 = add nuw nsw i32 %314, 8
  br label %372

325:                                              ; preds = %319
  %326 = load i8, ptr %322, align 1, !tbaa !27
  %327 = icmp eq i8 %326, -1
  %328 = getelementptr inbounds i8, ptr %313, i64 4
  br i1 %327, label %331, label %329

329:                                              ; preds = %325
  %330 = add nuw nsw i32 %314, 16
  br label %372

331:                                              ; preds = %325
  %332 = add nuw nsw i32 %314, 32
  %333 = load i8, ptr %328, align 1, !tbaa !27
  %334 = icmp eq i8 %333, -1
  br i1 %334, label %312, label %306, !llvm.loop !77

335:                                              ; preds = %367, %304
  %336 = phi i32 [ %298, %304 ], [ %369, %367 ]
  %337 = phi ptr [ %197, %304 ], [ %368, %367 ]
  %338 = phi i8 [ %301, %304 ], [ %370, %367 ]
  %339 = xor i8 %338, -1
  %340 = getelementptr inbounds i8, ptr %337, i64 1
  %341 = add nsw i32 %336, -8
  br label %372

342:                                              ; preds = %304, %367
  %343 = phi ptr [ %368, %367 ], [ %197, %304 ]
  %344 = phi i32 [ %369, %367 ], [ %298, %304 ]
  %345 = getelementptr inbounds i8, ptr %343, i64 1
  %346 = load i8, ptr %345, align 1, !tbaa !27
  %347 = icmp eq i8 %346, 0
  br i1 %347, label %351, label %348

348:                                              ; preds = %342
  %349 = xor i8 %346, -1
  %350 = getelementptr inbounds i8, ptr %343, i64 2
  br label %372

351:                                              ; preds = %342
  %352 = getelementptr inbounds i8, ptr %343, i64 2
  %353 = load i8, ptr %352, align 1, !tbaa !27
  %354 = icmp eq i8 %353, 0
  br i1 %354, label %359, label %355

355:                                              ; preds = %351
  %356 = xor i8 %353, -1
  %357 = getelementptr inbounds i8, ptr %343, i64 3
  %358 = add nuw nsw i32 %344, 8
  br label %372

359:                                              ; preds = %351
  %360 = getelementptr inbounds i8, ptr %343, i64 3
  %361 = load i8, ptr %360, align 1, !tbaa !27
  %362 = icmp eq i8 %361, 0
  br i1 %362, label %367, label %363

363:                                              ; preds = %359
  %364 = xor i8 %361, -1
  %365 = getelementptr inbounds i8, ptr %343, i64 4
  %366 = add nuw nsw i32 %344, 16
  br label %372

367:                                              ; preds = %359
  %368 = getelementptr inbounds i8, ptr %343, i64 4
  %369 = add nuw nsw i32 %344, 32
  %370 = load i8, ptr %368, align 1, !tbaa !27
  %371 = icmp eq i8 %370, 0
  br i1 %371, label %342, label %335, !llvm.loop !78

372:                                              ; preds = %312, %335, %348, %355, %363, %306, %323, %329
  %373 = phi i32 [ %311, %306 ], [ %324, %323 ], [ %330, %329 ], [ %341, %335 ], [ %344, %348 ], [ %358, %355 ], [ %366, %363 ], [ %314, %312 ]
  %374 = phi ptr [ %310, %306 ], [ %322, %323 ], [ %328, %329 ], [ %340, %335 ], [ %350, %348 ], [ %357, %355 ], [ %365, %363 ], [ %318, %312 ]
  %375 = phi i8 [ %309, %306 ], [ %320, %323 ], [ %326, %329 ], [ %339, %335 ], [ %349, %348 ], [ %356, %355 ], [ %364, %363 ], [ %316, %312 ]
  %376 = zext i8 %375 to i32
  %377 = zext i8 %375 to i64
  %378 = getelementptr inbounds [256 x i8], ptr @byte_bit_run_length_0, i64 0, i64 %377
  %379 = load i8, ptr %378, align 1, !tbaa !27
  %380 = zext i8 %379 to i32
  %381 = add nsw i32 %373, %380
  br label %382

382:                                              ; preds = %372, %290
  %383 = phi i32 [ %381, %372 ], [ %298, %290 ]
  %384 = phi ptr [ %374, %372 ], [ %197, %290 ]
  %385 = phi i32 [ %376, %372 ], [ %198, %290 ]
  %386 = sub i32 %199, %383
  %387 = icmp sgt i32 %383, 63
  br i1 %387, label %388, label %446

388:                                              ; preds = %382
  %389 = icmp sgt i32 %383, 2623
  br i1 %389, label %390, label %414

390:                                              ; preds = %388, %408
  %391 = phi i32 [ %411, %408 ], [ %288, %388 ]
  %392 = phi i32 [ %410, %408 ], [ %287, %388 ]
  %393 = phi i32 [ %412, %408 ], [ %383, %388 ]
  %394 = phi ptr [ %409, %408 ], [ %286, %388 ]
  %395 = sub nsw i32 %391, %46
  %396 = icmp sgt i32 %395, -1
  br i1 %396, label %397, label %400

397:                                              ; preds = %390
  %398 = shl i32 %49, %395
  %399 = add i32 %398, %392
  br label %408

400:                                              ; preds = %390
  %401 = load i32, ptr %47, align 8, !tbaa !46
  %402 = getelementptr inbounds i8, ptr %394, i64 4
  %403 = sub nsw i32 0, %395
  %404 = lshr i32 %48, %403
  %405 = add i32 %404, %392
  tail call void @hc_put_code_proc(i32 noundef %401, ptr noundef nonnull %402, i32 noundef %405) #8
  %406 = add nsw i32 %395, 32
  %407 = shl i32 %48, %406
  br label %408

408:                                              ; preds = %400, %397
  %409 = phi ptr [ %394, %397 ], [ %402, %400 ]
  %410 = phi i32 [ %399, %397 ], [ %407, %400 ]
  %411 = phi i32 [ %395, %397 ], [ %406, %400 ]
  %412 = add nsw i32 %393, -2560
  %413 = icmp sgt i32 %393, 5183
  br i1 %413, label %390, label %414, !llvm.loop !79

414:                                              ; preds = %408, %388
  %415 = phi ptr [ %286, %388 ], [ %409, %408 ]
  %416 = phi i32 [ %383, %388 ], [ %412, %408 ]
  %417 = phi i32 [ %287, %388 ], [ %410, %408 ]
  %418 = phi i32 [ %288, %388 ], [ %411, %408 ]
  %419 = lshr i32 %416, 6
  %420 = zext nneg i32 %419 to i64
  %421 = getelementptr inbounds [41 x %struct.hce_code_s], ptr @cf_black_make_up, i64 0, i64 %420
  %422 = load i16, ptr %421, align 4, !tbaa.struct !67
  %423 = getelementptr inbounds i8, ptr %421, i64 2
  %424 = load i16, ptr %423, align 2, !tbaa.struct !69
  %425 = zext i16 %424 to i32
  %426 = sub nsw i32 %418, %425
  %427 = icmp sgt i32 %426, -1
  br i1 %427, label %428, label %432

428:                                              ; preds = %414
  %429 = zext i16 %422 to i32
  %430 = shl i32 %429, %426
  %431 = add i32 %430, %417
  br label %441

432:                                              ; preds = %414
  %433 = load i32, ptr %50, align 8, !tbaa !46
  %434 = getelementptr inbounds i8, ptr %415, i64 4
  %435 = zext i16 %422 to i32
  %436 = sub nsw i32 0, %426
  %437 = lshr i32 %435, %436
  %438 = add i32 %437, %417
  tail call void @hc_put_code_proc(i32 noundef %433, ptr noundef nonnull %434, i32 noundef %438) #8
  %439 = add nsw i32 %426, 32
  %440 = shl i32 %435, %439
  br label %441

441:                                              ; preds = %432, %428
  %442 = phi ptr [ %415, %428 ], [ %434, %432 ]
  %443 = phi i32 [ %431, %428 ], [ %440, %432 ]
  %444 = phi i32 [ %426, %428 ], [ %439, %432 ]
  %445 = and i32 %416, 63
  br label %446

446:                                              ; preds = %441, %382
  %447 = phi ptr [ %442, %441 ], [ %286, %382 ]
  %448 = phi i32 [ %445, %441 ], [ %383, %382 ]
  %449 = phi i32 [ %443, %441 ], [ %287, %382 ]
  %450 = phi i32 [ %444, %441 ], [ %288, %382 ]
  %451 = sext i32 %448 to i64
  %452 = getelementptr inbounds [64 x %struct.hce_code_s], ptr @cf_black_termination, i64 0, i64 %451
  %453 = load i16, ptr %452, align 4, !tbaa.struct !67
  %454 = getelementptr inbounds i8, ptr %452, i64 2
  %455 = load i16, ptr %454, align 2, !tbaa.struct !69
  %456 = zext i16 %455 to i32
  %457 = sub nsw i32 %450, %456
  %458 = icmp sgt i32 %457, -1
  br i1 %458, label %459, label %463

459:                                              ; preds = %446
  %460 = zext i16 %453 to i32
  %461 = shl i32 %460, %457
  %462 = add i32 %461, %449
  br label %472

463:                                              ; preds = %446
  %464 = load i32, ptr %51, align 8, !tbaa !46
  %465 = getelementptr inbounds i8, ptr %447, i64 4
  %466 = zext i16 %453 to i32
  %467 = sub nsw i32 0, %457
  %468 = lshr i32 %466, %467
  %469 = add i32 %468, %449
  tail call void @hc_put_code_proc(i32 noundef %464, ptr noundef nonnull %465, i32 noundef %469) #8
  %470 = add nsw i32 %457, 32
  %471 = shl i32 %466, %470
  br label %472

472:                                              ; preds = %463, %459
  %473 = phi ptr [ %447, %459 ], [ %465, %463 ]
  %474 = phi i32 [ %462, %459 ], [ %471, %463 ]
  %475 = phi i32 [ %457, %459 ], [ %470, %463 ]
  %476 = icmp eq i32 %386, %3
  br i1 %476, label %477, label %52, !llvm.loop !80

477:                                              ; preds = %472, %285, %4, %64
  %478 = phi ptr [ %58, %64 ], [ %8, %4 ], [ %286, %285 ], [ %473, %472 ]
  %479 = phi i32 [ %57, %64 ], [ %6, %4 ], [ %199, %285 ], [ %386, %472 ]
  %480 = phi i32 [ 1, %64 ], [ 0, %4 ], [ 0, %285 ], [ 0, %472 ]
  %481 = phi i32 [ %56, %64 ], [ %13, %4 ], [ %287, %285 ], [ %474, %472 ]
  %482 = phi i32 [ %55, %64 ], [ %15, %4 ], [ %288, %285 ], [ %475, %472 ]
  store i32 %481, ptr %12, align 4, !tbaa !14
  store i32 %482, ptr %14, align 8, !tbaa !15
  store ptr %478, ptr %7, align 8, !tbaa !39
  store i32 %479, ptr %5, align 4, !tbaa !16
  ret i32 %480
}

declare ptr @hc_put_last_bits_proc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 52}
!6 = !{!"stream_CFE_state_s", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !7, i64 80, !7, i64 88, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!6, !10, i64 72}
!12 = !{i32 0, i32 33}
!13 = !{!6, !10, i64 76}
!14 = !{!6, !10, i64 28}
!15 = !{!6, !10, i64 32}
!16 = !{!6, !10, i64 124}
!17 = !{!18, !7, i64 8}
!18 = !{!"stream_state_s", !7, i64 0, !7, i64 8, !7, i64 16}
!19 = !{!20, !7, i64 0}
!20 = !{!"gs_memory_s", !21, i64 0}
!21 = !{!"gs_memory_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!22 = !{!6, !7, i64 80}
!23 = !{!20, !7, i64 88}
!24 = !{!6, !7, i64 88}
!25 = !{!6, !10, i64 40}
!26 = !{!6, !10, i64 64}
!27 = !{!8, !8, i64 0}
!28 = !{!6, !10, i64 132}
!29 = !{!6, !10, i64 136}
!30 = !{!6, !10, i64 96}
!31 = !{!6, !10, i64 112}
!32 = !{!6, !10, i64 116}
!33 = !{!6, !10, i64 120}
!34 = !{!35, !7, i64 8}
!35 = !{!"stream_cursor_read_s", !7, i64 0, !7, i64 8, !7, i64 16}
!36 = !{!37, !7, i64 16}
!37 = !{!"stream_cursor_write_s", !7, i64 0, !7, i64 8, !7, i64 16}
!38 = !{!35, !7, i64 0}
!39 = !{!37, !7, i64 8}
!40 = !{!6, !10, i64 44}
!41 = !{!6, !10, i64 48}
!42 = !{!43, !44, i64 2}
!43 = !{!"hce_code_s", !44, i64 0, !44, i64 2}
!44 = !{!"short", !8, i64 0}
!45 = !{!43, !44, i64 0}
!46 = !{!6, !10, i64 24}
!47 = !{!6, !10, i64 100}
!48 = !{i32 0, i32 2}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = !{!6, !10, i64 60}
!52 = distinct !{!52, !50}
!53 = !{!6, !10, i64 56}
!54 = !{!6, !10, i64 68}
!55 = !{!7, !7, i64 0}
!56 = distinct !{!56, !50}
!57 = distinct !{!57, !50}
!58 = distinct !{!58, !50}
!59 = distinct !{!59, !50}
!60 = distinct !{!60, !50}
!61 = distinct !{!61, !50}
!62 = distinct !{!62, !50}
!63 = distinct !{!63, !50}
!64 = distinct !{!64, !50}
!65 = distinct !{!65, !50}
!66 = distinct !{!66, !50}
!67 = !{i64 0, i64 2, !68, i64 2, i64 2, !68}
!68 = !{!44, !44, i64 0}
!69 = !{i64 0, i64 2, !68}
!70 = distinct !{!70, !50}
!71 = distinct !{!71, !50}
!72 = distinct !{!72, !50}
!73 = distinct !{!73, !50}
!74 = distinct !{!74, !50}
!75 = distinct !{!75, !50}
!76 = distinct !{!76, !50}
!77 = distinct !{!77, !50}
!78 = distinct !{!78, !50}
!79 = distinct !{!79, !50}
!80 = distinct !{!80, !50}
