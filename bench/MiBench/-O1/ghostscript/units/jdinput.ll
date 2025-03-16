; ModuleID = 'jdinput.c'
source_filename = "jdinput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [64 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_input_controller = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.my_input_controller = type { %struct.jpeg_input_controller, i32 }
%struct.jpeg_marker_reader = type { ptr, ptr, ptr, ptr, [16 x ptr], i32, i32, i32, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_d_coef_controller = type { ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local void @jinit_input_controller(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef 0, i64 noundef 48) #5
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 77
  store ptr %5, ptr %6, align 8, !tbaa !16
  store ptr @consume_markers, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.jpeg_input_controller, ptr %5, i64 0, i32 1
  store ptr @reset_input_controller, ptr %7, align 8, !tbaa !20
  %8 = getelementptr inbounds %struct.jpeg_input_controller, ptr %5, i64 0, i32 2
  store ptr @start_input_pass, ptr %8, align 8, !tbaa !21
  %9 = getelementptr inbounds %struct.jpeg_input_controller, ptr %5, i64 0, i32 3
  store ptr @finish_input_pass, ptr %9, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.jpeg_input_controller, ptr %5, i64 0, i32 4
  store i32 0, ptr %10, align 8, !tbaa !23
  %11 = getelementptr inbounds %struct.jpeg_input_controller, ptr %5, i64 0, i32 5
  store i32 0, ptr %11, align 4, !tbaa !24
  %12 = getelementptr inbounds %struct.my_input_controller, ptr %5, i64 0, i32 1
  store i32 1, ptr %12, align 8, !tbaa !25
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @consume_markers(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 77
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = getelementptr inbounds %struct.jpeg_input_controller, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !24
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %201

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 78
  %9 = load ptr, ptr %8, align 8, !tbaa !26
  %10 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !27
  %12 = tail call i32 %11(ptr noundef %0) #5
  switch i32 %12, label %201 [
    i32 1, label %13
    i32 2, label %181
  ]

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.my_input_controller, ptr %3, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !25
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %172, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 7
  %19 = load i32, ptr %18, align 4, !tbaa !29
  %20 = icmp ugt i32 %19, 65500
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !30
  %24 = icmp ugt i32 %23, 65500
  br i1 %24, label %25, label %31

25:                                               ; preds = %21, %17
  %26 = load ptr, ptr %0, align 8, !tbaa !31
  %27 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %26, i64 0, i32 5
  store i32 40, ptr %27, align 8, !tbaa !32
  %28 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %26, i64 0, i32 6
  store i32 65500, ptr %28, align 4, !tbaa !34
  %29 = load ptr, ptr %0, align 8, !tbaa !31
  %30 = load ptr, ptr %29, align 8, !tbaa !35
  tail call void %30(ptr noundef nonnull %0) #5
  br label %31

31:                                               ; preds = %25, %21
  %32 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 42
  %33 = load i32, ptr %32, align 8, !tbaa !36
  %34 = icmp eq i32 %33, 8
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %0, align 8, !tbaa !31
  %37 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %36, i64 0, i32 5
  store i32 13, ptr %37, align 8, !tbaa !32
  %38 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %36, i64 0, i32 6
  store i32 %33, ptr %38, align 4, !tbaa !34
  %39 = load ptr, ptr %0, align 8, !tbaa !31
  %40 = load ptr, ptr %39, align 8, !tbaa !35
  tail call void %40(ptr noundef nonnull %0) #5
  br label %41

41:                                               ; preds = %35, %31
  %42 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 8
  %43 = load i32, ptr %42, align 8, !tbaa !37
  %44 = icmp sgt i32 %43, 10
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load ptr, ptr %0, align 8, !tbaa !31
  %47 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %46, i64 0, i32 5
  store i32 24, ptr %47, align 8, !tbaa !32
  %48 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %46, i64 0, i32 6
  store i32 %43, ptr %48, align 4, !tbaa !34
  %49 = load ptr, ptr %0, align 8, !tbaa !31
  %50 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %49, i64 0, i32 6, i32 0, i64 1
  store i32 10, ptr %50, align 4, !tbaa !34
  %51 = load ptr, ptr %0, align 8, !tbaa !31
  %52 = load ptr, ptr %51, align 8, !tbaa !35
  tail call void %52(ptr noundef nonnull %0) #5
  br label %53

53:                                               ; preds = %45, %41
  %54 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 57
  store i32 1, ptr %54, align 4, !tbaa !38
  %55 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 58
  store i32 1, ptr %55, align 8, !tbaa !39
  %56 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 43
  %57 = load i32, ptr %42, align 8, !tbaa !37
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %89

59:                                               ; preds = %53
  %60 = load ptr, ptr %56, align 8, !tbaa !40
  br label %61

61:                                               ; preds = %77, %59
  %62 = phi ptr [ %86, %77 ], [ %60, %59 ]
  %63 = phi i32 [ %85, %77 ], [ 0, %59 ]
  %64 = getelementptr inbounds %struct.jpeg_component_info, ptr %62, i64 0, i32 2
  %65 = load i32, ptr %64, align 8, !tbaa !41
  %66 = add i32 %65, -5
  %67 = icmp ult i32 %66, -4
  br i1 %67, label %73, label %68

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.jpeg_component_info, ptr %62, i64 0, i32 3
  %70 = load i32, ptr %69, align 4, !tbaa !43
  %71 = add i32 %70, -5
  %72 = icmp ult i32 %71, -4
  br i1 %72, label %73, label %77

73:                                               ; preds = %68, %61
  %74 = load ptr, ptr %0, align 8, !tbaa !31
  %75 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %74, i64 0, i32 5
  store i32 16, ptr %75, align 8, !tbaa !32
  %76 = load ptr, ptr %74, align 8, !tbaa !35
  tail call void %76(ptr noundef nonnull %0) #5
  br label %77

77:                                               ; preds = %73, %68
  %78 = load i32, ptr %54, align 4, !tbaa !38
  %79 = load i32, ptr %64, align 8, !tbaa !41
  %80 = tail call i32 @llvm.smax.i32(i32 %78, i32 %79)
  store i32 %80, ptr %54, align 4, !tbaa !38
  %81 = load i32, ptr %55, align 8, !tbaa !39
  %82 = getelementptr inbounds %struct.jpeg_component_info, ptr %62, i64 0, i32 3
  %83 = load i32, ptr %82, align 4, !tbaa !43
  %84 = tail call i32 @llvm.smax.i32(i32 %81, i32 %83)
  store i32 %84, ptr %55, align 8, !tbaa !39
  %85 = add nuw nsw i32 %63, 1
  %86 = getelementptr inbounds %struct.jpeg_component_info, ptr %62, i64 1
  %87 = load i32, ptr %42, align 8, !tbaa !37
  %88 = icmp slt i32 %85, %87
  br i1 %88, label %61, label %89, !llvm.loop !44

89:                                               ; preds = %77, %53
  %90 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 59
  store i32 8, ptr %90, align 4, !tbaa !46
  %91 = load i32, ptr %42, align 8, !tbaa !37
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %150

93:                                               ; preds = %89
  %94 = load ptr, ptr %56, align 8, !tbaa !40
  %95 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 6
  br label %96

96:                                               ; preds = %96, %93
  %97 = phi ptr [ %94, %93 ], [ %147, %96 ]
  %98 = phi i32 [ 0, %93 ], [ %146, %96 ]
  %99 = getelementptr inbounds %struct.jpeg_component_info, ptr %97, i64 0, i32 9
  store i32 8, ptr %99, align 4, !tbaa !47
  %100 = load i32, ptr %95, align 8, !tbaa !30
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.jpeg_component_info, ptr %97, i64 0, i32 2
  %103 = load i32, ptr %102, align 8, !tbaa !41
  %104 = sext i32 %103 to i64
  %105 = mul nsw i64 %104, %101
  %106 = load i32, ptr %54, align 4, !tbaa !38
  %107 = shl nsw i32 %106, 3
  %108 = sext i32 %107 to i64
  %109 = tail call i64 @jdiv_round_up(i64 noundef %105, i64 noundef %108) #5
  %110 = trunc i64 %109 to i32
  %111 = getelementptr inbounds %struct.jpeg_component_info, ptr %97, i64 0, i32 7
  store i32 %110, ptr %111, align 4, !tbaa !48
  %112 = load i32, ptr %18, align 4, !tbaa !29
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.jpeg_component_info, ptr %97, i64 0, i32 3
  %115 = load i32, ptr %114, align 4, !tbaa !43
  %116 = sext i32 %115 to i64
  %117 = mul nsw i64 %116, %113
  %118 = load i32, ptr %55, align 8, !tbaa !39
  %119 = shl nsw i32 %118, 3
  %120 = sext i32 %119 to i64
  %121 = tail call i64 @jdiv_round_up(i64 noundef %117, i64 noundef %120) #5
  %122 = trunc i64 %121 to i32
  %123 = getelementptr inbounds %struct.jpeg_component_info, ptr %97, i64 0, i32 8
  store i32 %122, ptr %123, align 8, !tbaa !49
  %124 = load i32, ptr %95, align 8, !tbaa !30
  %125 = zext i32 %124 to i64
  %126 = load i32, ptr %102, align 8, !tbaa !41
  %127 = sext i32 %126 to i64
  %128 = mul nsw i64 %127, %125
  %129 = load i32, ptr %54, align 4, !tbaa !38
  %130 = sext i32 %129 to i64
  %131 = tail call i64 @jdiv_round_up(i64 noundef %128, i64 noundef %130) #5
  %132 = trunc i64 %131 to i32
  %133 = getelementptr inbounds %struct.jpeg_component_info, ptr %97, i64 0, i32 10
  store i32 %132, ptr %133, align 8, !tbaa !50
  %134 = load i32, ptr %18, align 4, !tbaa !29
  %135 = zext i32 %134 to i64
  %136 = load i32, ptr %114, align 4, !tbaa !43
  %137 = sext i32 %136 to i64
  %138 = mul nsw i64 %137, %135
  %139 = load i32, ptr %55, align 8, !tbaa !39
  %140 = sext i32 %139 to i64
  %141 = tail call i64 @jdiv_round_up(i64 noundef %138, i64 noundef %140) #5
  %142 = trunc i64 %141 to i32
  %143 = getelementptr inbounds %struct.jpeg_component_info, ptr %97, i64 0, i32 11
  store i32 %142, ptr %143, align 4, !tbaa !51
  %144 = getelementptr inbounds %struct.jpeg_component_info, ptr %97, i64 0, i32 12
  store i32 1, ptr %144, align 8, !tbaa !52
  %145 = getelementptr inbounds %struct.jpeg_component_info, ptr %97, i64 0, i32 19
  store ptr null, ptr %145, align 8, !tbaa !53
  %146 = add nuw nsw i32 %98, 1
  %147 = getelementptr inbounds %struct.jpeg_component_info, ptr %97, i64 1
  %148 = load i32, ptr %42, align 8, !tbaa !37
  %149 = icmp slt i32 %146, %148
  br i1 %149, label %96, label %150, !llvm.loop !54

150:                                              ; preds = %96, %89
  %151 = load i32, ptr %18, align 4, !tbaa !29
  %152 = zext i32 %151 to i64
  %153 = load i32, ptr %55, align 8, !tbaa !39
  %154 = shl nsw i32 %153, 3
  %155 = sext i32 %154 to i64
  %156 = tail call i64 @jdiv_round_up(i64 noundef %152, i64 noundef %155) #5
  %157 = trunc i64 %156 to i32
  %158 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 60
  store i32 %157, ptr %158, align 8, !tbaa !55
  %159 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 62
  %160 = load i32, ptr %159, align 8, !tbaa !56
  %161 = load i32, ptr %42, align 8, !tbaa !37
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %168, label %163

163:                                              ; preds = %150
  %164 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 44
  %165 = load i32, ptr %164, align 8, !tbaa !57
  %166 = icmp ne i32 %165, 0
  %167 = zext i1 %166 to i32
  br label %168

168:                                              ; preds = %163, %150
  %169 = phi i32 [ 1, %150 ], [ %167, %163 ]
  %170 = load ptr, ptr %2, align 8, !tbaa !16
  %171 = getelementptr inbounds %struct.jpeg_input_controller, ptr %170, i64 0, i32 4
  store i32 %169, ptr %171, align 8, !tbaa !58
  store i32 0, ptr %14, align 8, !tbaa !25
  br label %201

172:                                              ; preds = %13
  %173 = getelementptr inbounds %struct.jpeg_input_controller, ptr %3, i64 0, i32 4
  %174 = load i32, ptr %173, align 8, !tbaa !23
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %172
  %177 = load ptr, ptr %0, align 8, !tbaa !31
  %178 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %177, i64 0, i32 5
  store i32 34, ptr %178, align 8, !tbaa !32
  %179 = load ptr, ptr %177, align 8, !tbaa !35
  tail call void %179(ptr noundef nonnull %0) #5
  br label %180

180:                                              ; preds = %176, %172
  tail call void @start_input_pass(ptr noundef %0)
  br label %201

181:                                              ; preds = %7
  store i32 1, ptr %4, align 4, !tbaa !24
  %182 = getelementptr inbounds %struct.my_input_controller, ptr %3, i64 0, i32 1
  %183 = load i32, ptr %182, align 8, !tbaa !25
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %194, label %185

185:                                              ; preds = %181
  %186 = load ptr, ptr %8, align 8, !tbaa !26
  %187 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %186, i64 0, i32 6
  %188 = load i32, ptr %187, align 4, !tbaa !59
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %201, label %190

190:                                              ; preds = %185
  %191 = load ptr, ptr %0, align 8, !tbaa !31
  %192 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %191, i64 0, i32 5
  store i32 58, ptr %192, align 8, !tbaa !32
  %193 = load ptr, ptr %191, align 8, !tbaa !35
  tail call void %193(ptr noundef nonnull %0) #5
  br label %201

194:                                              ; preds = %181
  %195 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 36
  %196 = load i32, ptr %195, align 4, !tbaa !60
  %197 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 34
  %198 = load i32, ptr %197, align 4, !tbaa !61
  %199 = icmp sgt i32 %196, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %194
  store i32 %198, ptr %195, align 4, !tbaa !60
  br label %201

201:                                              ; preds = %7, %180, %168, %194, %200, %185, %190, %1
  %202 = phi i32 [ 2, %1 ], [ %12, %190 ], [ %12, %185 ], [ %12, %200 ], [ %12, %194 ], [ %12, %168 ], [ %12, %180 ], [ %12, %7 ]
  ret i32 %202
}

; Function Attrs: nounwind uwtable
define internal void @reset_input_controller(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 77
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  store ptr @consume_markers, ptr %3, align 8, !tbaa !17
  %4 = getelementptr inbounds %struct.jpeg_input_controller, ptr %3, i64 0, i32 4
  store i32 0, ptr %4, align 8, !tbaa !23
  %5 = getelementptr inbounds %struct.jpeg_input_controller, ptr %3, i64 0, i32 5
  store i32 0, ptr %5, align 4, !tbaa !24
  %6 = getelementptr inbounds %struct.my_input_controller, ptr %3, i64 0, i32 1
  store i32 1, ptr %6, align 8, !tbaa !25
  %7 = load ptr, ptr %0, align 8, !tbaa !31
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !62
  tail call void %9(ptr noundef nonnull %0) #5
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 78
  %11 = load ptr, ptr %10, align 8, !tbaa !26
  %12 = load ptr, ptr %11, align 8, !tbaa !63
  tail call void %12(ptr noundef nonnull %0) #5
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 38
  store ptr null, ptr %13, align 8, !tbaa !64
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_input_pass(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 62
  %3 = load i32, ptr %2, align 8, !tbaa !56
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %29

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 63
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !48
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 64
  store i32 %9, ptr %10, align 8, !tbaa !66
  %11 = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 8
  %12 = load i32, ptr %11, align 8, !tbaa !49
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 65
  store i32 %12, ptr %13, align 4, !tbaa !67
  %14 = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 13
  store i32 1, ptr %14, align 4, !tbaa !68
  %15 = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 14
  store i32 1, ptr %15, align 8, !tbaa !69
  %16 = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 15
  store i32 1, ptr %16, align 4, !tbaa !70
  %17 = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 9
  %18 = load i32, ptr %17, align 4, !tbaa !47
  %19 = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 16
  store i32 %18, ptr %19, align 8, !tbaa !71
  %20 = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 17
  store i32 1, ptr %20, align 4, !tbaa !72
  %21 = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !43
  %23 = urem i32 %12, %22
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 %22, i32 %23
  %26 = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 18
  store i32 %25, ptr %26, align 8, !tbaa !73
  %27 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 66
  store i32 1, ptr %27, align 8, !tbaa !74
  %28 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 67
  store i32 0, ptr %28, align 4, !tbaa !75
  br label %116

29:                                               ; preds = %1
  %30 = add i32 %3, -5
  %31 = icmp ult i32 %30, -4
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load ptr, ptr %0, align 8, !tbaa !31
  %34 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %33, i64 0, i32 5
  store i32 24, ptr %34, align 8, !tbaa !32
  %35 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %33, i64 0, i32 6
  store i32 %3, ptr %35, align 4, !tbaa !34
  %36 = load ptr, ptr %0, align 8, !tbaa !31
  %37 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %36, i64 0, i32 6, i32 0, i64 1
  store i32 4, ptr %37, align 4, !tbaa !34
  %38 = load ptr, ptr %0, align 8, !tbaa !31
  %39 = load ptr, ptr %38, align 8, !tbaa !35
  tail call void %39(ptr noundef nonnull %0) #5
  br label %40

40:                                               ; preds = %32, %29
  %41 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 6
  %42 = load i32, ptr %41, align 8, !tbaa !30
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 57
  %45 = load i32, ptr %44, align 4, !tbaa !38
  %46 = shl nsw i32 %45, 3
  %47 = sext i32 %46 to i64
  %48 = tail call i64 @jdiv_round_up(i64 noundef %43, i64 noundef %47) #5
  %49 = trunc i64 %48 to i32
  %50 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 64
  store i32 %49, ptr %50, align 8, !tbaa !66
  %51 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 7
  %52 = load i32, ptr %51, align 4, !tbaa !29
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 58
  %55 = load i32, ptr %54, align 8, !tbaa !39
  %56 = shl nsw i32 %55, 3
  %57 = sext i32 %56 to i64
  %58 = tail call i64 @jdiv_round_up(i64 noundef %53, i64 noundef %57) #5
  %59 = trunc i64 %58 to i32
  %60 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 65
  store i32 %59, ptr %60, align 4, !tbaa !67
  %61 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 66
  store i32 0, ptr %61, align 8, !tbaa !74
  %62 = load i32, ptr %2, align 8, !tbaa !56
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %116

64:                                               ; preds = %40, %111
  %65 = phi i64 [ %112, %111 ], [ 0, %40 ]
  %66 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 63, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !65
  %68 = getelementptr inbounds %struct.jpeg_component_info, ptr %67, i64 0, i32 2
  %69 = load i32, ptr %68, align 8, !tbaa !41
  %70 = getelementptr inbounds %struct.jpeg_component_info, ptr %67, i64 0, i32 13
  store i32 %69, ptr %70, align 4, !tbaa !68
  %71 = getelementptr inbounds %struct.jpeg_component_info, ptr %67, i64 0, i32 3
  %72 = load i32, ptr %71, align 4, !tbaa !43
  %73 = getelementptr inbounds %struct.jpeg_component_info, ptr %67, i64 0, i32 14
  store i32 %72, ptr %73, align 8, !tbaa !69
  %74 = mul nsw i32 %72, %69
  %75 = getelementptr inbounds %struct.jpeg_component_info, ptr %67, i64 0, i32 15
  store i32 %74, ptr %75, align 4, !tbaa !70
  %76 = getelementptr inbounds %struct.jpeg_component_info, ptr %67, i64 0, i32 9
  %77 = load i32, ptr %76, align 4, !tbaa !47
  %78 = mul nsw i32 %77, %69
  %79 = getelementptr inbounds %struct.jpeg_component_info, ptr %67, i64 0, i32 16
  store i32 %78, ptr %79, align 8, !tbaa !71
  %80 = getelementptr inbounds %struct.jpeg_component_info, ptr %67, i64 0, i32 7
  %81 = load i32, ptr %80, align 4, !tbaa !48
  %82 = urem i32 %81, %69
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %83, i32 %69, i32 %82
  %85 = getelementptr inbounds %struct.jpeg_component_info, ptr %67, i64 0, i32 17
  store i32 %84, ptr %85, align 4, !tbaa !72
  %86 = getelementptr inbounds %struct.jpeg_component_info, ptr %67, i64 0, i32 8
  %87 = load i32, ptr %86, align 8, !tbaa !49
  %88 = urem i32 %87, %72
  %89 = icmp eq i32 %88, 0
  %90 = select i1 %89, i32 %72, i32 %88
  %91 = getelementptr inbounds %struct.jpeg_component_info, ptr %67, i64 0, i32 18
  store i32 %90, ptr %91, align 8, !tbaa !73
  %92 = load i32, ptr %61, align 8, !tbaa !74
  %93 = add nsw i32 %92, %74
  %94 = icmp sgt i32 %93, 64
  br i1 %94, label %95, label %99

95:                                               ; preds = %64
  %96 = load ptr, ptr %0, align 8, !tbaa !31
  %97 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %96, i64 0, i32 5
  store i32 11, ptr %97, align 8, !tbaa !32
  %98 = load ptr, ptr %96, align 8, !tbaa !35
  tail call void %98(ptr noundef nonnull %0) #5
  br label %99

99:                                               ; preds = %95, %64
  %100 = icmp sgt i32 %74, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %99
  %102 = trunc i64 %65 to i32
  br label %103

103:                                              ; preds = %101, %103
  %104 = phi i32 [ %105, %103 ], [ %74, %101 ]
  %105 = add nsw i32 %104, -1
  %106 = load i32, ptr %61, align 8, !tbaa !74
  %107 = add nsw i32 %106, 1
  store i32 %107, ptr %61, align 8, !tbaa !74
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 67, i64 %108
  store i32 %102, ptr %109, align 4, !tbaa !75
  %110 = icmp sgt i32 %104, 1
  br i1 %110, label %103, label %111, !llvm.loop !76

111:                                              ; preds = %103, %99
  %112 = add nuw nsw i64 %65, 1
  %113 = load i32, ptr %2, align 8, !tbaa !56
  %114 = sext i32 %113 to i64
  %115 = icmp slt i64 %112, %114
  br i1 %115, label %64, label %116, !llvm.loop !77

116:                                              ; preds = %111, %5, %40
  %117 = load i32, ptr %2, align 8, !tbaa !56
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %155

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  br label %121

121:                                              ; preds = %150, %119
  %122 = phi i64 [ 0, %119 ], [ %151, %150 ]
  %123 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 63, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !65
  %125 = getelementptr inbounds %struct.jpeg_component_info, ptr %124, i64 0, i32 19
  %126 = load ptr, ptr %125, align 8, !tbaa !53
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %150

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.jpeg_component_info, ptr %124, i64 0, i32 4
  %130 = load i32, ptr %129, align 8, !tbaa !78
  %131 = icmp ugt i32 %130, 3
  br i1 %131, label %137, label %132

132:                                              ; preds = %128
  %133 = zext nneg i32 %130 to i64
  %134 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 39, i64 %133
  %135 = load ptr, ptr %134, align 8, !tbaa !65
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %143

137:                                              ; preds = %132, %128
  %138 = load ptr, ptr %0, align 8, !tbaa !31
  %139 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %138, i64 0, i32 5
  store i32 51, ptr %139, align 8, !tbaa !32
  %140 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %138, i64 0, i32 6
  store i32 %130, ptr %140, align 4, !tbaa !34
  %141 = load ptr, ptr %0, align 8, !tbaa !31
  %142 = load ptr, ptr %141, align 8, !tbaa !35
  tail call void %142(ptr noundef nonnull %0) #5
  br label %143

143:                                              ; preds = %137, %132
  %144 = load ptr, ptr %120, align 8, !tbaa !5
  %145 = load ptr, ptr %144, align 8, !tbaa !13
  %146 = tail call ptr %145(ptr noundef %0, i32 noundef 1, i64 noundef 132) #5
  %147 = sext i32 %130 to i64
  %148 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 39, i64 %147
  %149 = load ptr, ptr %148, align 8, !tbaa !65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(132) %146, ptr noundef nonnull align 1 dereferenceable(132) %149, i64 132, i1 false)
  store ptr %146, ptr %125, align 8, !tbaa !53
  br label %150

150:                                              ; preds = %143, %121
  %151 = add nuw nsw i64 %122, 1
  %152 = load i32, ptr %2, align 8, !tbaa !56
  %153 = sext i32 %152 to i64
  %154 = icmp slt i64 %151, %153
  br i1 %154, label %121, label %155, !llvm.loop !79

155:                                              ; preds = %150, %116
  %156 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 79
  %157 = load ptr, ptr %156, align 8, !tbaa !80
  %158 = load ptr, ptr %157, align 8, !tbaa !81
  tail call void %158(ptr noundef %0) #5
  %159 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 75
  %160 = load ptr, ptr %159, align 8, !tbaa !83
  %161 = load ptr, ptr %160, align 8, !tbaa !84
  tail call void %161(ptr noundef %0) #5
  %162 = load ptr, ptr %159, align 8, !tbaa !83
  %163 = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %162, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !86
  %165 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 77
  %166 = load ptr, ptr %165, align 8, !tbaa !16
  store ptr %164, ptr %166, align 8, !tbaa !87
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @finish_input_pass(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 77
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  store ptr @consume_markers, ptr %3, align 8, !tbaa !87
  ret void
}

declare i64 @jdiv_round_up(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 8}
!6 = !{!"jpeg_decompress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !11, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !7, i64 152, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !7, i64 184, !8, i64 192, !8, i64 224, !8, i64 256, !10, i64 288, !7, i64 296, !10, i64 304, !10, i64 308, !8, i64 312, !8, i64 328, !8, i64 344, !10, i64 360, !10, i64 364, !8, i64 368, !12, i64 370, !12, i64 372, !10, i64 376, !8, i64 380, !10, i64 384, !10, i64 388, !10, i64 392, !10, i64 396, !10, i64 400, !7, i64 408, !10, i64 416, !8, i64 424, !10, i64 456, !10, i64 460, !10, i64 464, !8, i64 468, !10, i64 724, !10, i64 728, !10, i64 732, !10, i64 736, !10, i64 740, !7, i64 744, !7, i64 752, !7, i64 760, !7, i64 768, !7, i64 776, !7, i64 784, !7, i64 792, !7, i64 800, !7, i64 808, !7, i64 816, !7, i64 824}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!14, !7, i64 0}
!14 = !{!"jpeg_memory_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !15, i64 88}
!15 = !{!"long", !8, i64 0}
!16 = !{!6, !7, i64 776}
!17 = !{!18, !7, i64 0}
!18 = !{!"", !19, i64 0, !10, i64 40}
!19 = !{!"jpeg_input_controller", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !10, i64 32, !10, i64 36}
!20 = !{!18, !7, i64 8}
!21 = !{!18, !7, i64 16}
!22 = !{!18, !7, i64 24}
!23 = !{!18, !10, i64 32}
!24 = !{!18, !10, i64 36}
!25 = !{!18, !10, i64 40}
!26 = !{!6, !7, i64 784}
!27 = !{!28, !7, i64 8}
!28 = !{!"jpeg_marker_reader", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172}
!29 = !{!6, !10, i64 44}
!30 = !{!6, !10, i64 40}
!31 = !{!6, !7, i64 0}
!32 = !{!33, !10, i64 40}
!33 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !15, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!34 = !{!8, !8, i64 0}
!35 = !{!33, !7, i64 0}
!36 = !{!6, !10, i64 288}
!37 = !{!6, !10, i64 48}
!38 = !{!6, !10, i64 388}
!39 = !{!6, !10, i64 392}
!40 = !{!6, !7, i64 296}
!41 = !{!42, !10, i64 8}
!42 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !7, i64 88}
!43 = !{!42, !10, i64 12}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = !{!6, !10, i64 396}
!47 = !{!42, !10, i64 36}
!48 = !{!42, !10, i64 28}
!49 = !{!42, !10, i64 32}
!50 = !{!42, !10, i64 40}
!51 = !{!42, !10, i64 44}
!52 = !{!42, !10, i64 48}
!53 = !{!42, !7, i64 80}
!54 = distinct !{!54, !45}
!55 = !{!6, !10, i64 400}
!56 = !{!6, !10, i64 416}
!57 = !{!6, !10, i64 304}
!58 = !{!19, !10, i64 32}
!59 = !{!28, !10, i64 164}
!60 = !{!6, !10, i64 172}
!61 = !{!6, !10, i64 164}
!62 = !{!33, !7, i64 32}
!63 = !{!28, !7, i64 0}
!64 = !{!6, !7, i64 184}
!65 = !{!7, !7, i64 0}
!66 = !{!6, !10, i64 456}
!67 = !{!6, !10, i64 460}
!68 = !{!42, !10, i64 52}
!69 = !{!42, !10, i64 56}
!70 = !{!42, !10, i64 60}
!71 = !{!42, !10, i64 64}
!72 = !{!42, !10, i64 68}
!73 = !{!42, !10, i64 72}
!74 = !{!6, !10, i64 464}
!75 = !{!10, !10, i64 0}
!76 = distinct !{!76, !45}
!77 = distinct !{!77, !45}
!78 = !{!42, !10, i64 16}
!79 = distinct !{!79, !45}
!80 = !{!6, !7, i64 792}
!81 = !{!82, !7, i64 0}
!82 = !{!"jpeg_entropy_decoder", !7, i64 0, !7, i64 8}
!83 = !{!6, !7, i64 760}
!84 = !{!85, !7, i64 0}
!85 = !{!"jpeg_d_coef_controller", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!86 = !{!85, !7, i64 8}
!87 = !{!19, !7, i64 0}
