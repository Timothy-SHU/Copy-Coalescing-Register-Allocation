; ModuleID = 'sbwbs.c'
source_filename = "sbwbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.stream_BWBS_state_s = type { ptr, ptr, ptr, i32, ptr, i32, i32, i32, ptr, i32, i32, i32 }
%struct.stream_buffered_state_s = type { ptr, ptr, ptr, i32, ptr, i32, i32, i32 }
%struct.stream_state_s = type { ptr, ptr, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_ = type { [256 x i32] }
%struct.stream_cursor_write_s = type { ptr, ptr, ptr }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }
%struct.offsets_4k = type { [256 x i16] }

@st_BWBS_state = internal constant %struct.gs_memory_struct_type_s { i32 80, ptr @.str, ptr null, ptr null, ptr @bwbs_enum_ptrs, ptr @bwbs_reloc_ptrs, ptr null }, align 8
@s_BWBSE_template = dso_local local_unnamed_addr constant %struct.stream_template_s { ptr @st_BWBS_state, ptr @s_BWBSE_init, ptr @s_BWBSE_process, i32 8, i32 1, ptr @s_BWBS_release, ptr null, ptr null }, align 8
@s_BWBSD_template = dso_local local_unnamed_addr constant %struct.stream_template_s { ptr @st_BWBS_state, ptr @s_BWBSD_init, ptr @s_BWBSD_process, i32 1, i32 8, ptr @s_BWBS_release, ptr null, ptr null }, align 8
@.str = private unnamed_addr constant [31 x i8] c"BWBlockSortEncode/Decode state\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"BWBlockSort offsets\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@bwbs_compare_ss = internal unnamed_addr global ptr null, align 8

; Function Attrs: nounwind uwtable
define internal noundef i32 @s_BWBSE_init(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 6
  store i32 %3, ptr %4, align 4, !tbaa !9
  %5 = getelementptr inbounds %struct.stream_buffered_state_s, ptr %0, i64 0, i32 4
  store ptr null, ptr %5, align 8, !tbaa !12
  %6 = getelementptr inbounds %struct.stream_buffered_state_s, ptr %0, i64 0, i32 5
  store i32 1, ptr %6, align 8, !tbaa !14
  %7 = getelementptr inbounds %struct.stream_buffered_state_s, ptr %0, i64 0, i32 7
  store i32 0, ptr %7, align 8, !tbaa !15
  %8 = getelementptr inbounds %struct.stream_state_s, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !16
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  %11 = tail call ptr %10(ptr noundef nonnull %9, i32 noundef %3, ptr noundef nonnull @.str.3) #11
  store ptr %11, ptr %5, align 8, !tbaa !12
  %12 = icmp eq ptr %11, null
  %13 = select i1 %12, i32 -2, i32 0
  br i1 %12, label %31, label %14

14:                                               ; preds = %1
  %15 = shl i32 %3, 2
  %16 = load ptr, ptr %8, align 8, !tbaa !16
  %17 = load ptr, ptr %16, align 8, !tbaa !18
  %18 = tail call ptr %17(ptr noundef nonnull %16, i32 noundef %15, ptr noundef nonnull @.str.2) #11
  %19 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 8
  store ptr %18, ptr %19, align 8, !tbaa !21
  %20 = icmp eq ptr %18, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %14
  %22 = load ptr, ptr %8, align 8, !tbaa !16
  %23 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %22, i64 0, i32 11
  %24 = load ptr, ptr %23, align 8, !tbaa !22
  tail call void %24(ptr noundef %22, ptr noundef %18, ptr noundef nonnull @.str.2) #11
  %25 = load ptr, ptr %8, align 8, !tbaa !16
  %26 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %25, i64 0, i32 11
  %27 = load ptr, ptr %26, align 8, !tbaa !22
  %28 = load ptr, ptr %5, align 8, !tbaa !12
  tail call void %27(ptr noundef %25, ptr noundef %28, ptr noundef nonnull @.str.3) #11
  br label %31

29:                                               ; preds = %14
  %30 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 10
  store i32 -1, ptr %30, align 4, !tbaa !23
  br label %31

31:                                               ; preds = %1, %21, %29
  %32 = phi i32 [ -2, %21 ], [ 0, %29 ], [ %13, %1 ]
  ret i32 %32
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @s_BWBSE_process(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3) #1 {
  %5 = alloca %struct.of_, align 4
  %6 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !24
  %8 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !26
  %10 = ptrtoint ptr %9 to i64
  %11 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !21
  %13 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %163, label %16

16:                                               ; preds = %4
  %17 = ptrtoint ptr %9 to i64
  %18 = ptrtoint ptr %7 to i64
  %19 = sub i64 %17, %18
  %20 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !27
  %22 = and i64 %19, 4294967288
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %159, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !28
  %27 = getelementptr inbounds %struct.stream_buffered_state_s, ptr %0, i64 0, i32 6
  %28 = load i32, ptr %27, align 4, !tbaa !30
  %29 = getelementptr inbounds %struct.stream_buffered_state_s, ptr %0, i64 0, i32 7
  %30 = load i32, ptr %29, align 8, !tbaa !15
  %31 = sub nsw i32 %28, %30
  %32 = load ptr, ptr %1, align 8, !tbaa !31
  %33 = ptrtoint ptr %26 to i64
  %34 = ptrtoint ptr %32 to i64
  %35 = sub i64 %33, %34
  %36 = trunc i64 %35 to i32
  %37 = tail call i32 @llvm.umin.i32(i32 %31, i32 %36)
  %38 = sext i32 %30 to i64
  %39 = getelementptr inbounds i8, ptr %21, i64 %38
  %40 = getelementptr inbounds i8, ptr %32, i64 1
  %41 = zext i32 %37 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %39, ptr nonnull align 1 %40, i64 %41, i1 false)
  %42 = getelementptr inbounds i8, ptr %32, i64 %41
  store ptr %42, ptr %1, align 8, !tbaa !31
  %43 = load i32, ptr %29, align 8, !tbaa !15
  %44 = add i32 %37, %43
  store i32 %44, ptr %29, align 8, !tbaa !15
  %45 = load i32, ptr %27, align 4, !tbaa !30
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %24
  %48 = icmp eq ptr %42, %26
  %49 = icmp ne i32 %3, 0
  %50 = and i1 %49, %48
  br i1 %50, label %51, label %159

51:                                               ; preds = %47, %24
  store i32 0, ptr %13, align 8, !tbaa !14
  %52 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 7
  %53 = load i32, ptr %52, align 8, !tbaa !32
  %54 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 9
  store i32 %53, ptr %54, align 8, !tbaa !33
  %55 = icmp sgt i32 %53, 1
  br i1 %55, label %56, label %70

56:                                               ; preds = %51
  %57 = lshr i32 %53, 1
  %58 = zext nneg i32 %57 to i64
  br label %59

59:                                               ; preds = %56, %59
  %60 = phi i64 [ %58, %56 ], [ %61, %59 ]
  %61 = add nsw i64 %60, -1
  %62 = getelementptr inbounds i8, ptr %21, i64 %61
  %63 = trunc i64 %60 to i32
  %64 = sub i32 %53, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, ptr %21, i64 %65
  %67 = load i8, ptr %62, align 1, !tbaa !34
  %68 = load i8, ptr %66, align 1, !tbaa !34
  store i8 %68, ptr %62, align 1, !tbaa !34
  store i8 %67, ptr %66, align 1, !tbaa !34
  %69 = icmp sgt i64 %60, 1
  br i1 %69, label %59, label %70, !llvm.loop !35

70:                                               ; preds = %59, %51
  store ptr %0, ptr @bwbs_compare_ss, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  %71 = icmp eq i32 %53, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %75, %70
  br label %88

73:                                               ; preds = %70
  %74 = zext i32 %53 to i64
  br label %75

75:                                               ; preds = %75, %73
  %76 = phi i64 [ 0, %73 ], [ %83, %75 ]
  %77 = getelementptr inbounds i8, ptr %21, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !34
  %79 = zext i8 %78 to i64
  %80 = getelementptr inbounds [256 x i32], ptr %5, i64 0, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !5
  %82 = add i32 %81, 1
  store i32 %82, ptr %80, align 4, !tbaa !5
  %83 = add nuw nsw i64 %76, 1
  %84 = icmp eq i64 %83, %74
  br i1 %84, label %72, label %75, !llvm.loop !37

85:                                               ; preds = %88
  br i1 %71, label %109, label %86

86:                                               ; preds = %85
  %87 = zext i32 %53 to i64
  br label %96

88:                                               ; preds = %72, %88
  %89 = phi i64 [ %94, %88 ], [ 0, %72 ]
  %90 = phi i32 [ %93, %88 ], [ 0, %72 ]
  %91 = getelementptr inbounds [256 x i32], ptr %5, i64 0, i64 %89
  %92 = load i32, ptr %91, align 4, !tbaa !5
  %93 = add i32 %92, %90
  store i32 %90, ptr %91, align 4, !tbaa !5
  %94 = add nuw nsw i64 %89, 1
  %95 = icmp eq i64 %94, 256
  br i1 %95, label %85, label %88, !llvm.loop !38

96:                                               ; preds = %96, %86
  %97 = phi i64 [ 0, %86 ], [ %107, %96 ]
  %98 = getelementptr inbounds i8, ptr %21, i64 %97
  %99 = load i8, ptr %98, align 1, !tbaa !34
  %100 = zext i8 %99 to i64
  %101 = getelementptr inbounds [256 x i32], ptr %5, i64 0, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !5
  %103 = add i32 %102, 1
  store i32 %103, ptr %101, align 4, !tbaa !5
  %104 = zext i32 %102 to i64
  %105 = getelementptr inbounds i32, ptr %12, i64 %104
  %106 = trunc i64 %97 to i32
  store i32 %106, ptr %105, align 4, !tbaa !5
  %107 = add nuw nsw i64 %97, 1
  %108 = icmp eq i64 %107, %87
  br i1 %108, label %109, label %96, !llvm.loop !39

109:                                              ; preds = %96, %85
  br label %110

110:                                              ; preds = %109, %110
  %111 = phi i64 [ %119, %110 ], [ 0, %109 ]
  %112 = phi i32 [ %116, %110 ], [ 0, %109 ]
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, ptr %12, i64 %113
  %115 = getelementptr inbounds [256 x i32], ptr %5, i64 0, i64 %111
  %116 = load i32, ptr %115, align 4, !tbaa !5
  %117 = sub i32 %116, %112
  %118 = zext i32 %117 to i64
  tail call void @qsort(ptr noundef %114, i64 noundef %118, i64 noundef 4, ptr noundef nonnull @bwbs_compare_rotations) #11
  %119 = add nuw nsw i64 %111, 1
  %120 = icmp eq i64 %119, 256
  br i1 %120, label %121, label %110, !llvm.loop !40

121:                                              ; preds = %110
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #11
  %122 = icmp sgt i32 %53, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %121
  %124 = zext nneg i32 %53 to i64
  br label %125

125:                                              ; preds = %123, %134
  %126 = phi i64 [ 0, %123 ], [ %135, %134 ]
  %127 = getelementptr inbounds i32, ptr %12, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !5
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = trunc i64 %126 to i32
  %132 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 10
  store i32 %131, ptr %132, align 4, !tbaa !23
  br label %133

133:                                              ; preds = %134, %121, %130
  br label %139

134:                                              ; preds = %125
  %135 = add nuw nsw i64 %126, 1
  %136 = icmp eq i64 %135, %124
  br i1 %136, label %133, label %125, !llvm.loop !41

137:                                              ; preds = %139
  %138 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 10
  br label %148

139:                                              ; preds = %133, %139
  %140 = phi ptr [ %146, %139 ], [ %7, %133 ]
  %141 = phi i32 [ %142, %139 ], [ 4, %133 ]
  %142 = add nsw i32 %141, -1
  %143 = shl nsw i32 %142, 3
  %144 = ashr i32 %53, %143
  %145 = trunc i32 %144 to i8
  %146 = getelementptr inbounds i8, ptr %140, i64 1
  store i8 %145, ptr %146, align 1, !tbaa !34
  %147 = icmp ugt i32 %141, 1
  br i1 %147, label %139, label %137, !llvm.loop !42

148:                                              ; preds = %137, %148
  %149 = phi ptr [ %146, %137 ], [ %156, %148 ]
  %150 = phi i32 [ 4, %137 ], [ %151, %148 ]
  %151 = add nsw i32 %150, -1
  %152 = load i32, ptr %138, align 4, !tbaa !23
  %153 = shl nsw i32 %151, 3
  %154 = ashr i32 %152, %153
  %155 = trunc i32 %154 to i8
  %156 = getelementptr inbounds i8, ptr %149, i64 1
  store i8 %155, ptr %156, align 1, !tbaa !34
  %157 = icmp ugt i32 %150, 1
  br i1 %157, label %148, label %158, !llvm.loop !43

158:                                              ; preds = %148
  store i32 0, ptr %52, align 8, !tbaa !32
  br label %159

159:                                              ; preds = %47, %16, %158
  %160 = phi i1 [ true, %158 ], [ false, %16 ], [ false, %47 ]
  %161 = phi ptr [ %156, %158 ], [ %7, %16 ], [ %7, %47 ]
  %162 = phi i32 [ undef, %158 ], [ 1, %16 ], [ 0, %47 ]
  br i1 %160, label %163, label %203

163:                                              ; preds = %159, %4
  %164 = phi ptr [ %161, %159 ], [ %7, %4 ]
  %165 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 7
  %166 = icmp ult ptr %164, %9
  br i1 %166, label %167, label %192

167:                                              ; preds = %163
  %168 = ptrtoint ptr %164 to i64
  %169 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 9
  %170 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 4
  %171 = sub i64 %10, %168
  %172 = getelementptr i8, ptr %164, i64 %171
  br label %173

173:                                              ; preds = %167, %178
  %174 = phi ptr [ %164, %167 ], [ %190, %178 ]
  %175 = load i32, ptr %165, align 8, !tbaa !32
  %176 = load i32, ptr %169, align 8, !tbaa !33
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %192

178:                                              ; preds = %173
  %179 = add nsw i32 %175, 1
  store i32 %179, ptr %165, align 8, !tbaa !32
  %180 = sext i32 %175 to i64
  %181 = getelementptr inbounds i32, ptr %12, i64 %180
  %182 = load i32, ptr %181, align 4, !tbaa !5
  %183 = load ptr, ptr %170, align 8, !tbaa !44
  %184 = icmp eq i32 %182, 0
  %185 = select i1 %184, i32 %176, i32 %182
  %186 = sext i32 %185 to i64
  %187 = getelementptr i8, ptr %183, i64 %186
  %188 = getelementptr i8, ptr %187, i64 -1
  %189 = load i8, ptr %188, align 1, !tbaa !34
  %190 = getelementptr inbounds i8, ptr %174, i64 1
  store i8 %189, ptr %190, align 1, !tbaa !34
  %191 = icmp eq ptr %190, %172
  br i1 %191, label %192, label %173, !llvm.loop !45

192:                                              ; preds = %173, %178, %163
  %193 = phi ptr [ %164, %163 ], [ %174, %173 ], [ %190, %178 ]
  %194 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 7
  %195 = load i32, ptr %194, align 8, !tbaa !32
  %196 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 9
  %197 = load i32, ptr %196, align 8, !tbaa !33
  %198 = icmp eq i32 %195, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %192
  store i32 1, ptr %13, align 8, !tbaa !46
  store i32 0, ptr %194, align 8, !tbaa !32
  br label %200

200:                                              ; preds = %199, %192
  store ptr %193, ptr %6, align 8, !tbaa !24
  %201 = icmp eq ptr %193, %9
  %202 = zext i1 %201 to i32
  br label %203

203:                                              ; preds = %200, %159
  %204 = phi i32 [ %162, %159 ], [ %202, %200 ]
  ret i32 %204
}

; Function Attrs: nounwind uwtable
define internal void @s_BWBS_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.stream_state_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %3, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !21
  tail call void %5(ptr noundef %3, ptr noundef %7, ptr noundef nonnull @.str.2) #11
  %8 = load ptr, ptr %2, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %8, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = getelementptr inbounds %struct.stream_buffered_state_s, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !12
  tail call void %10(ptr noundef %8, ptr noundef %12, ptr noundef nonnull @.str.3) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @s_BWBSD_init(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 6
  store i32 %3, ptr %4, align 4, !tbaa !9
  %5 = getelementptr inbounds %struct.stream_buffered_state_s, ptr %0, i64 0, i32 4
  store ptr null, ptr %5, align 8, !tbaa !12
  %6 = getelementptr inbounds %struct.stream_buffered_state_s, ptr %0, i64 0, i32 5
  store i32 1, ptr %6, align 8, !tbaa !14
  %7 = getelementptr inbounds %struct.stream_buffered_state_s, ptr %0, i64 0, i32 7
  store i32 0, ptr %7, align 8, !tbaa !15
  %8 = getelementptr inbounds %struct.stream_state_s, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !16
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  %11 = tail call ptr %10(ptr noundef nonnull %9, i32 noundef %3, ptr noundef nonnull @.str.3) #11
  store ptr %11, ptr %5, align 8, !tbaa !12
  %12 = icmp eq ptr %11, null
  %13 = select i1 %12, i32 -2, i32 0
  br i1 %12, label %41, label %14

14:                                               ; preds = %1
  %15 = add i32 %3, 65535
  %16 = lshr i32 %15, 6
  %17 = and i32 %16, 67107840
  %18 = add i32 %3, 4095
  %19 = lshr i32 %18, 3
  %20 = and i32 %19, 536870400
  %21 = add nuw nsw i32 %17, %20
  %22 = add i32 %3, 1
  %23 = lshr i32 %22, 1
  %24 = mul i32 %23, 3
  %25 = add i32 %21, %24
  %26 = load ptr, ptr %8, align 8, !tbaa !16
  %27 = load ptr, ptr %26, align 8, !tbaa !18
  %28 = tail call ptr %27(ptr noundef nonnull %26, i32 noundef %25, ptr noundef nonnull @.str.2) #11
  %29 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 8
  store ptr %28, ptr %29, align 8, !tbaa !21
  %30 = icmp eq ptr %28, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %14
  %32 = load ptr, ptr %8, align 8, !tbaa !16
  %33 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %32, i64 0, i32 11
  %34 = load ptr, ptr %33, align 8, !tbaa !22
  tail call void %34(ptr noundef %32, ptr noundef %28, ptr noundef nonnull @.str.2) #11
  %35 = load ptr, ptr %8, align 8, !tbaa !16
  %36 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %35, i64 0, i32 11
  %37 = load ptr, ptr %36, align 8, !tbaa !22
  %38 = load ptr, ptr %5, align 8, !tbaa !12
  tail call void %37(ptr noundef %35, ptr noundef %38, ptr noundef nonnull @.str.3) #11
  br label %41

39:                                               ; preds = %14
  %40 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 10
  store i32 -1, ptr %40, align 4, !tbaa !23
  br label %41

41:                                               ; preds = %1, %31, %39
  %42 = phi i32 [ -2, %31 ], [ 0, %39 ], [ %13, %1 ]
  ret i32 %42
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @s_BWBSD_process(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3) #2 {
  %5 = alloca %struct.of_, align 4
  %6 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !24
  %8 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !26
  %10 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !47
  %12 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !21
  %14 = add i32 %11, 65535
  %15 = lshr i32 %14, 16
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds %struct.of_, ptr %13, i64 %16
  %18 = add i32 %11, 4095
  %19 = lshr i32 %18, 12
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds %struct.offsets_4k, ptr %17, i64 %20
  %22 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 10
  %23 = load i32, ptr %22, align 4, !tbaa !23
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %74

25:                                               ; preds = %4
  %26 = load ptr, ptr %1, align 8, !tbaa !31
  %27 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !28
  %29 = ptrtoint ptr %28 to i64
  %30 = ptrtoint ptr %26 to i64
  %31 = sub i64 %29, %30
  %32 = and i64 %31, 4294967288
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %71, label %36

34:                                               ; preds = %36
  %35 = getelementptr i8, ptr %26, i64 4
  br label %47

36:                                               ; preds = %25, %36
  %37 = phi ptr [ %41, %36 ], [ %26, %25 ]
  %38 = phi i32 [ %45, %36 ], [ 0, %25 ]
  %39 = phi i32 [ %44, %36 ], [ 0, %25 ]
  %40 = shl i32 %39, 8
  %41 = getelementptr inbounds i8, ptr %37, i64 1
  %42 = load i8, ptr %41, align 1, !tbaa !34
  %43 = zext i8 %42 to i32
  %44 = or disjoint i32 %40, %43
  %45 = add nuw nsw i32 %38, 1
  %46 = icmp eq i32 %45, 4
  br i1 %46, label %34, label %36, !llvm.loop !48

47:                                               ; preds = %34, %47
  %48 = phi ptr [ %35, %34 ], [ %52, %47 ]
  %49 = phi i32 [ 0, %34 ], [ %56, %47 ]
  %50 = phi i32 [ 0, %34 ], [ %55, %47 ]
  %51 = shl i32 %50, 8
  %52 = getelementptr inbounds i8, ptr %48, i64 1
  %53 = load i8, ptr %52, align 1, !tbaa !34
  %54 = zext i8 %53 to i32
  %55 = or disjoint i32 %51, %54
  %56 = add nuw nsw i32 %49, 1
  %57 = icmp eq i32 %56, 4
  br i1 %57, label %58, label %47, !llvm.loop !49

58:                                               ; preds = %47
  %59 = getelementptr i8, ptr %26, i64 8
  %60 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 9
  store i32 %44, ptr %60, align 8, !tbaa !33
  store i32 %55, ptr %22, align 4, !tbaa !23
  store ptr %59, ptr %1, align 8, !tbaa !31
  %61 = icmp slt i32 %44, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %58
  %63 = icmp sle i32 %44, %11
  %64 = icmp sgt i32 %55, -1
  %65 = select i1 %63, i1 %64, i1 false
  %66 = icmp slt i32 %55, %44
  %67 = select i1 %65, i1 %66, i1 false
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 7
  store i32 0, ptr %69, align 8, !tbaa !32
  %70 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 6
  store i32 %44, ptr %70, align 4, !tbaa !9
  br label %71

71:                                               ; preds = %58, %62, %25, %68
  %72 = phi i1 [ true, %68 ], [ false, %25 ], [ false, %62 ], [ false, %58 ]
  %73 = phi i32 [ undef, %68 ], [ 0, %25 ], [ -2, %62 ], [ -2, %58 ]
  br i1 %72, label %74, label %313

74:                                               ; preds = %71, %4
  %75 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 5
  %76 = load i32, ptr %75, align 8, !tbaa !5
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %242, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !28
  %81 = getelementptr inbounds %struct.stream_buffered_state_s, ptr %0, i64 0, i32 6
  %82 = load i32, ptr %81, align 4, !tbaa !30
  %83 = getelementptr inbounds %struct.stream_buffered_state_s, ptr %0, i64 0, i32 7
  %84 = load i32, ptr %83, align 8, !tbaa !15
  %85 = sub nsw i32 %82, %84
  %86 = load ptr, ptr %1, align 8, !tbaa !31
  %87 = ptrtoint ptr %80 to i64
  %88 = ptrtoint ptr %86 to i64
  %89 = sub i64 %87, %88
  %90 = trunc i64 %89 to i32
  %91 = tail call i32 @llvm.umin.i32(i32 %85, i32 %90)
  %92 = getelementptr inbounds %struct.stream_buffered_state_s, ptr %0, i64 0, i32 4
  %93 = load ptr, ptr %92, align 8, !tbaa !12
  %94 = sext i32 %84 to i64
  %95 = getelementptr inbounds i8, ptr %93, i64 %94
  %96 = getelementptr inbounds i8, ptr %86, i64 1
  %97 = zext i32 %91 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %95, ptr nonnull align 1 %96, i64 %97, i1 false)
  %98 = getelementptr inbounds i8, ptr %86, i64 %97
  store ptr %98, ptr %1, align 8, !tbaa !31
  %99 = load i32, ptr %83, align 8, !tbaa !15
  %100 = add i32 %99, %91
  store i32 %100, ptr %83, align 8, !tbaa !15
  %101 = load i32, ptr %81, align 4, !tbaa !30
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %107, label %103

103:                                              ; preds = %78
  %104 = icmp eq ptr %98, %80
  %105 = icmp ne i32 %3, 0
  %106 = and i1 %105, %104
  br i1 %106, label %107, label %313

107:                                              ; preds = %103, %78
  store i32 0, ptr %75, align 8, !tbaa !14
  %108 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 6
  %109 = load i32, ptr %108, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #11
  %110 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 4
  %111 = load ptr, ptr %110, align 8, !tbaa !44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  %112 = add nsw i32 %109, 4095
  %113 = icmp ult i32 %112, 4096
  br i1 %113, label %197, label %114

114:                                              ; preds = %107
  %115 = ashr i32 %112, 12
  %116 = getelementptr inbounds %struct.of_, ptr %13, i64 -1
  %117 = add nsw i32 %109, 1
  %118 = tail call i32 @llvm.umax.i32(i32 %115, i32 1)
  br label %119

119:                                              ; preds = %191, %114
  %120 = phi i32 [ 0, %114 ], [ %194, %191 ]
  %121 = phi ptr [ %111, %114 ], [ %193, %191 ]
  %122 = phi ptr [ %116, %114 ], [ %130, %191 ]
  %123 = phi ptr [ %17, %114 ], [ %195, %191 ]
  %124 = phi ptr [ %21, %114 ], [ %192, %191 ]
  %125 = and i32 %120, 15
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %119
  %128 = getelementptr inbounds %struct.of_, ptr %122, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %128, ptr noundef nonnull align 4 dereferenceable(1024) %5, i64 1024, i1 false), !tbaa.struct !50
  br label %129

129:                                              ; preds = %127, %119
  %130 = phi ptr [ %122, %119 ], [ %128, %127 ]
  br label %131

131:                                              ; preds = %131, %129
  %132 = phi i64 [ 0, %129 ], [ %140, %131 ]
  %133 = getelementptr inbounds [256 x i32], ptr %5, i64 0, i64 %132
  %134 = load i32, ptr %133, align 4, !tbaa !5
  %135 = getelementptr inbounds [256 x i32], ptr %130, i64 0, i64 %132
  %136 = load i32, ptr %135, align 4, !tbaa !5
  %137 = sub i32 %134, %136
  %138 = trunc i32 %137 to i16
  %139 = getelementptr inbounds [256 x i16], ptr %123, i64 0, i64 %132
  store i16 %138, ptr %139, align 2, !tbaa !51
  %140 = add nuw nsw i64 %132, 1
  %141 = icmp eq i64 %140, 256
  br i1 %141, label %142, label %131, !llvm.loop !53

142:                                              ; preds = %131
  %143 = shl i32 %120, 12
  %144 = sub i32 %117, %143
  %145 = icmp ult i32 %144, 2
  br i1 %145, label %191, label %146

146:                                              ; preds = %142
  %147 = lshr i32 %144, 1
  %148 = tail call i32 @llvm.umin.i32(i32 %147, i32 2048)
  br label %149

149:                                              ; preds = %149, %146
  %150 = phi ptr [ %188, %149 ], [ %121, %146 ]
  %151 = phi i32 [ %187, %149 ], [ %148, %146 ]
  %152 = phi ptr [ %189, %149 ], [ %124, %146 ]
  %153 = load i8, ptr %150, align 1, !tbaa !34
  %154 = zext i8 %153 to i64
  %155 = getelementptr inbounds [256 x i32], ptr %5, i64 0, i64 %154
  %156 = load i32, ptr %155, align 4, !tbaa !5
  %157 = add i32 %156, 1
  store i32 %157, ptr %155, align 4, !tbaa !5
  %158 = getelementptr inbounds [256 x i16], ptr %123, i64 0, i64 %154
  %159 = load i16, ptr %158, align 2, !tbaa !51
  %160 = zext i16 %159 to i32
  %161 = getelementptr inbounds [256 x i32], ptr %130, i64 0, i64 %154
  %162 = load i32, ptr %161, align 4, !tbaa !5
  %163 = add i32 %162, %160
  %164 = sub i32 %156, %163
  %165 = getelementptr inbounds i8, ptr %150, i64 1
  %166 = load i8, ptr %165, align 1, !tbaa !34
  %167 = zext i8 %166 to i64
  %168 = getelementptr inbounds [256 x i32], ptr %5, i64 0, i64 %167
  %169 = load i32, ptr %168, align 4, !tbaa !5
  %170 = add i32 %169, 1
  store i32 %170, ptr %168, align 4, !tbaa !5
  %171 = getelementptr inbounds [256 x i16], ptr %123, i64 0, i64 %167
  %172 = load i16, ptr %171, align 2, !tbaa !51
  %173 = zext i16 %172 to i32
  %174 = getelementptr inbounds [256 x i32], ptr %130, i64 0, i64 %167
  %175 = load i32, ptr %174, align 4, !tbaa !5
  %176 = add i32 %175, %173
  %177 = sub i32 %169, %176
  %178 = lshr i32 %164, 4
  %179 = trunc i32 %178 to i8
  store i8 %179, ptr %152, align 1, !tbaa !34
  %180 = shl i32 %164, 4
  %181 = lshr i32 %177, 8
  %182 = add i32 %181, %180
  %183 = trunc i32 %182 to i8
  %184 = getelementptr inbounds i8, ptr %152, i64 1
  store i8 %183, ptr %184, align 1, !tbaa !34
  %185 = trunc i32 %177 to i8
  %186 = getelementptr inbounds i8, ptr %152, i64 2
  store i8 %185, ptr %186, align 1, !tbaa !34
  %187 = add nsw i32 %151, -1
  %188 = getelementptr inbounds i8, ptr %150, i64 2
  %189 = getelementptr inbounds i8, ptr %152, i64 3
  %190 = icmp sgt i32 %151, 1
  br i1 %190, label %149, label %191, !llvm.loop !54

191:                                              ; preds = %149, %142
  %192 = phi ptr [ %124, %142 ], [ %189, %149 ]
  %193 = phi ptr [ %121, %142 ], [ %188, %149 ]
  %194 = add nuw i32 %120, 1
  %195 = getelementptr inbounds %struct.offsets_4k, ptr %123, i64 1
  %196 = icmp eq i32 %194, %118
  br i1 %196, label %197, label %119, !llvm.loop !55

197:                                              ; preds = %191, %107
  %198 = and i32 %109, 1
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %209, label %200

200:                                              ; preds = %197
  %201 = load ptr, ptr %110, align 8, !tbaa !44
  %202 = sext i32 %109 to i64
  %203 = getelementptr inbounds i8, ptr %201, i64 %202
  %204 = load i8, ptr %203, align 1, !tbaa !34
  %205 = zext i8 %204 to i64
  %206 = getelementptr inbounds [256 x i32], ptr %5, i64 0, i64 %205
  %207 = load i32, ptr %206, align 4, !tbaa !5
  %208 = add i32 %207, -1
  store i32 %208, ptr %206, align 4, !tbaa !5
  br label %209

209:                                              ; preds = %200, %197
  br label %210

210:                                              ; preds = %209, %210
  %211 = phi i64 [ %216, %210 ], [ 0, %209 ]
  %212 = phi i32 [ %215, %210 ], [ 0, %209 ]
  %213 = getelementptr inbounds [256 x i32], ptr %5, i64 0, i64 %211
  %214 = load i32, ptr %213, align 4, !tbaa !5
  %215 = add i32 %214, %212
  store i32 %212, ptr %213, align 4, !tbaa !5
  %216 = add nuw nsw i64 %211, 1
  %217 = icmp eq i64 %216, 256
  br i1 %217, label %218, label %210, !llvm.loop !56

218:                                              ; preds = %210
  %219 = add nsw i32 %109, 65535
  %220 = ashr i32 %219, 16
  %221 = icmp sgt i32 %220, 0
  br i1 %221, label %222, label %238

222:                                              ; preds = %218, %234
  %223 = phi i32 [ %236, %234 ], [ %220, %218 ]
  %224 = phi ptr [ %235, %234 ], [ %13, %218 ]
  br label %225

225:                                              ; preds = %225, %222
  %226 = phi i64 [ 0, %222 ], [ %232, %225 ]
  %227 = getelementptr inbounds [256 x i32], ptr %5, i64 0, i64 %226
  %228 = load i32, ptr %227, align 4, !tbaa !5
  %229 = getelementptr inbounds [256 x i32], ptr %224, i64 0, i64 %226
  %230 = load i32, ptr %229, align 4, !tbaa !5
  %231 = add i32 %230, %228
  store i32 %231, ptr %229, align 4, !tbaa !5
  %232 = add nuw nsw i64 %226, 1
  %233 = icmp eq i64 %232, 256
  br i1 %233, label %234, label %225, !llvm.loop !57

234:                                              ; preds = %225
  %235 = getelementptr inbounds %struct.of_, ptr %224, i64 1
  %236 = add nsw i32 %223, -1
  %237 = icmp sgt i32 %223, 1
  br i1 %237, label %222, label %238, !llvm.loop !58

238:                                              ; preds = %234, %218
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #11
  %239 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 7
  store i32 0, ptr %239, align 8, !tbaa !32
  %240 = load i32, ptr %22, align 4, !tbaa !23
  %241 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 11
  store i32 %240, ptr %241, align 8, !tbaa !59
  br label %242

242:                                              ; preds = %238, %74
  %243 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 7
  %244 = icmp ult ptr %7, %9
  br i1 %244, label %245, label %302

245:                                              ; preds = %242
  %246 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 6
  %247 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 11
  %248 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 4
  br label %249

249:                                              ; preds = %245, %280
  %250 = phi ptr [ %7, %245 ], [ %264, %280 ]
  %251 = load i32, ptr %243, align 8, !tbaa !32
  %252 = load i32, ptr %246, align 4, !tbaa !9
  %253 = icmp slt i32 %251, %252
  br i1 %253, label %254, label %302

254:                                              ; preds = %249
  %255 = load i32, ptr %247, align 8, !tbaa !59
  %256 = load ptr, ptr %248, align 8, !tbaa !44
  %257 = sext i32 %255 to i64
  %258 = getelementptr inbounds i8, ptr %256, i64 %257
  %259 = load i8, ptr %258, align 1, !tbaa !34
  %260 = ashr i32 %255, 1
  %261 = add nsw i32 %260, %255
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i8, ptr %21, i64 %262
  %264 = getelementptr inbounds i8, ptr %250, i64 1
  store i8 %259, ptr %264, align 1, !tbaa !34
  %265 = and i32 %255, 1
  %266 = icmp eq i32 %265, 0
  %267 = load i8, ptr %263, align 1, !tbaa !34
  br i1 %266, label %268, label %274

268:                                              ; preds = %254
  %269 = zext i8 %267 to i32
  %270 = shl nuw nsw i32 %269, 4
  %271 = getelementptr inbounds i8, ptr %263, i64 1
  %272 = load i8, ptr %271, align 1, !tbaa !34
  %273 = lshr i8 %272, 4
  br label %280

274:                                              ; preds = %254
  %275 = and i8 %267, 15
  %276 = zext nneg i8 %275 to i32
  %277 = shl nuw nsw i32 %276, 8
  %278 = getelementptr inbounds i8, ptr %263, i64 1
  %279 = load i8, ptr %278, align 1, !tbaa !34
  br label %280

280:                                              ; preds = %274, %268
  %281 = phi i8 [ %279, %274 ], [ %273, %268 ]
  %282 = phi i32 [ %277, %274 ], [ %270, %268 ]
  %283 = zext i8 %281 to i32
  %284 = or disjoint i32 %282, %283
  %285 = ashr i32 %255, 16
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.of_, ptr %13, i64 %286
  %288 = zext i8 %259 to i64
  %289 = getelementptr inbounds [256 x i32], ptr %287, i64 0, i64 %288
  %290 = load i32, ptr %289, align 4, !tbaa !5
  %291 = ashr i32 %255, 12
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.offsets_4k, ptr %17, i64 %292
  %294 = getelementptr inbounds [256 x i16], ptr %293, i64 0, i64 %288
  %295 = load i16, ptr %294, align 2, !tbaa !51
  %296 = zext i16 %295 to i32
  %297 = add i32 %290, %284
  %298 = add i32 %297, %296
  store i32 %298, ptr %247, align 8, !tbaa !59
  %299 = load i32, ptr %243, align 8, !tbaa !32
  %300 = add nsw i32 %299, 1
  store i32 %300, ptr %243, align 8, !tbaa !32
  %301 = icmp eq ptr %264, %9
  br i1 %301, label %302, label %249, !llvm.loop !60

302:                                              ; preds = %249, %280, %242
  %303 = phi ptr [ %7, %242 ], [ %250, %249 ], [ %264, %280 ]
  %304 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 7
  %305 = load i32, ptr %304, align 8, !tbaa !32
  %306 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 6
  %307 = load i32, ptr %306, align 4, !tbaa !9
  %308 = icmp eq i32 %305, %307
  br i1 %308, label %309, label %310

309:                                              ; preds = %302
  store i32 -1, ptr %22, align 4, !tbaa !23
  store i32 1, ptr %75, align 8, !tbaa !46
  br label %310

310:                                              ; preds = %309, %302
  store ptr %303, ptr %6, align 8, !tbaa !24
  %311 = icmp eq ptr %303, %9
  %312 = zext i1 %311 to i32
  br label %313

313:                                              ; preds = %103, %310, %71
  %314 = phi i32 [ %73, %71 ], [ %312, %310 ], [ 0, %103 ]
  ret i32 %314
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @bwbs_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #3 {
  switch i32 %2, label %12 [
    i32 0, label %7
    i32 1, label %5
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.stream_buffered_state_s, ptr %0, i64 0, i32 4
  br label %9

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 8
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %6, %5 ], [ %8, %7 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !27
  store ptr %11, ptr %3, align 8, !tbaa !27
  br label %12

12:                                               ; preds = %9, %4
  %13 = phi ptr [ null, %4 ], [ @ptr_struct_procs, %9 ]
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define internal void @bwbs_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.stream_buffered_state_s, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !12
  %6 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %5, ptr noundef %2) #11
  store ptr %6, ptr %4, align 8, !tbaa !12
  %7 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %0, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !21
  %9 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %8, ptr noundef %2) #11
  store ptr %9, ptr %7, align 8, !tbaa !21
  ret void
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @bwbs_compare_rotations(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 {
  %3 = load ptr, ptr @bwbs_compare_ss, align 8, !tbaa !27
  %4 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = load i32, ptr %0, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %5, i64 %7
  %9 = load i32, ptr %1, align 4, !tbaa !5
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %5, i64 %10
  %12 = load i8, ptr %8, align 1, !tbaa !34
  %13 = load i8, ptr %11, align 1, !tbaa !34
  %14 = icmp eq i8 %12, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = icmp ult i8 %12, %13
  %17 = select i1 %16, i32 -1, i32 1
  br label %76

18:                                               ; preds = %2
  %19 = icmp slt i32 %6, %9
  %20 = tail call i32 @llvm.smax.i32(i32 %6, i32 %9)
  %21 = sext i32 %20 to i64
  %22 = select i1 %19, ptr %8, ptr %11
  %23 = select i1 %19, i32 1, i32 -1
  %24 = getelementptr inbounds i8, ptr %5, i64 %21
  %25 = getelementptr inbounds %struct.stream_BWBS_state_s, ptr %3, i64 0, i32 9
  %26 = load i32, ptr %25, align 8, !tbaa !33
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %5, i64 %27
  br label %29

29:                                               ; preds = %37, %18
  %30 = phi ptr [ %24, %18 ], [ %32, %37 ]
  %31 = phi ptr [ %22, %18 ], [ %33, %37 ]
  %32 = getelementptr inbounds i8, ptr %30, i64 1
  %33 = getelementptr inbounds i8, ptr %31, i64 1
  %34 = icmp ult ptr %32, %28
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = icmp ult ptr %33, %28
  br i1 %36, label %48, label %45

37:                                               ; preds = %29
  %38 = load i8, ptr %33, align 1, !tbaa !34
  %39 = load i8, ptr %32, align 1, !tbaa !34
  %40 = icmp eq i8 %38, %39
  br i1 %40, label %29, label %41, !llvm.loop !61

41:                                               ; preds = %37
  %42 = icmp ult i8 %38, %39
  %43 = sub nsw i32 0, %23
  %44 = select i1 %42, i32 %43, i32 %23
  br label %76

45:                                               ; preds = %58, %35
  %46 = phi ptr [ %5, %35 ], [ %60, %58 ]
  %47 = icmp ult ptr %5, %22
  br i1 %47, label %62, label %76

48:                                               ; preds = %35, %58
  %49 = phi ptr [ %59, %58 ], [ %33, %35 ]
  %50 = phi ptr [ %60, %58 ], [ %5, %35 ]
  %51 = load i8, ptr %49, align 1, !tbaa !34
  %52 = load i8, ptr %50, align 1, !tbaa !34
  %53 = icmp eq i8 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %48
  %55 = icmp ult i8 %51, %52
  %56 = sub nsw i32 0, %23
  %57 = select i1 %55, i32 %56, i32 %23
  br label %76

58:                                               ; preds = %48
  %59 = getelementptr inbounds i8, ptr %49, i64 1
  %60 = getelementptr inbounds i8, ptr %50, i64 1
  %61 = icmp ult ptr %59, %28
  br i1 %61, label %48, label %45, !llvm.loop !62

62:                                               ; preds = %45, %72
  %63 = phi ptr [ %73, %72 ], [ %5, %45 ]
  %64 = phi ptr [ %74, %72 ], [ %46, %45 ]
  %65 = load i8, ptr %63, align 1, !tbaa !34
  %66 = load i8, ptr %64, align 1, !tbaa !34
  %67 = icmp eq i8 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %62
  %69 = icmp ult i8 %65, %66
  %70 = sub nsw i32 0, %23
  %71 = select i1 %69, i32 %70, i32 %23
  br label %76

72:                                               ; preds = %62
  %73 = getelementptr inbounds i8, ptr %63, i64 1
  %74 = getelementptr inbounds i8, ptr %64, i64 1
  %75 = icmp eq ptr %73, %22
  br i1 %75, label %76, label %62, !llvm.loop !63

76:                                               ; preds = %72, %45, %68, %54, %41, %15
  %77 = phi i32 [ %17, %15 ], [ %44, %41 ], [ %57, %54 ], [ %71, %68 ], [ 0, %45 ], [ 0, %72 ]
  ret i32 %77
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

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
!9 = !{!10, !6, i64 44}
!10 = !{!"stream_BWBS_state_s", !11, i64 0, !11, i64 8, !11, i64 16, !6, i64 24, !11, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !11, i64 56, !6, i64 64, !6, i64 68, !6, i64 72}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !11, i64 32}
!13 = !{!"stream_buffered_state_s", !11, i64 0, !11, i64 8, !11, i64 16, !6, i64 24, !11, i64 32, !6, i64 40, !6, i64 44, !6, i64 48}
!14 = !{!13, !6, i64 40}
!15 = !{!13, !6, i64 48}
!16 = !{!17, !11, i64 8}
!17 = !{!"stream_state_s", !11, i64 0, !11, i64 8, !11, i64 16}
!18 = !{!19, !11, i64 0}
!19 = !{!"gs_memory_s", !20, i64 0}
!20 = !{!"gs_memory_procs_s", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152}
!21 = !{!10, !11, i64 56}
!22 = !{!19, !11, i64 88}
!23 = !{!10, !6, i64 68}
!24 = !{!25, !11, i64 8}
!25 = !{!"stream_cursor_write_s", !11, i64 0, !11, i64 8, !11, i64 16}
!26 = !{!25, !11, i64 16}
!27 = !{!11, !11, i64 0}
!28 = !{!29, !11, i64 8}
!29 = !{!"stream_cursor_read_s", !11, i64 0, !11, i64 8, !11, i64 16}
!30 = !{!13, !6, i64 44}
!31 = !{!29, !11, i64 0}
!32 = !{!10, !6, i64 48}
!33 = !{!10, !6, i64 64}
!34 = !{!7, !7, i64 0}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.unroll.disable"}
!37 = distinct !{!37, !36}
!38 = distinct !{!38, !36}
!39 = distinct !{!39, !36}
!40 = distinct !{!40, !36}
!41 = distinct !{!41, !36}
!42 = distinct !{!42, !36}
!43 = distinct !{!43, !36}
!44 = !{!10, !11, i64 32}
!45 = distinct !{!45, !36}
!46 = !{!10, !6, i64 40}
!47 = !{!10, !6, i64 24}
!48 = distinct !{!48, !36}
!49 = distinct !{!49, !36}
!50 = !{i64 0, i64 1024, !34}
!51 = !{!52, !52, i64 0}
!52 = !{!"short", !7, i64 0}
!53 = distinct !{!53, !36}
!54 = distinct !{!54, !36}
!55 = distinct !{!55, !36}
!56 = distinct !{!56, !36}
!57 = distinct !{!57, !36}
!58 = distinct !{!58, !36}
!59 = !{!10, !6, i64 72}
!60 = distinct !{!60, !36}
!61 = distinct !{!61, !36}
!62 = distinct !{!62, !36}
!63 = distinct !{!63, !36}
