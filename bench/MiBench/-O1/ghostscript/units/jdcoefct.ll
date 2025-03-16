; ModuleID = 'jdcoefct.c'
source_filename = "jdcoefct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [64 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_d_coef_controller = type { ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_coef_controller = type { %struct.jpeg_d_coef_controller, i32, i32, i32, [64 x ptr] }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_entropy_decoder = type { ptr, ptr }
%struct.jpeg_inverse_dct = type { ptr, [10 x ptr] }
%struct.jpeg_input_controller = type { ptr, ptr, ptr, ptr, i32, i32 }

; Function Attrs: nounwind uwtable
define dso_local void @jinit_d_coef_controller(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  %6 = tail call ptr %5(ptr noundef %0, i32 noundef 1, i64 noundef 568) #6
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 75
  store ptr %6, ptr %7, align 8, !tbaa !16
  store ptr @start_input_pass, ptr %6, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %6, i64 0, i32 2
  store ptr @start_output_pass, ptr %8, align 8, !tbaa !20
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !21
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 5
  store i32 47, ptr %12, align 8, !tbaa !22
  %13 = load ptr, ptr %11, align 8, !tbaa !24
  tail call void %13(ptr noundef nonnull %0) #6
  br label %29

14:                                               ; preds = %2
  %15 = load ptr, ptr %3, align 8, !tbaa !5
  %16 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !25
  %18 = tail call ptr %17(ptr noundef %0, i32 noundef 1, i64 noundef 8192) #6
  br label %19

19:                                               ; preds = %14, %19
  %20 = phi i64 [ 0, %14 ], [ %23, %19 ]
  %21 = getelementptr inbounds [64 x i16], ptr %18, i64 %20
  %22 = getelementptr inbounds %struct.my_coef_controller, ptr %6, i64 0, i32 4, i64 %20
  store ptr %21, ptr %22, align 8, !tbaa !26
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, 64
  br i1 %24, label %25, label %19, !llvm.loop !27

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %6, i64 0, i32 1
  store ptr @dummy_consume_data, ptr %26, align 8, !tbaa !29
  %27 = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %6, i64 0, i32 3
  store ptr @decompress_onepass, ptr %27, align 8, !tbaa !30
  %28 = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %6, i64 0, i32 4
  store ptr null, ptr %28, align 8, !tbaa !31
  br label %29

29:                                               ; preds = %25, %10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @start_input_pass(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 35
  store i32 0, ptr %2, align 8, !tbaa !32
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 75
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 62
  %6 = load i32, ptr %5, align 8, !tbaa !33
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 3
  store i32 1, ptr %9, align 8, !tbaa !34
  br label %23

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 60
  %12 = load i32, ptr %11, align 8, !tbaa !35
  %13 = icmp eq i32 %12, 1
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 63
  %15 = load ptr, ptr %14, align 8, !tbaa !26
  %16 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 3
  br i1 %13, label %20, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.jpeg_component_info, ptr %15, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !36
  store i32 %19, ptr %16, align 8, !tbaa !34
  br label %23

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.jpeg_component_info, ptr %15, i64 0, i32 18
  %22 = load i32, ptr %21, align 8, !tbaa !38
  store i32 %22, ptr %16, align 8, !tbaa !34
  br label %23

23:                                               ; preds = %8, %17, %20
  %24 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 1
  store i32 0, ptr %24, align 8, !tbaa !39
  %25 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 2
  store i32 0, ptr %25, align 4, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @start_output_pass(ptr nocapture noundef writeonly %0) #2 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 37
  store i32 0, ptr %2, align 8, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @dummy_consume_data(ptr nocapture readnone %0) #3 {
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @decompress_onepass(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 75
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 64
  %6 = load i32, ptr %5, align 8, !tbaa !42
  %7 = add i32 %6, -1
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 60
  %9 = load i32, ptr %8, align 8, !tbaa !35
  %10 = add i32 %9, -1
  %11 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !40
  %13 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !34
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %132

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 1
  %18 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 4
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 66
  %20 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 79
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 62
  %22 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 80
  %23 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 35
  br label %24

24:                                               ; preds = %16, %128
  %25 = phi i32 [ %12, %16 ], [ %129, %128 ]
  %26 = load i32, ptr %17, align 8, !tbaa !39
  %27 = icmp ugt i32 %26, %7
  br i1 %27, label %128, label %28

28:                                               ; preds = %24, %125
  %29 = phi i32 [ %126, %125 ], [ %26, %24 ]
  %30 = load ptr, ptr %18, align 8, !tbaa !26
  %31 = load i32, ptr %19, align 8, !tbaa !43
  %32 = sext i32 %31 to i64
  %33 = shl nsw i64 %32, 7
  tail call void @jzero_far(ptr noundef %30, i64 noundef %33) #6
  %34 = load ptr, ptr %20, align 8, !tbaa !44
  %35 = getelementptr inbounds %struct.jpeg_entropy_decoder, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !45
  %37 = tail call i32 %36(ptr noundef %0, ptr noundef nonnull %18) #6
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %28
  %40 = load i32, ptr %21, align 8, !tbaa !33
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %125

42:                                               ; preds = %39
  %43 = icmp ult i32 %29, %7
  br label %45

44:                                               ; preds = %28
  store i32 %25, ptr %11, align 4, !tbaa !40
  store i32 %29, ptr %17, align 8, !tbaa !39
  br label %168

45:                                               ; preds = %42, %119
  %46 = phi i64 [ 0, %42 ], [ %121, %119 ]
  %47 = phi i32 [ 0, %42 ], [ %120, %119 ]
  %48 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 63, i64 %46
  %49 = load ptr, ptr %48, align 8, !tbaa !26
  %50 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 0, i32 12
  %51 = load i32, ptr %50, align 8, !tbaa !47
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 0, i32 15
  %55 = load i32, ptr %54, align 4, !tbaa !48
  %56 = add nsw i32 %55, %47
  br label %119

57:                                               ; preds = %45
  %58 = load ptr, ptr %22, align 8, !tbaa !49
  %59 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 0, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !50
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.jpeg_inverse_dct, ptr %58, i64 0, i32 1, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !26
  %64 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 0, i32 13
  %65 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 0, i32 9
  %66 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 0, i32 16
  %67 = load i32, ptr %66, align 8, !tbaa !51
  %68 = mul i32 %67, %29
  %69 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 0, i32 14
  %70 = load i32, ptr %69, align 8, !tbaa !52
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %119

72:                                               ; preds = %57
  %73 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 0, i32 17
  %74 = select i1 %43, ptr %64, ptr %73
  %75 = load i32, ptr %74, align 4, !tbaa !53
  %76 = getelementptr inbounds ptr, ptr %1, i64 %46
  %77 = load ptr, ptr %76, align 8, !tbaa !26
  %78 = load i32, ptr %65, align 4, !tbaa !54
  %79 = mul nsw i32 %78, %25
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds ptr, ptr %77, i64 %80
  %82 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 0, i32 18
  %83 = icmp slt i32 %75, 1
  %84 = tail call i32 @llvm.smax.i32(i32 %75, i32 1)
  %85 = zext nneg i32 %84 to i64
  br label %86

86:                                               ; preds = %72, %110
  %87 = phi i32 [ %47, %72 ], [ %112, %110 ]
  %88 = phi ptr [ %81, %72 ], [ %115, %110 ]
  %89 = phi i32 [ 0, %72 ], [ %116, %110 ]
  %90 = load i32, ptr %23, align 8, !tbaa !32
  %91 = icmp ult i32 %90, %10
  br i1 %91, label %97, label %92

92:                                               ; preds = %86
  %93 = add nsw i32 %89, %25
  %94 = load i32, ptr %82, align 8, !tbaa !38
  %95 = icmp sge i32 %93, %94
  %96 = select i1 %95, i1 true, i1 %83
  br i1 %96, label %110, label %98

97:                                               ; preds = %86
  br i1 %83, label %110, label %98

98:                                               ; preds = %97, %92
  %99 = sext i32 %87 to i64
  br label %100

100:                                              ; preds = %98, %100
  %101 = phi i64 [ 0, %98 ], [ %108, %100 ]
  %102 = phi i32 [ %68, %98 ], [ %107, %100 ]
  %103 = add nsw i64 %101, %99
  %104 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 4, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !26
  tail call void %63(ptr noundef %0, ptr noundef %49, ptr noundef %105, ptr noundef %88, i32 noundef %102) #6
  %106 = load i32, ptr %65, align 4, !tbaa !54
  %107 = add i32 %106, %102
  %108 = add nuw nsw i64 %101, 1
  %109 = icmp eq i64 %108, %85
  br i1 %109, label %110, label %100, !llvm.loop !55

110:                                              ; preds = %100, %92, %97
  %111 = load i32, ptr %64, align 4, !tbaa !56
  %112 = add nsw i32 %111, %87
  %113 = load i32, ptr %65, align 4, !tbaa !54
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds ptr, ptr %88, i64 %114
  %116 = add nuw nsw i32 %89, 1
  %117 = load i32, ptr %69, align 8, !tbaa !52
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %86, label %119, !llvm.loop !57

119:                                              ; preds = %110, %57, %53
  %120 = phi i32 [ %56, %53 ], [ %47, %57 ], [ %112, %110 ]
  %121 = add nuw nsw i64 %46, 1
  %122 = load i32, ptr %21, align 8, !tbaa !33
  %123 = sext i32 %122 to i64
  %124 = icmp slt i64 %121, %123
  br i1 %124, label %45, label %125, !llvm.loop !58

125:                                              ; preds = %119, %39
  %126 = add i32 %29, 1
  %127 = icmp ugt i32 %126, %7
  br i1 %127, label %128, label %28, !llvm.loop !59

128:                                              ; preds = %125, %24
  store i32 0, ptr %17, align 8, !tbaa !39
  %129 = add nsw i32 %25, 1
  %130 = load i32, ptr %13, align 8, !tbaa !34
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %24, label %132, !llvm.loop !60

132:                                              ; preds = %128, %2
  %133 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 37
  %134 = load i32, ptr %133, align 8, !tbaa !41
  %135 = add i32 %134, 1
  store i32 %135, ptr %133, align 8, !tbaa !41
  %136 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 35
  %137 = load i32, ptr %136, align 8, !tbaa !32
  %138 = add i32 %137, 1
  store i32 %138, ptr %136, align 8, !tbaa !32
  %139 = load i32, ptr %8, align 8, !tbaa !35
  %140 = icmp ult i32 %138, %139
  br i1 %140, label %141, label %163

141:                                              ; preds = %132
  %142 = load ptr, ptr %3, align 8, !tbaa !16
  %143 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 62
  %144 = load i32, ptr %143, align 8, !tbaa !33
  %145 = icmp sgt i32 %144, 1
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.my_coef_controller, ptr %142, i64 0, i32 3
  store i32 1, ptr %147, align 8, !tbaa !34
  br label %160

148:                                              ; preds = %141
  %149 = add i32 %139, -1
  %150 = icmp ult i32 %138, %149
  %151 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 63
  %152 = load ptr, ptr %151, align 8, !tbaa !26
  %153 = getelementptr inbounds %struct.my_coef_controller, ptr %142, i64 0, i32 3
  br i1 %150, label %154, label %157

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.jpeg_component_info, ptr %152, i64 0, i32 3
  %156 = load i32, ptr %155, align 4, !tbaa !36
  store i32 %156, ptr %153, align 8, !tbaa !34
  br label %160

157:                                              ; preds = %148
  %158 = getelementptr inbounds %struct.jpeg_component_info, ptr %152, i64 0, i32 18
  %159 = load i32, ptr %158, align 8, !tbaa !38
  store i32 %159, ptr %153, align 8, !tbaa !34
  br label %160

160:                                              ; preds = %146, %154, %157
  %161 = getelementptr inbounds %struct.my_coef_controller, ptr %142, i64 0, i32 1
  store i32 0, ptr %161, align 8, !tbaa !39
  %162 = getelementptr inbounds %struct.my_coef_controller, ptr %142, i64 0, i32 2
  store i32 0, ptr %162, align 4, !tbaa !40
  br label %168

163:                                              ; preds = %132
  %164 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 77
  %165 = load ptr, ptr %164, align 8, !tbaa !61
  %166 = getelementptr inbounds %struct.jpeg_input_controller, ptr %165, i64 0, i32 3
  %167 = load ptr, ptr %166, align 8, !tbaa !62
  tail call void %167(ptr noundef %0) #6
  br label %168

168:                                              ; preds = %163, %160, %44
  %169 = phi i32 [ 0, %44 ], [ 3, %160 ], [ 4, %163 ]
  ret i32 %169
}

declare void @jzero_far(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!16 = !{!6, !7, i64 760}
!17 = !{!18, !7, i64 0}
!18 = !{!"", !19, i64 0, !10, i64 40, !10, i64 44, !10, i64 48, !8, i64 56}
!19 = !{!"jpeg_d_coef_controller", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!20 = !{!18, !7, i64 16}
!21 = !{!6, !7, i64 0}
!22 = !{!23, !10, i64 40}
!23 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !15, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!24 = !{!23, !7, i64 0}
!25 = !{!14, !7, i64 8}
!26 = !{!7, !7, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = !{!18, !7, i64 8}
!30 = !{!18, !7, i64 24}
!31 = !{!18, !7, i64 32}
!32 = !{!6, !10, i64 168}
!33 = !{!6, !10, i64 416}
!34 = !{!18, !10, i64 48}
!35 = !{!6, !10, i64 400}
!36 = !{!37, !10, i64 12}
!37 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !7, i64 88}
!38 = !{!37, !10, i64 72}
!39 = !{!18, !10, i64 40}
!40 = !{!18, !10, i64 44}
!41 = !{!6, !10, i64 176}
!42 = !{!6, !10, i64 456}
!43 = !{!6, !10, i64 464}
!44 = !{!6, !7, i64 792}
!45 = !{!46, !7, i64 8}
!46 = !{!"jpeg_entropy_decoder", !7, i64 0, !7, i64 8}
!47 = !{!37, !10, i64 48}
!48 = !{!37, !10, i64 60}
!49 = !{!6, !7, i64 800}
!50 = !{!37, !10, i64 4}
!51 = !{!37, !10, i64 64}
!52 = !{!37, !10, i64 56}
!53 = !{!10, !10, i64 0}
!54 = !{!37, !10, i64 36}
!55 = distinct !{!55, !28}
!56 = !{!37, !10, i64 52}
!57 = distinct !{!57, !28}
!58 = distinct !{!58, !28}
!59 = distinct !{!59, !28}
!60 = distinct !{!60, !28}
!61 = !{!6, !7, i64 776}
!62 = !{!63, !7, i64 24}
!63 = !{!"jpeg_input_controller", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !10, i64 32, !10, i64 36}
