; ModuleID = 'jccoefct.c'
source_filename = "jccoefct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_coef_controller = type { %struct.jpeg_c_coef_controller, i32, i32, i32, i32, [10 x ptr], [10 x ptr] }
%struct.jpeg_c_coef_controller = type { ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_forward_dct = type { ptr, ptr }
%struct.jpeg_entropy_encoder = type { ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local void @jinit_c_coef_controller(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  %6 = tail call ptr %5(ptr noundef %0, i32 noundef 1, i64 noundef 192) #2
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 54
  store ptr %6, ptr %7, align 8, !tbaa !16
  store ptr @start_pass_coef, ptr %6, align 8, !tbaa !17
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !20
  %11 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i64 0, i32 5
  store i32 4, ptr %11, align 8, !tbaa !21
  %12 = load ptr, ptr %10, align 8, !tbaa !23
  tail call void %12(ptr noundef nonnull %0) #2
  br label %26

13:                                               ; preds = %2
  %14 = load ptr, ptr %3, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !24
  %17 = tail call ptr %16(ptr noundef %0, i32 noundef 1, i64 noundef 1280) #2
  br label %18

18:                                               ; preds = %13, %18
  %19 = phi i64 [ 0, %13 ], [ %22, %18 ]
  %20 = getelementptr inbounds [64 x i16], ptr %17, i64 %19
  %21 = getelementptr inbounds %struct.my_coef_controller, ptr %6, i64 0, i32 5, i64 %19
  store ptr %20, ptr %21, align 8, !tbaa !25
  %22 = add nuw nsw i64 %19, 1
  %23 = icmp eq i64 %22, 10
  br i1 %23, label %24, label %18, !llvm.loop !26

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.my_coef_controller, ptr %6, i64 0, i32 6
  store ptr null, ptr %25, align 8, !tbaa !25
  br label %26

26:                                               ; preds = %24, %9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_pass_coef(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 54
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !28
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %7 = load i32, ptr %6, align 4, !tbaa !29
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 4
  store i32 1, ptr %10, align 4, !tbaa !30
  br label %24

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 40
  %13 = load i32, ptr %12, align 8, !tbaa !31
  %14 = icmp eq i32 %13, 1
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42
  %16 = load ptr, ptr %15, align 8, !tbaa !25
  %17 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 4
  br i1 %14, label %21, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.jpeg_component_info, ptr %16, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !32
  store i32 %20, ptr %17, align 4, !tbaa !30
  br label %24

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.jpeg_component_info, ptr %16, i64 0, i32 18
  %23 = load i32, ptr %22, align 8, !tbaa !34
  store i32 %23, ptr %17, align 4, !tbaa !30
  br label %24

24:                                               ; preds = %9, %18, %21
  %25 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 2
  store i32 0, ptr %25, align 4, !tbaa !35
  %26 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 3
  store i32 0, ptr %26, align 8, !tbaa !36
  %27 = icmp eq i32 %1, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !25
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %0, align 8, !tbaa !20
  %34 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %33, i64 0, i32 5
  store i32 4, ptr %34, align 8, !tbaa !21
  %35 = load ptr, ptr %33, align 8, !tbaa !23
  tail call void %35(ptr noundef nonnull %0) #2
  br label %36

36:                                               ; preds = %32, %28
  %37 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %4, i64 0, i32 1
  store ptr @compress_data, ptr %37, align 8, !tbaa !37
  br label %42

38:                                               ; preds = %24
  %39 = load ptr, ptr %0, align 8, !tbaa !20
  %40 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %39, i64 0, i32 5
  store i32 4, ptr %40, align 8, !tbaa !21
  %41 = load ptr, ptr %39, align 8, !tbaa !23
  tail call void %41(ptr noundef nonnull %0) #2
  br label %42

42:                                               ; preds = %38, %36
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @compress_data(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 54
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 43
  %6 = load i32, ptr %5, align 8, !tbaa !38
  %7 = add i32 %6, -1
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 40
  %9 = load i32, ptr %8, align 8, !tbaa !31
  %10 = add i32 %9, -1
  %11 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !36
  %13 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !30
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %149

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 2
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %19 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 1
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 58
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %22 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 5
  br label %23

23:                                               ; preds = %16, %145
  %24 = phi i32 [ %12, %16 ], [ %146, %145 ]
  %25 = load i32, ptr %17, align 4, !tbaa !35
  %26 = icmp ugt i32 %25, %7
  br i1 %26, label %145, label %27

27:                                               ; preds = %23
  %28 = shl nsw i32 %24, 3
  br label %29

29:                                               ; preds = %27, %142
  %30 = phi i32 [ %25, %27 ], [ %143, %142 ]
  %31 = load i32, ptr %18, align 4, !tbaa !29
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %135

33:                                               ; preds = %29
  %34 = icmp ult i32 %30, %7
  br label %35

35:                                               ; preds = %33, %129
  %36 = phi i64 [ 0, %33 ], [ %131, %129 ]
  %37 = phi i32 [ 0, %33 ], [ %130, %129 ]
  %38 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %36
  %39 = load ptr, ptr %38, align 8, !tbaa !25
  %40 = getelementptr inbounds %struct.jpeg_component_info, ptr %39, i64 0, i32 13
  %41 = getelementptr inbounds %struct.jpeg_component_info, ptr %39, i64 0, i32 17
  %42 = select i1 %34, ptr %40, ptr %41
  %43 = load i32, ptr %42, align 4, !tbaa !39
  %44 = getelementptr inbounds %struct.jpeg_component_info, ptr %39, i64 0, i32 16
  %45 = load i32, ptr %44, align 8, !tbaa !40
  %46 = mul i32 %45, %30
  %47 = getelementptr inbounds %struct.jpeg_component_info, ptr %39, i64 0, i32 14
  %48 = load i32, ptr %47, align 8, !tbaa !41
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %129

50:                                               ; preds = %35
  %51 = getelementptr inbounds %struct.jpeg_component_info, ptr %39, i64 0, i32 18
  %52 = getelementptr inbounds ptr, ptr %1, i64 %36
  %53 = sext i32 %43 to i64
  br label %54

54:                                               ; preds = %50, %122
  %55 = phi i32 [ %28, %50 ], [ %125, %122 ]
  %56 = phi i32 [ %37, %50 ], [ %124, %122 ]
  %57 = phi i32 [ 0, %50 ], [ %126, %122 ]
  %58 = load i32, ptr %19, align 8, !tbaa !28
  %59 = icmp ult i32 %58, %10
  br i1 %59, label %64, label %60

60:                                               ; preds = %54
  %61 = add nsw i32 %57, %24
  %62 = load i32, ptr %51, align 8, !tbaa !34
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %98

64:                                               ; preds = %60, %54
  %65 = load ptr, ptr %20, align 8, !tbaa !42
  %66 = getelementptr inbounds %struct.jpeg_forward_dct, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !43
  %68 = load ptr, ptr %52, align 8, !tbaa !25
  %69 = sext i32 %56 to i64
  %70 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 5, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !25
  tail call void %67(ptr noundef %0, ptr noundef %39, ptr noundef %68, ptr noundef %71, i32 noundef %55, i32 noundef %46, i32 noundef %43) #2
  %72 = load i32, ptr %40, align 4, !tbaa !45
  %73 = icmp slt i32 %43, %72
  br i1 %73, label %74, label %122

74:                                               ; preds = %64
  %75 = add nsw i32 %56, %43
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 5, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !25
  %79 = sub nsw i32 %72, %43
  %80 = sext i32 %79 to i64
  %81 = shl nsw i64 %80, 7
  tail call void @jzero_far(ptr noundef %78, i64 noundef %81) #2
  %82 = load i32, ptr %40, align 4, !tbaa !45
  %83 = icmp slt i32 %43, %82
  br i1 %83, label %84, label %122

84:                                               ; preds = %74
  %85 = sext i32 %56 to i64
  %86 = sext i32 %82 to i64
  br label %87

87:                                               ; preds = %84, %87
  %88 = phi i64 [ %53, %84 ], [ %96, %87 ]
  %89 = add nsw i64 %88, %85
  %90 = add nsw i64 %89, -1
  %91 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 5, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !25
  %93 = load i16, ptr %92, align 2, !tbaa !46
  %94 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 5, i64 %89
  %95 = load ptr, ptr %94, align 8, !tbaa !25
  store i16 %93, ptr %95, align 2, !tbaa !46
  %96 = add nsw i64 %88, 1
  %97 = icmp eq i64 %96, %86
  br i1 %97, label %122, label %87, !llvm.loop !47

98:                                               ; preds = %60
  %99 = sext i32 %56 to i64
  %100 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 5, i64 %99
  %101 = load ptr, ptr %100, align 8, !tbaa !25
  %102 = load i32, ptr %40, align 4, !tbaa !45
  %103 = sext i32 %102 to i64
  %104 = shl nsw i64 %103, 7
  tail call void @jzero_far(ptr noundef %101, i64 noundef %104) #2
  %105 = load i32, ptr %40, align 4, !tbaa !45
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %98
  %108 = add nsw i32 %56, -1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 5, i64 %109
  %111 = load ptr, ptr %110, align 8, !tbaa !25
  %112 = sext i32 %56 to i64
  %113 = zext nneg i32 %105 to i64
  br label %114

114:                                              ; preds = %107, %114
  %115 = phi i64 [ 0, %107 ], [ %120, %114 ]
  %116 = load i16, ptr %111, align 2, !tbaa !46
  %117 = add nsw i64 %115, %112
  %118 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 5, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !25
  store i16 %116, ptr %119, align 2, !tbaa !46
  %120 = add nuw nsw i64 %115, 1
  %121 = icmp eq i64 %120, %113
  br i1 %121, label %122, label %114, !llvm.loop !48

122:                                              ; preds = %114, %87, %98, %74, %64
  %123 = load i32, ptr %40, align 4, !tbaa !45
  %124 = add nsw i32 %123, %56
  %125 = add i32 %55, 8
  %126 = add nuw nsw i32 %57, 1
  %127 = load i32, ptr %47, align 8, !tbaa !41
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %54, label %129, !llvm.loop !49

129:                                              ; preds = %122, %35
  %130 = phi i32 [ %37, %35 ], [ %124, %122 ]
  %131 = add nuw nsw i64 %36, 1
  %132 = load i32, ptr %18, align 4, !tbaa !29
  %133 = sext i32 %132 to i64
  %134 = icmp slt i64 %131, %133
  br i1 %134, label %35, label %135, !llvm.loop !50

135:                                              ; preds = %129, %29
  %136 = load ptr, ptr %21, align 8, !tbaa !51
  %137 = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %136, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !52
  %139 = tail call i32 %138(ptr noundef %0, ptr noundef nonnull %22) #2
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  store i32 %24, ptr %11, align 8, !tbaa !36
  store i32 %30, ptr %17, align 4, !tbaa !35
  br label %177

142:                                              ; preds = %135
  %143 = add i32 %30, 1
  %144 = icmp ugt i32 %143, %7
  br i1 %144, label %145, label %29, !llvm.loop !54

145:                                              ; preds = %142, %23
  store i32 0, ptr %17, align 4, !tbaa !35
  %146 = add nsw i32 %24, 1
  %147 = load i32, ptr %13, align 4, !tbaa !30
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %23, label %149, !llvm.loop !55

149:                                              ; preds = %145, %2
  %150 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 1
  %151 = load i32, ptr %150, align 8, !tbaa !28
  %152 = add i32 %151, 1
  store i32 %152, ptr %150, align 8, !tbaa !28
  %153 = load ptr, ptr %3, align 8, !tbaa !16
  %154 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %155 = load i32, ptr %154, align 4, !tbaa !29
  %156 = icmp sgt i32 %155, 1
  br i1 %156, label %157, label %159

157:                                              ; preds = %149
  %158 = getelementptr inbounds %struct.my_coef_controller, ptr %153, i64 0, i32 4
  store i32 1, ptr %158, align 4, !tbaa !30
  br label %174

159:                                              ; preds = %149
  %160 = getelementptr inbounds %struct.my_coef_controller, ptr %153, i64 0, i32 1
  %161 = load i32, ptr %160, align 8, !tbaa !28
  %162 = load i32, ptr %8, align 8, !tbaa !31
  %163 = add i32 %162, -1
  %164 = icmp ult i32 %161, %163
  %165 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42
  %166 = load ptr, ptr %165, align 8, !tbaa !25
  %167 = getelementptr inbounds %struct.my_coef_controller, ptr %153, i64 0, i32 4
  br i1 %164, label %168, label %171

168:                                              ; preds = %159
  %169 = getelementptr inbounds %struct.jpeg_component_info, ptr %166, i64 0, i32 3
  %170 = load i32, ptr %169, align 4, !tbaa !32
  store i32 %170, ptr %167, align 4, !tbaa !30
  br label %174

171:                                              ; preds = %159
  %172 = getelementptr inbounds %struct.jpeg_component_info, ptr %166, i64 0, i32 18
  %173 = load i32, ptr %172, align 8, !tbaa !34
  store i32 %173, ptr %167, align 4, !tbaa !30
  br label %174

174:                                              ; preds = %157, %168, %171
  %175 = getelementptr inbounds %struct.my_coef_controller, ptr %153, i64 0, i32 2
  store i32 0, ptr %175, align 4, !tbaa !35
  %176 = getelementptr inbounds %struct.my_coef_controller, ptr %153, i64 0, i32 3
  store i32 0, ptr %176, align 8, !tbaa !36
  br label %177

177:                                              ; preds = %174, %141
  %178 = phi i32 [ 0, %141 ], [ 1, %174 ]
  ret i32 %178
}

declare void @jzero_far(ptr noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 8}
!6 = !{!"jpeg_compress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !11, i64 56, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !8, i64 88, !8, i64 120, !8, i64 152, !8, i64 184, !8, i64 200, !8, i64 216, !10, i64 232, !7, i64 240, !10, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !10, i64 276, !10, i64 280, !8, i64 284, !12, i64 286, !12, i64 288, !10, i64 292, !10, i64 296, !10, i64 300, !10, i64 304, !10, i64 308, !10, i64 312, !10, i64 316, !8, i64 320, !10, i64 352, !10, i64 356, !10, i64 360, !8, i64 364, !10, i64 404, !10, i64 408, !10, i64 412, !10, i64 416, !7, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !7, i64 456, !7, i64 464, !7, i64 472, !7, i64 480, !7, i64 488}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!14, !7, i64 0}
!14 = !{!"jpeg_memory_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !15, i64 88}
!15 = !{!"long", !8, i64 0}
!16 = !{!6, !7, i64 448}
!17 = !{!18, !7, i64 0}
!18 = !{!"", !19, i64 0, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !8, i64 32, !8, i64 112}
!19 = !{!"jpeg_c_coef_controller", !7, i64 0, !7, i64 8}
!20 = !{!6, !7, i64 0}
!21 = !{!22, !10, i64 40}
!22 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !15, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!23 = !{!22, !7, i64 0}
!24 = !{!14, !7, i64 8}
!25 = !{!7, !7, i64 0}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = !{!18, !10, i64 16}
!29 = !{!6, !10, i64 316}
!30 = !{!18, !10, i64 28}
!31 = !{!6, !10, i64 312}
!32 = !{!33, !10, i64 12}
!33 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !7, i64 88}
!34 = !{!33, !10, i64 72}
!35 = !{!18, !10, i64 20}
!36 = !{!18, !10, i64 24}
!37 = !{!18, !7, i64 8}
!38 = !{!6, !10, i64 352}
!39 = !{!10, !10, i64 0}
!40 = !{!33, !10, i64 64}
!41 = !{!33, !10, i64 56}
!42 = !{!6, !7, i64 480}
!43 = !{!44, !7, i64 8}
!44 = !{!"jpeg_forward_dct", !7, i64 0, !7, i64 8}
!45 = !{!33, !10, i64 52}
!46 = !{!12, !12, i64 0}
!47 = distinct !{!47, !27}
!48 = distinct !{!48, !27}
!49 = distinct !{!49, !27}
!50 = distinct !{!50, !27}
!51 = !{!6, !7, i64 488}
!52 = !{!53, !7, i64 8}
!53 = !{!"jpeg_entropy_encoder", !7, i64 0, !7, i64 8, !7, i64 16}
!54 = distinct !{!54, !27}
!55 = distinct !{!55, !27}
