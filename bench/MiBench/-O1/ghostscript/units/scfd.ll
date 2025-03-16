; ModuleID = 'scfd.c'
source_filename = "scfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.hcd_code_s = type { i16, i16 }
%struct.stream_CFD_state_s = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32 }
%struct.stream_state_s = type { ptr, ptr, ptr }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@st_CFD_state = internal constant %struct.gs_memory_struct_type_s { i32 152, ptr @.str, ptr null, ptr null, ptr @cfd_enum_ptrs, ptr @cfd_reloc_ptrs, ptr null }, align 8
@s_CFD_template = dso_local local_unnamed_addr constant %struct.stream_template_s { ptr @st_CFD_state, ptr @s_CFD_init, ptr @s_CFD_process, i32 1, i32 1, ptr @s_CFD_release, ptr @s_CFD_set_defaults, ptr null }, align 8
@.str = private unnamed_addr constant [21 x i8] c"CCITTFaxDecode state\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"CFD lbuf\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"CFD lprev\00", align 1
@byte_reverse_bits = external local_unnamed_addr constant [256 x i8], align 16
@cf_2d_decode = external local_unnamed_addr constant [0 x %struct.hcd_code_s], align 2
@byte_right_mask = external local_unnamed_addr constant [9 x i8], align 1
@cf_decode_2d.count_bit = internal unnamed_addr constant [8 x i8] c"\80\01\02\04\08\10 @", align 1
@byte_bit_run_length_neg = external local_unnamed_addr global [8 x ptr], align 16
@byte_bit_run_length_0 = external local_unnamed_addr constant [256 x i8], align 16
@cf_white_decode = external local_unnamed_addr constant [0 x %struct.hcd_code_s], align 2
@cf_black_decode = external local_unnamed_addr constant [0 x %struct.hcd_code_s], align 2
@.str.3 = private unnamed_addr constant [17 x i8] c"CFD lprev(close)\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"CFD lbuf(close)\00", align 1

; Function Attrs: nounwind uwtable
define internal noundef i32 @s_CFD_init(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 15
  %3 = load i32, ptr %2, align 8, !tbaa !5
  %4 = add nsw i32 %3, -1
  %5 = tail call i32 @llvm.ctpop.i32(i32 %3), !range !11
  %6 = icmp ult i32 %5, 2
  %7 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 10
  %8 = load i32, ptr %7, align 4, !tbaa !12
  %9 = add nsw i32 %8, 7
  %10 = ashr i32 %9, 3
  %11 = add nsw i32 %10, %4
  %12 = freeze i32 %11
  br i1 %6, label %16, label %13

13:                                               ; preds = %1
  %14 = srem i32 %12, %3
  %15 = sub nsw i32 %12, %14
  br label %19

16:                                               ; preds = %1
  %17 = sub nsw i32 0, %3
  %18 = and i32 %12, %17
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i32 [ %15, %13 ], [ %18, %16 ]
  %21 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 16
  store i32 %20, ptr %21, align 4, !tbaa !13
  %22 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 13
  %23 = load i32, ptr %22, align 8, !tbaa !14
  %24 = icmp eq i32 %23, 0
  %25 = sext i1 %24 to i8
  %26 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 4
  store i32 0, ptr %26, align 4, !tbaa !15
  %27 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 5
  store i32 0, ptr %27, align 8, !tbaa !16
  %28 = getelementptr inbounds %struct.stream_state_s, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !17
  %30 = load ptr, ptr %29, align 8, !tbaa !19
  %31 = add nsw i32 %20, 4
  %32 = tail call ptr %30(ptr noundef nonnull %29, i32 noundef %31, ptr noundef nonnull @.str.1) #9
  %33 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 17
  store ptr %32, ptr %33, align 8, !tbaa !22
  %34 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 18
  store ptr null, ptr %34, align 8, !tbaa !23
  %35 = icmp eq ptr %32, null
  br i1 %35, label %73, label %36

36:                                               ; preds = %19
  %37 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 7
  %38 = load i32, ptr %37, align 8, !tbaa !24
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %28, align 8, !tbaa !17
  %42 = load ptr, ptr %41, align 8, !tbaa !19
  %43 = tail call ptr %42(ptr noundef nonnull %41, i32 noundef %31, ptr noundef nonnull @.str.2) #9
  store ptr %43, ptr %34, align 8, !tbaa !23
  %44 = icmp eq ptr %43, null
  br i1 %44, label %73, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr %33, align 8, !tbaa !22
  %47 = sext i32 %20 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %46, i8 %25, i64 %47, i1 false)
  %48 = load ptr, ptr %33, align 8, !tbaa !22
  %49 = getelementptr inbounds i8, ptr %48, i64 %47
  store i8 -96, ptr %49, align 1, !tbaa !25
  br label %50

50:                                               ; preds = %45, %36
  %51 = load i32, ptr %37, align 8, !tbaa !24
  %52 = tail call i32 @llvm.smin.i32(i32 %51, i32 0)
  %53 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 19
  store i32 %52, ptr %53, align 8, !tbaa !26
  %54 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 20
  %55 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 29
  store i32 0, ptr %55, align 8, !tbaa !27
  %56 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %54, i8 0, i64 16, i1 false)
  %57 = load i32, ptr %56, align 8, !tbaa !28
  %58 = icmp slt i32 %57, 1
  br i1 %58, label %65, label %59

59:                                               ; preds = %50
  %60 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 12
  %61 = load i32, ptr %60, align 4, !tbaa !29
  %62 = icmp eq i32 %61, 0
  %63 = add nuw nsw i32 %57, 1
  %64 = select i1 %62, i32 %63, i32 -1
  br label %65

65:                                               ; preds = %59, %50
  %66 = phi i32 [ -1, %50 ], [ %64, %59 ]
  %67 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 24
  store i32 %66, ptr %67, align 4, !tbaa !30
  %68 = add nsw i32 %20, -1
  %69 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 26
  store i32 %68, ptr %69, align 4, !tbaa !31
  %70 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 25
  store i32 %68, ptr %70, align 8, !tbaa !32
  %71 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 27
  store i32 0, ptr %71, align 8, !tbaa !33
  %72 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 28
  store i8 %25, ptr %72, align 4, !tbaa !34
  br label %73

73:                                               ; preds = %40, %19, %65
  %74 = phi i32 [ 0, %65 ], [ -2, %19 ], [ -2, %40 ]
  ret i32 %74
}

; Function Attrs: nounwind uwtable
define internal i32 @s_CFD_process(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, i32 %3) #0 {
  %5 = alloca %struct.stream_cursor_read_s, align 8
  %6 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 16
  %7 = load i32, ptr %6, align 4, !tbaa !13
  %8 = add i32 %7, -1
  %9 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 27
  %10 = load i32, ptr %9, align 8, !tbaa !33
  %11 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 19
  %12 = load i32, ptr %11, align 8, !tbaa !26
  %13 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 24
  %14 = load i32, ptr %13, align 4, !tbaa !30
  %15 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 22
  %16 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 4
  %17 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 5
  %18 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 4
  %19 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 5
  %20 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 21
  %21 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 26
  %22 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 23
  %23 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 10
  %24 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 20
  %25 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 20
  %26 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 25
  %27 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 17
  %28 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %5, i64 0, i32 1
  %29 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 7
  %30 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 18
  %31 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 17
  %32 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 13
  %33 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 28
  %34 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 17
  %35 = sext i32 %7 to i64
  %36 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 20
  %37 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 9
  %38 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 8
  %39 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 5
  %40 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 7
  %41 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %42 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 4
  %43 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 5
  %44 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 3
  %45 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 3
  %46 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 12
  %47 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 8
  %48 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 13
  %49 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 10
  %50 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 17
  %51 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 20
  %52 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %53 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 4
  %54 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 5
  %55 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 23
  %56 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 3
  %57 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 3
  %58 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 21
  %59 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 14
  %60 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 8
  %61 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 7
  %62 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 10
  %63 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 23
  %64 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 20
  br label %65

65:                                               ; preds = %917, %4
  %66 = phi i32 [ %14, %4 ], [ %171, %917 ]
  %67 = phi i32 [ %12, %4 ], [ %901, %917 ]
  %68 = phi i32 [ %10, %4 ], [ %902, %917 ]
  %69 = load i32, ptr %15, align 4, !tbaa !35
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %105, label %71

71:                                               ; preds = %65, %97
  %72 = call fastcc i32 @cf_decode_eol(ptr noundef %0, ptr noundef %1)
  switch i32 %72, label %73 [
    i32 0, label %103
    i32 1, label %85
  ]

73:                                               ; preds = %71
  %74 = load ptr, ptr %1, align 8, !tbaa !36
  %75 = load i32, ptr %18, align 4, !tbaa !15
  %76 = load i32, ptr %19, align 8, !tbaa !16
  %77 = add nsw i32 %76, %72
  %78 = ashr i32 %77, 3
  %79 = sub nsw i32 0, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, ptr %74, i64 %80
  store ptr %81, ptr %1, align 8, !tbaa !36
  %82 = and i32 %77, -8
  %83 = lshr i32 %75, %82
  store i32 %83, ptr %18, align 4, !tbaa !15
  %84 = and i32 %77, 7
  store i32 %84, ptr %19, align 8, !tbaa !16
  br label %97

85:                                               ; preds = %71
  %86 = load ptr, ptr %1, align 8, !tbaa !36
  %87 = load i32, ptr %16, align 4, !tbaa !15
  %88 = load i32, ptr %17, align 8, !tbaa !16
  %89 = add nsw i32 %88, 12
  %90 = ashr i32 %89, 3
  %91 = sub nsw i32 0, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, ptr %86, i64 %92
  store ptr %93, ptr %1, align 8, !tbaa !36
  %94 = and i32 %89, -8
  %95 = lshr i32 %87, %94
  store i32 %95, ptr %16, align 4, !tbaa !15
  %96 = and i32 %89, 7
  store i32 %96, ptr %17, align 8, !tbaa !16
  store i32 0, ptr %15, align 4, !tbaa !35
  br label %97

97:                                               ; preds = %85, %73
  %98 = load i32, ptr %15, align 4, !tbaa !35
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %71, !llvm.loop !38

100:                                              ; preds = %97
  %101 = load i32, ptr %20, align 8, !tbaa !40
  %102 = add nsw i32 %101, 1
  store i32 %102, ptr %20, align 8, !tbaa !40
  br label %103

103:                                              ; preds = %71, %100
  %104 = phi i32 [ 0, %100 ], [ 6, %71 ]
  switch i32 %104, label %925 [
    i32 0, label %105
    i32 6, label %920
  ]

105:                                              ; preds = %103, %65
  %106 = load i32, ptr %21, align 4, !tbaa !31
  %107 = icmp eq i32 %106, %8
  br i1 %107, label %108, label %170

108:                                              ; preds = %105
  %109 = load i32, ptr %22, align 8, !tbaa !41
  %110 = load i32, ptr %23, align 4, !tbaa !12
  %111 = sub nsw i32 0, %110
  %112 = and i32 %111, 7
  %113 = icmp sgt i32 %109, %112
  br i1 %113, label %170, label %114

114:                                              ; preds = %108
  %115 = icmp eq i32 %67, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %114
  %117 = load i32, ptr %25, align 4, !tbaa !42
  %118 = icmp ult i32 %117, 2
  br i1 %118, label %122, label %170

119:                                              ; preds = %114
  %120 = load i32, ptr %24, align 4, !tbaa !42
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %170

122:                                              ; preds = %119, %116
  %123 = load i32, ptr %26, align 8, !tbaa !32
  %124 = icmp slt i32 %123, %106
  br i1 %124, label %125, label %139

125:                                              ; preds = %122
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %126 = load ptr, ptr %27, align 8, !tbaa !22
  %127 = sext i32 %123 to i64
  %128 = getelementptr inbounds i8, ptr %126, i64 %127
  store ptr %128, ptr %5, align 8, !tbaa !36
  %129 = sext i32 %106 to i64
  %130 = getelementptr inbounds i8, ptr %126, i64 %129
  store ptr %130, ptr %28, align 8, !tbaa !43
  %131 = call i32 @stream_move(ptr noundef nonnull %5, ptr noundef %2) #9
  %132 = load ptr, ptr %5, align 8, !tbaa !36
  %133 = load ptr, ptr %27, align 8, !tbaa !22
  %134 = ptrtoint ptr %132 to i64
  %135 = ptrtoint ptr %133 to i64
  %136 = sub i64 %134, %135
  %137 = trunc i64 %136 to i32
  store i32 %137, ptr %26, align 8, !tbaa !32
  %138 = icmp eq i32 %131, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  br i1 %138, label %139, label %920

139:                                              ; preds = %125, %122
  %140 = icmp sgt i32 %66, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %139
  %142 = add nsw i32 %66, -1
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %920, label %144

144:                                              ; preds = %141, %139
  %145 = phi i32 [ %142, %141 ], [ %66, %139 ]
  %146 = load i32, ptr %29, align 8, !tbaa !24
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %155, label %148

148:                                              ; preds = %144
  %149 = load ptr, ptr %30, align 8, !tbaa !23
  %150 = load ptr, ptr %31, align 8, !tbaa !22
  store ptr %150, ptr %30, align 8, !tbaa !23
  store ptr %149, ptr %31, align 8, !tbaa !22
  %151 = icmp sgt i32 %146, 0
  %152 = select i1 %115, i32 %146, i32 %67
  %153 = add nsw i32 %152, -1
  %154 = select i1 %151, i32 %153, i32 %67
  br label %155

155:                                              ; preds = %148, %144
  %156 = phi i32 [ %154, %148 ], [ %67, %144 ]
  store i32 -1, ptr %21, align 4, !tbaa !31
  store i32 -1, ptr %26, align 8, !tbaa !32
  store i32 0, ptr %9, align 8, !tbaa !33
  store i32 0, ptr %22, align 8, !tbaa !41
  %157 = load i32, ptr %32, align 8, !tbaa !14
  %158 = icmp eq i32 %157, 0
  %159 = sext i1 %158 to i8
  store i8 %159, ptr %33, align 4, !tbaa !34
  %160 = load ptr, ptr %34, align 8, !tbaa !22
  call void @llvm.memset.p0.i64(ptr align 1 %160, i8 %159, i64 %35, i1 false)
  store i32 0, ptr %36, align 4, !tbaa !42
  %161 = load i32, ptr %37, align 8, !tbaa !44
  %162 = load i32, ptr %38, align 4, !tbaa !45
  %163 = icmp ne i32 %162, 0
  %164 = and i32 %161, 1
  %165 = icmp eq i32 %164, 0
  %166 = select i1 %163, i1 true, i1 %165
  br i1 %166, label %170, label %167

167:                                              ; preds = %155
  %168 = load i32, ptr %39, align 8, !tbaa !16
  %169 = and i32 %168, -8
  store i32 %169, ptr %39, align 8, !tbaa !16
  br label %170

170:                                              ; preds = %155, %167, %119, %116, %108, %105
  %171 = phi i32 [ %66, %116 ], [ %145, %167 ], [ %145, %155 ], [ %66, %119 ], [ %66, %108 ], [ %66, %105 ]
  %172 = phi i32 [ 0, %116 ], [ %156, %167 ], [ %156, %155 ], [ %67, %119 ], [ %67, %108 ], [ %67, %105 ]
  %173 = phi i32 [ %68, %116 ], [ 0, %167 ], [ 0, %155 ], [ %68, %119 ], [ %68, %108 ], [ %68, %105 ]
  %174 = load i32, ptr %21, align 4, !tbaa !31
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %294

176:                                              ; preds = %170, %282
  %177 = phi i32 [ %278, %282 ], [ %172, %170 ]
  %178 = phi i32 [ %279, %282 ], [ %173, %170 ]
  %179 = call fastcc i32 @cf_decode_eol(ptr noundef %0, ptr noundef %1)
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %286

181:                                              ; preds = %176
  %182 = load i32, ptr %40, align 8, !tbaa !24
  %183 = icmp sgt i32 %182, 0
  br i1 %183, label %184, label %277

184:                                              ; preds = %181
  %185 = load ptr, ptr %1, align 8, !tbaa !36
  %186 = load ptr, ptr %41, align 8, !tbaa !43
  %187 = load i32, ptr %42, align 4, !tbaa !15
  %188 = load i32, ptr %43, align 8, !tbaa !16
  %189 = icmp slt i32 %188, 1
  br i1 %189, label %190, label %259

190:                                              ; preds = %184
  %191 = ptrtoint ptr %186 to i64
  %192 = ptrtoint ptr %185 to i64
  %193 = sub i64 %191, %192
  %194 = icmp slt i64 %193, 3
  br i1 %194, label %195, label %217

195:                                              ; preds = %190
  %196 = icmp ult ptr %185, %186
  br i1 %196, label %197, label %212

197:                                              ; preds = %195
  %198 = getelementptr inbounds i8, ptr %185, i64 1
  %199 = load i8, ptr %198, align 1, !tbaa !25
  %200 = load i32, ptr %45, align 8, !tbaa !46
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %206, label %202

202:                                              ; preds = %197
  %203 = zext i8 %199 to i64
  %204 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %203
  %205 = load i8, ptr %204, align 1, !tbaa !25
  br label %206

206:                                              ; preds = %202, %197
  %207 = phi i8 [ %205, %202 ], [ %199, %197 ]
  %208 = zext i8 %207 to i32
  %209 = shl i32 %187, 8
  %210 = or disjoint i32 %209, %208
  %211 = add nsw i32 %188, 8
  br label %212

212:                                              ; preds = %195, %206
  %213 = phi i32 [ 0, %206 ], [ 6, %195 ]
  %214 = phi ptr [ %198, %206 ], [ %185, %195 ]
  %215 = phi i32 [ %210, %206 ], [ %187, %195 ]
  %216 = phi i32 [ %211, %206 ], [ %188, %195 ]
  br i1 %196, label %259, label %274

217:                                              ; preds = %190
  %218 = load i32, ptr %44, align 8, !tbaa !46
  %219 = icmp eq i32 %218, 0
  %220 = shl i32 %187, 24
  %221 = getelementptr inbounds i8, ptr %185, i64 1
  %222 = load i8, ptr %221, align 1, !tbaa !25
  br i1 %219, label %241, label %223

223:                                              ; preds = %217
  %224 = zext i8 %222 to i64
  %225 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %224
  %226 = load i8, ptr %225, align 1, !tbaa !25
  %227 = zext i8 %226 to i32
  %228 = shl nuw nsw i32 %227, 16
  %229 = getelementptr inbounds i8, ptr %185, i64 2
  %230 = load i8, ptr %229, align 1, !tbaa !25
  %231 = zext i8 %230 to i64
  %232 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %231
  %233 = load i8, ptr %232, align 1, !tbaa !25
  %234 = zext i8 %233 to i32
  %235 = shl nuw nsw i32 %234, 8
  %236 = or disjoint i32 %228, %235
  %237 = getelementptr inbounds i8, ptr %185, i64 3
  %238 = load i8, ptr %237, align 1, !tbaa !25
  %239 = zext i8 %238 to i64
  %240 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %239
  br label %250

241:                                              ; preds = %217
  %242 = zext i8 %222 to i32
  %243 = shl nuw nsw i32 %242, 16
  %244 = getelementptr inbounds i8, ptr %185, i64 2
  %245 = load i8, ptr %244, align 1, !tbaa !25
  %246 = zext i8 %245 to i32
  %247 = shl nuw nsw i32 %246, 8
  %248 = or disjoint i32 %243, %247
  %249 = getelementptr inbounds i8, ptr %185, i64 3
  br label %250

250:                                              ; preds = %241, %223
  %251 = phi ptr [ %249, %241 ], [ %240, %223 ]
  %252 = phi i32 [ %248, %241 ], [ %236, %223 ]
  %253 = or disjoint i32 %252, %220
  %254 = load i8, ptr %251, align 1, !tbaa !25
  %255 = zext i8 %254 to i32
  %256 = or disjoint i32 %253, %255
  %257 = add nsw i32 %188, 24
  %258 = getelementptr inbounds i8, ptr %185, i64 3
  br label %259

259:                                              ; preds = %250, %212, %184
  %260 = phi ptr [ %214, %212 ], [ %258, %250 ], [ %185, %184 ]
  %261 = phi i32 [ %215, %212 ], [ %256, %250 ], [ %187, %184 ]
  %262 = phi i32 [ %216, %212 ], [ %257, %250 ], [ %188, %184 ]
  %263 = add nsw i32 %262, -1
  %264 = xor i32 %261, -1
  %265 = lshr i32 %264, %263
  %266 = and i32 %265, 1
  %267 = ashr i32 %263, 3
  %268 = sub nsw i32 0, %267
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i8, ptr %260, i64 %269
  store ptr %270, ptr %1, align 8, !tbaa !36
  %271 = and i32 %263, -8
  %272 = lshr i32 %261, %271
  store i32 %272, ptr %42, align 4, !tbaa !15
  %273 = and i32 %263, 7
  store i32 %273, ptr %43, align 8, !tbaa !16
  br label %274

274:                                              ; preds = %212, %259
  %275 = phi i32 [ %266, %259 ], [ %177, %212 ]
  %276 = phi i32 [ 0, %259 ], [ %213, %212 ]
  switch i32 %276, label %925 [
    i32 0, label %277
    i32 6, label %920
  ]

277:                                              ; preds = %274, %181
  %278 = phi i32 [ %275, %274 ], [ %177, %181 ]
  %279 = add nsw i32 %178, 1
  %280 = load i32, ptr %46, align 4, !tbaa !29
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %286, label %282

282:                                              ; preds = %277
  %283 = icmp slt i32 %182, 0
  %284 = select i1 %283, i32 2, i32 6
  %285 = icmp eq i32 %279, %284
  br i1 %285, label %920, label %176, !llvm.loop !47

286:                                              ; preds = %277, %176
  %287 = phi i32 [ %278, %277 ], [ %177, %176 ]
  %288 = phi i32 [ %279, %277 ], [ %178, %176 ]
  %289 = icmp eq i32 %179, 0
  br i1 %289, label %920, label %290

290:                                              ; preds = %286
  switch i32 %288, label %899 [
    i32 0, label %291
    i32 1, label %294
  ]

291:                                              ; preds = %290
  %292 = load i32, ptr %47, align 4, !tbaa !45
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %899

294:                                              ; preds = %290, %291, %170
  %295 = phi i32 [ %287, %290 ], [ %287, %291 ], [ %172, %170 ]
  %296 = phi i32 [ %288, %290 ], [ 0, %291 ], [ %173, %170 ]
  %297 = icmp slt i32 %295, 0
  br i1 %297, label %298, label %300

298:                                              ; preds = %294
  %299 = call fastcc i32 @cf_decode_2d(ptr noundef %0, ptr noundef %1)
  br label %899

300:                                              ; preds = %294
  %301 = icmp eq i32 %295, 0
  br i1 %301, label %302, label %897

302:                                              ; preds = %300
  %303 = load i32, ptr %48, align 8, !tbaa !14
  %304 = icmp ne i32 %303, 0
  %305 = sext i1 %304 to i8
  %306 = load i32, ptr %49, align 4, !tbaa !12
  %307 = sub nsw i32 0, %306
  %308 = and i32 %307, 7
  %309 = load ptr, ptr %50, align 8, !tbaa !22
  %310 = getelementptr inbounds i8, ptr %309, i64 -1
  %311 = load i32, ptr %6, align 4, !tbaa !13
  %312 = zext i32 %311 to i64
  %313 = getelementptr inbounds i8, ptr %310, i64 %312
  %314 = load i32, ptr %51, align 4, !tbaa !42
  %315 = load ptr, ptr %1, align 8, !tbaa !36
  %316 = load ptr, ptr %52, align 8, !tbaa !43
  %317 = load i32, ptr %53, align 4, !tbaa !15
  %318 = load i32, ptr %54, align 8, !tbaa !16
  %319 = load i32, ptr %21, align 4, !tbaa !31
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i8, ptr %309, i64 %320
  %322 = load i32, ptr %55, align 8, !tbaa !41
  %323 = icmp sgt i32 %314, 0
  br i1 %323, label %576, label %328

324:                                              ; preds = %862
  %325 = icmp sle i32 %864, %308
  %326 = icmp ugt ptr %863, %313
  %327 = select i1 %325, i1 true, i1 %326
  br i1 %327, label %867, label %328

328:                                              ; preds = %862, %324, %302
  %329 = phi i32 [ %317, %302 ], [ %785, %324 ], [ %785, %862 ]
  %330 = phi i32 [ %318, %302 ], [ %786, %324 ], [ %786, %862 ]
  %331 = phi ptr [ %321, %302 ], [ %863, %324 ], [ %863, %862 ]
  %332 = phi i32 [ %322, %302 ], [ %864, %324 ], [ %864, %862 ]
  %333 = phi ptr [ %315, %302 ], [ %787, %324 ], [ %787, %862 ]
  %334 = phi i32 [ %314, %302 ], [ 0, %324 ], [ 0, %862 ]
  %335 = phi i32 [ undef, %302 ], [ %865, %324 ], [ %865, %862 ]
  %336 = ptrtoint ptr %316 to i64
  br label %337

337:                                              ; preds = %561, %328
  %338 = phi i32 [ %536, %561 ], [ %329, %328 ]
  %339 = phi i32 [ %537, %561 ], [ %330, %328 ]
  %340 = phi ptr [ %565, %561 ], [ %331, %328 ]
  %341 = phi i32 [ %566, %561 ], [ %332, %328 ]
  %342 = phi ptr [ %538, %561 ], [ %333, %328 ]
  %343 = phi i32 [ -1, %561 ], [ %334, %328 ]
  %344 = phi i32 [ %539, %561 ], [ %335, %328 ]
  %345 = icmp slt i32 %339, 8
  br i1 %345, label %346, label %414

346:                                              ; preds = %337
  %347 = ptrtoint ptr %342 to i64
  %348 = sub i64 %336, %347
  %349 = icmp slt i64 %348, 3
  br i1 %349, label %350, label %372

350:                                              ; preds = %346
  %351 = icmp ult ptr %342, %316
  br i1 %351, label %352, label %367

352:                                              ; preds = %350
  %353 = getelementptr inbounds i8, ptr %342, i64 1
  %354 = load i8, ptr %353, align 1, !tbaa !25
  %355 = load i32, ptr %57, align 8, !tbaa !46
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %361, label %357

357:                                              ; preds = %352
  %358 = zext i8 %354 to i64
  %359 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %358
  %360 = load i8, ptr %359, align 1, !tbaa !25
  br label %361

361:                                              ; preds = %357, %352
  %362 = phi i8 [ %360, %357 ], [ %354, %352 ]
  %363 = zext i8 %362 to i32
  %364 = shl i32 %338, 8
  %365 = or disjoint i32 %364, %363
  %366 = add nsw i32 %339, 8
  br label %367

367:                                              ; preds = %361, %350
  %368 = phi i32 [ %365, %361 ], [ %338, %350 ]
  %369 = phi i32 [ %366, %361 ], [ %339, %350 ]
  %370 = phi ptr [ %353, %361 ], [ %342, %350 ]
  %371 = phi i32 [ 0, %361 ], [ 8, %350 ]
  br i1 %351, label %414, label %535

372:                                              ; preds = %346
  %373 = load i32, ptr %57, align 8, !tbaa !46
  %374 = icmp eq i32 %373, 0
  %375 = shl i32 %338, 24
  %376 = getelementptr inbounds i8, ptr %342, i64 1
  %377 = load i8, ptr %376, align 1, !tbaa !25
  br i1 %374, label %396, label %378

378:                                              ; preds = %372
  %379 = zext i8 %377 to i64
  %380 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %379
  %381 = load i8, ptr %380, align 1, !tbaa !25
  %382 = zext i8 %381 to i32
  %383 = shl nuw nsw i32 %382, 16
  %384 = getelementptr inbounds i8, ptr %342, i64 2
  %385 = load i8, ptr %384, align 1, !tbaa !25
  %386 = zext i8 %385 to i64
  %387 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %386
  %388 = load i8, ptr %387, align 1, !tbaa !25
  %389 = zext i8 %388 to i32
  %390 = shl nuw nsw i32 %389, 8
  %391 = or disjoint i32 %383, %390
  %392 = getelementptr inbounds i8, ptr %342, i64 3
  %393 = load i8, ptr %392, align 1, !tbaa !25
  %394 = zext i8 %393 to i64
  %395 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %394
  br label %405

396:                                              ; preds = %372
  %397 = zext i8 %377 to i32
  %398 = shl nuw nsw i32 %397, 16
  %399 = getelementptr inbounds i8, ptr %342, i64 2
  %400 = load i8, ptr %399, align 1, !tbaa !25
  %401 = zext i8 %400 to i32
  %402 = shl nuw nsw i32 %401, 8
  %403 = or disjoint i32 %398, %402
  %404 = getelementptr inbounds i8, ptr %342, i64 3
  br label %405

405:                                              ; preds = %396, %378
  %406 = phi ptr [ %404, %396 ], [ %395, %378 ]
  %407 = phi i32 [ %403, %396 ], [ %391, %378 ]
  %408 = or disjoint i32 %407, %375
  %409 = load i8, ptr %406, align 1, !tbaa !25
  %410 = zext i8 %409 to i32
  %411 = or disjoint i32 %408, %410
  %412 = add nsw i32 %339, 24
  %413 = getelementptr inbounds i8, ptr %342, i64 3
  br label %414

414:                                              ; preds = %405, %367, %337
  %415 = phi i32 [ %368, %367 ], [ %411, %405 ], [ %338, %337 ]
  %416 = phi i32 [ %369, %367 ], [ %412, %405 ], [ %339, %337 ]
  %417 = phi ptr [ %370, %367 ], [ %413, %405 ], [ %342, %337 ]
  %418 = add nsw i32 %416, -8
  %419 = lshr i32 %415, %418
  %420 = and i32 %419, 255
  %421 = zext nneg i32 %420 to i64
  %422 = getelementptr inbounds [0 x %struct.hcd_code_s], ptr @cf_white_decode, i64 0, i64 %421
  %423 = getelementptr inbounds [0 x %struct.hcd_code_s], ptr @cf_white_decode, i64 0, i64 %421, i32 1
  %424 = load i16, ptr %423, align 2, !tbaa !48
  %425 = zext i16 %424 to i32
  %426 = icmp ugt i16 %424, 8
  br i1 %426, label %427, label %526

427:                                              ; preds = %414
  %428 = icmp slt i32 %416, %425
  br i1 %428, label %429, label %437

429:                                              ; preds = %427
  %430 = ptrtoint ptr %417 to i64
  %431 = sub i64 %336, %430
  %432 = xor i32 %416, -1
  %433 = add i32 %425, %432
  %434 = ashr i32 %433, 3
  %435 = sext i32 %434 to i64
  %436 = icmp sgt i64 %431, %435
  br i1 %436, label %437, label %535

437:                                              ; preds = %429, %427
  %438 = add nsw i32 %425, -8
  br i1 %428, label %439, label %506

439:                                              ; preds = %437
  %440 = ptrtoint ptr %417 to i64
  %441 = sub i64 %336, %440
  %442 = icmp slt i64 %441, 3
  br i1 %442, label %443, label %464

443:                                              ; preds = %439
  %444 = icmp ult ptr %417, %316
  br i1 %444, label %445, label %459

445:                                              ; preds = %443
  %446 = getelementptr inbounds i8, ptr %417, i64 1
  %447 = load i8, ptr %446, align 1, !tbaa !25
  %448 = load i32, ptr %57, align 8, !tbaa !46
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %454, label %450

450:                                              ; preds = %445
  %451 = zext i8 %447 to i64
  %452 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %451
  %453 = load i8, ptr %452, align 1, !tbaa !25
  br label %454

454:                                              ; preds = %450, %445
  %455 = phi i8 [ %453, %450 ], [ %447, %445 ]
  %456 = zext i8 %455 to i32
  %457 = shl i32 %415, 8
  %458 = or disjoint i32 %457, %456
  br label %459

459:                                              ; preds = %454, %443
  %460 = phi i32 [ %458, %454 ], [ %415, %443 ]
  %461 = phi i32 [ %416, %454 ], [ %418, %443 ]
  %462 = phi ptr [ %446, %454 ], [ %417, %443 ]
  %463 = phi i32 [ 0, %454 ], [ 8, %443 ]
  br i1 %444, label %506, label %535

464:                                              ; preds = %439
  %465 = load i32, ptr %57, align 8, !tbaa !46
  %466 = icmp eq i32 %465, 0
  %467 = shl i32 %415, 24
  %468 = getelementptr inbounds i8, ptr %417, i64 1
  %469 = load i8, ptr %468, align 1, !tbaa !25
  br i1 %466, label %488, label %470

470:                                              ; preds = %464
  %471 = zext i8 %469 to i64
  %472 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %471
  %473 = load i8, ptr %472, align 1, !tbaa !25
  %474 = zext i8 %473 to i32
  %475 = shl nuw nsw i32 %474, 16
  %476 = getelementptr inbounds i8, ptr %417, i64 2
  %477 = load i8, ptr %476, align 1, !tbaa !25
  %478 = zext i8 %477 to i64
  %479 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %478
  %480 = load i8, ptr %479, align 1, !tbaa !25
  %481 = zext i8 %480 to i32
  %482 = shl nuw nsw i32 %481, 8
  %483 = or disjoint i32 %475, %482
  %484 = getelementptr inbounds i8, ptr %417, i64 3
  %485 = load i8, ptr %484, align 1, !tbaa !25
  %486 = zext i8 %485 to i64
  %487 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %486
  br label %497

488:                                              ; preds = %464
  %489 = zext i8 %469 to i32
  %490 = shl nuw nsw i32 %489, 16
  %491 = getelementptr inbounds i8, ptr %417, i64 2
  %492 = load i8, ptr %491, align 1, !tbaa !25
  %493 = zext i8 %492 to i32
  %494 = shl nuw nsw i32 %493, 8
  %495 = or disjoint i32 %490, %494
  %496 = getelementptr inbounds i8, ptr %417, i64 3
  br label %497

497:                                              ; preds = %488, %470
  %498 = phi ptr [ %496, %488 ], [ %487, %470 ]
  %499 = phi i32 [ %495, %488 ], [ %483, %470 ]
  %500 = or disjoint i32 %499, %467
  %501 = load i8, ptr %498, align 1, !tbaa !25
  %502 = zext i8 %501 to i32
  %503 = or disjoint i32 %500, %502
  %504 = add nsw i32 %416, 16
  %505 = getelementptr inbounds i8, ptr %417, i64 3
  br label %506

506:                                              ; preds = %497, %459, %437
  %507 = phi i32 [ %460, %459 ], [ %503, %497 ], [ %415, %437 ]
  %508 = phi i32 [ %461, %459 ], [ %504, %497 ], [ %418, %437 ]
  %509 = phi ptr [ %462, %459 ], [ %505, %497 ], [ %417, %437 ]
  %510 = load i16, ptr %422, align 2, !tbaa !51
  %511 = sext i16 %510 to i32
  %512 = sub nsw i32 %508, %438
  %513 = lshr i32 %507, %512
  %514 = zext nneg i32 %438 to i64
  %515 = getelementptr inbounds [9 x i8], ptr @byte_right_mask, i64 0, i64 %514
  %516 = load i8, ptr %515, align 1, !tbaa !25
  %517 = zext i8 %516 to i32
  %518 = and i32 %513, %517
  %519 = add nsw i32 %518, %511
  %520 = zext i32 %519 to i64
  %521 = getelementptr inbounds [0 x %struct.hcd_code_s], ptr @cf_white_decode, i64 0, i64 %520
  %522 = getelementptr inbounds [0 x %struct.hcd_code_s], ptr @cf_white_decode, i64 0, i64 %520, i32 1
  %523 = load i16, ptr %522, align 2, !tbaa !48
  %524 = zext i16 %523 to i32
  %525 = sub nsw i32 %508, %524
  br label %528

526:                                              ; preds = %414
  %527 = sub nsw i32 %416, %425
  br label %528

528:                                              ; preds = %526, %506
  %529 = phi i32 [ %507, %506 ], [ %415, %526 ]
  %530 = phi i32 [ %525, %506 ], [ %527, %526 ]
  %531 = phi ptr [ %509, %506 ], [ %417, %526 ]
  %532 = phi ptr [ %521, %506 ], [ %422, %526 ]
  %533 = load i16, ptr %532, align 2, !tbaa !51
  %534 = sext i16 %533 to i32
  br label %535

535:                                              ; preds = %528, %459, %429, %367
  %536 = phi i32 [ %529, %528 ], [ %460, %459 ], [ %368, %367 ], [ %415, %429 ]
  %537 = phi i32 [ %530, %528 ], [ %461, %459 ], [ %369, %367 ], [ %416, %429 ]
  %538 = phi ptr [ %531, %528 ], [ %462, %459 ], [ %370, %367 ], [ %417, %429 ]
  %539 = phi i32 [ %534, %528 ], [ %344, %459 ], [ %344, %367 ], [ %344, %429 ]
  %540 = phi i32 [ 0, %528 ], [ %463, %459 ], [ %371, %367 ], [ 8, %429 ]
  switch i32 %540, label %899 [
    i32 0, label %541
    i32 8, label %877
  ]

541:                                              ; preds = %535
  %542 = icmp slt i32 %539, 0
  br i1 %542, label %543, label %558

543:                                              ; preds = %541
  %544 = icmp eq i32 %539, -3
  br i1 %544, label %545, label %877

545:                                              ; preds = %543
  %546 = ashr i32 %537, 3
  %547 = sub nsw i32 0, %546
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds i8, ptr %538, i64 %548
  store ptr %549, ptr %1, align 8, !tbaa !36
  %550 = and i32 %537, -8
  %551 = lshr i32 %536, %550
  store i32 %551, ptr %53, align 4, !tbaa !15
  %552 = and i32 %537, 7
  store i32 %552, ptr %54, align 8, !tbaa !16
  %553 = load ptr, ptr %50, align 8, !tbaa !22
  %554 = ptrtoint ptr %340 to i64
  %555 = ptrtoint ptr %553 to i64
  %556 = sub i64 %554, %555
  %557 = trunc i64 %556 to i32
  store i32 %557, ptr %21, align 4, !tbaa !31
  store i32 %341, ptr %55, align 8, !tbaa !41
  br label %899

558:                                              ; preds = %541
  %559 = sub nsw i32 %341, %539
  %560 = icmp slt i32 %559, 0
  br i1 %560, label %561, label %568

561:                                              ; preds = %558
  %562 = ashr i32 %559, 3
  %563 = sub nsw i32 0, %562
  %564 = zext nneg i32 %563 to i64
  %565 = getelementptr inbounds i8, ptr %340, i64 %564
  %566 = and i32 %559, 7
  %567 = icmp sgt i32 %539, 63
  br i1 %567, label %337, label %568

568:                                              ; preds = %561, %558
  %569 = phi ptr [ %565, %561 ], [ %340, %558 ]
  %570 = phi i32 [ %566, %561 ], [ %559, %558 ]
  %571 = icmp ult ptr %569, %313
  br i1 %571, label %576, label %572

572:                                              ; preds = %568
  %573 = icmp ule i32 %570, %308
  %574 = icmp ugt ptr %569, %313
  %575 = select i1 %573, i1 true, i1 %574
  br i1 %575, label %867, label %576

576:                                              ; preds = %568, %572, %302
  %577 = phi i32 [ %317, %302 ], [ %536, %572 ], [ %536, %568 ]
  %578 = phi i32 [ %318, %302 ], [ %537, %572 ], [ %537, %568 ]
  %579 = phi ptr [ %321, %302 ], [ %569, %572 ], [ %569, %568 ]
  %580 = phi i32 [ %322, %302 ], [ %570, %572 ], [ %570, %568 ]
  %581 = phi ptr [ %315, %302 ], [ %538, %572 ], [ %538, %568 ]
  %582 = phi i32 [ %314, %302 ], [ 1, %572 ], [ 1, %568 ]
  %583 = phi i32 [ undef, %302 ], [ %539, %572 ], [ %539, %568 ]
  %584 = ptrtoint ptr %316 to i64
  br label %585

585:                                              ; preds = %846, %576
  %586 = phi i32 [ %577, %576 ], [ %785, %846 ]
  %587 = phi i32 [ %578, %576 ], [ %786, %846 ]
  %588 = phi ptr [ %579, %576 ], [ %847, %846 ]
  %589 = phi i32 [ %580, %576 ], [ %848, %846 ]
  %590 = phi ptr [ %581, %576 ], [ %787, %846 ]
  %591 = phi i32 [ %582, %576 ], [ 2, %846 ]
  %592 = phi i32 [ %583, %576 ], [ %836, %846 ]
  %593 = icmp slt i32 %587, 7
  br i1 %593, label %594, label %662

594:                                              ; preds = %585
  %595 = ptrtoint ptr %590 to i64
  %596 = sub i64 %584, %595
  %597 = icmp slt i64 %596, 3
  br i1 %597, label %598, label %620

598:                                              ; preds = %594
  %599 = icmp ult ptr %590, %316
  br i1 %599, label %600, label %615

600:                                              ; preds = %598
  %601 = getelementptr inbounds i8, ptr %590, i64 1
  %602 = load i8, ptr %601, align 1, !tbaa !25
  %603 = load i32, ptr %56, align 8, !tbaa !46
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %609, label %605

605:                                              ; preds = %600
  %606 = zext i8 %602 to i64
  %607 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %606
  %608 = load i8, ptr %607, align 1, !tbaa !25
  br label %609

609:                                              ; preds = %605, %600
  %610 = phi i8 [ %608, %605 ], [ %602, %600 ]
  %611 = zext i8 %610 to i32
  %612 = shl i32 %586, 8
  %613 = or disjoint i32 %612, %611
  %614 = add nsw i32 %587, 8
  br label %615

615:                                              ; preds = %609, %598
  %616 = phi i32 [ %613, %609 ], [ %586, %598 ]
  %617 = phi i32 [ %614, %609 ], [ %587, %598 ]
  %618 = phi ptr [ %601, %609 ], [ %590, %598 ]
  %619 = phi i32 [ 0, %609 ], [ 16, %598 ]
  br i1 %599, label %662, label %784

620:                                              ; preds = %594
  %621 = load i32, ptr %56, align 8, !tbaa !46
  %622 = icmp eq i32 %621, 0
  %623 = shl i32 %586, 24
  %624 = getelementptr inbounds i8, ptr %590, i64 1
  %625 = load i8, ptr %624, align 1, !tbaa !25
  br i1 %622, label %644, label %626

626:                                              ; preds = %620
  %627 = zext i8 %625 to i64
  %628 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %627
  %629 = load i8, ptr %628, align 1, !tbaa !25
  %630 = zext i8 %629 to i32
  %631 = shl nuw nsw i32 %630, 16
  %632 = getelementptr inbounds i8, ptr %590, i64 2
  %633 = load i8, ptr %632, align 1, !tbaa !25
  %634 = zext i8 %633 to i64
  %635 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %634
  %636 = load i8, ptr %635, align 1, !tbaa !25
  %637 = zext i8 %636 to i32
  %638 = shl nuw nsw i32 %637, 8
  %639 = or disjoint i32 %631, %638
  %640 = getelementptr inbounds i8, ptr %590, i64 3
  %641 = load i8, ptr %640, align 1, !tbaa !25
  %642 = zext i8 %641 to i64
  %643 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %642
  br label %653

644:                                              ; preds = %620
  %645 = zext i8 %625 to i32
  %646 = shl nuw nsw i32 %645, 16
  %647 = getelementptr inbounds i8, ptr %590, i64 2
  %648 = load i8, ptr %647, align 1, !tbaa !25
  %649 = zext i8 %648 to i32
  %650 = shl nuw nsw i32 %649, 8
  %651 = or disjoint i32 %646, %650
  %652 = getelementptr inbounds i8, ptr %590, i64 3
  br label %653

653:                                              ; preds = %644, %626
  %654 = phi ptr [ %652, %644 ], [ %643, %626 ]
  %655 = phi i32 [ %651, %644 ], [ %639, %626 ]
  %656 = or disjoint i32 %655, %623
  %657 = load i8, ptr %654, align 1, !tbaa !25
  %658 = zext i8 %657 to i32
  %659 = or disjoint i32 %656, %658
  %660 = add nsw i32 %587, 24
  %661 = getelementptr inbounds i8, ptr %590, i64 3
  br label %662

662:                                              ; preds = %653, %615, %585
  %663 = phi i32 [ %616, %615 ], [ %659, %653 ], [ %586, %585 ]
  %664 = phi i32 [ %617, %615 ], [ %660, %653 ], [ %587, %585 ]
  %665 = phi ptr [ %618, %615 ], [ %661, %653 ], [ %590, %585 ]
  %666 = add nsw i32 %664, -7
  %667 = lshr i32 %663, %666
  %668 = and i32 %667, 127
  %669 = zext nneg i32 %668 to i64
  %670 = getelementptr inbounds [0 x %struct.hcd_code_s], ptr @cf_black_decode, i64 0, i64 %669
  %671 = getelementptr inbounds [0 x %struct.hcd_code_s], ptr @cf_black_decode, i64 0, i64 %669, i32 1
  %672 = load i16, ptr %671, align 2, !tbaa !48
  %673 = zext i16 %672 to i32
  %674 = icmp ugt i16 %672, 7
  br i1 %674, label %675, label %775

675:                                              ; preds = %662
  %676 = icmp slt i32 %664, %673
  br i1 %676, label %677, label %685

677:                                              ; preds = %675
  %678 = ptrtoint ptr %665 to i64
  %679 = sub i64 %584, %678
  %680 = xor i32 %664, -1
  %681 = add i32 %673, %680
  %682 = ashr i32 %681, 3
  %683 = sext i32 %682 to i64
  %684 = icmp sgt i64 %679, %683
  br i1 %684, label %685, label %784

685:                                              ; preds = %677, %675
  %686 = add nsw i32 %673, -7
  br i1 %676, label %687, label %755

687:                                              ; preds = %685
  %688 = ptrtoint ptr %665 to i64
  %689 = sub i64 %584, %688
  %690 = icmp slt i64 %689, 3
  br i1 %690, label %691, label %713

691:                                              ; preds = %687
  %692 = icmp ult ptr %665, %316
  br i1 %692, label %693, label %708

693:                                              ; preds = %691
  %694 = getelementptr inbounds i8, ptr %665, i64 1
  %695 = load i8, ptr %694, align 1, !tbaa !25
  %696 = load i32, ptr %56, align 8, !tbaa !46
  %697 = icmp eq i32 %696, 0
  br i1 %697, label %702, label %698

698:                                              ; preds = %693
  %699 = zext i8 %695 to i64
  %700 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %699
  %701 = load i8, ptr %700, align 1, !tbaa !25
  br label %702

702:                                              ; preds = %698, %693
  %703 = phi i8 [ %701, %698 ], [ %695, %693 ]
  %704 = zext i8 %703 to i32
  %705 = shl i32 %663, 8
  %706 = or disjoint i32 %705, %704
  %707 = add nsw i32 %664, 1
  br label %708

708:                                              ; preds = %702, %691
  %709 = phi i32 [ %706, %702 ], [ %663, %691 ]
  %710 = phi i32 [ %707, %702 ], [ %666, %691 ]
  %711 = phi ptr [ %694, %702 ], [ %665, %691 ]
  %712 = phi i32 [ 0, %702 ], [ 16, %691 ]
  br i1 %692, label %755, label %784

713:                                              ; preds = %687
  %714 = load i32, ptr %56, align 8, !tbaa !46
  %715 = icmp eq i32 %714, 0
  %716 = shl i32 %663, 24
  %717 = getelementptr inbounds i8, ptr %665, i64 1
  %718 = load i8, ptr %717, align 1, !tbaa !25
  br i1 %715, label %737, label %719

719:                                              ; preds = %713
  %720 = zext i8 %718 to i64
  %721 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %720
  %722 = load i8, ptr %721, align 1, !tbaa !25
  %723 = zext i8 %722 to i32
  %724 = shl nuw nsw i32 %723, 16
  %725 = getelementptr inbounds i8, ptr %665, i64 2
  %726 = load i8, ptr %725, align 1, !tbaa !25
  %727 = zext i8 %726 to i64
  %728 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %727
  %729 = load i8, ptr %728, align 1, !tbaa !25
  %730 = zext i8 %729 to i32
  %731 = shl nuw nsw i32 %730, 8
  %732 = or disjoint i32 %724, %731
  %733 = getelementptr inbounds i8, ptr %665, i64 3
  %734 = load i8, ptr %733, align 1, !tbaa !25
  %735 = zext i8 %734 to i64
  %736 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %735
  br label %746

737:                                              ; preds = %713
  %738 = zext i8 %718 to i32
  %739 = shl nuw nsw i32 %738, 16
  %740 = getelementptr inbounds i8, ptr %665, i64 2
  %741 = load i8, ptr %740, align 1, !tbaa !25
  %742 = zext i8 %741 to i32
  %743 = shl nuw nsw i32 %742, 8
  %744 = or disjoint i32 %739, %743
  %745 = getelementptr inbounds i8, ptr %665, i64 3
  br label %746

746:                                              ; preds = %737, %719
  %747 = phi ptr [ %745, %737 ], [ %736, %719 ]
  %748 = phi i32 [ %744, %737 ], [ %732, %719 ]
  %749 = or disjoint i32 %748, %716
  %750 = load i8, ptr %747, align 1, !tbaa !25
  %751 = zext i8 %750 to i32
  %752 = or disjoint i32 %749, %751
  %753 = add nsw i32 %664, 17
  %754 = getelementptr inbounds i8, ptr %665, i64 3
  br label %755

755:                                              ; preds = %746, %708, %685
  %756 = phi i32 [ %709, %708 ], [ %752, %746 ], [ %663, %685 ]
  %757 = phi i32 [ %710, %708 ], [ %753, %746 ], [ %666, %685 ]
  %758 = phi ptr [ %711, %708 ], [ %754, %746 ], [ %665, %685 ]
  %759 = load i16, ptr %670, align 2, !tbaa !51
  %760 = sext i16 %759 to i32
  %761 = sub nsw i32 %757, %686
  %762 = lshr i32 %756, %761
  %763 = zext nneg i32 %686 to i64
  %764 = getelementptr inbounds [9 x i8], ptr @byte_right_mask, i64 0, i64 %763
  %765 = load i8, ptr %764, align 1, !tbaa !25
  %766 = zext i8 %765 to i32
  %767 = and i32 %762, %766
  %768 = add nsw i32 %767, %760
  %769 = zext i32 %768 to i64
  %770 = getelementptr inbounds [0 x %struct.hcd_code_s], ptr @cf_black_decode, i64 0, i64 %769
  %771 = getelementptr inbounds [0 x %struct.hcd_code_s], ptr @cf_black_decode, i64 0, i64 %769, i32 1
  %772 = load i16, ptr %771, align 2, !tbaa !48
  %773 = zext i16 %772 to i32
  %774 = sub nsw i32 %757, %773
  br label %777

775:                                              ; preds = %662
  %776 = sub nsw i32 %664, %673
  br label %777

777:                                              ; preds = %775, %755
  %778 = phi i32 [ %756, %755 ], [ %663, %775 ]
  %779 = phi i32 [ %774, %755 ], [ %776, %775 ]
  %780 = phi ptr [ %758, %755 ], [ %665, %775 ]
  %781 = phi ptr [ %770, %755 ], [ %670, %775 ]
  %782 = load i16, ptr %781, align 2, !tbaa !51
  %783 = sext i16 %782 to i32
  br label %784

784:                                              ; preds = %777, %708, %677, %615
  %785 = phi i32 [ %778, %777 ], [ %709, %708 ], [ %616, %615 ], [ %663, %677 ]
  %786 = phi i32 [ %779, %777 ], [ %710, %708 ], [ %617, %615 ], [ %664, %677 ]
  %787 = phi ptr [ %780, %777 ], [ %711, %708 ], [ %618, %615 ], [ %665, %677 ]
  %788 = phi i32 [ %783, %777 ], [ %592, %708 ], [ %592, %615 ], [ %592, %677 ]
  %789 = phi i32 [ 0, %777 ], [ %712, %708 ], [ %619, %615 ], [ 16, %677 ]
  switch i32 %789, label %899 [
    i32 0, label %790
    i32 16, label %877
  ]

790:                                              ; preds = %784
  %791 = icmp slt i32 %788, 0
  br i1 %791, label %877, label %792

792:                                              ; preds = %790
  %793 = icmp sgt i32 %788, %589
  br i1 %793, label %794, label %849

794:                                              ; preds = %792
  %795 = shl nsw i32 -1, %589
  %796 = getelementptr inbounds i8, ptr %588, i64 1
  %797 = load i8, ptr %588, align 1, !tbaa !25
  %798 = trunc i32 %795 to i8
  %799 = xor i8 %797, %798
  %800 = xor i8 %799, -1
  store i8 %800, ptr %588, align 1, !tbaa !25
  %801 = sub nsw i32 %788, %589
  %802 = ashr i32 %801, 3
  switch i32 %802, label %833 [
    i32 7, label %803
    i32 6, label %807
    i32 5, label %810
    i32 4, label %813
    i32 3, label %816
    i32 2, label %819
    i32 1, label %822
    i32 0, label %828
  ]

803:                                              ; preds = %794
  %804 = icmp sgt i32 %788, 63
  br i1 %804, label %833, label %805

805:                                              ; preds = %803
  %806 = getelementptr inbounds i8, ptr %588, i64 2
  store i8 %305, ptr %796, align 1, !tbaa !25
  br label %807

807:                                              ; preds = %794, %805
  %808 = phi ptr [ %806, %805 ], [ %796, %794 ]
  %809 = getelementptr inbounds i8, ptr %808, i64 1
  store i8 %305, ptr %808, align 1, !tbaa !25
  br label %810

810:                                              ; preds = %794, %807
  %811 = phi ptr [ %809, %807 ], [ %796, %794 ]
  %812 = getelementptr inbounds i8, ptr %811, i64 1
  store i8 %305, ptr %811, align 1, !tbaa !25
  br label %813

813:                                              ; preds = %794, %810
  %814 = phi ptr [ %812, %810 ], [ %796, %794 ]
  %815 = getelementptr inbounds i8, ptr %814, i64 1
  store i8 %305, ptr %814, align 1, !tbaa !25
  br label %816

816:                                              ; preds = %794, %813
  %817 = phi ptr [ %815, %813 ], [ %796, %794 ]
  %818 = getelementptr inbounds i8, ptr %817, i64 1
  store i8 %305, ptr %817, align 1, !tbaa !25
  br label %819

819:                                              ; preds = %794, %816
  %820 = phi ptr [ %818, %816 ], [ %796, %794 ]
  %821 = getelementptr inbounds i8, ptr %820, i64 1
  store i8 %305, ptr %820, align 1, !tbaa !25
  br label %822

822:                                              ; preds = %794, %819
  %823 = phi ptr [ %821, %819 ], [ %796, %794 ]
  store i8 %305, ptr %823, align 1, !tbaa !25
  %824 = and i32 %801, 7
  %825 = icmp eq i32 %824, 0
  br i1 %825, label %862, label %826

826:                                              ; preds = %822
  %827 = getelementptr inbounds i8, ptr %823, i64 1
  br label %828

828:                                              ; preds = %794, %826
  %829 = phi ptr [ %827, %826 ], [ %796, %794 ]
  %830 = phi i32 [ %824, %826 ], [ %801, %794 ]
  %831 = sub nsw i32 8, %830
  %832 = shl i32 255, %831
  br label %854

833:                                              ; preds = %803, %794
  %834 = sext i32 %802 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %796, i8 %305, i64 %834, i1 false)
  %835 = getelementptr inbounds i8, ptr %796, i64 %834
  %836 = and i32 %801, 7
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %838, label %840

838:                                              ; preds = %833
  %839 = getelementptr inbounds i8, ptr %835, i64 -1
  br label %846

840:                                              ; preds = %833
  %841 = sub nuw nsw i32 8, %836
  %842 = shl nuw nsw i32 255, %841
  %843 = load i8, ptr %835, align 1, !tbaa !25
  %844 = trunc i32 %842 to i8
  %845 = xor i8 %843, %844
  store i8 %845, ptr %835, align 1, !tbaa !25
  br label %846

846:                                              ; preds = %840, %838
  %847 = phi ptr [ %835, %840 ], [ %839, %838 ]
  %848 = phi i32 [ %841, %840 ], [ 0, %838 ]
  br label %585

849:                                              ; preds = %792
  %850 = sub nsw i32 %589, %788
  %851 = shl nsw i32 -1, %788
  %852 = xor i32 %851, -1
  %853 = shl i32 %852, %850
  br label %854

854:                                              ; preds = %828, %849
  %855 = phi ptr [ %588, %849 ], [ %829, %828 ]
  %856 = phi i32 [ %853, %849 ], [ %832, %828 ]
  %857 = phi i32 [ %850, %849 ], [ %831, %828 ]
  %858 = phi i32 [ %788, %849 ], [ %830, %828 ]
  %859 = load i8, ptr %855, align 1, !tbaa !25
  %860 = trunc i32 %856 to i8
  %861 = xor i8 %859, %860
  store i8 %861, ptr %855, align 1, !tbaa !25
  br label %862

862:                                              ; preds = %854, %822
  %863 = phi ptr [ %823, %822 ], [ %855, %854 ]
  %864 = phi i32 [ 0, %822 ], [ %857, %854 ]
  %865 = phi i32 [ 0, %822 ], [ %858, %854 ]
  %866 = icmp ult ptr %863, %313
  br i1 %866, label %328, label %324

867:                                              ; preds = %572, %324
  %868 = phi i32 [ %785, %324 ], [ %536, %572 ]
  %869 = phi i32 [ %786, %324 ], [ %537, %572 ]
  %870 = phi ptr [ %863, %324 ], [ %569, %572 ]
  %871 = phi i32 [ %864, %324 ], [ %570, %572 ]
  %872 = phi ptr [ %787, %324 ], [ %538, %572 ]
  %873 = icmp ugt ptr %870, %313
  %874 = icmp slt i32 %871, %308
  %875 = select i1 %873, i1 true, i1 %874
  %876 = select i1 %875, i32 -2, i32 1
  br label %877

877:                                              ; preds = %790, %784, %535, %867, %543
  %878 = phi i32 [ %536, %543 ], [ %868, %867 ], [ %536, %535 ], [ %785, %784 ], [ %785, %790 ]
  %879 = phi i32 [ %537, %543 ], [ %869, %867 ], [ %537, %535 ], [ %786, %784 ], [ %786, %790 ]
  %880 = phi ptr [ %340, %543 ], [ %870, %867 ], [ %340, %535 ], [ %588, %784 ], [ %588, %790 ]
  %881 = phi i32 [ %341, %543 ], [ %871, %867 ], [ %341, %535 ], [ %589, %784 ], [ %589, %790 ]
  %882 = phi ptr [ %538, %543 ], [ %872, %867 ], [ %538, %535 ], [ %787, %784 ], [ %787, %790 ]
  %883 = phi i32 [ %343, %543 ], [ 0, %867 ], [ %343, %535 ], [ %591, %784 ], [ %591, %790 ]
  %884 = phi i32 [ -2, %543 ], [ %876, %867 ], [ 0, %535 ], [ -2, %790 ], [ 0, %784 ]
  %885 = ashr i32 %879, 3
  %886 = sub nsw i32 0, %885
  %887 = sext i32 %886 to i64
  %888 = getelementptr inbounds i8, ptr %882, i64 %887
  store ptr %888, ptr %1, align 8, !tbaa !36
  %889 = and i32 %879, -8
  %890 = lshr i32 %878, %889
  store i32 %890, ptr %53, align 4, !tbaa !15
  %891 = and i32 %879, 7
  store i32 %891, ptr %54, align 8, !tbaa !16
  %892 = load ptr, ptr %50, align 8, !tbaa !22
  %893 = ptrtoint ptr %880 to i64
  %894 = ptrtoint ptr %892 to i64
  %895 = sub i64 %893, %894
  %896 = trunc i64 %895 to i32
  store i32 %896, ptr %21, align 4, !tbaa !31
  store i32 %881, ptr %55, align 8, !tbaa !41
  store i32 %883, ptr %51, align 4, !tbaa !42
  br label %899

897:                                              ; preds = %300
  %898 = call fastcc i32 @cf_decode_2d(ptr noundef %0, ptr noundef %1)
  br label %899

899:                                              ; preds = %784, %535, %877, %545, %290, %291, %897, %298
  %900 = phi i32 [ %299, %298 ], [ %898, %897 ], [ -2, %291 ], [ -2, %290 ], [ %884, %877 ], [ -2, %545 ], [ undef, %535 ], [ undef, %784 ]
  %901 = phi i32 [ %295, %298 ], [ %295, %897 ], [ %287, %291 ], [ %287, %290 ], [ 0, %877 ], [ 0, %545 ], [ 0, %535 ], [ 0, %784 ]
  %902 = phi i32 [ %296, %298 ], [ %296, %897 ], [ 0, %291 ], [ %288, %290 ], [ %296, %877 ], [ %296, %545 ], [ %296, %535 ], [ %296, %784 ]
  switch i32 %900, label %918 [
    i32 1, label %917
    i32 -2, label %903
  ]

903:                                              ; preds = %899
  %904 = load i32, ptr %58, align 8, !tbaa !40
  %905 = load i32, ptr %59, align 4, !tbaa !52
  %906 = icmp slt i32 %904, %905
  br i1 %906, label %907, label %920

907:                                              ; preds = %903
  %908 = load i32, ptr %60, align 4, !tbaa !45
  %909 = icmp eq i32 %908, 0
  br i1 %909, label %920, label %910

910:                                              ; preds = %907
  %911 = load i32, ptr %61, align 8, !tbaa !24
  %912 = icmp sgt i32 %911, -1
  br i1 %912, label %913, label %920

913:                                              ; preds = %910
  store i32 %8, ptr %21, align 4, !tbaa !31
  %914 = load i32, ptr %62, align 4, !tbaa !12
  %915 = sub nsw i32 0, %914
  %916 = and i32 %915, 7
  store i32 %916, ptr %63, align 8, !tbaa !41
  store i32 0, ptr %64, align 4, !tbaa !42
  store i32 1, ptr %15, align 4, !tbaa !35
  br label %917

917:                                              ; preds = %913, %899
  br label %65

918:                                              ; preds = %899
  %919 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 21
  store i32 0, ptr %919, align 8, !tbaa !40
  br label %920

920:                                              ; preds = %125, %141, %910, %907, %903, %286, %103, %282, %274, %918
  %921 = phi i32 [ %171, %918 ], [ %171, %274 ], [ %171, %282 ], [ %66, %103 ], [ %171, %286 ], [ %171, %903 ], [ %171, %910 ], [ %171, %907 ], [ %66, %125 ], [ 0, %141 ]
  %922 = phi i32 [ %900, %918 ], [ -1, %282 ], [ %179, %274 ], [ 0, %103 ], [ 0, %286 ], [ -2, %903 ], [ -2, %910 ], [ -2, %907 ], [ %131, %125 ], [ -1, %141 ]
  %923 = phi i32 [ %901, %918 ], [ %278, %282 ], [ %275, %274 ], [ %67, %103 ], [ %287, %286 ], [ %901, %903 ], [ %901, %910 ], [ %901, %907 ], [ %67, %125 ], [ %67, %141 ]
  %924 = phi i32 [ %902, %918 ], [ %279, %282 ], [ %178, %274 ], [ %68, %103 ], [ %288, %286 ], [ %902, %903 ], [ %902, %910 ], [ %902, %907 ], [ %68, %125 ], [ %68, %141 ]
  store i32 %923, ptr %11, align 8, !tbaa !26
  store i32 %921, ptr %13, align 4, !tbaa !30
  store i32 %924, ptr %9, align 8, !tbaa !33
  br label %925

925:                                              ; preds = %103, %274, %920
  %926 = phi i32 [ %922, %920 ], [ undef, %274 ], [ undef, %103 ]
  ret i32 %926
}

; Function Attrs: nounwind uwtable
define internal void @s_CFD_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.stream_state_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !17
  %4 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %3, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !23
  tail call void %5(ptr noundef %3, ptr noundef %7, ptr noundef nonnull @.str.3) #9
  %8 = load ptr, ptr %2, align 8, !tbaa !17
  %9 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %8, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !53
  %11 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  tail call void %10(ptr noundef %8, ptr noundef %12, ptr noundef nonnull @.str.4) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @s_CFD_set_defaults(ptr nocapture noundef writeonly %0) #1 {
  %2 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 6
  %3 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store i32 1728, ptr %3, align 4, !tbaa !12
  %4 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 11
  store i32 0, ptr %4, align 8, !tbaa !28
  %5 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 12
  store i32 1, ptr %5, align 4, !tbaa !29
  %6 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 13
  store i32 0, ptr %6, align 8, !tbaa !14
  %7 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 14
  store i32 0, ptr %7, align 4, !tbaa !52
  %8 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 3
  store i32 0, ptr %8, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 15
  store i32 1, ptr %9, align 8, !tbaa !5
  store i32 0, ptr %7, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @cfd_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #2 {
  switch i32 %2, label %12 [
    i32 0, label %5
    i32 1, label %7
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 17
  br label %9

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 18
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %6, %5 ], [ %8, %7 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  store ptr %11, ptr %3, align 8, !tbaa !54
  br label %12

12:                                               ; preds = %9, %4
  %13 = phi ptr [ null, %4 ], [ @ptr_struct_procs, %9 ]
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define internal void @cfd_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %5, ptr noundef %2) #9
  store ptr %6, ptr %4, align 8, !tbaa !22
  %7 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !23
  %9 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %8, ptr noundef %2) #9
  store ptr %9, ptr %7, align 8, !tbaa !23
  ret void
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @cf_decode_eol(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #6 {
  %3 = load ptr, ptr %1, align 8, !tbaa !36
  %4 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !15
  %8 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !16
  %10 = ptrtoint ptr %5 to i64
  %11 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 3
  br label %13

13:                                               ; preds = %2, %96
  %14 = phi i32 [ 0, %2 ], [ %97, %96 ]
  %15 = phi i32 [ %9, %2 ], [ %90, %96 ]
  %16 = phi i32 [ %7, %2 ], [ %88, %96 ]
  %17 = phi ptr [ %3, %2 ], [ %87, %96 ]
  %18 = icmp slt i32 %15, 1
  br i1 %18, label %19, label %86

19:                                               ; preds = %13
  %20 = ptrtoint ptr %17 to i64
  %21 = sub i64 %10, %20
  %22 = icmp slt i64 %21, 3
  br i1 %22, label %23, label %44

23:                                               ; preds = %19
  %24 = icmp ult ptr %17, %5
  br i1 %24, label %25, label %40

25:                                               ; preds = %23
  %26 = getelementptr inbounds i8, ptr %17, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !25
  %28 = load i32, ptr %12, align 8, !tbaa !46
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = zext i8 %27 to i64
  %32 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !25
  br label %34

34:                                               ; preds = %30, %25
  %35 = phi i8 [ %33, %30 ], [ %27, %25 ]
  %36 = zext i8 %35 to i32
  %37 = shl i32 %16, 8
  %38 = or disjoint i32 %37, %36
  %39 = add nsw i32 %15, 8
  br label %40

40:                                               ; preds = %23, %34
  %41 = phi ptr [ %26, %34 ], [ %17, %23 ]
  %42 = phi i32 [ %38, %34 ], [ %16, %23 ]
  %43 = phi i32 [ %39, %34 ], [ %15, %23 ]
  br i1 %24, label %86, label %207

44:                                               ; preds = %19
  %45 = load i32, ptr %11, align 8, !tbaa !46
  %46 = icmp eq i32 %45, 0
  %47 = shl i32 %16, 24
  %48 = getelementptr inbounds i8, ptr %17, i64 1
  %49 = load i8, ptr %48, align 1, !tbaa !25
  br i1 %46, label %68, label %50

50:                                               ; preds = %44
  %51 = zext i8 %49 to i64
  %52 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !25
  %54 = zext i8 %53 to i32
  %55 = shl nuw nsw i32 %54, 16
  %56 = getelementptr inbounds i8, ptr %17, i64 2
  %57 = load i8, ptr %56, align 1, !tbaa !25
  %58 = zext i8 %57 to i64
  %59 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !25
  %61 = zext i8 %60 to i32
  %62 = shl nuw nsw i32 %61, 8
  %63 = or disjoint i32 %55, %62
  %64 = getelementptr inbounds i8, ptr %17, i64 3
  %65 = load i8, ptr %64, align 1, !tbaa !25
  %66 = zext i8 %65 to i64
  %67 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %66
  br label %77

68:                                               ; preds = %44
  %69 = zext i8 %49 to i32
  %70 = shl nuw nsw i32 %69, 16
  %71 = getelementptr inbounds i8, ptr %17, i64 2
  %72 = load i8, ptr %71, align 1, !tbaa !25
  %73 = zext i8 %72 to i32
  %74 = shl nuw nsw i32 %73, 8
  %75 = or disjoint i32 %70, %74
  %76 = getelementptr inbounds i8, ptr %17, i64 3
  br label %77

77:                                               ; preds = %68, %50
  %78 = phi ptr [ %76, %68 ], [ %67, %50 ]
  %79 = phi i32 [ %75, %68 ], [ %63, %50 ]
  %80 = or disjoint i32 %79, %47
  %81 = load i8, ptr %78, align 1, !tbaa !25
  %82 = zext i8 %81 to i32
  %83 = or disjoint i32 %80, %82
  %84 = add nsw i32 %15, 24
  %85 = getelementptr inbounds i8, ptr %17, i64 3
  br label %86

86:                                               ; preds = %40, %77, %13
  %87 = phi ptr [ %41, %40 ], [ %85, %77 ], [ %17, %13 ]
  %88 = phi i32 [ %42, %40 ], [ %83, %77 ], [ %16, %13 ]
  %89 = phi i32 [ %43, %40 ], [ %84, %77 ], [ %15, %13 ]
  %90 = add nsw i32 %89, -1
  %91 = shl nuw i32 1, %90
  %92 = and i32 %91, %88
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %86
  %95 = xor i32 %14, -1
  br label %207

96:                                               ; preds = %86
  %97 = add nuw nsw i32 %14, 1
  %98 = icmp eq i32 %97, 11
  br i1 %98, label %99, label %13, !llvm.loop !55

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 7
  %101 = load i32, ptr %100, align 8, !tbaa !24
  %102 = icmp slt i32 %101, 1
  %103 = select i1 %102, i32 1, i32 2
  %104 = ptrtoint ptr %5 to i64
  %105 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 3
  %106 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 3
  br label %107

107:                                              ; preds = %179, %99
  %108 = phi ptr [ %87, %99 ], [ %180, %179 ]
  %109 = phi i32 [ %88, %99 ], [ %181, %179 ]
  %110 = phi i32 [ %90, %99 ], [ %183, %179 ]
  %111 = icmp slt i32 %110, %103
  br i1 %111, label %112, label %179

112:                                              ; preds = %107
  %113 = ptrtoint ptr %108 to i64
  %114 = sub i64 %104, %113
  %115 = icmp slt i64 %114, 3
  br i1 %115, label %116, label %137

116:                                              ; preds = %112
  %117 = icmp ult ptr %108, %5
  br i1 %117, label %118, label %133

118:                                              ; preds = %116
  %119 = getelementptr inbounds i8, ptr %108, i64 1
  %120 = load i8, ptr %119, align 1, !tbaa !25
  %121 = load i32, ptr %106, align 8, !tbaa !46
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %118
  %124 = zext i8 %120 to i64
  %125 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %124
  %126 = load i8, ptr %125, align 1, !tbaa !25
  br label %127

127:                                              ; preds = %123, %118
  %128 = phi i8 [ %126, %123 ], [ %120, %118 ]
  %129 = zext i8 %128 to i32
  %130 = shl i32 %109, 8
  %131 = or disjoint i32 %130, %129
  %132 = add nsw i32 %110, 8
  br label %133

133:                                              ; preds = %116, %127
  %134 = phi ptr [ %119, %127 ], [ %108, %116 ]
  %135 = phi i32 [ %131, %127 ], [ %109, %116 ]
  %136 = phi i32 [ %132, %127 ], [ %110, %116 ]
  br i1 %117, label %179, label %195

137:                                              ; preds = %112
  %138 = load i32, ptr %105, align 8, !tbaa !46
  %139 = icmp eq i32 %138, 0
  %140 = shl i32 %109, 24
  %141 = getelementptr inbounds i8, ptr %108, i64 1
  %142 = load i8, ptr %141, align 1, !tbaa !25
  br i1 %139, label %161, label %143

143:                                              ; preds = %137
  %144 = zext i8 %142 to i64
  %145 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %144
  %146 = load i8, ptr %145, align 1, !tbaa !25
  %147 = zext i8 %146 to i32
  %148 = shl nuw nsw i32 %147, 16
  %149 = getelementptr inbounds i8, ptr %108, i64 2
  %150 = load i8, ptr %149, align 1, !tbaa !25
  %151 = zext i8 %150 to i64
  %152 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %151
  %153 = load i8, ptr %152, align 1, !tbaa !25
  %154 = zext i8 %153 to i32
  %155 = shl nuw nsw i32 %154, 8
  %156 = or disjoint i32 %148, %155
  %157 = getelementptr inbounds i8, ptr %108, i64 3
  %158 = load i8, ptr %157, align 1, !tbaa !25
  %159 = zext i8 %158 to i64
  %160 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %159
  br label %170

161:                                              ; preds = %137
  %162 = zext i8 %142 to i32
  %163 = shl nuw nsw i32 %162, 16
  %164 = getelementptr inbounds i8, ptr %108, i64 2
  %165 = load i8, ptr %164, align 1, !tbaa !25
  %166 = zext i8 %165 to i32
  %167 = shl nuw nsw i32 %166, 8
  %168 = or disjoint i32 %163, %167
  %169 = getelementptr inbounds i8, ptr %108, i64 3
  br label %170

170:                                              ; preds = %161, %143
  %171 = phi ptr [ %169, %161 ], [ %160, %143 ]
  %172 = phi i32 [ %168, %161 ], [ %156, %143 ]
  %173 = or disjoint i32 %172, %140
  %174 = load i8, ptr %171, align 1, !tbaa !25
  %175 = zext i8 %174 to i32
  %176 = or disjoint i32 %173, %175
  %177 = add nsw i32 %110, 24
  %178 = getelementptr inbounds i8, ptr %108, i64 3
  br label %179

179:                                              ; preds = %133, %170, %107
  %180 = phi ptr [ %134, %133 ], [ %178, %170 ], [ %108, %107 ]
  %181 = phi i32 [ %135, %133 ], [ %176, %170 ], [ %109, %107 ]
  %182 = phi i32 [ %136, %133 ], [ %177, %170 ], [ %110, %107 ]
  %183 = add nsw i32 %182, -1
  %184 = shl nuw i32 1, %183
  %185 = and i32 %184, %181
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %107, label %187, !llvm.loop !56

187:                                              ; preds = %179
  %188 = ashr i32 %183, 3
  %189 = sub nsw i32 0, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, ptr %180, i64 %190
  store ptr %191, ptr %1, align 8, !tbaa !36
  %192 = and i32 %183, -8
  %193 = lshr i32 %181, %192
  store i32 %193, ptr %6, align 4, !tbaa !15
  %194 = and i32 %183, 7
  store i32 %194, ptr %8, align 8, !tbaa !16
  br label %207

195:                                              ; preds = %133
  %196 = shl nsw i32 -1, %136
  %197 = xor i32 %196, -1
  %198 = and i32 %135, %197
  %199 = add nsw i32 %136, 11
  %200 = ashr i32 %199, 3
  %201 = sub nsw i32 0, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8, ptr %134, i64 %202
  store ptr %203, ptr %1, align 8, !tbaa !36
  %204 = and i32 %199, -8
  %205 = lshr i32 %198, %204
  store i32 %205, ptr %6, align 4, !tbaa !15
  %206 = and i32 %199, 7
  store i32 %206, ptr %8, align 8, !tbaa !16
  br label %207

207:                                              ; preds = %40, %195, %187, %94
  %208 = phi i32 [ %95, %94 ], [ 1, %187 ], [ 0, %195 ], [ 0, %40 ]
  ret i32 %208
}

declare i32 @stream_move(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @cf_decode_2d(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 13
  %4 = load i32, ptr %3, align 8, !tbaa !14
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 255, i32 0
  %7 = trunc i32 %6 to i8
  %8 = xor i8 %7, -1
  %9 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 28
  %10 = load i8, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 10
  %12 = load i32, ptr %11, align 4, !tbaa !12
  %13 = sub nsw i32 0, %12
  %14 = and i32 %13, 7
  %15 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 16
  %16 = load i32, ptr %15, align 4, !tbaa !13
  %17 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 17
  %18 = load ptr, ptr %17, align 8, !tbaa !22
  %19 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 18
  %20 = load ptr, ptr %19, align 8, !tbaa !23
  %21 = getelementptr inbounds i8, ptr %20, i64 1
  %22 = getelementptr inbounds i8, ptr %18, i64 -1
  %23 = zext i32 %16 to i64
  %24 = getelementptr inbounds i8, ptr %22, i64 %23
  %25 = shl i32 %16, 3
  %26 = load ptr, ptr %1, align 8, !tbaa !36
  %27 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !43
  %29 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 4
  %30 = load i32, ptr %29, align 4, !tbaa !15
  %31 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !16
  %33 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 26
  %34 = load i32, ptr %33, align 4, !tbaa !31
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, ptr %18, i64 %35
  %37 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 23
  %38 = load i32, ptr %37, align 8, !tbaa !41
  %39 = ptrtoint ptr %24 to i64
  %40 = ptrtoint ptr %36 to i64
  %41 = sub i64 %39, %40
  %42 = trunc i64 %41 to i32
  %43 = shl i32 %42, 3
  %44 = add i32 %43, %38
  %45 = getelementptr inbounds i8, ptr %24, i64 1
  store i8 -96, ptr %45, align 1, !tbaa !25
  %46 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 20
  %47 = load i32, ptr %46, align 4, !tbaa !42
  switch i32 %47, label %51 [
    i32 -2, label %73
    i32 -1, label %74
    i32 1, label %75
    i32 2, label %76
  ]

48:                                               ; preds = %1888, %1885
  %49 = phi i32 [ %1886, %1885 ], [ %1893, %1888 ]
  %50 = phi ptr [ %1680, %1885 ], [ %1892, %1888 ]
  br label %51

51:                                               ; preds = %48, %1344, %1376, %2
  %52 = phi i8 [ %10, %2 ], [ %1091, %1376 ], [ %1091, %1344 ], [ %1663, %48 ]
  %53 = phi i32 [ %38, %2 ], [ %1379, %1376 ], [ 0, %1344 ], [ %49, %48 ]
  %54 = phi ptr [ %36, %2 ], [ %1377, %1376 ], [ %1345, %1344 ], [ %50, %48 ]
  %55 = phi i32 [ %32, %2 ], [ %1306, %1376 ], [ %1306, %1344 ], [ %1877, %48 ]
  %56 = phi i32 [ %30, %2 ], [ %1307, %1376 ], [ %1307, %1344 ], [ %1878, %48 ]
  %57 = phi ptr [ %26, %2 ], [ %1308, %1376 ], [ %1308, %1344 ], [ %1879, %48 ]
  %58 = phi i32 [ %44, %2 ], [ %1312, %1376 ], [ %1312, %1344 ], [ %1883, %48 ]
  %59 = phi i32 [ undef, %2 ], [ %1380, %1376 ], [ 0, %1344 ], [ %1880, %48 ]
  %60 = icmp sgt i32 %58, %14
  br i1 %60, label %61, label %77

61:                                               ; preds = %51
  %62 = ptrtoint ptr %28 to i64
  %63 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 3
  %64 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 3
  %65 = ptrtoint ptr %28 to i64
  %66 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 3
  %67 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 3
  %68 = ptrtoint ptr %28 to i64
  %69 = ptrtoint ptr %28 to i64
  %70 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 3
  %71 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 3
  %72 = ptrtoint ptr %18 to i64
  br label %87

73:                                               ; preds = %2
  store i32 0, ptr %46, align 4, !tbaa !42
  br label %194

74:                                               ; preds = %2
  store i32 0, ptr %46, align 4, !tbaa !42
  br label %1662

75:                                               ; preds = %2
  store i32 0, ptr %46, align 4, !tbaa !42
  br label %1090

76:                                               ; preds = %2
  store i32 0, ptr %46, align 4, !tbaa !42
  br label %178

77:                                               ; preds = %846, %51
  %78 = phi i8 [ %52, %51 ], [ %851, %846 ]
  %79 = phi i32 [ %53, %51 ], [ %847, %846 ]
  %80 = phi ptr [ %54, %51 ], [ %848, %846 ]
  %81 = phi i32 [ %55, %51 ], [ %425, %846 ]
  %82 = phi i32 [ %56, %51 ], [ %426, %846 ]
  %83 = phi ptr [ %57, %51 ], [ %427, %846 ]
  %84 = phi i32 [ %58, %51 ], [ %772, %846 ]
  %85 = icmp slt i32 %84, %14
  %86 = select i1 %85, i32 -2, i32 1
  br label %853

87:                                               ; preds = %61, %846
  %88 = phi i32 [ %59, %61 ], [ %428, %846 ]
  %89 = phi i32 [ %58, %61 ], [ %772, %846 ]
  %90 = phi ptr [ %57, %61 ], [ %427, %846 ]
  %91 = phi i32 [ %56, %61 ], [ %426, %846 ]
  %92 = phi i32 [ %55, %61 ], [ %425, %846 ]
  %93 = phi ptr [ %54, %61 ], [ %848, %846 ]
  %94 = phi i32 [ %53, %61 ], [ %847, %846 ]
  %95 = phi i8 [ %52, %61 ], [ %851, %846 ]
  %96 = icmp slt i32 %92, 3
  br i1 %96, label %97, label %165

97:                                               ; preds = %87
  %98 = ptrtoint ptr %90 to i64
  %99 = sub i64 %62, %98
  %100 = icmp slt i64 %99, 3
  br i1 %100, label %101, label %123

101:                                              ; preds = %97
  %102 = icmp ult ptr %90, %28
  br i1 %102, label %103, label %118

103:                                              ; preds = %101
  %104 = getelementptr inbounds i8, ptr %90, i64 1
  %105 = load i8, ptr %104, align 1, !tbaa !25
  %106 = load i32, ptr %64, align 8, !tbaa !46
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %103
  %109 = zext i8 %105 to i64
  %110 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %109
  %111 = load i8, ptr %110, align 1, !tbaa !25
  br label %112

112:                                              ; preds = %108, %103
  %113 = phi i8 [ %111, %108 ], [ %105, %103 ]
  %114 = zext i8 %113 to i32
  %115 = shl i32 %91, 8
  %116 = or disjoint i32 %115, %114
  %117 = add nsw i32 %92, 8
  br label %118

118:                                              ; preds = %101, %112
  %119 = phi i32 [ %117, %112 ], [ %92, %101 ]
  %120 = phi i32 [ %116, %112 ], [ %91, %101 ]
  %121 = phi ptr [ %104, %112 ], [ %90, %101 ]
  %122 = phi i32 [ 0, %112 ], [ 13, %101 ]
  switch i32 %122, label %1897 [
    i32 0, label %165
    i32 13, label %853
  ]

123:                                              ; preds = %97
  %124 = load i32, ptr %63, align 8, !tbaa !46
  %125 = icmp eq i32 %124, 0
  %126 = shl i32 %91, 24
  %127 = getelementptr inbounds i8, ptr %90, i64 1
  %128 = load i8, ptr %127, align 1, !tbaa !25
  br i1 %125, label %147, label %129

129:                                              ; preds = %123
  %130 = zext i8 %128 to i64
  %131 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !25
  %133 = zext i8 %132 to i32
  %134 = shl nuw nsw i32 %133, 16
  %135 = getelementptr inbounds i8, ptr %90, i64 2
  %136 = load i8, ptr %135, align 1, !tbaa !25
  %137 = zext i8 %136 to i64
  %138 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %137
  %139 = load i8, ptr %138, align 1, !tbaa !25
  %140 = zext i8 %139 to i32
  %141 = shl nuw nsw i32 %140, 8
  %142 = or disjoint i32 %134, %141
  %143 = getelementptr inbounds i8, ptr %90, i64 3
  %144 = load i8, ptr %143, align 1, !tbaa !25
  %145 = zext i8 %144 to i64
  %146 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %145
  br label %156

147:                                              ; preds = %123
  %148 = zext i8 %128 to i32
  %149 = shl nuw nsw i32 %148, 16
  %150 = getelementptr inbounds i8, ptr %90, i64 2
  %151 = load i8, ptr %150, align 1, !tbaa !25
  %152 = zext i8 %151 to i32
  %153 = shl nuw nsw i32 %152, 8
  %154 = or disjoint i32 %149, %153
  %155 = getelementptr inbounds i8, ptr %90, i64 3
  br label %156

156:                                              ; preds = %147, %129
  %157 = phi ptr [ %155, %147 ], [ %146, %129 ]
  %158 = phi i32 [ %154, %147 ], [ %142, %129 ]
  %159 = or disjoint i32 %158, %126
  %160 = load i8, ptr %157, align 1, !tbaa !25
  %161 = zext i8 %160 to i32
  %162 = or disjoint i32 %159, %161
  %163 = add nsw i32 %92, 24
  %164 = getelementptr inbounds i8, ptr %90, i64 3
  br label %165

165:                                              ; preds = %156, %118, %87
  %166 = phi i32 [ %119, %118 ], [ %163, %156 ], [ %92, %87 ]
  %167 = phi i32 [ %120, %118 ], [ %162, %156 ], [ %91, %87 ]
  %168 = phi ptr [ %121, %118 ], [ %164, %156 ], [ %90, %87 ]
  %169 = add nsw i32 %166, -3
  %170 = lshr i32 %167, %169
  %171 = and i32 %170, 7
  switch i32 %171, label %172 [
    i32 2, label %424
    i32 3, label %174
    i32 1, label %175
    i32 0, label %210
  ]

172:                                              ; preds = %165
  %173 = add nsw i32 %166, -1
  br label %424

174:                                              ; preds = %165
  br label %424

175:                                              ; preds = %165
  %176 = zext i8 %95 to i32
  %177 = icmp eq i32 %6, %176
  br i1 %177, label %194, label %178

178:                                              ; preds = %76, %175
  %179 = phi i8 [ %10, %76 ], [ %95, %175 ]
  %180 = phi i32 [ %38, %76 ], [ %94, %175 ]
  %181 = phi ptr [ %36, %76 ], [ %93, %175 ]
  %182 = phi i32 [ %32, %76 ], [ %169, %175 ]
  %183 = phi i32 [ %30, %76 ], [ %167, %175 ]
  %184 = phi ptr [ %26, %76 ], [ %168, %175 ]
  %185 = phi i32 [ %44, %76 ], [ %89, %175 ]
  %186 = phi i32 [ undef, %76 ], [ %88, %175 ]
  %187 = ptrtoint ptr %28 to i64
  %188 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 3
  %189 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 3
  %190 = ptrtoint ptr %28 to i64
  %191 = ptrtoint ptr %28 to i64
  %192 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 3
  %193 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 3
  br label %1386

194:                                              ; preds = %73, %175
  %195 = phi i8 [ %10, %73 ], [ %95, %175 ]
  %196 = phi i32 [ %38, %73 ], [ %94, %175 ]
  %197 = phi ptr [ %36, %73 ], [ %93, %175 ]
  %198 = phi i32 [ %32, %73 ], [ %169, %175 ]
  %199 = phi i32 [ %30, %73 ], [ %167, %175 ]
  %200 = phi ptr [ %26, %73 ], [ %168, %175 ]
  %201 = phi i32 [ %44, %73 ], [ %89, %175 ]
  %202 = phi i32 [ undef, %73 ], [ %88, %175 ]
  %203 = ptrtoint ptr %28 to i64
  %204 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 3
  %205 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 3
  %206 = ptrtoint ptr %28 to i64
  %207 = ptrtoint ptr %28 to i64
  %208 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 3
  %209 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 3
  br label %873

210:                                              ; preds = %165
  %211 = icmp slt i32 %166, 7
  br i1 %211, label %212, label %280

212:                                              ; preds = %210
  %213 = ptrtoint ptr %168 to i64
  %214 = sub i64 %65, %213
  %215 = icmp slt i64 %214, 3
  br i1 %215, label %216, label %238

216:                                              ; preds = %212
  %217 = icmp ult ptr %168, %28
  br i1 %217, label %218, label %233

218:                                              ; preds = %216
  %219 = getelementptr inbounds i8, ptr %168, i64 1
  %220 = load i8, ptr %219, align 1, !tbaa !25
  %221 = load i32, ptr %67, align 8, !tbaa !46
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %227, label %223

223:                                              ; preds = %218
  %224 = zext i8 %220 to i64
  %225 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %224
  %226 = load i8, ptr %225, align 1, !tbaa !25
  br label %227

227:                                              ; preds = %223, %218
  %228 = phi i8 [ %226, %223 ], [ %220, %218 ]
  %229 = zext i8 %228 to i32
  %230 = shl i32 %167, 8
  %231 = or disjoint i32 %230, %229
  %232 = add nsw i32 %166, 8
  br label %233

233:                                              ; preds = %216, %227
  %234 = phi i32 [ %232, %227 ], [ %166, %216 ]
  %235 = phi i32 [ %231, %227 ], [ %167, %216 ]
  %236 = phi ptr [ %219, %227 ], [ %168, %216 ]
  %237 = phi i32 [ 0, %227 ], [ 13, %216 ]
  br i1 %217, label %280, label %402

238:                                              ; preds = %212
  %239 = load i32, ptr %66, align 8, !tbaa !46
  %240 = icmp eq i32 %239, 0
  %241 = shl i32 %167, 24
  %242 = getelementptr inbounds i8, ptr %168, i64 1
  %243 = load i8, ptr %242, align 1, !tbaa !25
  br i1 %240, label %262, label %244

244:                                              ; preds = %238
  %245 = zext i8 %243 to i64
  %246 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %245
  %247 = load i8, ptr %246, align 1, !tbaa !25
  %248 = zext i8 %247 to i32
  %249 = shl nuw nsw i32 %248, 16
  %250 = getelementptr inbounds i8, ptr %168, i64 2
  %251 = load i8, ptr %250, align 1, !tbaa !25
  %252 = zext i8 %251 to i64
  %253 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %252
  %254 = load i8, ptr %253, align 1, !tbaa !25
  %255 = zext i8 %254 to i32
  %256 = shl nuw nsw i32 %255, 8
  %257 = or disjoint i32 %249, %256
  %258 = getelementptr inbounds i8, ptr %168, i64 3
  %259 = load i8, ptr %258, align 1, !tbaa !25
  %260 = zext i8 %259 to i64
  %261 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %260
  br label %271

262:                                              ; preds = %238
  %263 = zext i8 %243 to i32
  %264 = shl nuw nsw i32 %263, 16
  %265 = getelementptr inbounds i8, ptr %168, i64 2
  %266 = load i8, ptr %265, align 1, !tbaa !25
  %267 = zext i8 %266 to i32
  %268 = shl nuw nsw i32 %267, 8
  %269 = or disjoint i32 %264, %268
  %270 = getelementptr inbounds i8, ptr %168, i64 3
  br label %271

271:                                              ; preds = %262, %244
  %272 = phi ptr [ %270, %262 ], [ %261, %244 ]
  %273 = phi i32 [ %269, %262 ], [ %257, %244 ]
  %274 = or disjoint i32 %273, %241
  %275 = load i8, ptr %272, align 1, !tbaa !25
  %276 = zext i8 %275 to i32
  %277 = or disjoint i32 %274, %276
  %278 = add nsw i32 %166, 24
  %279 = getelementptr inbounds i8, ptr %168, i64 3
  br label %280

280:                                              ; preds = %271, %233, %210
  %281 = phi i32 [ %234, %233 ], [ %278, %271 ], [ %166, %210 ]
  %282 = phi i32 [ %235, %233 ], [ %277, %271 ], [ %167, %210 ]
  %283 = phi ptr [ %236, %233 ], [ %279, %271 ], [ %168, %210 ]
  %284 = add nsw i32 %281, -7
  %285 = lshr i32 %282, %284
  %286 = and i32 %285, 127
  %287 = zext nneg i32 %286 to i64
  %288 = getelementptr inbounds [0 x %struct.hcd_code_s], ptr @cf_2d_decode, i64 0, i64 %287
  %289 = getelementptr inbounds [0 x %struct.hcd_code_s], ptr @cf_2d_decode, i64 0, i64 %287, i32 1
  %290 = load i16, ptr %289, align 2, !tbaa !48
  %291 = zext i16 %290 to i32
  %292 = icmp ugt i16 %290, 7
  br i1 %292, label %293, label %393

293:                                              ; preds = %280
  %294 = icmp slt i32 %281, %291
  br i1 %294, label %295, label %303

295:                                              ; preds = %293
  %296 = ptrtoint ptr %283 to i64
  %297 = sub i64 %68, %296
  %298 = xor i32 %281, -1
  %299 = add i32 %291, %298
  %300 = ashr i32 %299, 3
  %301 = sext i32 %300 to i64
  %302 = icmp sgt i64 %297, %301
  br i1 %302, label %303, label %402

303:                                              ; preds = %295, %293
  %304 = add nsw i32 %291, -7
  br i1 %294, label %305, label %373

305:                                              ; preds = %303
  %306 = ptrtoint ptr %283 to i64
  %307 = sub i64 %69, %306
  %308 = icmp slt i64 %307, 3
  br i1 %308, label %309, label %331

309:                                              ; preds = %305
  %310 = icmp ult ptr %283, %28
  br i1 %310, label %311, label %326

311:                                              ; preds = %309
  %312 = getelementptr inbounds i8, ptr %283, i64 1
  %313 = load i8, ptr %312, align 1, !tbaa !25
  %314 = load i32, ptr %71, align 8, !tbaa !46
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %320, label %316

316:                                              ; preds = %311
  %317 = zext i8 %313 to i64
  %318 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %317
  %319 = load i8, ptr %318, align 1, !tbaa !25
  br label %320

320:                                              ; preds = %316, %311
  %321 = phi i8 [ %319, %316 ], [ %313, %311 ]
  %322 = zext i8 %321 to i32
  %323 = shl i32 %282, 8
  %324 = or disjoint i32 %323, %322
  %325 = add nsw i32 %281, 1
  br label %326

326:                                              ; preds = %309, %320
  %327 = phi i32 [ %325, %320 ], [ %284, %309 ]
  %328 = phi i32 [ %324, %320 ], [ %282, %309 ]
  %329 = phi ptr [ %312, %320 ], [ %283, %309 ]
  %330 = phi i32 [ 0, %320 ], [ 13, %309 ]
  br i1 %310, label %373, label %402

331:                                              ; preds = %305
  %332 = load i32, ptr %70, align 8, !tbaa !46
  %333 = icmp eq i32 %332, 0
  %334 = shl i32 %282, 24
  %335 = getelementptr inbounds i8, ptr %283, i64 1
  %336 = load i8, ptr %335, align 1, !tbaa !25
  br i1 %333, label %355, label %337

337:                                              ; preds = %331
  %338 = zext i8 %336 to i64
  %339 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %338
  %340 = load i8, ptr %339, align 1, !tbaa !25
  %341 = zext i8 %340 to i32
  %342 = shl nuw nsw i32 %341, 16
  %343 = getelementptr inbounds i8, ptr %283, i64 2
  %344 = load i8, ptr %343, align 1, !tbaa !25
  %345 = zext i8 %344 to i64
  %346 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %345
  %347 = load i8, ptr %346, align 1, !tbaa !25
  %348 = zext i8 %347 to i32
  %349 = shl nuw nsw i32 %348, 8
  %350 = or disjoint i32 %342, %349
  %351 = getelementptr inbounds i8, ptr %283, i64 3
  %352 = load i8, ptr %351, align 1, !tbaa !25
  %353 = zext i8 %352 to i64
  %354 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %353
  br label %364

355:                                              ; preds = %331
  %356 = zext i8 %336 to i32
  %357 = shl nuw nsw i32 %356, 16
  %358 = getelementptr inbounds i8, ptr %283, i64 2
  %359 = load i8, ptr %358, align 1, !tbaa !25
  %360 = zext i8 %359 to i32
  %361 = shl nuw nsw i32 %360, 8
  %362 = or disjoint i32 %357, %361
  %363 = getelementptr inbounds i8, ptr %283, i64 3
  br label %364

364:                                              ; preds = %355, %337
  %365 = phi ptr [ %363, %355 ], [ %354, %337 ]
  %366 = phi i32 [ %362, %355 ], [ %350, %337 ]
  %367 = or disjoint i32 %366, %334
  %368 = load i8, ptr %365, align 1, !tbaa !25
  %369 = zext i8 %368 to i32
  %370 = or disjoint i32 %367, %369
  %371 = add nsw i32 %281, 17
  %372 = getelementptr inbounds i8, ptr %283, i64 3
  br label %373

373:                                              ; preds = %364, %326, %303
  %374 = phi i32 [ %327, %326 ], [ %371, %364 ], [ %284, %303 ]
  %375 = phi i32 [ %328, %326 ], [ %370, %364 ], [ %282, %303 ]
  %376 = phi ptr [ %329, %326 ], [ %372, %364 ], [ %283, %303 ]
  %377 = load i16, ptr %288, align 2, !tbaa !51
  %378 = sext i16 %377 to i32
  %379 = sub nsw i32 %374, %304
  %380 = lshr i32 %375, %379
  %381 = zext nneg i32 %304 to i64
  %382 = getelementptr inbounds [9 x i8], ptr @byte_right_mask, i64 0, i64 %381
  %383 = load i8, ptr %382, align 1, !tbaa !25
  %384 = zext i8 %383 to i32
  %385 = and i32 %380, %384
  %386 = add nsw i32 %385, %378
  %387 = zext i32 %386 to i64
  %388 = getelementptr inbounds [0 x %struct.hcd_code_s], ptr @cf_2d_decode, i64 0, i64 %387
  %389 = getelementptr inbounds [0 x %struct.hcd_code_s], ptr @cf_2d_decode, i64 0, i64 %387, i32 1
  %390 = load i16, ptr %389, align 2, !tbaa !48
  %391 = zext i16 %390 to i32
  %392 = sub nsw i32 %374, %391
  br label %395

393:                                              ; preds = %280
  %394 = sub nsw i32 %281, %291
  br label %395

395:                                              ; preds = %393, %373
  %396 = phi i32 [ %392, %373 ], [ %394, %393 ]
  %397 = phi i32 [ %375, %373 ], [ %282, %393 ]
  %398 = phi ptr [ %376, %373 ], [ %283, %393 ]
  %399 = phi ptr [ %388, %373 ], [ %288, %393 ]
  %400 = load i16, ptr %399, align 2, !tbaa !51
  %401 = sext i16 %400 to i32
  br label %402

402:                                              ; preds = %295, %233, %326, %395
  %403 = phi i32 [ %396, %395 ], [ %327, %326 ], [ %234, %233 ], [ %281, %295 ]
  %404 = phi i32 [ %397, %395 ], [ %328, %326 ], [ %235, %233 ], [ %282, %295 ]
  %405 = phi ptr [ %398, %395 ], [ %329, %326 ], [ %236, %233 ], [ %283, %295 ]
  %406 = phi i32 [ %401, %395 ], [ %88, %326 ], [ %88, %233 ], [ %88, %295 ]
  %407 = phi i32 [ 0, %395 ], [ %330, %326 ], [ %237, %233 ], [ 13, %295 ]
  switch i32 %407, label %1897 [
    i32 0, label %408
    i32 13, label %853
  ]

408:                                              ; preds = %402
  %409 = icmp slt i32 %406, 0
  br i1 %409, label %410, label %424

410:                                              ; preds = %408
  switch i32 %406, label %853 [
    i32 -4, label %424
    i32 -3, label %411
  ]

411:                                              ; preds = %410
  %412 = ashr i32 %403, 3
  %413 = sub nsw i32 0, %412
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i8, ptr %405, i64 %414
  store ptr %415, ptr %1, align 8, !tbaa !36
  %416 = and i32 %403, -8
  %417 = lshr i32 %404, %416
  store i32 %417, ptr %29, align 4, !tbaa !15
  %418 = and i32 %403, 7
  store i32 %418, ptr %31, align 8, !tbaa !16
  %419 = load ptr, ptr %17, align 8, !tbaa !22
  %420 = ptrtoint ptr %93 to i64
  %421 = ptrtoint ptr %419 to i64
  %422 = sub i64 %420, %421
  %423 = trunc i64 %422 to i32
  store i32 %423, ptr %33, align 4, !tbaa !31
  store i32 %94, ptr %37, align 8, !tbaa !41
  br label %853

424:                                              ; preds = %165, %408, %410, %174, %172
  %425 = phi i32 [ %173, %172 ], [ %403, %410 ], [ %403, %408 ], [ %169, %174 ], [ %169, %165 ]
  %426 = phi i32 [ %167, %172 ], [ %404, %410 ], [ %404, %408 ], [ %167, %174 ], [ %167, %165 ]
  %427 = phi ptr [ %168, %172 ], [ %405, %410 ], [ %405, %408 ], [ %168, %174 ], [ %168, %165 ]
  %428 = phi i32 [ 3, %172 ], [ %406, %410 ], [ %406, %408 ], [ 2, %174 ], [ 4, %165 ]
  %429 = ptrtoint ptr %93 to i64
  %430 = sub i64 %429, %72
  %431 = getelementptr inbounds i8, ptr %21, i64 %430
  %432 = and i32 %89, 7
  %433 = icmp eq i32 %432, 0
  %434 = zext i1 %433 to i64
  %435 = getelementptr inbounds i8, ptr %431, i64 %434
  %436 = getelementptr inbounds i8, ptr %435, i64 -1
  %437 = load i8, ptr %436, align 1, !tbaa !25
  %438 = zext i8 %95 to i32
  %439 = xor i8 %437, %95
  %440 = zext nneg i32 %432 to i64
  %441 = getelementptr inbounds [8 x i8], ptr @cf_decode_2d.count_bit, i64 0, i64 %440
  %442 = load i8, ptr %441, align 1, !tbaa !25
  %443 = and i8 %439, %442
  %444 = icmp eq i8 %443, 0
  br i1 %444, label %545, label %445

445:                                              ; preds = %424
  %446 = icmp sge i32 %89, %25
  %447 = icmp eq i32 %6, %438
  %448 = select i1 %446, i1 %447, i1 false
  br i1 %448, label %545, label %449

449:                                              ; preds = %445
  %450 = getelementptr inbounds [8 x ptr], ptr @byte_bit_run_length_neg, i64 0, i64 %440
  %451 = load ptr, ptr %450, align 8, !tbaa !54
  %452 = zext i8 %439 to i64
  %453 = getelementptr inbounds i8, ptr %451, i64 %452
  %454 = load i8, ptr %453, align 1, !tbaa !25
  %455 = zext i8 %454 to i32
  %456 = icmp ugt i8 %454, 7
  br i1 %456, label %457, label %539

457:                                              ; preds = %449
  %458 = icmp eq i8 %95, 0
  %459 = load i8, ptr %435, align 1, !tbaa !25
  br i1 %458, label %462, label %460

460:                                              ; preds = %457
  %461 = icmp eq i8 %459, 0
  br i1 %461, label %500, label %493

462:                                              ; preds = %457
  %463 = icmp eq i8 %459, -1
  br i1 %463, label %470, label %464

464:                                              ; preds = %489, %462
  %465 = phi ptr [ %435, %462 ], [ %486, %489 ]
  %466 = phi i32 [ %455, %462 ], [ %490, %489 ]
  %467 = phi i8 [ %459, %462 ], [ %491, %489 ]
  %468 = getelementptr inbounds i8, ptr %465, i64 1
  %469 = add nsw i32 %466, -8
  br label %530

470:                                              ; preds = %462, %489
  %471 = phi i32 [ %490, %489 ], [ %455, %462 ]
  %472 = phi ptr [ %486, %489 ], [ %435, %462 ]
  %473 = getelementptr inbounds i8, ptr %472, i64 1
  %474 = load i8, ptr %473, align 1, !tbaa !25
  %475 = icmp eq i8 %474, -1
  %476 = getelementptr inbounds i8, ptr %472, i64 2
  br i1 %475, label %477, label %530

477:                                              ; preds = %470
  %478 = load i8, ptr %476, align 1, !tbaa !25
  %479 = icmp eq i8 %478, -1
  %480 = getelementptr inbounds i8, ptr %472, i64 3
  br i1 %479, label %483, label %481

481:                                              ; preds = %477
  %482 = add nuw nsw i32 %471, 8
  br label %530

483:                                              ; preds = %477
  %484 = load i8, ptr %480, align 1, !tbaa !25
  %485 = icmp eq i8 %484, -1
  %486 = getelementptr inbounds i8, ptr %472, i64 4
  br i1 %485, label %489, label %487

487:                                              ; preds = %483
  %488 = add nuw nsw i32 %471, 16
  br label %530

489:                                              ; preds = %483
  %490 = add nuw nsw i32 %471, 32
  %491 = load i8, ptr %486, align 1, !tbaa !25
  %492 = icmp eq i8 %491, -1
  br i1 %492, label %470, label %464, !llvm.loop !57

493:                                              ; preds = %525, %460
  %494 = phi ptr [ %435, %460 ], [ %526, %525 ]
  %495 = phi i32 [ %455, %460 ], [ %527, %525 ]
  %496 = phi i8 [ %459, %460 ], [ %528, %525 ]
  %497 = xor i8 %496, -1
  %498 = getelementptr inbounds i8, ptr %494, i64 1
  %499 = add nsw i32 %495, -8
  br label %530

500:                                              ; preds = %460, %525
  %501 = phi i32 [ %527, %525 ], [ %455, %460 ]
  %502 = phi ptr [ %526, %525 ], [ %435, %460 ]
  %503 = getelementptr inbounds i8, ptr %502, i64 1
  %504 = load i8, ptr %503, align 1, !tbaa !25
  %505 = icmp eq i8 %504, 0
  br i1 %505, label %509, label %506

506:                                              ; preds = %500
  %507 = xor i8 %504, -1
  %508 = getelementptr inbounds i8, ptr %502, i64 2
  br label %530

509:                                              ; preds = %500
  %510 = getelementptr inbounds i8, ptr %502, i64 2
  %511 = load i8, ptr %510, align 1, !tbaa !25
  %512 = icmp eq i8 %511, 0
  br i1 %512, label %517, label %513

513:                                              ; preds = %509
  %514 = xor i8 %511, -1
  %515 = getelementptr inbounds i8, ptr %502, i64 3
  %516 = add nuw nsw i32 %501, 8
  br label %530

517:                                              ; preds = %509
  %518 = getelementptr inbounds i8, ptr %502, i64 3
  %519 = load i8, ptr %518, align 1, !tbaa !25
  %520 = icmp eq i8 %519, 0
  br i1 %520, label %525, label %521

521:                                              ; preds = %517
  %522 = xor i8 %519, -1
  %523 = getelementptr inbounds i8, ptr %502, i64 4
  %524 = add nuw nsw i32 %501, 16
  br label %530

525:                                              ; preds = %517
  %526 = getelementptr inbounds i8, ptr %502, i64 4
  %527 = add nuw nsw i32 %501, 32
  %528 = load i8, ptr %526, align 1, !tbaa !25
  %529 = icmp eq i8 %528, 0
  br i1 %529, label %500, label %493, !llvm.loop !58

530:                                              ; preds = %470, %493, %506, %513, %521, %464, %481, %487
  %531 = phi i8 [ %467, %464 ], [ %478, %481 ], [ %484, %487 ], [ %497, %493 ], [ %507, %506 ], [ %514, %513 ], [ %522, %521 ], [ %474, %470 ]
  %532 = phi ptr [ %468, %464 ], [ %480, %481 ], [ %486, %487 ], [ %498, %493 ], [ %508, %506 ], [ %515, %513 ], [ %523, %521 ], [ %476, %470 ]
  %533 = phi i32 [ %469, %464 ], [ %482, %481 ], [ %488, %487 ], [ %499, %493 ], [ %501, %506 ], [ %516, %513 ], [ %524, %521 ], [ %471, %470 ]
  %534 = zext i8 %531 to i64
  %535 = getelementptr inbounds [256 x i8], ptr @byte_bit_run_length_0, i64 0, i64 %534
  %536 = load i8, ptr %535, align 1, !tbaa !25
  %537 = zext i8 %536 to i32
  %538 = add nsw i32 %533, %537
  br label %539

539:                                              ; preds = %530, %449
  %540 = phi i8 [ %531, %530 ], [ %439, %449 ]
  %541 = phi ptr [ %532, %530 ], [ %435, %449 ]
  %542 = phi i32 [ %538, %530 ], [ %455, %449 ]
  %543 = sub nsw i32 %89, %542
  %544 = tail call i32 @llvm.smax.i32(i32 %543, i32 %14)
  br label %545

545:                                              ; preds = %539, %445, %424
  %546 = phi i32 [ %89, %424 ], [ %89, %445 ], [ %544, %539 ]
  %547 = phi i8 [ %439, %424 ], [ %439, %445 ], [ %540, %539 ]
  %548 = phi ptr [ %435, %424 ], [ %435, %445 ], [ %541, %539 ]
  %549 = icmp eq i32 %546, %14
  br i1 %549, label %673, label %550

550:                                              ; preds = %545
  %551 = and i32 %546, 7
  %552 = zext nneg i32 %551 to i64
  %553 = getelementptr inbounds [8 x ptr], ptr @byte_bit_run_length_neg, i64 0, i64 %552
  %554 = load ptr, ptr %553, align 8, !tbaa !54
  %555 = xor i8 %547, -1
  %556 = zext i8 %555 to i64
  %557 = getelementptr inbounds i8, ptr %554, i64 %556
  %558 = load i8, ptr %557, align 1, !tbaa !25
  %559 = zext i8 %558 to i32
  %560 = icmp ugt i8 %558, 7
  br i1 %560, label %561, label %667

561:                                              ; preds = %550
  %562 = icmp eq i8 %95, 0
  %563 = load i8, ptr %548, align 1, !tbaa !25
  br i1 %562, label %564, label %607

564:                                              ; preds = %561
  %565 = icmp eq i8 %563, 0
  %566 = getelementptr inbounds i8, ptr %548, i64 1
  br i1 %565, label %569, label %567

567:                                              ; preds = %564
  %568 = add nsw i32 %559, -8
  br label %657

569:                                              ; preds = %564
  %570 = load i8, ptr %566, align 1, !tbaa !25
  %571 = icmp eq i8 %570, 0
  br i1 %571, label %574, label %572

572:                                              ; preds = %569
  %573 = getelementptr inbounds i8, ptr %548, i64 2
  br label %657

574:                                              ; preds = %569, %574
  %575 = phi ptr [ %582, %574 ], [ %548, %569 ]
  %576 = phi i32 [ %589, %574 ], [ %559, %569 ]
  %577 = getelementptr inbounds i8, ptr %575, i64 2
  %578 = load i8, ptr %577, align 1, !tbaa !25
  %579 = getelementptr inbounds i8, ptr %575, i64 3
  %580 = load i8, ptr %579, align 1, !tbaa !25
  %581 = or i8 %580, %578
  %582 = getelementptr inbounds i8, ptr %575, i64 4
  %583 = load i8, ptr %582, align 1, !tbaa !25
  %584 = or i8 %581, %583
  %585 = getelementptr inbounds i8, ptr %575, i64 5
  %586 = load i8, ptr %585, align 1, !tbaa !25
  %587 = or i8 %584, %586
  %588 = icmp eq i8 %587, 0
  %589 = add nuw nsw i32 %576, 32
  br i1 %588, label %574, label %590, !llvm.loop !59

590:                                              ; preds = %574
  %591 = getelementptr inbounds i8, ptr %575, i64 5
  %592 = icmp eq i8 %578, 0
  br i1 %592, label %596, label %593

593:                                              ; preds = %590
  %594 = getelementptr inbounds i8, ptr %575, i64 3
  %595 = add nuw nsw i32 %576, 8
  br label %657

596:                                              ; preds = %590
  %597 = icmp eq i8 %580, 0
  br i1 %597, label %600, label %598

598:                                              ; preds = %596
  %599 = add nuw nsw i32 %576, 16
  br label %657

600:                                              ; preds = %596
  %601 = icmp eq i8 %583, 0
  br i1 %601, label %604, label %602

602:                                              ; preds = %600
  %603 = add nuw nsw i32 %576, 24
  br label %657

604:                                              ; preds = %600
  %605 = getelementptr inbounds i8, ptr %575, i64 6
  %606 = add nuw nsw i32 %576, 32
  br label %657

607:                                              ; preds = %561
  %608 = icmp eq i8 %563, -1
  br i1 %608, label %613, label %609

609:                                              ; preds = %607
  %610 = xor i8 %563, -1
  %611 = getelementptr inbounds i8, ptr %548, i64 1
  %612 = add nsw i32 %559, -8
  br label %657

613:                                              ; preds = %607
  %614 = getelementptr inbounds i8, ptr %548, i64 1
  %615 = load i8, ptr %614, align 1, !tbaa !25
  %616 = icmp eq i8 %615, -1
  br i1 %616, label %620, label %617

617:                                              ; preds = %613
  %618 = xor i8 %615, -1
  %619 = getelementptr inbounds i8, ptr %548, i64 2
  br label %657

620:                                              ; preds = %613, %620
  %621 = phi ptr [ %627, %620 ], [ %548, %613 ]
  %622 = phi i32 [ %635, %620 ], [ %559, %613 ]
  %623 = getelementptr inbounds i8, ptr %621, i64 2
  %624 = load i8, ptr %623, align 1, !tbaa !25
  %625 = getelementptr inbounds i8, ptr %621, i64 3
  %626 = load i8, ptr %625, align 1, !tbaa !25
  %627 = getelementptr inbounds i8, ptr %621, i64 4
  %628 = load i8, ptr %627, align 1, !tbaa !25
  %629 = getelementptr inbounds i8, ptr %621, i64 5
  %630 = load i8, ptr %629, align 1, !tbaa !25
  %631 = and i8 %626, %624
  %632 = and i8 %631, %628
  %633 = and i8 %632, %630
  %634 = icmp eq i8 %633, -1
  %635 = add nuw nsw i32 %622, 32
  br i1 %634, label %620, label %636, !llvm.loop !60

636:                                              ; preds = %620
  %637 = getelementptr inbounds i8, ptr %621, i64 5
  %638 = icmp eq i8 %624, -1
  br i1 %638, label %643, label %639

639:                                              ; preds = %636
  %640 = getelementptr inbounds i8, ptr %621, i64 3
  %641 = xor i8 %624, -1
  %642 = add nuw nsw i32 %622, 8
  br label %657

643:                                              ; preds = %636
  %644 = icmp eq i8 %626, -1
  br i1 %644, label %648, label %645

645:                                              ; preds = %643
  %646 = xor i8 %626, -1
  %647 = add nuw nsw i32 %622, 16
  br label %657

648:                                              ; preds = %643
  %649 = icmp eq i8 %628, -1
  br i1 %649, label %653, label %650

650:                                              ; preds = %648
  %651 = xor i8 %628, -1
  %652 = add nuw nsw i32 %622, 24
  br label %657

653:                                              ; preds = %648
  %654 = xor i8 %630, -1
  %655 = getelementptr inbounds i8, ptr %621, i64 6
  %656 = add nuw nsw i32 %622, 32
  br label %657

657:                                              ; preds = %609, %639, %650, %653, %645, %617, %567, %593, %602, %604, %598, %572
  %658 = phi i8 [ %563, %567 ], [ %570, %572 ], [ %578, %593 ], [ %580, %598 ], [ %583, %602 ], [ %586, %604 ], [ %610, %609 ], [ %618, %617 ], [ %641, %639 ], [ %646, %645 ], [ %651, %650 ], [ %654, %653 ]
  %659 = phi ptr [ %566, %567 ], [ %573, %572 ], [ %594, %593 ], [ %582, %598 ], [ %591, %602 ], [ %605, %604 ], [ %611, %609 ], [ %619, %617 ], [ %640, %639 ], [ %627, %645 ], [ %637, %650 ], [ %655, %653 ]
  %660 = phi i32 [ %568, %567 ], [ %559, %572 ], [ %595, %593 ], [ %599, %598 ], [ %603, %602 ], [ %606, %604 ], [ %612, %609 ], [ %559, %617 ], [ %642, %639 ], [ %647, %645 ], [ %652, %650 ], [ %656, %653 ]
  %661 = xor i8 %658, -1
  %662 = zext i8 %661 to i64
  %663 = getelementptr inbounds [256 x i8], ptr @byte_bit_run_length_0, i64 0, i64 %662
  %664 = load i8, ptr %663, align 1, !tbaa !25
  %665 = zext i8 %664 to i32
  %666 = add nsw i32 %660, %665
  br label %667

667:                                              ; preds = %657, %550
  %668 = phi i8 [ %658, %657 ], [ %547, %550 ]
  %669 = phi ptr [ %659, %657 ], [ %548, %550 ]
  %670 = phi i32 [ %666, %657 ], [ %559, %550 ]
  %671 = sub nsw i32 %546, %670
  %672 = tail call i32 @llvm.smax.i32(i32 %671, i32 %14)
  br label %673

673:                                              ; preds = %667, %545
  %674 = phi i32 [ %546, %545 ], [ %672, %667 ]
  %675 = phi i8 [ %547, %545 ], [ %668, %667 ]
  %676 = phi ptr [ %548, %545 ], [ %669, %667 ]
  %677 = icmp eq i32 %428, -4
  br i1 %677, label %678, label %768

678:                                              ; preds = %673
  %679 = icmp eq i32 %674, %14
  br i1 %679, label %771, label %680

680:                                              ; preds = %678
  %681 = and i32 %674, 7
  %682 = zext nneg i32 %681 to i64
  %683 = getelementptr inbounds [8 x ptr], ptr @byte_bit_run_length_neg, i64 0, i64 %682
  %684 = load ptr, ptr %683, align 8, !tbaa !54
  %685 = zext i8 %675 to i64
  %686 = getelementptr inbounds i8, ptr %684, i64 %685
  %687 = load i8, ptr %686, align 1, !tbaa !25
  %688 = zext i8 %687 to i32
  %689 = icmp ugt i8 %687, 7
  br i1 %689, label %690, label %764

690:                                              ; preds = %680
  %691 = icmp eq i8 %95, 0
  %692 = load i8, ptr %676, align 1, !tbaa !25
  br i1 %691, label %695, label %693

693:                                              ; preds = %690
  %694 = icmp eq i8 %692, 0
  br i1 %694, label %729, label %724

695:                                              ; preds = %690
  %696 = icmp eq i8 %692, -1
  br i1 %696, label %701, label %697

697:                                              ; preds = %719, %695
  %698 = phi i32 [ %688, %695 ], [ %721, %719 ]
  %699 = phi i8 [ %692, %695 ], [ %722, %719 ]
  %700 = add nsw i32 %698, -8
  br label %756

701:                                              ; preds = %695, %719
  %702 = phi i32 [ %721, %719 ], [ %688, %695 ]
  %703 = phi ptr [ %720, %719 ], [ %676, %695 ]
  %704 = getelementptr inbounds i8, ptr %703, i64 1
  %705 = load i8, ptr %704, align 1, !tbaa !25
  %706 = icmp eq i8 %705, -1
  br i1 %706, label %707, label %756

707:                                              ; preds = %701
  %708 = getelementptr inbounds i8, ptr %703, i64 2
  %709 = load i8, ptr %708, align 1, !tbaa !25
  %710 = icmp eq i8 %709, -1
  br i1 %710, label %713, label %711

711:                                              ; preds = %707
  %712 = add nuw nsw i32 %702, 8
  br label %756

713:                                              ; preds = %707
  %714 = getelementptr inbounds i8, ptr %703, i64 3
  %715 = load i8, ptr %714, align 1, !tbaa !25
  %716 = icmp eq i8 %715, -1
  br i1 %716, label %719, label %717

717:                                              ; preds = %713
  %718 = add nuw nsw i32 %702, 16
  br label %756

719:                                              ; preds = %713
  %720 = getelementptr inbounds i8, ptr %703, i64 4
  %721 = add nuw nsw i32 %702, 32
  %722 = load i8, ptr %720, align 1, !tbaa !25
  %723 = icmp eq i8 %722, -1
  br i1 %723, label %701, label %697, !llvm.loop !61

724:                                              ; preds = %751, %693
  %725 = phi i32 [ %688, %693 ], [ %753, %751 ]
  %726 = phi i8 [ %692, %693 ], [ %754, %751 ]
  %727 = xor i8 %726, -1
  %728 = add nsw i32 %725, -8
  br label %756

729:                                              ; preds = %693, %751
  %730 = phi i32 [ %753, %751 ], [ %688, %693 ]
  %731 = phi ptr [ %752, %751 ], [ %676, %693 ]
  %732 = getelementptr inbounds i8, ptr %731, i64 1
  %733 = load i8, ptr %732, align 1, !tbaa !25
  %734 = icmp eq i8 %733, 0
  br i1 %734, label %737, label %735

735:                                              ; preds = %729
  %736 = xor i8 %733, -1
  br label %756

737:                                              ; preds = %729
  %738 = getelementptr inbounds i8, ptr %731, i64 2
  %739 = load i8, ptr %738, align 1, !tbaa !25
  %740 = icmp eq i8 %739, 0
  br i1 %740, label %744, label %741

741:                                              ; preds = %737
  %742 = xor i8 %739, -1
  %743 = add nuw nsw i32 %730, 8
  br label %756

744:                                              ; preds = %737
  %745 = getelementptr inbounds i8, ptr %731, i64 3
  %746 = load i8, ptr %745, align 1, !tbaa !25
  %747 = icmp eq i8 %746, 0
  br i1 %747, label %751, label %748

748:                                              ; preds = %744
  %749 = xor i8 %746, -1
  %750 = add nuw nsw i32 %730, 16
  br label %756

751:                                              ; preds = %744
  %752 = getelementptr inbounds i8, ptr %731, i64 4
  %753 = add nuw nsw i32 %730, 32
  %754 = load i8, ptr %752, align 1, !tbaa !25
  %755 = icmp eq i8 %754, 0
  br i1 %755, label %729, label %724, !llvm.loop !62

756:                                              ; preds = %701, %724, %735, %741, %748, %697, %711, %717
  %757 = phi i8 [ %699, %697 ], [ %709, %711 ], [ %715, %717 ], [ %727, %724 ], [ %736, %735 ], [ %742, %741 ], [ %749, %748 ], [ %705, %701 ]
  %758 = phi i32 [ %700, %697 ], [ %712, %711 ], [ %718, %717 ], [ %728, %724 ], [ %730, %735 ], [ %743, %741 ], [ %750, %748 ], [ %702, %701 ]
  %759 = zext i8 %757 to i64
  %760 = getelementptr inbounds [256 x i8], ptr @byte_bit_run_length_0, i64 0, i64 %759
  %761 = load i8, ptr %760, align 1, !tbaa !25
  %762 = zext i8 %761 to i32
  %763 = add nsw i32 %758, %762
  br label %764

764:                                              ; preds = %756, %680
  %765 = phi i32 [ %763, %756 ], [ %688, %680 ]
  %766 = sub nsw i32 %674, %765
  %767 = tail call i32 @llvm.smax.i32(i32 %766, i32 %14)
  br label %771

768:                                              ; preds = %673
  %769 = add i32 %428, -3
  %770 = add i32 %769, %674
  br label %771

771:                                              ; preds = %764, %678, %768
  %772 = phi i32 [ %674, %678 ], [ %770, %768 ], [ %767, %764 ]
  %773 = icmp eq i32 %6, %438
  br i1 %773, label %774, label %780

774:                                              ; preds = %771
  %775 = ashr i32 %772, 3
  %776 = sub nsw i32 0, %775
  %777 = sext i32 %776 to i64
  %778 = getelementptr inbounds i8, ptr %24, i64 %777
  %779 = and i32 %772, 7
  br label %846

780:                                              ; preds = %771
  %781 = sub nsw i32 %89, %772
  %782 = icmp sgt i32 %781, %94
  br i1 %782, label %783, label %838

783:                                              ; preds = %780
  %784 = shl nsw i32 -1, %94
  %785 = getelementptr inbounds i8, ptr %93, i64 1
  %786 = load i8, ptr %93, align 1, !tbaa !25
  %787 = trunc i32 %784 to i8
  %788 = xor i8 %786, %787
  %789 = xor i8 %788, -1
  store i8 %789, ptr %93, align 1, !tbaa !25
  %790 = sub nsw i32 %781, %94
  %791 = ashr i32 %790, 3
  switch i32 %791, label %825 [
    i32 7, label %792
    i32 6, label %796
    i32 5, label %799
    i32 4, label %802
    i32 3, label %805
    i32 2, label %808
    i32 1, label %811
    i32 0, label %817
  ]

792:                                              ; preds = %783
  %793 = icmp sgt i32 %781, 63
  br i1 %793, label %825, label %794

794:                                              ; preds = %792
  %795 = getelementptr inbounds i8, ptr %93, i64 2
  store i8 %8, ptr %785, align 1, !tbaa !25
  br label %796

796:                                              ; preds = %783, %794
  %797 = phi ptr [ %785, %783 ], [ %795, %794 ]
  %798 = getelementptr inbounds i8, ptr %797, i64 1
  store i8 %8, ptr %797, align 1, !tbaa !25
  br label %799

799:                                              ; preds = %783, %796
  %800 = phi ptr [ %785, %783 ], [ %798, %796 ]
  %801 = getelementptr inbounds i8, ptr %800, i64 1
  store i8 %8, ptr %800, align 1, !tbaa !25
  br label %802

802:                                              ; preds = %783, %799
  %803 = phi ptr [ %785, %783 ], [ %801, %799 ]
  %804 = getelementptr inbounds i8, ptr %803, i64 1
  store i8 %8, ptr %803, align 1, !tbaa !25
  br label %805

805:                                              ; preds = %783, %802
  %806 = phi ptr [ %785, %783 ], [ %804, %802 ]
  %807 = getelementptr inbounds i8, ptr %806, i64 1
  store i8 %8, ptr %806, align 1, !tbaa !25
  br label %808

808:                                              ; preds = %783, %805
  %809 = phi ptr [ %785, %783 ], [ %807, %805 ]
  %810 = getelementptr inbounds i8, ptr %809, i64 1
  store i8 %8, ptr %809, align 1, !tbaa !25
  br label %811

811:                                              ; preds = %783, %808
  %812 = phi ptr [ %785, %783 ], [ %810, %808 ]
  store i8 %8, ptr %812, align 1, !tbaa !25
  %813 = and i32 %790, 7
  %814 = icmp eq i32 %813, 0
  br i1 %814, label %846, label %815

815:                                              ; preds = %811
  %816 = getelementptr inbounds i8, ptr %812, i64 1
  br label %817

817:                                              ; preds = %783, %815
  %818 = phi ptr [ %785, %783 ], [ %816, %815 ]
  %819 = phi i32 [ %790, %783 ], [ %813, %815 ]
  %820 = sub nsw i32 8, %819
  %821 = shl i32 255, %820
  %822 = load i8, ptr %818, align 1, !tbaa !25
  %823 = trunc i32 %821 to i8
  %824 = xor i8 %822, %823
  store i8 %824, ptr %818, align 1, !tbaa !25
  br label %846

825:                                              ; preds = %783, %792
  %826 = sext i32 %791 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %785, i8 %8, i64 %826, i1 false)
  %827 = getelementptr inbounds i8, ptr %785, i64 %826
  %828 = and i32 %790, 7
  %829 = icmp eq i32 %828, 0
  br i1 %829, label %830, label %832

830:                                              ; preds = %825
  %831 = getelementptr inbounds i8, ptr %827, i64 -1
  br label %846

832:                                              ; preds = %825
  %833 = sub nuw nsw i32 8, %828
  %834 = shl nuw nsw i32 255, %833
  %835 = load i8, ptr %827, align 1, !tbaa !25
  %836 = trunc i32 %834 to i8
  %837 = xor i8 %835, %836
  store i8 %837, ptr %827, align 1, !tbaa !25
  br label %846

838:                                              ; preds = %780
  %839 = sub nsw i32 %94, %781
  %840 = shl nsw i32 -1, %781
  %841 = xor i32 %840, -1
  %842 = shl i32 %841, %839
  %843 = load i8, ptr %93, align 1, !tbaa !25
  %844 = trunc i32 %842 to i8
  %845 = xor i8 %843, %844
  store i8 %845, ptr %93, align 1, !tbaa !25
  br label %846

846:                                              ; preds = %811, %838, %832, %830, %817, %774
  %847 = phi i32 [ %779, %774 ], [ %833, %832 ], [ 0, %830 ], [ %820, %817 ], [ %839, %838 ], [ 0, %811 ]
  %848 = phi ptr [ %778, %774 ], [ %827, %832 ], [ %831, %830 ], [ %818, %817 ], [ %93, %838 ], [ %812, %811 ]
  %849 = icmp sgt i32 %428, -1
  %850 = sext i1 %849 to i8
  %851 = xor i8 %95, %850
  %852 = icmp sgt i32 %772, %14
  br i1 %852, label %87, label %77

853:                                              ; preds = %118, %402, %410, %1591, %1882, %1077, %1311, %1384, %1385, %1895, %1896, %411, %77
  %854 = phi i8 [ %78, %77 ], [ %95, %411 ], [ %195, %1384 ], [ %1091, %1385 ], [ %179, %1895 ], [ %1663, %1896 ], [ %1091, %1311 ], [ %195, %1077 ], [ %1663, %1882 ], [ %179, %1591 ], [ %95, %410 ], [ %95, %402 ], [ %95, %118 ]
  %855 = phi i32 [ %79, %77 ], [ %94, %411 ], [ %874, %1384 ], [ %1107, %1385 ], [ %1387, %1895 ], [ %1679, %1896 ], [ %1107, %1311 ], [ %874, %1077 ], [ %1679, %1882 ], [ %1387, %1591 ], [ %94, %410 ], [ %94, %402 ], [ %94, %118 ]
  %856 = phi ptr [ %80, %77 ], [ %93, %411 ], [ %875, %1384 ], [ %1108, %1385 ], [ %1388, %1895 ], [ %1680, %1896 ], [ %1108, %1311 ], [ %875, %1077 ], [ %1680, %1882 ], [ %1388, %1591 ], [ %93, %410 ], [ %93, %402 ], [ %93, %118 ]
  %857 = phi i32 [ %81, %77 ], [ %418, %411 ], [ %1072, %1384 ], [ %1306, %1385 ], [ %1586, %1895 ], [ %1877, %1896 ], [ %1306, %1311 ], [ %1072, %1077 ], [ %1877, %1882 ], [ %1586, %1591 ], [ %119, %118 ], [ %403, %402 ], [ %403, %410 ]
  %858 = phi i32 [ %82, %77 ], [ %417, %411 ], [ %1073, %1384 ], [ %1307, %1385 ], [ %1587, %1895 ], [ %1878, %1896 ], [ %1307, %1311 ], [ %1073, %1077 ], [ %1878, %1882 ], [ %1587, %1591 ], [ %120, %118 ], [ %404, %402 ], [ %404, %410 ]
  %859 = phi ptr [ %83, %77 ], [ %415, %411 ], [ %1074, %1384 ], [ %1308, %1385 ], [ %1588, %1895 ], [ %1879, %1896 ], [ %1308, %1311 ], [ %1074, %1077 ], [ %1879, %1882 ], [ %1588, %1591 ], [ %121, %118 ], [ %405, %402 ], [ %405, %410 ]
  %860 = phi i32 [ %86, %77 ], [ -2, %411 ], [ 0, %1384 ], [ 0, %1385 ], [ 0, %1895 ], [ 0, %1896 ], [ -2, %1311 ], [ -2, %1077 ], [ -2, %1882 ], [ -2, %1591 ], [ 0, %118 ], [ 0, %402 ], [ -2, %410 ]
  %861 = ashr i32 %857, 3
  %862 = sub nsw i32 0, %861
  %863 = sext i32 %862 to i64
  %864 = getelementptr inbounds i8, ptr %859, i64 %863
  store ptr %864, ptr %1, align 8, !tbaa !36
  %865 = and i32 %857, -8
  %866 = lshr i32 %858, %865
  store i32 %866, ptr %29, align 4, !tbaa !15
  %867 = and i32 %857, 7
  store i32 %867, ptr %31, align 8, !tbaa !16
  %868 = load ptr, ptr %17, align 8, !tbaa !22
  %869 = ptrtoint ptr %856 to i64
  %870 = ptrtoint ptr %868 to i64
  %871 = sub i64 %869, %870
  %872 = trunc i64 %871 to i32
  store i32 %872, ptr %33, align 4, !tbaa !31
  store i32 %855, ptr %37, align 8, !tbaa !41
  store i8 %854, ptr %9, align 4, !tbaa !34
  br label %1897

873:                                              ; preds = %194, %1083
  %874 = phi i32 [ %1088, %1083 ], [ %196, %194 ]
  %875 = phi ptr [ %1087, %1083 ], [ %197, %194 ]
  %876 = phi i32 [ %1072, %1083 ], [ %198, %194 ]
  %877 = phi i32 [ %1073, %1083 ], [ %199, %194 ]
  %878 = phi ptr [ %1074, %1083 ], [ %200, %194 ]
  %879 = phi i32 [ %1078, %1083 ], [ %201, %194 ]
  %880 = phi i32 [ %1075, %1083 ], [ %202, %194 ]
  %881 = icmp slt i32 %876, 8
  br i1 %881, label %882, label %950

882:                                              ; preds = %873
  %883 = ptrtoint ptr %878 to i64
  %884 = sub i64 %203, %883
  %885 = icmp slt i64 %884, 3
  br i1 %885, label %886, label %908

886:                                              ; preds = %882
  %887 = icmp ult ptr %878, %28
  br i1 %887, label %888, label %903

888:                                              ; preds = %886
  %889 = getelementptr inbounds i8, ptr %878, i64 1
  %890 = load i8, ptr %889, align 1, !tbaa !25
  %891 = load i32, ptr %205, align 8, !tbaa !46
  %892 = icmp eq i32 %891, 0
  br i1 %892, label %897, label %893

893:                                              ; preds = %888
  %894 = zext i8 %890 to i64
  %895 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %894
  %896 = load i8, ptr %895, align 1, !tbaa !25
  br label %897

897:                                              ; preds = %893, %888
  %898 = phi i8 [ %896, %893 ], [ %890, %888 ]
  %899 = zext i8 %898 to i32
  %900 = shl i32 %877, 8
  %901 = or disjoint i32 %900, %899
  %902 = add nsw i32 %876, 8
  br label %903

903:                                              ; preds = %886, %897
  %904 = phi i32 [ %902, %897 ], [ %876, %886 ]
  %905 = phi i32 [ %901, %897 ], [ %877, %886 ]
  %906 = phi ptr [ %889, %897 ], [ %878, %886 ]
  %907 = phi i32 [ 0, %897 ], [ 54, %886 ]
  br i1 %887, label %950, label %1071

908:                                              ; preds = %882
  %909 = load i32, ptr %204, align 8, !tbaa !46
  %910 = icmp eq i32 %909, 0
  %911 = shl i32 %877, 24
  %912 = getelementptr inbounds i8, ptr %878, i64 1
  %913 = load i8, ptr %912, align 1, !tbaa !25
  br i1 %910, label %932, label %914

914:                                              ; preds = %908
  %915 = zext i8 %913 to i64
  %916 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %915
  %917 = load i8, ptr %916, align 1, !tbaa !25
  %918 = zext i8 %917 to i32
  %919 = shl nuw nsw i32 %918, 16
  %920 = getelementptr inbounds i8, ptr %878, i64 2
  %921 = load i8, ptr %920, align 1, !tbaa !25
  %922 = zext i8 %921 to i64
  %923 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %922
  %924 = load i8, ptr %923, align 1, !tbaa !25
  %925 = zext i8 %924 to i32
  %926 = shl nuw nsw i32 %925, 8
  %927 = or disjoint i32 %919, %926
  %928 = getelementptr inbounds i8, ptr %878, i64 3
  %929 = load i8, ptr %928, align 1, !tbaa !25
  %930 = zext i8 %929 to i64
  %931 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %930
  br label %941

932:                                              ; preds = %908
  %933 = zext i8 %913 to i32
  %934 = shl nuw nsw i32 %933, 16
  %935 = getelementptr inbounds i8, ptr %878, i64 2
  %936 = load i8, ptr %935, align 1, !tbaa !25
  %937 = zext i8 %936 to i32
  %938 = shl nuw nsw i32 %937, 8
  %939 = or disjoint i32 %934, %938
  %940 = getelementptr inbounds i8, ptr %878, i64 3
  br label %941

941:                                              ; preds = %932, %914
  %942 = phi ptr [ %940, %932 ], [ %931, %914 ]
  %943 = phi i32 [ %939, %932 ], [ %927, %914 ]
  %944 = or disjoint i32 %943, %911
  %945 = load i8, ptr %942, align 1, !tbaa !25
  %946 = zext i8 %945 to i32
  %947 = or disjoint i32 %944, %946
  %948 = add nsw i32 %876, 24
  %949 = getelementptr inbounds i8, ptr %878, i64 3
  br label %950

950:                                              ; preds = %941, %903, %873
  %951 = phi i32 [ %904, %903 ], [ %948, %941 ], [ %876, %873 ]
  %952 = phi i32 [ %905, %903 ], [ %947, %941 ], [ %877, %873 ]
  %953 = phi ptr [ %906, %903 ], [ %949, %941 ], [ %878, %873 ]
  %954 = add nsw i32 %951, -8
  %955 = lshr i32 %952, %954
  %956 = and i32 %955, 255
  %957 = zext nneg i32 %956 to i64
  %958 = getelementptr inbounds [0 x %struct.hcd_code_s], ptr @cf_white_decode, i64 0, i64 %957
  %959 = getelementptr inbounds [0 x %struct.hcd_code_s], ptr @cf_white_decode, i64 0, i64 %957, i32 1
  %960 = load i16, ptr %959, align 2, !tbaa !48
  %961 = zext i16 %960 to i32
  %962 = icmp ugt i16 %960, 8
  br i1 %962, label %963, label %1062

963:                                              ; preds = %950
  %964 = icmp slt i32 %951, %961
  br i1 %964, label %965, label %973

965:                                              ; preds = %963
  %966 = ptrtoint ptr %953 to i64
  %967 = sub i64 %206, %966
  %968 = xor i32 %951, -1
  %969 = add i32 %961, %968
  %970 = ashr i32 %969, 3
  %971 = sext i32 %970 to i64
  %972 = icmp sgt i64 %967, %971
  br i1 %972, label %973, label %1071

973:                                              ; preds = %965, %963
  %974 = add nsw i32 %961, -8
  br i1 %964, label %975, label %1042

975:                                              ; preds = %973
  %976 = ptrtoint ptr %953 to i64
  %977 = sub i64 %207, %976
  %978 = icmp slt i64 %977, 3
  br i1 %978, label %979, label %1000

979:                                              ; preds = %975
  %980 = icmp ult ptr %953, %28
  br i1 %980, label %981, label %995

981:                                              ; preds = %979
  %982 = getelementptr inbounds i8, ptr %953, i64 1
  %983 = load i8, ptr %982, align 1, !tbaa !25
  %984 = load i32, ptr %209, align 8, !tbaa !46
  %985 = icmp eq i32 %984, 0
  br i1 %985, label %990, label %986

986:                                              ; preds = %981
  %987 = zext i8 %983 to i64
  %988 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %987
  %989 = load i8, ptr %988, align 1, !tbaa !25
  br label %990

990:                                              ; preds = %986, %981
  %991 = phi i8 [ %989, %986 ], [ %983, %981 ]
  %992 = zext i8 %991 to i32
  %993 = shl i32 %952, 8
  %994 = or disjoint i32 %993, %992
  br label %995

995:                                              ; preds = %979, %990
  %996 = phi i32 [ %951, %990 ], [ %954, %979 ]
  %997 = phi i32 [ %994, %990 ], [ %952, %979 ]
  %998 = phi ptr [ %982, %990 ], [ %953, %979 ]
  %999 = phi i32 [ 0, %990 ], [ 54, %979 ]
  br i1 %980, label %1042, label %1071

1000:                                             ; preds = %975
  %1001 = load i32, ptr %208, align 8, !tbaa !46
  %1002 = icmp eq i32 %1001, 0
  %1003 = shl i32 %952, 24
  %1004 = getelementptr inbounds i8, ptr %953, i64 1
  %1005 = load i8, ptr %1004, align 1, !tbaa !25
  br i1 %1002, label %1024, label %1006

1006:                                             ; preds = %1000
  %1007 = zext i8 %1005 to i64
  %1008 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %1007
  %1009 = load i8, ptr %1008, align 1, !tbaa !25
  %1010 = zext i8 %1009 to i32
  %1011 = shl nuw nsw i32 %1010, 16
  %1012 = getelementptr inbounds i8, ptr %953, i64 2
  %1013 = load i8, ptr %1012, align 1, !tbaa !25
  %1014 = zext i8 %1013 to i64
  %1015 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %1014
  %1016 = load i8, ptr %1015, align 1, !tbaa !25
  %1017 = zext i8 %1016 to i32
  %1018 = shl nuw nsw i32 %1017, 8
  %1019 = or disjoint i32 %1011, %1018
  %1020 = getelementptr inbounds i8, ptr %953, i64 3
  %1021 = load i8, ptr %1020, align 1, !tbaa !25
  %1022 = zext i8 %1021 to i64
  %1023 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %1022
  br label %1033

1024:                                             ; preds = %1000
  %1025 = zext i8 %1005 to i32
  %1026 = shl nuw nsw i32 %1025, 16
  %1027 = getelementptr inbounds i8, ptr %953, i64 2
  %1028 = load i8, ptr %1027, align 1, !tbaa !25
  %1029 = zext i8 %1028 to i32
  %1030 = shl nuw nsw i32 %1029, 8
  %1031 = or disjoint i32 %1026, %1030
  %1032 = getelementptr inbounds i8, ptr %953, i64 3
  br label %1033

1033:                                             ; preds = %1024, %1006
  %1034 = phi ptr [ %1032, %1024 ], [ %1023, %1006 ]
  %1035 = phi i32 [ %1031, %1024 ], [ %1019, %1006 ]
  %1036 = or disjoint i32 %1035, %1003
  %1037 = load i8, ptr %1034, align 1, !tbaa !25
  %1038 = zext i8 %1037 to i32
  %1039 = or disjoint i32 %1036, %1038
  %1040 = add nsw i32 %951, 16
  %1041 = getelementptr inbounds i8, ptr %953, i64 3
  br label %1042

1042:                                             ; preds = %1033, %995, %973
  %1043 = phi i32 [ %996, %995 ], [ %1040, %1033 ], [ %954, %973 ]
  %1044 = phi i32 [ %997, %995 ], [ %1039, %1033 ], [ %952, %973 ]
  %1045 = phi ptr [ %998, %995 ], [ %1041, %1033 ], [ %953, %973 ]
  %1046 = load i16, ptr %958, align 2, !tbaa !51
  %1047 = sext i16 %1046 to i32
  %1048 = sub nsw i32 %1043, %974
  %1049 = lshr i32 %1044, %1048
  %1050 = zext nneg i32 %974 to i64
  %1051 = getelementptr inbounds [9 x i8], ptr @byte_right_mask, i64 0, i64 %1050
  %1052 = load i8, ptr %1051, align 1, !tbaa !25
  %1053 = zext i8 %1052 to i32
  %1054 = and i32 %1049, %1053
  %1055 = add nsw i32 %1054, %1047
  %1056 = zext i32 %1055 to i64
  %1057 = getelementptr inbounds [0 x %struct.hcd_code_s], ptr @cf_white_decode, i64 0, i64 %1056
  %1058 = getelementptr inbounds [0 x %struct.hcd_code_s], ptr @cf_white_decode, i64 0, i64 %1056, i32 1
  %1059 = load i16, ptr %1058, align 2, !tbaa !48
  %1060 = zext i16 %1059 to i32
  %1061 = sub nsw i32 %1043, %1060
  br label %1064

1062:                                             ; preds = %950
  %1063 = sub nsw i32 %951, %961
  br label %1064

1064:                                             ; preds = %1062, %1042
  %1065 = phi i32 [ %1061, %1042 ], [ %1063, %1062 ]
  %1066 = phi i32 [ %1044, %1042 ], [ %952, %1062 ]
  %1067 = phi ptr [ %1045, %1042 ], [ %953, %1062 ]
  %1068 = phi ptr [ %1057, %1042 ], [ %958, %1062 ]
  %1069 = load i16, ptr %1068, align 2, !tbaa !51
  %1070 = sext i16 %1069 to i32
  br label %1071

1071:                                             ; preds = %965, %903, %995, %1064
  %1072 = phi i32 [ %1065, %1064 ], [ %996, %995 ], [ %904, %903 ], [ %951, %965 ]
  %1073 = phi i32 [ %1066, %1064 ], [ %997, %995 ], [ %905, %903 ], [ %952, %965 ]
  %1074 = phi ptr [ %1067, %1064 ], [ %998, %995 ], [ %906, %903 ], [ %953, %965 ]
  %1075 = phi i32 [ %1070, %1064 ], [ %880, %995 ], [ %880, %903 ], [ %880, %965 ]
  %1076 = phi i32 [ 0, %1064 ], [ %999, %995 ], [ %907, %903 ], [ 54, %965 ]
  switch i32 %1076, label %1897 [
    i32 0, label %1077
    i32 54, label %1384
  ]

1077:                                             ; preds = %1071
  %1078 = sub nsw i32 %879, %1075
  %1079 = icmp slt i32 %1078, %14
  br i1 %1079, label %853, label %1080

1080:                                             ; preds = %1077
  %1081 = sub nsw i32 %874, %1075
  %1082 = icmp slt i32 %1081, 0
  br i1 %1082, label %1083, label %1090

1083:                                             ; preds = %1080
  %1084 = ashr i32 %1081, 3
  %1085 = sub nsw i32 0, %1084
  %1086 = zext nneg i32 %1085 to i64
  %1087 = getelementptr inbounds i8, ptr %875, i64 %1086
  %1088 = and i32 %1081, 7
  %1089 = icmp sgt i32 %1075, 63
  br i1 %1089, label %873, label %1090

1090:                                             ; preds = %1080, %1083, %75
  %1091 = phi i8 [ %10, %75 ], [ %195, %1083 ], [ %195, %1080 ]
  %1092 = phi i32 [ %38, %75 ], [ %1081, %1080 ], [ %1088, %1083 ]
  %1093 = phi ptr [ %36, %75 ], [ %875, %1080 ], [ %1087, %1083 ]
  %1094 = phi i32 [ %32, %75 ], [ %1072, %1083 ], [ %1072, %1080 ]
  %1095 = phi i32 [ %30, %75 ], [ %1073, %1083 ], [ %1073, %1080 ]
  %1096 = phi ptr [ %26, %75 ], [ %1074, %1083 ], [ %1074, %1080 ]
  %1097 = phi i32 [ %44, %75 ], [ %1078, %1083 ], [ %1078, %1080 ]
  %1098 = phi i32 [ undef, %75 ], [ %1075, %1083 ], [ %1075, %1080 ]
  %1099 = ptrtoint ptr %28 to i64
  %1100 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 3
  %1101 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 3
  %1102 = ptrtoint ptr %28 to i64
  %1103 = ptrtoint ptr %28 to i64
  %1104 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 3
  %1105 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 3
  br label %1106

1106:                                             ; preds = %1368, %1090
  %1107 = phi i32 [ %1092, %1090 ], [ %1369, %1368 ]
  %1108 = phi ptr [ %1093, %1090 ], [ %1370, %1368 ]
  %1109 = phi i32 [ %1094, %1090 ], [ %1306, %1368 ]
  %1110 = phi i32 [ %1095, %1090 ], [ %1307, %1368 ]
  %1111 = phi ptr [ %1096, %1090 ], [ %1308, %1368 ]
  %1112 = phi i32 [ %1097, %1090 ], [ %1312, %1368 ]
  %1113 = phi i32 [ %1098, %1090 ], [ %1358, %1368 ]
  %1114 = icmp slt i32 %1109, 7
  br i1 %1114, label %1115, label %1183

1115:                                             ; preds = %1106
  %1116 = ptrtoint ptr %1111 to i64
  %1117 = sub i64 %1099, %1116
  %1118 = icmp slt i64 %1117, 3
  br i1 %1118, label %1119, label %1141

1119:                                             ; preds = %1115
  %1120 = icmp ult ptr %1111, %28
  br i1 %1120, label %1121, label %1136

1121:                                             ; preds = %1119
  %1122 = getelementptr inbounds i8, ptr %1111, i64 1
  %1123 = load i8, ptr %1122, align 1, !tbaa !25
  %1124 = load i32, ptr %1101, align 8, !tbaa !46
  %1125 = icmp eq i32 %1124, 0
  br i1 %1125, label %1130, label %1126

1126:                                             ; preds = %1121
  %1127 = zext i8 %1123 to i64
  %1128 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %1127
  %1129 = load i8, ptr %1128, align 1, !tbaa !25
  br label %1130

1130:                                             ; preds = %1126, %1121
  %1131 = phi i8 [ %1129, %1126 ], [ %1123, %1121 ]
  %1132 = zext i8 %1131 to i32
  %1133 = shl i32 %1110, 8
  %1134 = or disjoint i32 %1133, %1132
  %1135 = add nsw i32 %1109, 8
  br label %1136

1136:                                             ; preds = %1119, %1130
  %1137 = phi i32 [ %1135, %1130 ], [ %1109, %1119 ]
  %1138 = phi i32 [ %1134, %1130 ], [ %1110, %1119 ]
  %1139 = phi ptr [ %1122, %1130 ], [ %1111, %1119 ]
  %1140 = phi i32 [ 0, %1130 ], [ 59, %1119 ]
  br i1 %1120, label %1183, label %1305

1141:                                             ; preds = %1115
  %1142 = load i32, ptr %1100, align 8, !tbaa !46
  %1143 = icmp eq i32 %1142, 0
  %1144 = shl i32 %1110, 24
  %1145 = getelementptr inbounds i8, ptr %1111, i64 1
  %1146 = load i8, ptr %1145, align 1, !tbaa !25
  br i1 %1143, label %1165, label %1147

1147:                                             ; preds = %1141
  %1148 = zext i8 %1146 to i64
  %1149 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %1148
  %1150 = load i8, ptr %1149, align 1, !tbaa !25
  %1151 = zext i8 %1150 to i32
  %1152 = shl nuw nsw i32 %1151, 16
  %1153 = getelementptr inbounds i8, ptr %1111, i64 2
  %1154 = load i8, ptr %1153, align 1, !tbaa !25
  %1155 = zext i8 %1154 to i64
  %1156 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %1155
  %1157 = load i8, ptr %1156, align 1, !tbaa !25
  %1158 = zext i8 %1157 to i32
  %1159 = shl nuw nsw i32 %1158, 8
  %1160 = or disjoint i32 %1152, %1159
  %1161 = getelementptr inbounds i8, ptr %1111, i64 3
  %1162 = load i8, ptr %1161, align 1, !tbaa !25
  %1163 = zext i8 %1162 to i64
  %1164 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %1163
  br label %1174

1165:                                             ; preds = %1141
  %1166 = zext i8 %1146 to i32
  %1167 = shl nuw nsw i32 %1166, 16
  %1168 = getelementptr inbounds i8, ptr %1111, i64 2
  %1169 = load i8, ptr %1168, align 1, !tbaa !25
  %1170 = zext i8 %1169 to i32
  %1171 = shl nuw nsw i32 %1170, 8
  %1172 = or disjoint i32 %1167, %1171
  %1173 = getelementptr inbounds i8, ptr %1111, i64 3
  br label %1174

1174:                                             ; preds = %1165, %1147
  %1175 = phi ptr [ %1173, %1165 ], [ %1164, %1147 ]
  %1176 = phi i32 [ %1172, %1165 ], [ %1160, %1147 ]
  %1177 = or disjoint i32 %1176, %1144
  %1178 = load i8, ptr %1175, align 1, !tbaa !25
  %1179 = zext i8 %1178 to i32
  %1180 = or disjoint i32 %1177, %1179
  %1181 = add nsw i32 %1109, 24
  %1182 = getelementptr inbounds i8, ptr %1111, i64 3
  br label %1183

1183:                                             ; preds = %1174, %1136, %1106
  %1184 = phi i32 [ %1137, %1136 ], [ %1181, %1174 ], [ %1109, %1106 ]
  %1185 = phi i32 [ %1138, %1136 ], [ %1180, %1174 ], [ %1110, %1106 ]
  %1186 = phi ptr [ %1139, %1136 ], [ %1182, %1174 ], [ %1111, %1106 ]
  %1187 = add nsw i32 %1184, -7
  %1188 = lshr i32 %1185, %1187
  %1189 = and i32 %1188, 127
  %1190 = zext nneg i32 %1189 to i64
  %1191 = getelementptr inbounds [0 x %struct.hcd_code_s], ptr @cf_black_decode, i64 0, i64 %1190
  %1192 = getelementptr inbounds [0 x %struct.hcd_code_s], ptr @cf_black_decode, i64 0, i64 %1190, i32 1
  %1193 = load i16, ptr %1192, align 2, !tbaa !48
  %1194 = zext i16 %1193 to i32
  %1195 = icmp ugt i16 %1193, 7
  br i1 %1195, label %1196, label %1296

1196:                                             ; preds = %1183
  %1197 = icmp slt i32 %1184, %1194
  br i1 %1197, label %1198, label %1206

1198:                                             ; preds = %1196
  %1199 = ptrtoint ptr %1186 to i64
  %1200 = sub i64 %1102, %1199
  %1201 = xor i32 %1184, -1
  %1202 = add i32 %1194, %1201
  %1203 = ashr i32 %1202, 3
  %1204 = sext i32 %1203 to i64
  %1205 = icmp sgt i64 %1200, %1204
  br i1 %1205, label %1206, label %1305

1206:                                             ; preds = %1198, %1196
  %1207 = add nsw i32 %1194, -7
  br i1 %1197, label %1208, label %1276

1208:                                             ; preds = %1206
  %1209 = ptrtoint ptr %1186 to i64
  %1210 = sub i64 %1103, %1209
  %1211 = icmp slt i64 %1210, 3
  br i1 %1211, label %1212, label %1234

1212:                                             ; preds = %1208
  %1213 = icmp ult ptr %1186, %28
  br i1 %1213, label %1214, label %1229

1214:                                             ; preds = %1212
  %1215 = getelementptr inbounds i8, ptr %1186, i64 1
  %1216 = load i8, ptr %1215, align 1, !tbaa !25
  %1217 = load i32, ptr %1105, align 8, !tbaa !46
  %1218 = icmp eq i32 %1217, 0
  br i1 %1218, label %1223, label %1219

1219:                                             ; preds = %1214
  %1220 = zext i8 %1216 to i64
  %1221 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %1220
  %1222 = load i8, ptr %1221, align 1, !tbaa !25
  br label %1223

1223:                                             ; preds = %1219, %1214
  %1224 = phi i8 [ %1222, %1219 ], [ %1216, %1214 ]
  %1225 = zext i8 %1224 to i32
  %1226 = shl i32 %1185, 8
  %1227 = or disjoint i32 %1226, %1225
  %1228 = add nsw i32 %1184, 1
  br label %1229

1229:                                             ; preds = %1212, %1223
  %1230 = phi i32 [ %1228, %1223 ], [ %1187, %1212 ]
  %1231 = phi i32 [ %1227, %1223 ], [ %1185, %1212 ]
  %1232 = phi ptr [ %1215, %1223 ], [ %1186, %1212 ]
  %1233 = phi i32 [ 0, %1223 ], [ 59, %1212 ]
  br i1 %1213, label %1276, label %1305

1234:                                             ; preds = %1208
  %1235 = load i32, ptr %1104, align 8, !tbaa !46
  %1236 = icmp eq i32 %1235, 0
  %1237 = shl i32 %1185, 24
  %1238 = getelementptr inbounds i8, ptr %1186, i64 1
  %1239 = load i8, ptr %1238, align 1, !tbaa !25
  br i1 %1236, label %1258, label %1240

1240:                                             ; preds = %1234
  %1241 = zext i8 %1239 to i64
  %1242 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %1241
  %1243 = load i8, ptr %1242, align 1, !tbaa !25
  %1244 = zext i8 %1243 to i32
  %1245 = shl nuw nsw i32 %1244, 16
  %1246 = getelementptr inbounds i8, ptr %1186, i64 2
  %1247 = load i8, ptr %1246, align 1, !tbaa !25
  %1248 = zext i8 %1247 to i64
  %1249 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %1248
  %1250 = load i8, ptr %1249, align 1, !tbaa !25
  %1251 = zext i8 %1250 to i32
  %1252 = shl nuw nsw i32 %1251, 8
  %1253 = or disjoint i32 %1245, %1252
  %1254 = getelementptr inbounds i8, ptr %1186, i64 3
  %1255 = load i8, ptr %1254, align 1, !tbaa !25
  %1256 = zext i8 %1255 to i64
  %1257 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %1256
  br label %1267

1258:                                             ; preds = %1234
  %1259 = zext i8 %1239 to i32
  %1260 = shl nuw nsw i32 %1259, 16
  %1261 = getelementptr inbounds i8, ptr %1186, i64 2
  %1262 = load i8, ptr %1261, align 1, !tbaa !25
  %1263 = zext i8 %1262 to i32
  %1264 = shl nuw nsw i32 %1263, 8
  %1265 = or disjoint i32 %1260, %1264
  %1266 = getelementptr inbounds i8, ptr %1186, i64 3
  br label %1267

1267:                                             ; preds = %1258, %1240
  %1268 = phi ptr [ %1266, %1258 ], [ %1257, %1240 ]
  %1269 = phi i32 [ %1265, %1258 ], [ %1253, %1240 ]
  %1270 = or disjoint i32 %1269, %1237
  %1271 = load i8, ptr %1268, align 1, !tbaa !25
  %1272 = zext i8 %1271 to i32
  %1273 = or disjoint i32 %1270, %1272
  %1274 = add nsw i32 %1184, 17
  %1275 = getelementptr inbounds i8, ptr %1186, i64 3
  br label %1276

1276:                                             ; preds = %1267, %1229, %1206
  %1277 = phi i32 [ %1230, %1229 ], [ %1274, %1267 ], [ %1187, %1206 ]
  %1278 = phi i32 [ %1231, %1229 ], [ %1273, %1267 ], [ %1185, %1206 ]
  %1279 = phi ptr [ %1232, %1229 ], [ %1275, %1267 ], [ %1186, %1206 ]
  %1280 = load i16, ptr %1191, align 2, !tbaa !51
  %1281 = sext i16 %1280 to i32
  %1282 = sub nsw i32 %1277, %1207
  %1283 = lshr i32 %1278, %1282
  %1284 = zext nneg i32 %1207 to i64
  %1285 = getelementptr inbounds [9 x i8], ptr @byte_right_mask, i64 0, i64 %1284
  %1286 = load i8, ptr %1285, align 1, !tbaa !25
  %1287 = zext i8 %1286 to i32
  %1288 = and i32 %1283, %1287
  %1289 = add nsw i32 %1288, %1281
  %1290 = zext i32 %1289 to i64
  %1291 = getelementptr inbounds [0 x %struct.hcd_code_s], ptr @cf_black_decode, i64 0, i64 %1290
  %1292 = getelementptr inbounds [0 x %struct.hcd_code_s], ptr @cf_black_decode, i64 0, i64 %1290, i32 1
  %1293 = load i16, ptr %1292, align 2, !tbaa !48
  %1294 = zext i16 %1293 to i32
  %1295 = sub nsw i32 %1277, %1294
  br label %1298

1296:                                             ; preds = %1183
  %1297 = sub nsw i32 %1184, %1194
  br label %1298

1298:                                             ; preds = %1296, %1276
  %1299 = phi i32 [ %1295, %1276 ], [ %1297, %1296 ]
  %1300 = phi i32 [ %1278, %1276 ], [ %1185, %1296 ]
  %1301 = phi ptr [ %1279, %1276 ], [ %1186, %1296 ]
  %1302 = phi ptr [ %1291, %1276 ], [ %1191, %1296 ]
  %1303 = load i16, ptr %1302, align 2, !tbaa !51
  %1304 = sext i16 %1303 to i32
  br label %1305

1305:                                             ; preds = %1198, %1136, %1229, %1298
  %1306 = phi i32 [ %1299, %1298 ], [ %1230, %1229 ], [ %1137, %1136 ], [ %1184, %1198 ]
  %1307 = phi i32 [ %1300, %1298 ], [ %1231, %1229 ], [ %1138, %1136 ], [ %1185, %1198 ]
  %1308 = phi ptr [ %1301, %1298 ], [ %1232, %1229 ], [ %1139, %1136 ], [ %1186, %1198 ]
  %1309 = phi i32 [ %1304, %1298 ], [ %1113, %1229 ], [ %1113, %1136 ], [ %1113, %1198 ]
  %1310 = phi i32 [ 0, %1298 ], [ %1233, %1229 ], [ %1140, %1136 ], [ 59, %1198 ]
  switch i32 %1310, label %1897 [
    i32 0, label %1311
    i32 59, label %1385
  ]

1311:                                             ; preds = %1305
  %1312 = sub nsw i32 %1112, %1309
  %1313 = icmp slt i32 %1312, %14
  br i1 %1313, label %853, label %1314

1314:                                             ; preds = %1311
  %1315 = icmp sgt i32 %1309, %1107
  br i1 %1315, label %1316, label %1371

1316:                                             ; preds = %1314
  %1317 = shl nsw i32 -1, %1107
  %1318 = getelementptr inbounds i8, ptr %1108, i64 1
  %1319 = load i8, ptr %1108, align 1, !tbaa !25
  %1320 = trunc i32 %1317 to i8
  %1321 = xor i8 %1319, %1320
  %1322 = xor i8 %1321, -1
  store i8 %1322, ptr %1108, align 1, !tbaa !25
  %1323 = sub nsw i32 %1309, %1107
  %1324 = ashr i32 %1323, 3
  switch i32 %1324, label %1355 [
    i32 7, label %1325
    i32 6, label %1329
    i32 5, label %1332
    i32 4, label %1335
    i32 3, label %1338
    i32 2, label %1341
    i32 1, label %1344
    i32 0, label %1350
  ]

1325:                                             ; preds = %1316
  %1326 = icmp sgt i32 %1309, 63
  br i1 %1326, label %1355, label %1327

1327:                                             ; preds = %1325
  %1328 = getelementptr inbounds i8, ptr %1108, i64 2
  store i8 %8, ptr %1318, align 1, !tbaa !25
  br label %1329

1329:                                             ; preds = %1316, %1327
  %1330 = phi ptr [ %1328, %1327 ], [ %1318, %1316 ]
  %1331 = getelementptr inbounds i8, ptr %1330, i64 1
  store i8 %8, ptr %1330, align 1, !tbaa !25
  br label %1332

1332:                                             ; preds = %1316, %1329
  %1333 = phi ptr [ %1331, %1329 ], [ %1318, %1316 ]
  %1334 = getelementptr inbounds i8, ptr %1333, i64 1
  store i8 %8, ptr %1333, align 1, !tbaa !25
  br label %1335

1335:                                             ; preds = %1316, %1332
  %1336 = phi ptr [ %1334, %1332 ], [ %1318, %1316 ]
  %1337 = getelementptr inbounds i8, ptr %1336, i64 1
  store i8 %8, ptr %1336, align 1, !tbaa !25
  br label %1338

1338:                                             ; preds = %1316, %1335
  %1339 = phi ptr [ %1337, %1335 ], [ %1318, %1316 ]
  %1340 = getelementptr inbounds i8, ptr %1339, i64 1
  store i8 %8, ptr %1339, align 1, !tbaa !25
  br label %1341

1341:                                             ; preds = %1316, %1338
  %1342 = phi ptr [ %1340, %1338 ], [ %1318, %1316 ]
  %1343 = getelementptr inbounds i8, ptr %1342, i64 1
  store i8 %8, ptr %1342, align 1, !tbaa !25
  br label %1344

1344:                                             ; preds = %1316, %1341
  %1345 = phi ptr [ %1343, %1341 ], [ %1318, %1316 ]
  store i8 %8, ptr %1345, align 1, !tbaa !25
  %1346 = and i32 %1323, 7
  %1347 = icmp eq i32 %1346, 0
  br i1 %1347, label %51, label %1348

1348:                                             ; preds = %1344
  %1349 = getelementptr inbounds i8, ptr %1345, i64 1
  br label %1350

1350:                                             ; preds = %1316, %1348
  %1351 = phi ptr [ %1349, %1348 ], [ %1318, %1316 ]
  %1352 = phi i32 [ %1346, %1348 ], [ %1323, %1316 ]
  %1353 = sub nsw i32 8, %1352
  %1354 = shl i32 255, %1353
  br label %1376

1355:                                             ; preds = %1316, %1325
  %1356 = sext i32 %1324 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1318, i8 %8, i64 %1356, i1 false)
  %1357 = getelementptr inbounds i8, ptr %1318, i64 %1356
  %1358 = and i32 %1323, 7
  %1359 = icmp eq i32 %1358, 0
  br i1 %1359, label %1360, label %1362

1360:                                             ; preds = %1355
  %1361 = getelementptr inbounds i8, ptr %1357, i64 -1
  br label %1368

1362:                                             ; preds = %1355
  %1363 = sub nuw nsw i32 8, %1358
  %1364 = shl nuw nsw i32 255, %1363
  %1365 = load i8, ptr %1357, align 1, !tbaa !25
  %1366 = trunc i32 %1364 to i8
  %1367 = xor i8 %1365, %1366
  store i8 %1367, ptr %1357, align 1, !tbaa !25
  br label %1368

1368:                                             ; preds = %1362, %1360
  %1369 = phi i32 [ %1363, %1362 ], [ 0, %1360 ]
  %1370 = phi ptr [ %1357, %1362 ], [ %1361, %1360 ]
  br label %1106

1371:                                             ; preds = %1314
  %1372 = sub nsw i32 %1107, %1309
  %1373 = shl nsw i32 -1, %1309
  %1374 = xor i32 %1373, -1
  %1375 = shl i32 %1374, %1372
  br label %1376

1376:                                             ; preds = %1371, %1350
  %1377 = phi ptr [ %1351, %1350 ], [ %1108, %1371 ]
  %1378 = phi i32 [ %1354, %1350 ], [ %1375, %1371 ]
  %1379 = phi i32 [ %1353, %1350 ], [ %1372, %1371 ]
  %1380 = phi i32 [ %1352, %1350 ], [ %1309, %1371 ]
  %1381 = load i8, ptr %1377, align 1, !tbaa !25
  %1382 = trunc i32 %1378 to i8
  %1383 = xor i8 %1381, %1382
  store i8 %1383, ptr %1377, align 1, !tbaa !25
  br label %51

1384:                                             ; preds = %1071
  store i32 -2, ptr %46, align 4, !tbaa !42
  br label %853

1385:                                             ; preds = %1305
  store i32 1, ptr %46, align 4, !tbaa !42
  br label %853

1386:                                             ; preds = %1651, %178
  %1387 = phi i32 [ %180, %178 ], [ %1652, %1651 ]
  %1388 = phi ptr [ %181, %178 ], [ %1653, %1651 ]
  %1389 = phi i32 [ %182, %178 ], [ %1586, %1651 ]
  %1390 = phi i32 [ %183, %178 ], [ %1587, %1651 ]
  %1391 = phi ptr [ %184, %178 ], [ %1588, %1651 ]
  %1392 = phi i32 [ %185, %178 ], [ %1592, %1651 ]
  %1393 = phi i32 [ %186, %178 ], [ %1641, %1651 ]
  %1394 = icmp slt i32 %1389, 7
  br i1 %1394, label %1395, label %1463

1395:                                             ; preds = %1386
  %1396 = ptrtoint ptr %1391 to i64
  %1397 = sub i64 %187, %1396
  %1398 = icmp slt i64 %1397, 3
  br i1 %1398, label %1399, label %1421

1399:                                             ; preds = %1395
  %1400 = icmp ult ptr %1391, %28
  br i1 %1400, label %1401, label %1416

1401:                                             ; preds = %1399
  %1402 = getelementptr inbounds i8, ptr %1391, i64 1
  %1403 = load i8, ptr %1402, align 1, !tbaa !25
  %1404 = load i32, ptr %189, align 8, !tbaa !46
  %1405 = icmp eq i32 %1404, 0
  br i1 %1405, label %1410, label %1406

1406:                                             ; preds = %1401
  %1407 = zext i8 %1403 to i64
  %1408 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %1407
  %1409 = load i8, ptr %1408, align 1, !tbaa !25
  br label %1410

1410:                                             ; preds = %1406, %1401
  %1411 = phi i8 [ %1409, %1406 ], [ %1403, %1401 ]
  %1412 = zext i8 %1411 to i32
  %1413 = shl i32 %1390, 8
  %1414 = or disjoint i32 %1413, %1412
  %1415 = add nsw i32 %1389, 8
  br label %1416

1416:                                             ; preds = %1399, %1410
  %1417 = phi i32 [ %1415, %1410 ], [ %1389, %1399 ]
  %1418 = phi i32 [ %1414, %1410 ], [ %1390, %1399 ]
  %1419 = phi ptr [ %1402, %1410 ], [ %1391, %1399 ]
  %1420 = phi i32 [ 0, %1410 ], [ 66, %1399 ]
  br i1 %1400, label %1463, label %1585

1421:                                             ; preds = %1395
  %1422 = load i32, ptr %188, align 8, !tbaa !46
  %1423 = icmp eq i32 %1422, 0
  %1424 = shl i32 %1390, 24
  %1425 = getelementptr inbounds i8, ptr %1391, i64 1
  %1426 = load i8, ptr %1425, align 1, !tbaa !25
  br i1 %1423, label %1445, label %1427

1427:                                             ; preds = %1421
  %1428 = zext i8 %1426 to i64
  %1429 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %1428
  %1430 = load i8, ptr %1429, align 1, !tbaa !25
  %1431 = zext i8 %1430 to i32
  %1432 = shl nuw nsw i32 %1431, 16
  %1433 = getelementptr inbounds i8, ptr %1391, i64 2
  %1434 = load i8, ptr %1433, align 1, !tbaa !25
  %1435 = zext i8 %1434 to i64
  %1436 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %1435
  %1437 = load i8, ptr %1436, align 1, !tbaa !25
  %1438 = zext i8 %1437 to i32
  %1439 = shl nuw nsw i32 %1438, 8
  %1440 = or disjoint i32 %1432, %1439
  %1441 = getelementptr inbounds i8, ptr %1391, i64 3
  %1442 = load i8, ptr %1441, align 1, !tbaa !25
  %1443 = zext i8 %1442 to i64
  %1444 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %1443
  br label %1454

1445:                                             ; preds = %1421
  %1446 = zext i8 %1426 to i32
  %1447 = shl nuw nsw i32 %1446, 16
  %1448 = getelementptr inbounds i8, ptr %1391, i64 2
  %1449 = load i8, ptr %1448, align 1, !tbaa !25
  %1450 = zext i8 %1449 to i32
  %1451 = shl nuw nsw i32 %1450, 8
  %1452 = or disjoint i32 %1447, %1451
  %1453 = getelementptr inbounds i8, ptr %1391, i64 3
  br label %1454

1454:                                             ; preds = %1445, %1427
  %1455 = phi ptr [ %1453, %1445 ], [ %1444, %1427 ]
  %1456 = phi i32 [ %1452, %1445 ], [ %1440, %1427 ]
  %1457 = or disjoint i32 %1456, %1424
  %1458 = load i8, ptr %1455, align 1, !tbaa !25
  %1459 = zext i8 %1458 to i32
  %1460 = or disjoint i32 %1457, %1459
  %1461 = add nsw i32 %1389, 24
  %1462 = getelementptr inbounds i8, ptr %1391, i64 3
  br label %1463

1463:                                             ; preds = %1454, %1416, %1386
  %1464 = phi i32 [ %1417, %1416 ], [ %1461, %1454 ], [ %1389, %1386 ]
  %1465 = phi i32 [ %1418, %1416 ], [ %1460, %1454 ], [ %1390, %1386 ]
  %1466 = phi ptr [ %1419, %1416 ], [ %1462, %1454 ], [ %1391, %1386 ]
  %1467 = add nsw i32 %1464, -7
  %1468 = lshr i32 %1465, %1467
  %1469 = and i32 %1468, 127
  %1470 = zext nneg i32 %1469 to i64
  %1471 = getelementptr inbounds [0 x %struct.hcd_code_s], ptr @cf_black_decode, i64 0, i64 %1470
  %1472 = getelementptr inbounds [0 x %struct.hcd_code_s], ptr @cf_black_decode, i64 0, i64 %1470, i32 1
  %1473 = load i16, ptr %1472, align 2, !tbaa !48
  %1474 = zext i16 %1473 to i32
  %1475 = icmp ugt i16 %1473, 7
  br i1 %1475, label %1476, label %1576

1476:                                             ; preds = %1463
  %1477 = icmp slt i32 %1464, %1474
  br i1 %1477, label %1478, label %1486

1478:                                             ; preds = %1476
  %1479 = ptrtoint ptr %1466 to i64
  %1480 = sub i64 %190, %1479
  %1481 = xor i32 %1464, -1
  %1482 = add i32 %1474, %1481
  %1483 = ashr i32 %1482, 3
  %1484 = sext i32 %1483 to i64
  %1485 = icmp sgt i64 %1480, %1484
  br i1 %1485, label %1486, label %1585

1486:                                             ; preds = %1478, %1476
  %1487 = add nsw i32 %1474, -7
  br i1 %1477, label %1488, label %1556

1488:                                             ; preds = %1486
  %1489 = ptrtoint ptr %1466 to i64
  %1490 = sub i64 %191, %1489
  %1491 = icmp slt i64 %1490, 3
  br i1 %1491, label %1492, label %1514

1492:                                             ; preds = %1488
  %1493 = icmp ult ptr %1466, %28
  br i1 %1493, label %1494, label %1509

1494:                                             ; preds = %1492
  %1495 = getelementptr inbounds i8, ptr %1466, i64 1
  %1496 = load i8, ptr %1495, align 1, !tbaa !25
  %1497 = load i32, ptr %193, align 8, !tbaa !46
  %1498 = icmp eq i32 %1497, 0
  br i1 %1498, label %1503, label %1499

1499:                                             ; preds = %1494
  %1500 = zext i8 %1496 to i64
  %1501 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %1500
  %1502 = load i8, ptr %1501, align 1, !tbaa !25
  br label %1503

1503:                                             ; preds = %1499, %1494
  %1504 = phi i8 [ %1502, %1499 ], [ %1496, %1494 ]
  %1505 = zext i8 %1504 to i32
  %1506 = shl i32 %1465, 8
  %1507 = or disjoint i32 %1506, %1505
  %1508 = add nsw i32 %1464, 1
  br label %1509

1509:                                             ; preds = %1492, %1503
  %1510 = phi i32 [ %1508, %1503 ], [ %1467, %1492 ]
  %1511 = phi i32 [ %1507, %1503 ], [ %1465, %1492 ]
  %1512 = phi ptr [ %1495, %1503 ], [ %1466, %1492 ]
  %1513 = phi i32 [ 0, %1503 ], [ 66, %1492 ]
  br i1 %1493, label %1556, label %1585

1514:                                             ; preds = %1488
  %1515 = load i32, ptr %192, align 8, !tbaa !46
  %1516 = icmp eq i32 %1515, 0
  %1517 = shl i32 %1465, 24
  %1518 = getelementptr inbounds i8, ptr %1466, i64 1
  %1519 = load i8, ptr %1518, align 1, !tbaa !25
  br i1 %1516, label %1538, label %1520

1520:                                             ; preds = %1514
  %1521 = zext i8 %1519 to i64
  %1522 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %1521
  %1523 = load i8, ptr %1522, align 1, !tbaa !25
  %1524 = zext i8 %1523 to i32
  %1525 = shl nuw nsw i32 %1524, 16
  %1526 = getelementptr inbounds i8, ptr %1466, i64 2
  %1527 = load i8, ptr %1526, align 1, !tbaa !25
  %1528 = zext i8 %1527 to i64
  %1529 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %1528
  %1530 = load i8, ptr %1529, align 1, !tbaa !25
  %1531 = zext i8 %1530 to i32
  %1532 = shl nuw nsw i32 %1531, 8
  %1533 = or disjoint i32 %1525, %1532
  %1534 = getelementptr inbounds i8, ptr %1466, i64 3
  %1535 = load i8, ptr %1534, align 1, !tbaa !25
  %1536 = zext i8 %1535 to i64
  %1537 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %1536
  br label %1547

1538:                                             ; preds = %1514
  %1539 = zext i8 %1519 to i32
  %1540 = shl nuw nsw i32 %1539, 16
  %1541 = getelementptr inbounds i8, ptr %1466, i64 2
  %1542 = load i8, ptr %1541, align 1, !tbaa !25
  %1543 = zext i8 %1542 to i32
  %1544 = shl nuw nsw i32 %1543, 8
  %1545 = or disjoint i32 %1540, %1544
  %1546 = getelementptr inbounds i8, ptr %1466, i64 3
  br label %1547

1547:                                             ; preds = %1538, %1520
  %1548 = phi ptr [ %1546, %1538 ], [ %1537, %1520 ]
  %1549 = phi i32 [ %1545, %1538 ], [ %1533, %1520 ]
  %1550 = or disjoint i32 %1549, %1517
  %1551 = load i8, ptr %1548, align 1, !tbaa !25
  %1552 = zext i8 %1551 to i32
  %1553 = or disjoint i32 %1550, %1552
  %1554 = add nsw i32 %1464, 17
  %1555 = getelementptr inbounds i8, ptr %1466, i64 3
  br label %1556

1556:                                             ; preds = %1547, %1509, %1486
  %1557 = phi i32 [ %1510, %1509 ], [ %1554, %1547 ], [ %1467, %1486 ]
  %1558 = phi i32 [ %1511, %1509 ], [ %1553, %1547 ], [ %1465, %1486 ]
  %1559 = phi ptr [ %1512, %1509 ], [ %1555, %1547 ], [ %1466, %1486 ]
  %1560 = load i16, ptr %1471, align 2, !tbaa !51
  %1561 = sext i16 %1560 to i32
  %1562 = sub nsw i32 %1557, %1487
  %1563 = lshr i32 %1558, %1562
  %1564 = zext nneg i32 %1487 to i64
  %1565 = getelementptr inbounds [9 x i8], ptr @byte_right_mask, i64 0, i64 %1564
  %1566 = load i8, ptr %1565, align 1, !tbaa !25
  %1567 = zext i8 %1566 to i32
  %1568 = and i32 %1563, %1567
  %1569 = add nsw i32 %1568, %1561
  %1570 = zext i32 %1569 to i64
  %1571 = getelementptr inbounds [0 x %struct.hcd_code_s], ptr @cf_black_decode, i64 0, i64 %1570
  %1572 = getelementptr inbounds [0 x %struct.hcd_code_s], ptr @cf_black_decode, i64 0, i64 %1570, i32 1
  %1573 = load i16, ptr %1572, align 2, !tbaa !48
  %1574 = zext i16 %1573 to i32
  %1575 = sub nsw i32 %1557, %1574
  br label %1578

1576:                                             ; preds = %1463
  %1577 = sub nsw i32 %1464, %1474
  br label %1578

1578:                                             ; preds = %1576, %1556
  %1579 = phi i32 [ %1575, %1556 ], [ %1577, %1576 ]
  %1580 = phi i32 [ %1558, %1556 ], [ %1465, %1576 ]
  %1581 = phi ptr [ %1559, %1556 ], [ %1466, %1576 ]
  %1582 = phi ptr [ %1571, %1556 ], [ %1471, %1576 ]
  %1583 = load i16, ptr %1582, align 2, !tbaa !51
  %1584 = sext i16 %1583 to i32
  br label %1585

1585:                                             ; preds = %1478, %1416, %1509, %1578
  %1586 = phi i32 [ %1579, %1578 ], [ %1510, %1509 ], [ %1417, %1416 ], [ %1464, %1478 ]
  %1587 = phi i32 [ %1580, %1578 ], [ %1511, %1509 ], [ %1418, %1416 ], [ %1465, %1478 ]
  %1588 = phi ptr [ %1581, %1578 ], [ %1512, %1509 ], [ %1419, %1416 ], [ %1466, %1478 ]
  %1589 = phi i32 [ %1584, %1578 ], [ %1393, %1509 ], [ %1393, %1416 ], [ %1393, %1478 ]
  %1590 = phi i32 [ 0, %1578 ], [ %1513, %1509 ], [ %1420, %1416 ], [ 66, %1478 ]
  switch i32 %1590, label %1897 [
    i32 0, label %1591
    i32 66, label %1895
  ]

1591:                                             ; preds = %1585
  %1592 = sub nsw i32 %1392, %1589
  %1593 = icmp slt i32 %1592, %14
  br i1 %1593, label %853, label %1594

1594:                                             ; preds = %1591
  %1595 = icmp sgt i32 %1589, %1387
  br i1 %1595, label %1596, label %1654

1596:                                             ; preds = %1594
  %1597 = shl nsw i32 -1, %1387
  %1598 = getelementptr inbounds i8, ptr %1388, i64 1
  %1599 = load i8, ptr %1388, align 1, !tbaa !25
  %1600 = trunc i32 %1597 to i8
  %1601 = xor i8 %1599, %1600
  %1602 = xor i8 %1601, -1
  store i8 %1602, ptr %1388, align 1, !tbaa !25
  %1603 = sub nsw i32 %1589, %1387
  %1604 = ashr i32 %1603, 3
  switch i32 %1604, label %1638 [
    i32 7, label %1605
    i32 6, label %1609
    i32 5, label %1612
    i32 4, label %1615
    i32 3, label %1618
    i32 2, label %1621
    i32 1, label %1624
    i32 0, label %1630
  ]

1605:                                             ; preds = %1596
  %1606 = icmp sgt i32 %1589, 63
  br i1 %1606, label %1638, label %1607

1607:                                             ; preds = %1605
  %1608 = getelementptr inbounds i8, ptr %1388, i64 2
  store i8 %8, ptr %1598, align 1, !tbaa !25
  br label %1609

1609:                                             ; preds = %1596, %1607
  %1610 = phi ptr [ %1608, %1607 ], [ %1598, %1596 ]
  %1611 = getelementptr inbounds i8, ptr %1610, i64 1
  store i8 %8, ptr %1610, align 1, !tbaa !25
  br label %1612

1612:                                             ; preds = %1596, %1609
  %1613 = phi ptr [ %1611, %1609 ], [ %1598, %1596 ]
  %1614 = getelementptr inbounds i8, ptr %1613, i64 1
  store i8 %8, ptr %1613, align 1, !tbaa !25
  br label %1615

1615:                                             ; preds = %1596, %1612
  %1616 = phi ptr [ %1614, %1612 ], [ %1598, %1596 ]
  %1617 = getelementptr inbounds i8, ptr %1616, i64 1
  store i8 %8, ptr %1616, align 1, !tbaa !25
  br label %1618

1618:                                             ; preds = %1596, %1615
  %1619 = phi ptr [ %1617, %1615 ], [ %1598, %1596 ]
  %1620 = getelementptr inbounds i8, ptr %1619, i64 1
  store i8 %8, ptr %1619, align 1, !tbaa !25
  br label %1621

1621:                                             ; preds = %1596, %1618
  %1622 = phi ptr [ %1620, %1618 ], [ %1598, %1596 ]
  %1623 = getelementptr inbounds i8, ptr %1622, i64 1
  store i8 %8, ptr %1622, align 1, !tbaa !25
  br label %1624

1624:                                             ; preds = %1596, %1621
  %1625 = phi ptr [ %1623, %1621 ], [ %1598, %1596 ]
  store i8 %8, ptr %1625, align 1, !tbaa !25
  %1626 = and i32 %1603, 7
  %1627 = icmp eq i32 %1626, 0
  br i1 %1627, label %1662, label %1628

1628:                                             ; preds = %1624
  %1629 = getelementptr inbounds i8, ptr %1625, i64 1
  br label %1630

1630:                                             ; preds = %1596, %1628
  %1631 = phi ptr [ %1629, %1628 ], [ %1598, %1596 ]
  %1632 = phi i32 [ %1626, %1628 ], [ %1603, %1596 ]
  %1633 = sub nsw i32 8, %1632
  %1634 = shl i32 255, %1633
  %1635 = load i8, ptr %1631, align 1, !tbaa !25
  %1636 = trunc i32 %1634 to i8
  %1637 = xor i8 %1635, %1636
  store i8 %1637, ptr %1631, align 1, !tbaa !25
  br label %1662

1638:                                             ; preds = %1596, %1605
  %1639 = sext i32 %1604 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1598, i8 %8, i64 %1639, i1 false)
  %1640 = getelementptr inbounds i8, ptr %1598, i64 %1639
  %1641 = and i32 %1603, 7
  %1642 = icmp eq i32 %1641, 0
  br i1 %1642, label %1643, label %1645

1643:                                             ; preds = %1638
  %1644 = getelementptr inbounds i8, ptr %1640, i64 -1
  br label %1651

1645:                                             ; preds = %1638
  %1646 = sub nuw nsw i32 8, %1641
  %1647 = shl nuw nsw i32 255, %1646
  %1648 = load i8, ptr %1640, align 1, !tbaa !25
  %1649 = trunc i32 %1647 to i8
  %1650 = xor i8 %1648, %1649
  store i8 %1650, ptr %1640, align 1, !tbaa !25
  br label %1651

1651:                                             ; preds = %1645, %1643
  %1652 = phi i32 [ %1646, %1645 ], [ 0, %1643 ]
  %1653 = phi ptr [ %1640, %1645 ], [ %1644, %1643 ]
  br label %1386

1654:                                             ; preds = %1594
  %1655 = sub nsw i32 %1387, %1589
  %1656 = shl nsw i32 -1, %1589
  %1657 = xor i32 %1656, -1
  %1658 = shl i32 %1657, %1655
  %1659 = load i8, ptr %1388, align 1, !tbaa !25
  %1660 = trunc i32 %1658 to i8
  %1661 = xor i8 %1659, %1660
  store i8 %1661, ptr %1388, align 1, !tbaa !25
  br label %1662

1662:                                             ; preds = %1654, %1630, %1624, %74
  %1663 = phi i8 [ %10, %74 ], [ %179, %1624 ], [ %179, %1630 ], [ %179, %1654 ]
  %1664 = phi i32 [ %38, %74 ], [ 0, %1624 ], [ %1633, %1630 ], [ %1655, %1654 ]
  %1665 = phi ptr [ %36, %74 ], [ %1625, %1624 ], [ %1631, %1630 ], [ %1388, %1654 ]
  %1666 = phi i32 [ %32, %74 ], [ %1586, %1624 ], [ %1586, %1630 ], [ %1586, %1654 ]
  %1667 = phi i32 [ %30, %74 ], [ %1587, %1624 ], [ %1587, %1630 ], [ %1587, %1654 ]
  %1668 = phi ptr [ %26, %74 ], [ %1588, %1624 ], [ %1588, %1630 ], [ %1588, %1654 ]
  %1669 = phi i32 [ %44, %74 ], [ %1592, %1624 ], [ %1592, %1630 ], [ %1592, %1654 ]
  %1670 = phi i32 [ undef, %74 ], [ 0, %1624 ], [ %1632, %1630 ], [ %1589, %1654 ]
  %1671 = ptrtoint ptr %28 to i64
  %1672 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 3
  %1673 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 3
  %1674 = ptrtoint ptr %28 to i64
  %1675 = ptrtoint ptr %28 to i64
  %1676 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 3
  %1677 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %0, i64 0, i32 3
  br label %1678

1678:                                             ; preds = %1662, %1888
  %1679 = phi i32 [ %1893, %1888 ], [ %1664, %1662 ]
  %1680 = phi ptr [ %1892, %1888 ], [ %1665, %1662 ]
  %1681 = phi i32 [ %1877, %1888 ], [ %1666, %1662 ]
  %1682 = phi i32 [ %1878, %1888 ], [ %1667, %1662 ]
  %1683 = phi ptr [ %1879, %1888 ], [ %1668, %1662 ]
  %1684 = phi i32 [ %1883, %1888 ], [ %1669, %1662 ]
  %1685 = phi i32 [ %1880, %1888 ], [ %1670, %1662 ]
  %1686 = icmp slt i32 %1681, 8
  br i1 %1686, label %1687, label %1755

1687:                                             ; preds = %1678
  %1688 = ptrtoint ptr %1683 to i64
  %1689 = sub i64 %1671, %1688
  %1690 = icmp slt i64 %1689, 3
  br i1 %1690, label %1691, label %1713

1691:                                             ; preds = %1687
  %1692 = icmp ult ptr %1683, %28
  br i1 %1692, label %1693, label %1708

1693:                                             ; preds = %1691
  %1694 = getelementptr inbounds i8, ptr %1683, i64 1
  %1695 = load i8, ptr %1694, align 1, !tbaa !25
  %1696 = load i32, ptr %1673, align 8, !tbaa !46
  %1697 = icmp eq i32 %1696, 0
  br i1 %1697, label %1702, label %1698

1698:                                             ; preds = %1693
  %1699 = zext i8 %1695 to i64
  %1700 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %1699
  %1701 = load i8, ptr %1700, align 1, !tbaa !25
  br label %1702

1702:                                             ; preds = %1698, %1693
  %1703 = phi i8 [ %1701, %1698 ], [ %1695, %1693 ]
  %1704 = zext i8 %1703 to i32
  %1705 = shl i32 %1682, 8
  %1706 = or disjoint i32 %1705, %1704
  %1707 = add nsw i32 %1681, 8
  br label %1708

1708:                                             ; preds = %1691, %1702
  %1709 = phi i32 [ %1707, %1702 ], [ %1681, %1691 ]
  %1710 = phi i32 [ %1706, %1702 ], [ %1682, %1691 ]
  %1711 = phi ptr [ %1694, %1702 ], [ %1683, %1691 ]
  %1712 = phi i32 [ 0, %1702 ], [ 73, %1691 ]
  br i1 %1692, label %1755, label %1876

1713:                                             ; preds = %1687
  %1714 = load i32, ptr %1672, align 8, !tbaa !46
  %1715 = icmp eq i32 %1714, 0
  %1716 = shl i32 %1682, 24
  %1717 = getelementptr inbounds i8, ptr %1683, i64 1
  %1718 = load i8, ptr %1717, align 1, !tbaa !25
  br i1 %1715, label %1737, label %1719

1719:                                             ; preds = %1713
  %1720 = zext i8 %1718 to i64
  %1721 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %1720
  %1722 = load i8, ptr %1721, align 1, !tbaa !25
  %1723 = zext i8 %1722 to i32
  %1724 = shl nuw nsw i32 %1723, 16
  %1725 = getelementptr inbounds i8, ptr %1683, i64 2
  %1726 = load i8, ptr %1725, align 1, !tbaa !25
  %1727 = zext i8 %1726 to i64
  %1728 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %1727
  %1729 = load i8, ptr %1728, align 1, !tbaa !25
  %1730 = zext i8 %1729 to i32
  %1731 = shl nuw nsw i32 %1730, 8
  %1732 = or disjoint i32 %1724, %1731
  %1733 = getelementptr inbounds i8, ptr %1683, i64 3
  %1734 = load i8, ptr %1733, align 1, !tbaa !25
  %1735 = zext i8 %1734 to i64
  %1736 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %1735
  br label %1746

1737:                                             ; preds = %1713
  %1738 = zext i8 %1718 to i32
  %1739 = shl nuw nsw i32 %1738, 16
  %1740 = getelementptr inbounds i8, ptr %1683, i64 2
  %1741 = load i8, ptr %1740, align 1, !tbaa !25
  %1742 = zext i8 %1741 to i32
  %1743 = shl nuw nsw i32 %1742, 8
  %1744 = or disjoint i32 %1739, %1743
  %1745 = getelementptr inbounds i8, ptr %1683, i64 3
  br label %1746

1746:                                             ; preds = %1737, %1719
  %1747 = phi ptr [ %1745, %1737 ], [ %1736, %1719 ]
  %1748 = phi i32 [ %1744, %1737 ], [ %1732, %1719 ]
  %1749 = or disjoint i32 %1748, %1716
  %1750 = load i8, ptr %1747, align 1, !tbaa !25
  %1751 = zext i8 %1750 to i32
  %1752 = or disjoint i32 %1749, %1751
  %1753 = add nsw i32 %1681, 24
  %1754 = getelementptr inbounds i8, ptr %1683, i64 3
  br label %1755

1755:                                             ; preds = %1746, %1708, %1678
  %1756 = phi i32 [ %1709, %1708 ], [ %1753, %1746 ], [ %1681, %1678 ]
  %1757 = phi i32 [ %1710, %1708 ], [ %1752, %1746 ], [ %1682, %1678 ]
  %1758 = phi ptr [ %1711, %1708 ], [ %1754, %1746 ], [ %1683, %1678 ]
  %1759 = add nsw i32 %1756, -8
  %1760 = lshr i32 %1757, %1759
  %1761 = and i32 %1760, 255
  %1762 = zext nneg i32 %1761 to i64
  %1763 = getelementptr inbounds [0 x %struct.hcd_code_s], ptr @cf_white_decode, i64 0, i64 %1762
  %1764 = getelementptr inbounds [0 x %struct.hcd_code_s], ptr @cf_white_decode, i64 0, i64 %1762, i32 1
  %1765 = load i16, ptr %1764, align 2, !tbaa !48
  %1766 = zext i16 %1765 to i32
  %1767 = icmp ugt i16 %1765, 8
  br i1 %1767, label %1768, label %1867

1768:                                             ; preds = %1755
  %1769 = icmp slt i32 %1756, %1766
  br i1 %1769, label %1770, label %1778

1770:                                             ; preds = %1768
  %1771 = ptrtoint ptr %1758 to i64
  %1772 = sub i64 %1674, %1771
  %1773 = xor i32 %1756, -1
  %1774 = add i32 %1766, %1773
  %1775 = ashr i32 %1774, 3
  %1776 = sext i32 %1775 to i64
  %1777 = icmp sgt i64 %1772, %1776
  br i1 %1777, label %1778, label %1876

1778:                                             ; preds = %1770, %1768
  %1779 = add nsw i32 %1766, -8
  br i1 %1769, label %1780, label %1847

1780:                                             ; preds = %1778
  %1781 = ptrtoint ptr %1758 to i64
  %1782 = sub i64 %1675, %1781
  %1783 = icmp slt i64 %1782, 3
  br i1 %1783, label %1784, label %1805

1784:                                             ; preds = %1780
  %1785 = icmp ult ptr %1758, %28
  br i1 %1785, label %1786, label %1800

1786:                                             ; preds = %1784
  %1787 = getelementptr inbounds i8, ptr %1758, i64 1
  %1788 = load i8, ptr %1787, align 1, !tbaa !25
  %1789 = load i32, ptr %1677, align 8, !tbaa !46
  %1790 = icmp eq i32 %1789, 0
  br i1 %1790, label %1795, label %1791

1791:                                             ; preds = %1786
  %1792 = zext i8 %1788 to i64
  %1793 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %1792
  %1794 = load i8, ptr %1793, align 1, !tbaa !25
  br label %1795

1795:                                             ; preds = %1791, %1786
  %1796 = phi i8 [ %1794, %1791 ], [ %1788, %1786 ]
  %1797 = zext i8 %1796 to i32
  %1798 = shl i32 %1757, 8
  %1799 = or disjoint i32 %1798, %1797
  br label %1800

1800:                                             ; preds = %1784, %1795
  %1801 = phi i32 [ %1756, %1795 ], [ %1759, %1784 ]
  %1802 = phi i32 [ %1799, %1795 ], [ %1757, %1784 ]
  %1803 = phi ptr [ %1787, %1795 ], [ %1758, %1784 ]
  %1804 = phi i32 [ 0, %1795 ], [ 73, %1784 ]
  br i1 %1785, label %1847, label %1876

1805:                                             ; preds = %1780
  %1806 = load i32, ptr %1676, align 8, !tbaa !46
  %1807 = icmp eq i32 %1806, 0
  %1808 = shl i32 %1757, 24
  %1809 = getelementptr inbounds i8, ptr %1758, i64 1
  %1810 = load i8, ptr %1809, align 1, !tbaa !25
  br i1 %1807, label %1829, label %1811

1811:                                             ; preds = %1805
  %1812 = zext i8 %1810 to i64
  %1813 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %1812
  %1814 = load i8, ptr %1813, align 1, !tbaa !25
  %1815 = zext i8 %1814 to i32
  %1816 = shl nuw nsw i32 %1815, 16
  %1817 = getelementptr inbounds i8, ptr %1758, i64 2
  %1818 = load i8, ptr %1817, align 1, !tbaa !25
  %1819 = zext i8 %1818 to i64
  %1820 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %1819
  %1821 = load i8, ptr %1820, align 1, !tbaa !25
  %1822 = zext i8 %1821 to i32
  %1823 = shl nuw nsw i32 %1822, 8
  %1824 = or disjoint i32 %1816, %1823
  %1825 = getelementptr inbounds i8, ptr %1758, i64 3
  %1826 = load i8, ptr %1825, align 1, !tbaa !25
  %1827 = zext i8 %1826 to i64
  %1828 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %1827
  br label %1838

1829:                                             ; preds = %1805
  %1830 = zext i8 %1810 to i32
  %1831 = shl nuw nsw i32 %1830, 16
  %1832 = getelementptr inbounds i8, ptr %1758, i64 2
  %1833 = load i8, ptr %1832, align 1, !tbaa !25
  %1834 = zext i8 %1833 to i32
  %1835 = shl nuw nsw i32 %1834, 8
  %1836 = or disjoint i32 %1831, %1835
  %1837 = getelementptr inbounds i8, ptr %1758, i64 3
  br label %1838

1838:                                             ; preds = %1829, %1811
  %1839 = phi ptr [ %1837, %1829 ], [ %1828, %1811 ]
  %1840 = phi i32 [ %1836, %1829 ], [ %1824, %1811 ]
  %1841 = or disjoint i32 %1840, %1808
  %1842 = load i8, ptr %1839, align 1, !tbaa !25
  %1843 = zext i8 %1842 to i32
  %1844 = or disjoint i32 %1841, %1843
  %1845 = add nsw i32 %1756, 16
  %1846 = getelementptr inbounds i8, ptr %1758, i64 3
  br label %1847

1847:                                             ; preds = %1838, %1800, %1778
  %1848 = phi i32 [ %1801, %1800 ], [ %1845, %1838 ], [ %1759, %1778 ]
  %1849 = phi i32 [ %1802, %1800 ], [ %1844, %1838 ], [ %1757, %1778 ]
  %1850 = phi ptr [ %1803, %1800 ], [ %1846, %1838 ], [ %1758, %1778 ]
  %1851 = load i16, ptr %1763, align 2, !tbaa !51
  %1852 = sext i16 %1851 to i32
  %1853 = sub nsw i32 %1848, %1779
  %1854 = lshr i32 %1849, %1853
  %1855 = zext nneg i32 %1779 to i64
  %1856 = getelementptr inbounds [9 x i8], ptr @byte_right_mask, i64 0, i64 %1855
  %1857 = load i8, ptr %1856, align 1, !tbaa !25
  %1858 = zext i8 %1857 to i32
  %1859 = and i32 %1854, %1858
  %1860 = add nsw i32 %1859, %1852
  %1861 = zext i32 %1860 to i64
  %1862 = getelementptr inbounds [0 x %struct.hcd_code_s], ptr @cf_white_decode, i64 0, i64 %1861
  %1863 = getelementptr inbounds [0 x %struct.hcd_code_s], ptr @cf_white_decode, i64 0, i64 %1861, i32 1
  %1864 = load i16, ptr %1863, align 2, !tbaa !48
  %1865 = zext i16 %1864 to i32
  %1866 = sub nsw i32 %1848, %1865
  br label %1869

1867:                                             ; preds = %1755
  %1868 = sub nsw i32 %1756, %1766
  br label %1869

1869:                                             ; preds = %1867, %1847
  %1870 = phi i32 [ %1866, %1847 ], [ %1868, %1867 ]
  %1871 = phi i32 [ %1849, %1847 ], [ %1757, %1867 ]
  %1872 = phi ptr [ %1850, %1847 ], [ %1758, %1867 ]
  %1873 = phi ptr [ %1862, %1847 ], [ %1763, %1867 ]
  %1874 = load i16, ptr %1873, align 2, !tbaa !51
  %1875 = sext i16 %1874 to i32
  br label %1876

1876:                                             ; preds = %1770, %1708, %1800, %1869
  %1877 = phi i32 [ %1870, %1869 ], [ %1801, %1800 ], [ %1709, %1708 ], [ %1756, %1770 ]
  %1878 = phi i32 [ %1871, %1869 ], [ %1802, %1800 ], [ %1710, %1708 ], [ %1757, %1770 ]
  %1879 = phi ptr [ %1872, %1869 ], [ %1803, %1800 ], [ %1711, %1708 ], [ %1758, %1770 ]
  %1880 = phi i32 [ %1875, %1869 ], [ %1685, %1800 ], [ %1685, %1708 ], [ %1685, %1770 ]
  %1881 = phi i32 [ 0, %1869 ], [ %1804, %1800 ], [ %1712, %1708 ], [ 73, %1770 ]
  switch i32 %1881, label %1897 [
    i32 0, label %1882
    i32 73, label %1896
  ]

1882:                                             ; preds = %1876
  %1883 = sub nsw i32 %1684, %1880
  %1884 = icmp slt i32 %1883, %14
  br i1 %1884, label %853, label %1885

1885:                                             ; preds = %1882
  %1886 = sub nsw i32 %1679, %1880
  %1887 = icmp slt i32 %1886, 0
  br i1 %1887, label %1888, label %48

1888:                                             ; preds = %1885
  %1889 = ashr i32 %1886, 3
  %1890 = sub nsw i32 0, %1889
  %1891 = zext nneg i32 %1890 to i64
  %1892 = getelementptr inbounds i8, ptr %1680, i64 %1891
  %1893 = and i32 %1886, 7
  %1894 = icmp sgt i32 %1880, 63
  br i1 %1894, label %1678, label %48

1895:                                             ; preds = %1585
  store i32 2, ptr %46, align 4, !tbaa !42
  br label %853

1896:                                             ; preds = %1876
  store i32 -1, ptr %46, align 4, !tbaa !42
  br label %853

1897:                                             ; preds = %402, %118, %1585, %1876, %1071, %1305, %853
  %1898 = phi i32 [ %860, %853 ], [ undef, %1305 ], [ undef, %1071 ], [ undef, %1876 ], [ undef, %1585 ], [ undef, %118 ], [ undef, %402 ]
  ret i32 %1898
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 72}
!6 = !{!"stream_CFD_state_s", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !7, i64 80, !7, i64 88, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !8, i64 132, !10, i64 136, !10, i64 140, !10, i64 144}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{i32 0, i32 33}
!12 = !{!6, !10, i64 52}
!13 = !{!6, !10, i64 76}
!14 = !{!6, !10, i64 64}
!15 = !{!6, !10, i64 28}
!16 = !{!6, !10, i64 32}
!17 = !{!18, !7, i64 8}
!18 = !{!"stream_state_s", !7, i64 0, !7, i64 8, !7, i64 16}
!19 = !{!20, !7, i64 0}
!20 = !{!"gs_memory_s", !21, i64 0}
!21 = !{!"gs_memory_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!22 = !{!6, !7, i64 80}
!23 = !{!6, !7, i64 88}
!24 = !{!6, !10, i64 40}
!25 = !{!8, !8, i64 0}
!26 = !{!6, !10, i64 96}
!27 = !{!6, !10, i64 136}
!28 = !{!6, !10, i64 56}
!29 = !{!6, !10, i64 60}
!30 = !{!6, !10, i64 116}
!31 = !{!6, !10, i64 124}
!32 = !{!6, !10, i64 120}
!33 = !{!6, !10, i64 128}
!34 = !{!6, !8, i64 132}
!35 = !{!6, !10, i64 108}
!36 = !{!37, !7, i64 0}
!37 = !{!"stream_cursor_read_s", !7, i64 0, !7, i64 8, !7, i64 16}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = !{!6, !10, i64 104}
!41 = !{!6, !10, i64 112}
!42 = !{!6, !10, i64 100}
!43 = !{!37, !7, i64 8}
!44 = !{!6, !10, i64 48}
!45 = !{!6, !10, i64 44}
!46 = !{!6, !10, i64 24}
!47 = distinct !{!47, !39}
!48 = !{!49, !50, i64 2}
!49 = !{!"hcd_code_s", !50, i64 0, !50, i64 2}
!50 = !{!"short", !8, i64 0}
!51 = !{!49, !50, i64 0}
!52 = !{!6, !10, i64 68}
!53 = !{!20, !7, i64 88}
!54 = !{!7, !7, i64 0}
!55 = distinct !{!55, !39}
!56 = distinct !{!56, !39}
!57 = distinct !{!57, !39}
!58 = distinct !{!58, !39}
!59 = distinct !{!59, !39}
!60 = distinct !{!60, !39}
!61 = distinct !{!61, !39}
!62 = distinct !{!62, !39}
