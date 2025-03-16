; ModuleID = 'jcmaster.c'
source_filename = "jcmaster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_comp_master = type { ptr, ptr, ptr, i32, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.my_comp_master = type { %struct.jpeg_comp_master, i32, i32, i32, i32 }
%struct.jpeg_marker_writer = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }
%struct.jpeg_entropy_encoder = type { ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local void @jinit_c_master_control(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  %6 = tail call ptr %5(ptr noundef %0, i32 noundef 1, i64 noundef 48) #3
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 51
  store ptr %6, ptr %7, align 8, !tbaa !16
  store ptr @prepare_for_pass, ptr %6, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.jpeg_comp_master, ptr %6, i64 0, i32 1
  store ptr @pass_startup, ptr %8, align 8, !tbaa !20
  %9 = getelementptr inbounds %struct.jpeg_comp_master, ptr %6, i64 0, i32 2
  store ptr @finish_pass_master, ptr %9, align 8, !tbaa !21
  %10 = getelementptr inbounds %struct.jpeg_comp_master, ptr %6, i64 0, i32 4
  store i32 0, ptr %10, align 4, !tbaa !22
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 4, !tbaa !23
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !24
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %20 = load i32, ptr %19, align 4, !tbaa !25
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  %24 = load i32, ptr %23, align 8, !tbaa !26
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %26, label %30

26:                                               ; preds = %22, %18, %14, %2
  %27 = load ptr, ptr %0, align 8, !tbaa !27
  %28 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %27, i64 0, i32 5
  store i32 31, ptr %28, align 8, !tbaa !28
  %29 = load ptr, ptr %27, align 8, !tbaa !30
  tail call void %29(ptr noundef nonnull %0) #3
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i32, ptr %11, align 4, !tbaa !23
  %32 = icmp ugt i32 %31, 65500
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %35 = load i32, ptr %34, align 8, !tbaa !24
  %36 = icmp ugt i32 %35, 65500
  br i1 %36, label %37, label %43

37:                                               ; preds = %33, %30
  %38 = load ptr, ptr %0, align 8, !tbaa !27
  %39 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %38, i64 0, i32 5
  store i32 40, ptr %39, align 8, !tbaa !28
  %40 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %38, i64 0, i32 6
  store i32 65500, ptr %40, align 4, !tbaa !31
  %41 = load ptr, ptr %0, align 8, !tbaa !27
  %42 = load ptr, ptr %41, align 8, !tbaa !30
  tail call void %42(ptr noundef nonnull %0) #3
  br label %43

43:                                               ; preds = %37, %33
  %44 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %45 = load i32, ptr %44, align 8, !tbaa !24
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  %48 = load i32, ptr %47, align 8, !tbaa !26
  %49 = sext i32 %48 to i64
  %50 = mul nsw i64 %49, %46
  %51 = icmp ult i64 %50, 4294967296
  br i1 %51, label %56, label %52

52:                                               ; preds = %43
  %53 = load ptr, ptr %0, align 8, !tbaa !27
  %54 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %53, i64 0, i32 5
  store i32 69, ptr %54, align 8, !tbaa !28
  %55 = load ptr, ptr %53, align 8, !tbaa !30
  tail call void %55(ptr noundef nonnull %0) #3
  br label %56

56:                                               ; preds = %52, %43
  %57 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 11
  %58 = load i32, ptr %57, align 8, !tbaa !32
  %59 = icmp eq i32 %58, 8
  br i1 %59, label %66, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %0, align 8, !tbaa !27
  %62 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %61, i64 0, i32 5
  store i32 13, ptr %62, align 8, !tbaa !28
  %63 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %61, i64 0, i32 6
  store i32 %58, ptr %63, align 4, !tbaa !31
  %64 = load ptr, ptr %0, align 8, !tbaa !27
  %65 = load ptr, ptr %64, align 8, !tbaa !30
  tail call void %65(ptr noundef nonnull %0) #3
  br label %66

66:                                               ; preds = %60, %56
  %67 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %68 = load i32, ptr %67, align 4, !tbaa !25
  %69 = icmp sgt i32 %68, 10
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load ptr, ptr %0, align 8, !tbaa !27
  %72 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %71, i64 0, i32 5
  store i32 24, ptr %72, align 8, !tbaa !28
  %73 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %71, i64 0, i32 6
  store i32 %68, ptr %73, align 4, !tbaa !31
  %74 = load ptr, ptr %0, align 8, !tbaa !27
  %75 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %74, i64 0, i32 6, i32 0, i64 1
  store i32 10, ptr %75, align 4, !tbaa !31
  %76 = load ptr, ptr %0, align 8, !tbaa !27
  %77 = load ptr, ptr %76, align 8, !tbaa !30
  tail call void %77(ptr noundef nonnull %0) #3
  br label %78

78:                                               ; preds = %70, %66
  %79 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 38
  store i32 1, ptr %79, align 8, !tbaa !33
  %80 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  store i32 1, ptr %80, align 4, !tbaa !34
  %81 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %82 = load i32, ptr %67, align 4, !tbaa !25
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %114

84:                                               ; preds = %78
  %85 = load ptr, ptr %81, align 8, !tbaa !35
  br label %86

86:                                               ; preds = %102, %84
  %87 = phi i32 [ %110, %102 ], [ 0, %84 ]
  %88 = phi ptr [ %111, %102 ], [ %85, %84 ]
  %89 = getelementptr inbounds %struct.jpeg_component_info, ptr %88, i64 0, i32 2
  %90 = load i32, ptr %89, align 8, !tbaa !36
  %91 = add i32 %90, -5
  %92 = icmp ult i32 %91, -4
  br i1 %92, label %98, label %93

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.jpeg_component_info, ptr %88, i64 0, i32 3
  %95 = load i32, ptr %94, align 4, !tbaa !38
  %96 = add i32 %95, -5
  %97 = icmp ult i32 %96, -4
  br i1 %97, label %98, label %102

98:                                               ; preds = %93, %86
  %99 = load ptr, ptr %0, align 8, !tbaa !27
  %100 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %99, i64 0, i32 5
  store i32 16, ptr %100, align 8, !tbaa !28
  %101 = load ptr, ptr %99, align 8, !tbaa !30
  tail call void %101(ptr noundef nonnull %0) #3
  br label %102

102:                                              ; preds = %98, %93
  %103 = load i32, ptr %79, align 8, !tbaa !33
  %104 = load i32, ptr %89, align 8, !tbaa !36
  %105 = tail call i32 @llvm.smax.i32(i32 %103, i32 %104)
  store i32 %105, ptr %79, align 8, !tbaa !33
  %106 = load i32, ptr %80, align 4, !tbaa !34
  %107 = getelementptr inbounds %struct.jpeg_component_info, ptr %88, i64 0, i32 3
  %108 = load i32, ptr %107, align 4, !tbaa !38
  %109 = tail call i32 @llvm.smax.i32(i32 %106, i32 %108)
  store i32 %109, ptr %80, align 4, !tbaa !34
  %110 = add nuw nsw i32 %87, 1
  %111 = getelementptr inbounds %struct.jpeg_component_info, ptr %88, i64 1
  %112 = load i32, ptr %67, align 4, !tbaa !25
  %113 = icmp slt i32 %110, %112
  br i1 %113, label %86, label %114, !llvm.loop !39

114:                                              ; preds = %102, %78
  %115 = load i32, ptr %67, align 4, !tbaa !25
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %173

117:                                              ; preds = %114
  %118 = load ptr, ptr %81, align 8, !tbaa !35
  br label %119

119:                                              ; preds = %119, %117
  %120 = phi i32 [ %169, %119 ], [ 0, %117 ]
  %121 = phi ptr [ %170, %119 ], [ %118, %117 ]
  %122 = getelementptr inbounds %struct.jpeg_component_info, ptr %121, i64 0, i32 1
  store i32 %120, ptr %122, align 4, !tbaa !41
  %123 = getelementptr inbounds %struct.jpeg_component_info, ptr %121, i64 0, i32 9
  store i32 8, ptr %123, align 4, !tbaa !42
  %124 = load i32, ptr %44, align 8, !tbaa !24
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.jpeg_component_info, ptr %121, i64 0, i32 2
  %127 = load i32, ptr %126, align 8, !tbaa !36
  %128 = sext i32 %127 to i64
  %129 = mul nsw i64 %128, %125
  %130 = load i32, ptr %79, align 8, !tbaa !33
  %131 = shl nsw i32 %130, 3
  %132 = sext i32 %131 to i64
  %133 = tail call i64 @jdiv_round_up(i64 noundef %129, i64 noundef %132) #3
  %134 = trunc i64 %133 to i32
  %135 = getelementptr inbounds %struct.jpeg_component_info, ptr %121, i64 0, i32 7
  store i32 %134, ptr %135, align 4, !tbaa !43
  %136 = load i32, ptr %11, align 4, !tbaa !23
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.jpeg_component_info, ptr %121, i64 0, i32 3
  %139 = load i32, ptr %138, align 4, !tbaa !38
  %140 = sext i32 %139 to i64
  %141 = mul nsw i64 %140, %137
  %142 = load i32, ptr %80, align 4, !tbaa !34
  %143 = shl nsw i32 %142, 3
  %144 = sext i32 %143 to i64
  %145 = tail call i64 @jdiv_round_up(i64 noundef %141, i64 noundef %144) #3
  %146 = trunc i64 %145 to i32
  %147 = getelementptr inbounds %struct.jpeg_component_info, ptr %121, i64 0, i32 8
  store i32 %146, ptr %147, align 8, !tbaa !44
  %148 = load i32, ptr %44, align 8, !tbaa !24
  %149 = zext i32 %148 to i64
  %150 = load i32, ptr %126, align 8, !tbaa !36
  %151 = sext i32 %150 to i64
  %152 = mul nsw i64 %151, %149
  %153 = load i32, ptr %79, align 8, !tbaa !33
  %154 = sext i32 %153 to i64
  %155 = tail call i64 @jdiv_round_up(i64 noundef %152, i64 noundef %154) #3
  %156 = trunc i64 %155 to i32
  %157 = getelementptr inbounds %struct.jpeg_component_info, ptr %121, i64 0, i32 10
  store i32 %156, ptr %157, align 8, !tbaa !45
  %158 = load i32, ptr %11, align 4, !tbaa !23
  %159 = zext i32 %158 to i64
  %160 = load i32, ptr %138, align 4, !tbaa !38
  %161 = sext i32 %160 to i64
  %162 = mul nsw i64 %161, %159
  %163 = load i32, ptr %80, align 4, !tbaa !34
  %164 = sext i32 %163 to i64
  %165 = tail call i64 @jdiv_round_up(i64 noundef %162, i64 noundef %164) #3
  %166 = trunc i64 %165 to i32
  %167 = getelementptr inbounds %struct.jpeg_component_info, ptr %121, i64 0, i32 11
  store i32 %166, ptr %167, align 4, !tbaa !46
  %168 = getelementptr inbounds %struct.jpeg_component_info, ptr %121, i64 0, i32 12
  store i32 1, ptr %168, align 8, !tbaa !47
  %169 = add nuw nsw i32 %120, 1
  %170 = getelementptr inbounds %struct.jpeg_component_info, ptr %121, i64 1
  %171 = load i32, ptr %67, align 4, !tbaa !25
  %172 = icmp slt i32 %169, %171
  br i1 %172, label %119, label %173, !llvm.loop !48

173:                                              ; preds = %119, %114
  %174 = load i32, ptr %11, align 4, !tbaa !23
  %175 = zext i32 %174 to i64
  %176 = load i32, ptr %80, align 4, !tbaa !34
  %177 = shl nsw i32 %176, 3
  %178 = sext i32 %177 to i64
  %179 = tail call i64 @jdiv_round_up(i64 noundef %175, i64 noundef %178) #3
  %180 = trunc i64 %179 to i32
  %181 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 40
  store i32 %180, ptr %181, align 8, !tbaa !49
  %182 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 22
  %183 = load ptr, ptr %182, align 8, !tbaa !50
  %184 = icmp eq ptr %183, null
  br i1 %184, label %189, label %185

185:                                              ; preds = %173
  %186 = load ptr, ptr %0, align 8, !tbaa !27
  %187 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %186, i64 0, i32 5
  store i32 47, ptr %187, align 8, !tbaa !28
  %188 = load ptr, ptr %186, align 8, !tbaa !30
  tail call void %188(ptr noundef nonnull %0) #3
  br label %192

189:                                              ; preds = %173
  %190 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 37
  store i32 0, ptr %190, align 4, !tbaa !51
  %191 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 21
  store i32 1, ptr %191, align 8, !tbaa !52
  br label %192

192:                                              ; preds = %189, %185
  %193 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 37
  %194 = load i32, ptr %193, align 4, !tbaa !51
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %198, label %196

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 25
  store i32 1, ptr %197, align 8, !tbaa !53
  br label %198

198:                                              ; preds = %196, %192
  %199 = icmp eq i32 %1, 0
  br i1 %199, label %207, label %200

200:                                              ; preds = %198
  %201 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 25
  %202 = load i32, ptr %201, align 8, !tbaa !53
  %203 = icmp eq i32 %202, 0
  %204 = getelementptr inbounds %struct.my_comp_master, ptr %6, i64 0, i32 1
  br i1 %203, label %206, label %205

205:                                              ; preds = %200
  store i32 1, ptr %204, align 8, !tbaa !54
  br label %209

206:                                              ; preds = %200
  store i32 2, ptr %204, align 8, !tbaa !54
  br label %209

207:                                              ; preds = %198
  %208 = getelementptr inbounds %struct.my_comp_master, ptr %6, i64 0, i32 1
  store i32 0, ptr %208, align 8, !tbaa !54
  br label %209

209:                                              ; preds = %205, %206, %207
  %210 = getelementptr inbounds %struct.my_comp_master, ptr %6, i64 0, i32 4
  store i32 0, ptr %210, align 4, !tbaa !55
  %211 = getelementptr inbounds %struct.my_comp_master, ptr %6, i64 0, i32 2
  store i32 0, ptr %211, align 4, !tbaa !56
  %212 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 25
  %213 = load i32, ptr %212, align 8, !tbaa !53
  %214 = icmp ne i32 %213, 0
  %215 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 21
  %216 = load i32, ptr %215, align 8, !tbaa !52
  %217 = zext i1 %214 to i32
  %218 = shl nsw i32 %216, %217
  %219 = getelementptr inbounds %struct.my_comp_master, ptr %6, i64 0, i32 3
  store i32 %218, ptr %219, align 8, !tbaa !57
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @prepare_for_pass(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 51
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = getelementptr inbounds %struct.my_comp_master, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !54
  switch i32 %5, label %130 [
    i32 0, label %6
    i32 2, label %74
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %8 = load i32, ptr %7, align 4, !tbaa !25
  %9 = icmp sgt i32 %8, 4
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !27
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 5
  store i32 24, ptr %12, align 8, !tbaa !28
  %13 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 6
  store i32 %8, ptr %13, align 4, !tbaa !31
  %14 = load ptr, ptr %0, align 8, !tbaa !27
  %15 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i64 0, i32 6, i32 0, i64 1
  store i32 4, ptr %15, align 4, !tbaa !31
  %16 = load ptr, ptr %0, align 8, !tbaa !27
  %17 = load ptr, ptr %16, align 8, !tbaa !30
  tail call void %17(ptr noundef nonnull %0) #3
  br label %18

18:                                               ; preds = %10, %6
  %19 = load i32, ptr %7, align 4, !tbaa !25
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  store i32 %19, ptr %20, align 4, !tbaa !58
  %21 = icmp sgt i32 %19, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %24 = load ptr, ptr %23, align 8, !tbaa !35
  %25 = zext nneg i32 %19 to i64
  br label %26

26:                                               ; preds = %26, %22
  %27 = phi i64 [ 0, %22 ], [ %30, %26 ]
  %28 = getelementptr inbounds %struct.jpeg_component_info, ptr %24, i64 %27
  %29 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %27
  store ptr %28, ptr %29, align 8, !tbaa !59
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %25
  br i1 %31, label %32, label %26, !llvm.loop !60

32:                                               ; preds = %26, %18
  %33 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 47
  store i32 0, ptr %33, align 4, !tbaa !61
  %34 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 48
  store i32 63, ptr %34, align 8, !tbaa !62
  %35 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 49
  store i32 0, ptr %35, align 4, !tbaa !63
  %36 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 50
  store i32 0, ptr %36, align 8, !tbaa !64
  tail call fastcc void @per_scan_setup(ptr noundef %0)
  %37 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 23
  %38 = load i32, ptr %37, align 8, !tbaa !65
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 56
  %42 = load ptr, ptr %41, align 8, !tbaa !66
  %43 = load ptr, ptr %42, align 8, !tbaa !67
  tail call void %43(ptr noundef %0) #3
  %44 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 57
  %45 = load ptr, ptr %44, align 8, !tbaa !69
  %46 = load ptr, ptr %45, align 8, !tbaa !70
  tail call void %46(ptr noundef %0) #3
  %47 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 53
  %48 = load ptr, ptr %47, align 8, !tbaa !72
  %49 = load ptr, ptr %48, align 8, !tbaa !73
  tail call void %49(ptr noundef %0, i32 noundef 0) #3
  br label %50

50:                                               ; preds = %40, %32
  %51 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 58
  %52 = load ptr, ptr %51, align 8, !tbaa !75
  %53 = load ptr, ptr %52, align 8, !tbaa !76
  tail call void %53(ptr noundef %0) #3
  %54 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %55 = load ptr, ptr %54, align 8, !tbaa !78
  %56 = load ptr, ptr %55, align 8, !tbaa !79
  %57 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 25
  %58 = load i32, ptr %57, align 8, !tbaa !53
  tail call void %56(ptr noundef %0, i32 noundef %58) #3
  %59 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 54
  %60 = load ptr, ptr %59, align 8, !tbaa !81
  %61 = load ptr, ptr %60, align 8, !tbaa !82
  %62 = getelementptr inbounds %struct.my_comp_master, ptr %3, i64 0, i32 3
  %63 = load i32, ptr %62, align 8, !tbaa !57
  %64 = icmp sgt i32 %63, 1
  %65 = select i1 %64, i32 3, i32 0
  tail call void %61(ptr noundef %0, i32 noundef %65) #3
  %66 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 52
  %67 = load ptr, ptr %66, align 8, !tbaa !84
  %68 = load ptr, ptr %67, align 8, !tbaa !85
  tail call void %68(ptr noundef %0, i32 noundef 0) #3
  %69 = load i32, ptr %57, align 8, !tbaa !53
  %70 = icmp eq i32 %69, 0
  %71 = getelementptr inbounds %struct.jpeg_comp_master, ptr %3, i64 0, i32 3
  br i1 %70, label %73, label %72

72:                                               ; preds = %50
  store i32 0, ptr %71, align 8, !tbaa !87
  br label %134

73:                                               ; preds = %50
  store i32 1, ptr %71, align 8, !tbaa !87
  br label %134

74:                                               ; preds = %1
  %75 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 25
  %76 = load i32, ptr %75, align 8, !tbaa !53
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %109

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %80 = load i32, ptr %79, align 4, !tbaa !25
  %81 = icmp sgt i32 %80, 4
  br i1 %81, label %82, label %90

82:                                               ; preds = %78
  %83 = load ptr, ptr %0, align 8, !tbaa !27
  %84 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %83, i64 0, i32 5
  store i32 24, ptr %84, align 8, !tbaa !28
  %85 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %83, i64 0, i32 6
  store i32 %80, ptr %85, align 4, !tbaa !31
  %86 = load ptr, ptr %0, align 8, !tbaa !27
  %87 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %86, i64 0, i32 6, i32 0, i64 1
  store i32 4, ptr %87, align 4, !tbaa !31
  %88 = load ptr, ptr %0, align 8, !tbaa !27
  %89 = load ptr, ptr %88, align 8, !tbaa !30
  tail call void %89(ptr noundef nonnull %0) #3
  br label %90

90:                                               ; preds = %82, %78
  %91 = load i32, ptr %79, align 4, !tbaa !25
  %92 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  store i32 %91, ptr %92, align 4, !tbaa !58
  %93 = icmp sgt i32 %91, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %96 = load ptr, ptr %95, align 8, !tbaa !35
  %97 = zext nneg i32 %91 to i64
  br label %98

98:                                               ; preds = %98, %94
  %99 = phi i64 [ 0, %94 ], [ %102, %98 ]
  %100 = getelementptr inbounds %struct.jpeg_component_info, ptr %96, i64 %99
  %101 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %99
  store ptr %100, ptr %101, align 8, !tbaa !59
  %102 = add nuw nsw i64 %99, 1
  %103 = icmp eq i64 %102, %97
  br i1 %103, label %104, label %98, !llvm.loop !60

104:                                              ; preds = %98, %90
  %105 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 47
  store i32 0, ptr %105, align 4, !tbaa !61
  %106 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 48
  store i32 63, ptr %106, align 8, !tbaa !62
  %107 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 49
  store i32 0, ptr %107, align 4, !tbaa !63
  %108 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 50
  store i32 0, ptr %108, align 8, !tbaa !64
  tail call fastcc void @per_scan_setup(ptr noundef %0)
  br label %109

109:                                              ; preds = %104, %74
  %110 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %111 = load ptr, ptr %110, align 8, !tbaa !78
  %112 = load ptr, ptr %111, align 8, !tbaa !79
  tail call void %112(ptr noundef %0, i32 noundef 0) #3
  %113 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 54
  %114 = load ptr, ptr %113, align 8, !tbaa !81
  %115 = load ptr, ptr %114, align 8, !tbaa !82
  tail call void %115(ptr noundef %0, i32 noundef 2) #3
  %116 = getelementptr inbounds %struct.my_comp_master, ptr %3, i64 0, i32 4
  %117 = load i32, ptr %116, align 4, !tbaa !55
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %109
  %120 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 55
  %121 = load ptr, ptr %120, align 8, !tbaa !88
  %122 = getelementptr inbounds %struct.jpeg_marker_writer, ptr %121, i64 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !89
  tail call void %123(ptr noundef %0) #3
  br label %124

124:                                              ; preds = %119, %109
  %125 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 55
  %126 = load ptr, ptr %125, align 8, !tbaa !88
  %127 = getelementptr inbounds %struct.jpeg_marker_writer, ptr %126, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !91
  tail call void %128(ptr noundef %0) #3
  %129 = getelementptr inbounds %struct.jpeg_comp_master, ptr %3, i64 0, i32 3
  store i32 0, ptr %129, align 8, !tbaa !87
  br label %134

130:                                              ; preds = %1
  %131 = load ptr, ptr %0, align 8, !tbaa !27
  %132 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %131, i64 0, i32 5
  store i32 47, ptr %132, align 8, !tbaa !28
  %133 = load ptr, ptr %131, align 8, !tbaa !30
  tail call void %133(ptr noundef nonnull %0) #3
  br label %134

134:                                              ; preds = %72, %73, %130, %124
  %135 = getelementptr inbounds %struct.my_comp_master, ptr %3, i64 0, i32 2
  %136 = load i32, ptr %135, align 4, !tbaa !56
  %137 = getelementptr inbounds %struct.my_comp_master, ptr %3, i64 0, i32 3
  %138 = load i32, ptr %137, align 8, !tbaa !57
  %139 = add nsw i32 %138, -1
  %140 = icmp eq i32 %136, %139
  %141 = zext i1 %140 to i32
  %142 = getelementptr inbounds %struct.jpeg_comp_master, ptr %3, i64 0, i32 4
  store i32 %141, ptr %142, align 4, !tbaa !22
  %143 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !92
  %145 = icmp eq ptr %144, null
  br i1 %145, label %149, label %146

146:                                              ; preds = %134
  %147 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %144, i64 0, i32 3
  store i32 %136, ptr %147, align 8, !tbaa !93
  %148 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %144, i64 0, i32 4
  store i32 %138, ptr %148, align 4, !tbaa !95
  br label %149

149:                                              ; preds = %146, %134
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pass_startup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 51
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = getelementptr inbounds %struct.jpeg_comp_master, ptr %3, i64 0, i32 3
  store i32 0, ptr %4, align 8, !tbaa !96
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 55
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = getelementptr inbounds %struct.jpeg_marker_writer, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !89
  tail call void %8(ptr noundef %0) #3
  %9 = load ptr, ptr %5, align 8, !tbaa !88
  %10 = getelementptr inbounds %struct.jpeg_marker_writer, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !91
  tail call void %11(ptr noundef %0) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_pass_master(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 51
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %5 = load ptr, ptr %4, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !97
  tail call void %7(ptr noundef %0) #3
  %8 = getelementptr inbounds %struct.my_comp_master, ptr %3, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !54
  switch i32 %9, label %28 [
    i32 0, label %10
    i32 1, label %18
    i32 2, label %19
  ]

10:                                               ; preds = %1
  store i32 2, ptr %8, align 8, !tbaa !54
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 25
  %12 = load i32, ptr %11, align 8, !tbaa !53
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.my_comp_master, ptr %3, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !55
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %15, align 4, !tbaa !55
  br label %28

18:                                               ; preds = %1
  store i32 2, ptr %8, align 8, !tbaa !54
  br label %28

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 25
  %21 = load i32, ptr %20, align 8, !tbaa !53
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 1, ptr %8, align 8, !tbaa !54
  br label %24

24:                                               ; preds = %23, %19
  %25 = getelementptr inbounds %struct.my_comp_master, ptr %3, i64 0, i32 4
  %26 = load i32, ptr %25, align 4, !tbaa !55
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %25, align 4, !tbaa !55
  br label %28

28:                                               ; preds = %10, %14, %1, %24, %18
  %29 = getelementptr inbounds %struct.my_comp_master, ptr %3, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !56
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %29, align 4, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @per_scan_setup(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %3 = load i32, ptr %2, align 4, !tbaa !58
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %27

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !43
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 43
  store i32 %9, ptr %10, align 8, !tbaa !98
  %11 = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 8
  %12 = load i32, ptr %11, align 8, !tbaa !44
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 44
  store i32 %12, ptr %13, align 4, !tbaa !99
  %14 = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 13
  store i32 1, ptr %14, align 4, !tbaa !100
  %15 = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 14
  store i32 1, ptr %15, align 8, !tbaa !101
  %16 = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 15
  store i32 1, ptr %16, align 4, !tbaa !102
  %17 = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 16
  store i32 8, ptr %17, align 8, !tbaa !103
  %18 = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 17
  store i32 1, ptr %18, align 4, !tbaa !104
  %19 = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !38
  %21 = urem i32 %12, %20
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 %20, i32 %21
  %24 = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 18
  store i32 %23, ptr %24, align 8, !tbaa !105
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 45
  store i32 1, ptr %25, align 8, !tbaa !106
  %26 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 46
  store i32 0, ptr %26, align 4, !tbaa !107
  br label %112

27:                                               ; preds = %1
  %28 = add i32 %3, -5
  %29 = icmp ult i32 %28, -4
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load ptr, ptr %0, align 8, !tbaa !27
  %32 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i64 0, i32 5
  store i32 24, ptr %32, align 8, !tbaa !28
  %33 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i64 0, i32 6
  store i32 %3, ptr %33, align 4, !tbaa !31
  %34 = load ptr, ptr %0, align 8, !tbaa !27
  %35 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %34, i64 0, i32 6, i32 0, i64 1
  store i32 4, ptr %35, align 4, !tbaa !31
  %36 = load ptr, ptr %0, align 8, !tbaa !27
  %37 = load ptr, ptr %36, align 8, !tbaa !30
  tail call void %37(ptr noundef nonnull %0) #3
  br label %38

38:                                               ; preds = %27, %30
  %39 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %40 = load i32, ptr %39, align 8, !tbaa !24
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 38
  %43 = load i32, ptr %42, align 8, !tbaa !33
  %44 = shl nsw i32 %43, 3
  %45 = sext i32 %44 to i64
  %46 = tail call i64 @jdiv_round_up(i64 noundef %41, i64 noundef %45) #3
  %47 = trunc i64 %46 to i32
  %48 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 43
  store i32 %47, ptr %48, align 8, !tbaa !98
  %49 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  %50 = load i32, ptr %49, align 4, !tbaa !23
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %53 = load i32, ptr %52, align 4, !tbaa !34
  %54 = shl nsw i32 %53, 3
  %55 = sext i32 %54 to i64
  %56 = tail call i64 @jdiv_round_up(i64 noundef %51, i64 noundef %55) #3
  %57 = trunc i64 %56 to i32
  %58 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 44
  store i32 %57, ptr %58, align 4, !tbaa !99
  %59 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 45
  store i32 0, ptr %59, align 8, !tbaa !106
  %60 = load i32, ptr %2, align 4, !tbaa !58
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %112

62:                                               ; preds = %38, %107
  %63 = phi i64 [ %108, %107 ], [ 0, %38 ]
  %64 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !59
  %66 = getelementptr inbounds %struct.jpeg_component_info, ptr %65, i64 0, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !36
  %68 = getelementptr inbounds %struct.jpeg_component_info, ptr %65, i64 0, i32 13
  store i32 %67, ptr %68, align 4, !tbaa !100
  %69 = getelementptr inbounds %struct.jpeg_component_info, ptr %65, i64 0, i32 3
  %70 = load i32, ptr %69, align 4, !tbaa !38
  %71 = getelementptr inbounds %struct.jpeg_component_info, ptr %65, i64 0, i32 14
  store i32 %70, ptr %71, align 8, !tbaa !101
  %72 = mul nsw i32 %70, %67
  %73 = getelementptr inbounds %struct.jpeg_component_info, ptr %65, i64 0, i32 15
  store i32 %72, ptr %73, align 4, !tbaa !102
  %74 = shl nsw i32 %67, 3
  %75 = getelementptr inbounds %struct.jpeg_component_info, ptr %65, i64 0, i32 16
  store i32 %74, ptr %75, align 8, !tbaa !103
  %76 = getelementptr inbounds %struct.jpeg_component_info, ptr %65, i64 0, i32 7
  %77 = load i32, ptr %76, align 4, !tbaa !43
  %78 = urem i32 %77, %67
  %79 = icmp eq i32 %78, 0
  %80 = select i1 %79, i32 %67, i32 %78
  %81 = getelementptr inbounds %struct.jpeg_component_info, ptr %65, i64 0, i32 17
  store i32 %80, ptr %81, align 4, !tbaa !104
  %82 = getelementptr inbounds %struct.jpeg_component_info, ptr %65, i64 0, i32 8
  %83 = load i32, ptr %82, align 8, !tbaa !44
  %84 = urem i32 %83, %70
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %85, i32 %70, i32 %84
  %87 = getelementptr inbounds %struct.jpeg_component_info, ptr %65, i64 0, i32 18
  store i32 %86, ptr %87, align 8, !tbaa !105
  %88 = load i32, ptr %59, align 8, !tbaa !106
  %89 = add nsw i32 %88, %72
  %90 = icmp sgt i32 %89, 10
  br i1 %90, label %91, label %95

91:                                               ; preds = %62
  %92 = load ptr, ptr %0, align 8, !tbaa !27
  %93 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %92, i64 0, i32 5
  store i32 11, ptr %93, align 8, !tbaa !28
  %94 = load ptr, ptr %92, align 8, !tbaa !30
  tail call void %94(ptr noundef nonnull %0) #3
  br label %95

95:                                               ; preds = %91, %62
  %96 = icmp sgt i32 %72, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %95
  %98 = trunc i64 %63 to i32
  br label %99

99:                                               ; preds = %97, %99
  %100 = phi i32 [ %101, %99 ], [ %72, %97 ]
  %101 = add nsw i32 %100, -1
  %102 = load i32, ptr %59, align 8, !tbaa !106
  %103 = add nsw i32 %102, 1
  store i32 %103, ptr %59, align 8, !tbaa !106
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 46, i64 %104
  store i32 %98, ptr %105, align 4, !tbaa !107
  %106 = icmp sgt i32 %100, 1
  br i1 %106, label %99, label %107, !llvm.loop !108

107:                                              ; preds = %99, %95
  %108 = add nuw nsw i64 %63, 1
  %109 = load i32, ptr %2, align 4, !tbaa !58
  %110 = sext i32 %109 to i64
  %111 = icmp slt i64 %108, %110
  br i1 %111, label %62, label %112, !llvm.loop !109

112:                                              ; preds = %107, %38, %5
  %113 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 30
  %114 = load i32, ptr %113, align 4, !tbaa !110
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %112
  %117 = zext nneg i32 %114 to i64
  %118 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 43
  %119 = load i32, ptr %118, align 8, !tbaa !98
  %120 = zext i32 %119 to i64
  %121 = mul nuw nsw i64 %120, %117
  %122 = tail call i64 @llvm.umin.i64(i64 %121, i64 65535)
  %123 = trunc i64 %122 to i32
  %124 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 29
  store i32 %123, ptr %124, align 8, !tbaa !111
  br label %125

125:                                              ; preds = %116, %112
  ret void
}

declare i64 @jdiv_round_up(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

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
!16 = !{!6, !7, i64 424}
!17 = !{!18, !7, i64 0}
!18 = !{!"", !19, i64 0, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44}
!19 = !{!"jpeg_comp_master", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28}
!20 = !{!18, !7, i64 8}
!21 = !{!18, !7, i64 16}
!22 = !{!18, !10, i64 28}
!23 = !{!6, !10, i64 44}
!24 = !{!6, !10, i64 40}
!25 = !{!6, !10, i64 68}
!26 = !{!6, !10, i64 48}
!27 = !{!6, !7, i64 0}
!28 = !{!29, !10, i64 40}
!29 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !15, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!30 = !{!29, !7, i64 0}
!31 = !{!8, !8, i64 0}
!32 = !{!6, !10, i64 64}
!33 = !{!6, !10, i64 304}
!34 = !{!6, !10, i64 308}
!35 = !{!6, !7, i64 80}
!36 = !{!37, !10, i64 8}
!37 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !7, i64 88}
!38 = !{!37, !10, i64 12}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !{!37, !10, i64 4}
!42 = !{!37, !10, i64 36}
!43 = !{!37, !10, i64 28}
!44 = !{!37, !10, i64 32}
!45 = !{!37, !10, i64 40}
!46 = !{!37, !10, i64 44}
!47 = !{!37, !10, i64 48}
!48 = distinct !{!48, !40}
!49 = !{!6, !10, i64 312}
!50 = !{!6, !7, i64 240}
!51 = !{!6, !10, i64 300}
!52 = !{!6, !10, i64 232}
!53 = !{!6, !10, i64 256}
!54 = !{!18, !10, i64 32}
!55 = !{!18, !10, i64 44}
!56 = !{!18, !10, i64 36}
!57 = !{!18, !10, i64 40}
!58 = !{!6, !10, i64 316}
!59 = !{!7, !7, i64 0}
!60 = distinct !{!60, !40}
!61 = !{!6, !10, i64 404}
!62 = !{!6, !10, i64 408}
!63 = !{!6, !10, i64 412}
!64 = !{!6, !10, i64 416}
!65 = !{!6, !10, i64 248}
!66 = !{!6, !7, i64 464}
!67 = !{!68, !7, i64 0}
!68 = !{!"jpeg_color_converter", !7, i64 0, !7, i64 8}
!69 = !{!6, !7, i64 472}
!70 = !{!71, !7, i64 0}
!71 = !{!"jpeg_downsampler", !7, i64 0, !7, i64 8, !10, i64 16}
!72 = !{!6, !7, i64 440}
!73 = !{!74, !7, i64 0}
!74 = !{!"jpeg_c_prep_controller", !7, i64 0, !7, i64 8}
!75 = !{!6, !7, i64 480}
!76 = !{!77, !7, i64 0}
!77 = !{!"jpeg_forward_dct", !7, i64 0, !7, i64 8}
!78 = !{!6, !7, i64 488}
!79 = !{!80, !7, i64 0}
!80 = !{!"jpeg_entropy_encoder", !7, i64 0, !7, i64 8, !7, i64 16}
!81 = !{!6, !7, i64 448}
!82 = !{!83, !7, i64 0}
!83 = !{!"jpeg_c_coef_controller", !7, i64 0, !7, i64 8}
!84 = !{!6, !7, i64 432}
!85 = !{!86, !7, i64 0}
!86 = !{!"jpeg_c_main_controller", !7, i64 0, !7, i64 8}
!87 = !{!18, !10, i64 24}
!88 = !{!6, !7, i64 456}
!89 = !{!90, !7, i64 16}
!90 = !{!"jpeg_marker_writer", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40}
!91 = !{!90, !7, i64 24}
!92 = !{!6, !7, i64 16}
!93 = !{!94, !10, i64 24}
!94 = !{!"jpeg_progress_mgr", !7, i64 0, !15, i64 8, !15, i64 16, !10, i64 24, !10, i64 28}
!95 = !{!94, !10, i64 28}
!96 = !{!19, !10, i64 24}
!97 = !{!80, !7, i64 16}
!98 = !{!6, !10, i64 352}
!99 = !{!6, !10, i64 356}
!100 = !{!37, !10, i64 52}
!101 = !{!37, !10, i64 56}
!102 = !{!37, !10, i64 60}
!103 = !{!37, !10, i64 64}
!104 = !{!37, !10, i64 68}
!105 = !{!37, !10, i64 72}
!106 = !{!6, !10, i64 360}
!107 = !{!10, !10, i64 0}
!108 = distinct !{!108, !40}
!109 = distinct !{!109, !40}
!110 = !{!6, !10, i64 276}
!111 = !{!6, !10, i64 272}
