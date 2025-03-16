; ModuleID = 'src/jidctred.c'
source_filename = "src/jidctred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @jpeg_idct_4x4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [32 x i32], align 16
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 61
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #3
  %9 = getelementptr inbounds %struct.jpeg_component_info, ptr %1, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !13
  br label %14

11:                                               ; preds = %122
  %12 = getelementptr inbounds i8, ptr %8, i64 128
  %13 = zext i32 %4 to i64
  br label %128

14:                                               ; preds = %5, %122
  %15 = phi i32 [ 8, %5 ], [ %126, %122 ]
  %16 = phi ptr [ %6, %5 ], [ %125, %122 ]
  %17 = phi ptr [ %10, %5 ], [ %124, %122 ]
  %18 = phi ptr [ %2, %5 ], [ %123, %122 ]
  %19 = icmp eq i32 %15, 4
  br i1 %19, label %122, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds i16, ptr %18, i64 8
  %22 = load i16, ptr %21, align 2, !tbaa !15
  %23 = sext i16 %22 to i32
  %24 = getelementptr inbounds i16, ptr %18, i64 16
  %25 = load i16, ptr %24, align 2, !tbaa !15
  %26 = sext i16 %25 to i32
  %27 = or i32 %26, %23
  %28 = getelementptr inbounds i16, ptr %18, i64 24
  %29 = load i16, ptr %28, align 2, !tbaa !15
  %30 = sext i16 %29 to i32
  %31 = or i32 %27, %30
  %32 = getelementptr inbounds i16, ptr %18, i64 40
  %33 = load i16, ptr %32, align 2, !tbaa !15
  %34 = sext i16 %33 to i32
  %35 = or i32 %31, %34
  %36 = getelementptr inbounds i16, ptr %18, i64 48
  %37 = load i16, ptr %36, align 2, !tbaa !15
  %38 = sext i16 %37 to i32
  %39 = or i32 %35, %38
  %40 = getelementptr inbounds i16, ptr %18, i64 56
  %41 = load i16, ptr %40, align 2, !tbaa !15
  %42 = sext i16 %41 to i32
  %43 = or i32 %39, %42
  %44 = icmp eq i32 %43, 0
  %45 = load i16, ptr %18, align 2, !tbaa !15
  %46 = sext i16 %45 to i32
  %47 = load i32, ptr %17, align 4, !tbaa !16
  br i1 %44, label %48, label %53

48:                                               ; preds = %20
  %49 = shl nsw i32 %46, 2
  %50 = mul i32 %49, %47
  store i32 %50, ptr %16, align 4, !tbaa !16
  %51 = getelementptr inbounds i32, ptr %16, i64 8
  store i32 %50, ptr %51, align 4, !tbaa !16
  %52 = getelementptr inbounds i32, ptr %16, i64 16
  store i32 %50, ptr %52, align 4, !tbaa !16
  br label %118

53:                                               ; preds = %20
  %54 = mul nsw i32 %47, %46
  %55 = sext i32 %54 to i64
  %56 = shl nsw i64 %55, 14
  %57 = getelementptr inbounds i32, ptr %17, i64 16
  %58 = load i32, ptr %57, align 4, !tbaa !16
  %59 = mul nsw i32 %58, %26
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, ptr %17, i64 48
  %62 = load i32, ptr %61, align 4, !tbaa !16
  %63 = mul nsw i32 %62, %38
  %64 = sext i32 %63 to i64
  %65 = mul nsw i64 %60, 15137
  %66 = mul nsw i64 %64, -6270
  %67 = add nsw i64 %66, %65
  %68 = add nsw i64 %67, %56
  %69 = sub nsw i64 %56, %67
  %70 = getelementptr inbounds i32, ptr %17, i64 56
  %71 = load i32, ptr %70, align 4, !tbaa !16
  %72 = mul nsw i32 %71, %42
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, ptr %17, i64 40
  %75 = load i32, ptr %74, align 4, !tbaa !16
  %76 = mul nsw i32 %75, %34
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, ptr %17, i64 24
  %79 = load i32, ptr %78, align 4, !tbaa !16
  %80 = mul nsw i32 %79, %30
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, ptr %17, i64 8
  %83 = load i32, ptr %82, align 4, !tbaa !16
  %84 = mul nsw i32 %83, %23
  %85 = sext i32 %84 to i64
  %86 = mul nsw i64 %73, -1730
  %87 = mul nsw i64 %77, 11893
  %88 = add nsw i64 %87, %86
  %89 = mul nsw i64 %81, -17799
  %90 = add nsw i64 %88, %89
  %91 = mul nsw i64 %85, 8697
  %92 = add nsw i64 %90, %91
  %93 = mul nsw i64 %73, -4176
  %94 = mul nsw i64 %77, -4926
  %95 = add nsw i64 %94, %93
  %96 = mul nsw i64 %81, 7373
  %97 = add nsw i64 %95, %96
  %98 = mul nsw i64 %85, 20995
  %99 = add nsw i64 %97, %98
  %100 = add nsw i64 %68, 2048
  %101 = add nsw i64 %100, %99
  %102 = lshr i64 %101, 12
  %103 = trunc i64 %102 to i32
  store i32 %103, ptr %16, align 4, !tbaa !16
  %104 = add nsw i64 %68, 2048
  %105 = sub nsw i64 %104, %99
  %106 = lshr i64 %105, 12
  %107 = trunc i64 %106 to i32
  %108 = getelementptr inbounds i32, ptr %16, i64 24
  store i32 %107, ptr %108, align 4, !tbaa !16
  %109 = add nsw i64 %69, 2048
  %110 = add nsw i64 %109, %92
  %111 = lshr i64 %110, 12
  %112 = trunc i64 %111 to i32
  %113 = getelementptr inbounds i32, ptr %16, i64 8
  store i32 %112, ptr %113, align 4, !tbaa !16
  %114 = add nsw i64 %69, 2048
  %115 = sub nsw i64 %114, %92
  %116 = lshr i64 %115, 12
  %117 = trunc i64 %116 to i32
  br label %118

118:                                              ; preds = %48, %53
  %119 = phi i64 [ 16, %53 ], [ 24, %48 ]
  %120 = phi i32 [ %117, %53 ], [ %50, %48 ]
  %121 = getelementptr inbounds i32, ptr %16, i64 %119
  store i32 %120, ptr %121, align 4, !tbaa !16
  br label %122

122:                                              ; preds = %118, %14
  %123 = getelementptr inbounds i16, ptr %18, i64 1
  %124 = getelementptr inbounds i32, ptr %17, i64 1
  %125 = getelementptr inbounds i32, ptr %16, i64 1
  %126 = add nsw i32 %15, -1
  %127 = icmp ugt i32 %15, 1
  br i1 %127, label %14, label %11, !llvm.loop !17

128:                                              ; preds = %11, %216
  %129 = phi i64 [ 0, %11 ], [ %221, %216 ]
  %130 = phi ptr [ %6, %11 ], [ %220, %216 ]
  %131 = getelementptr inbounds ptr, ptr %3, i64 %129
  %132 = load ptr, ptr %131, align 8, !tbaa !19
  %133 = getelementptr inbounds i8, ptr %132, i64 %13
  %134 = getelementptr inbounds i32, ptr %130, i64 1
  %135 = load i32, ptr %134, align 4, !tbaa !16
  %136 = getelementptr inbounds i32, ptr %130, i64 2
  %137 = load i32, ptr %136, align 4, !tbaa !16
  %138 = or i32 %137, %135
  %139 = getelementptr inbounds i32, ptr %130, i64 3
  %140 = load i32, ptr %139, align 4, !tbaa !16
  %141 = or i32 %138, %140
  %142 = getelementptr inbounds i32, ptr %130, i64 5
  %143 = load i32, ptr %142, align 4, !tbaa !16
  %144 = or i32 %141, %143
  %145 = getelementptr inbounds i32, ptr %130, i64 6
  %146 = load i32, ptr %145, align 4, !tbaa !16
  %147 = or i32 %144, %146
  %148 = getelementptr inbounds i32, ptr %130, i64 7
  %149 = load i32, ptr %148, align 4, !tbaa !16
  %150 = or i32 %147, %149
  %151 = icmp eq i32 %150, 0
  %152 = load i32, ptr %130, align 4, !tbaa !16
  br i1 %151, label %153, label %162

153:                                              ; preds = %128
  %154 = add i32 %152, 16
  %155 = lshr i32 %154, 5
  %156 = and i32 %155, 1023
  %157 = zext nneg i32 %156 to i64
  %158 = getelementptr inbounds i8, ptr %12, i64 %157
  %159 = load i8, ptr %158, align 1, !tbaa !20
  store i8 %159, ptr %133, align 1, !tbaa !20
  %160 = getelementptr inbounds i8, ptr %133, i64 1
  store i8 %159, ptr %160, align 1, !tbaa !20
  %161 = getelementptr inbounds i8, ptr %133, i64 2
  store i8 %159, ptr %161, align 1, !tbaa !20
  br label %216

162:                                              ; preds = %128
  %163 = sext i32 %152 to i64
  %164 = shl nsw i64 %163, 14
  %165 = zext i32 %137 to i64
  %166 = mul nuw nsw i64 %165, 15137
  %167 = zext i32 %146 to i64
  %168 = mul nsw i64 %167, -6270
  %169 = add nsw i64 %168, %166
  %170 = add nsw i64 %164, %169
  %171 = sub nsw i64 %164, %169
  %172 = zext i32 %149 to i64
  %173 = zext i32 %143 to i64
  %174 = zext i32 %140 to i64
  %175 = zext i32 %135 to i64
  %176 = mul nsw i64 %172, -1730
  %177 = mul nuw nsw i64 %173, 11893
  %178 = mul nsw i64 %174, -17799
  %179 = mul nuw nsw i64 %175, 8697
  %180 = add nsw i64 %178, %179
  %181 = add nsw i64 %180, %177
  %182 = add nsw i64 %181, %176
  %183 = mul nsw i64 %172, -4176
  %184 = mul nsw i64 %173, -4926
  %185 = mul nuw nsw i64 %174, 7373
  %186 = mul nuw nsw i64 %175, 20995
  %187 = add nuw nsw i64 %185, %186
  %188 = add nsw i64 %187, %184
  %189 = add nsw i64 %188, %183
  %190 = add nsw i64 %189, 262144
  %191 = add nsw i64 %190, %170
  %192 = lshr i64 %191, 19
  %193 = and i64 %192, 1023
  %194 = getelementptr inbounds i8, ptr %12, i64 %193
  %195 = load i8, ptr %194, align 1, !tbaa !20
  store i8 %195, ptr %133, align 1, !tbaa !20
  %196 = sub nsw i64 %170, %189
  %197 = add nsw i64 %196, 262144
  %198 = lshr i64 %197, 19
  %199 = and i64 %198, 1023
  %200 = getelementptr inbounds i8, ptr %12, i64 %199
  %201 = load i8, ptr %200, align 1, !tbaa !20
  %202 = getelementptr inbounds i8, ptr %133, i64 3
  store i8 %201, ptr %202, align 1, !tbaa !20
  %203 = add nsw i64 %182, 262144
  %204 = add nsw i64 %203, %171
  %205 = lshr i64 %204, 19
  %206 = and i64 %205, 1023
  %207 = getelementptr inbounds i8, ptr %12, i64 %206
  %208 = load i8, ptr %207, align 1, !tbaa !20
  %209 = getelementptr inbounds i8, ptr %133, i64 1
  store i8 %208, ptr %209, align 1, !tbaa !20
  %210 = sub nsw i64 %171, %182
  %211 = add nsw i64 %210, 262144
  %212 = lshr i64 %211, 19
  %213 = and i64 %212, 1023
  %214 = getelementptr inbounds i8, ptr %12, i64 %213
  %215 = load i8, ptr %214, align 1, !tbaa !20
  br label %216

216:                                              ; preds = %162, %153
  %217 = phi i64 [ 2, %162 ], [ 3, %153 ]
  %218 = phi i8 [ %215, %162 ], [ %159, %153 ]
  %219 = getelementptr inbounds i8, ptr %133, i64 %217
  store i8 %218, ptr %219, align 1, !tbaa !20
  %220 = getelementptr inbounds i32, ptr %130, i64 8
  %221 = add nuw nsw i64 %129, 1
  %222 = icmp eq i64 %221, 4
  br i1 %222, label %223, label %128, !llvm.loop !21

223:                                              ; preds = %216
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @jpeg_idct_2x2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [16 x i32], align 16
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 61
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #3
  %9 = getelementptr inbounds %struct.jpeg_component_info, ptr %1, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !13
  br label %14

11:                                               ; preds = %84
  %12 = getelementptr inbounds i8, ptr %8, i64 128
  %13 = zext i32 %4 to i64
  br label %90

14:                                               ; preds = %5, %84
  %15 = phi i32 [ 8, %5 ], [ %88, %84 ]
  %16 = phi ptr [ %2, %5 ], [ %85, %84 ]
  %17 = phi ptr [ %10, %5 ], [ %86, %84 ]
  %18 = phi ptr [ %6, %5 ], [ %87, %84 ]
  %19 = and i32 %15, 2147483645
  %20 = icmp eq i32 %19, 4
  %21 = icmp eq i32 %15, 2
  %22 = or i1 %21, %20
  br i1 %22, label %84, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds i16, ptr %16, i64 8
  %25 = load i16, ptr %24, align 2, !tbaa !15
  %26 = sext i16 %25 to i32
  %27 = getelementptr inbounds i16, ptr %16, i64 24
  %28 = load i16, ptr %27, align 2, !tbaa !15
  %29 = sext i16 %28 to i32
  %30 = or i32 %29, %26
  %31 = getelementptr inbounds i16, ptr %16, i64 40
  %32 = load i16, ptr %31, align 2, !tbaa !15
  %33 = sext i16 %32 to i32
  %34 = or i32 %30, %33
  %35 = getelementptr inbounds i16, ptr %16, i64 56
  %36 = load i16, ptr %35, align 2, !tbaa !15
  %37 = sext i16 %36 to i32
  %38 = or i32 %34, %37
  %39 = icmp eq i32 %38, 0
  %40 = load i16, ptr %16, align 2, !tbaa !15
  %41 = sext i16 %40 to i32
  %42 = load i32, ptr %17, align 4, !tbaa !16
  br i1 %39, label %43, label %46

43:                                               ; preds = %23
  %44 = shl nsw i32 %41, 2
  %45 = mul i32 %44, %42
  store i32 %45, ptr %18, align 4, !tbaa !16
  br label %81

46:                                               ; preds = %23
  %47 = mul nsw i32 %42, %41
  %48 = sext i32 %47 to i64
  %49 = shl nsw i64 %48, 15
  %50 = getelementptr inbounds i32, ptr %17, i64 56
  %51 = load i32, ptr %50, align 4, !tbaa !16
  %52 = mul nsw i32 %51, %37
  %53 = sext i32 %52 to i64
  %54 = mul nsw i64 %53, -5906
  %55 = getelementptr inbounds i32, ptr %17, i64 40
  %56 = load i32, ptr %55, align 4, !tbaa !16
  %57 = mul nsw i32 %56, %33
  %58 = sext i32 %57 to i64
  %59 = mul nsw i64 %58, 6967
  %60 = add nsw i64 %59, %54
  %61 = getelementptr inbounds i32, ptr %17, i64 24
  %62 = load i32, ptr %61, align 4, !tbaa !16
  %63 = mul nsw i32 %62, %29
  %64 = sext i32 %63 to i64
  %65 = mul nsw i64 %64, -10426
  %66 = add nsw i64 %60, %65
  %67 = getelementptr inbounds i32, ptr %17, i64 8
  %68 = load i32, ptr %67, align 4, !tbaa !16
  %69 = mul nsw i32 %68, %26
  %70 = sext i32 %69 to i64
  %71 = mul nsw i64 %70, 29692
  %72 = add nsw i64 %66, %71
  %73 = or disjoint i64 %49, 4096
  %74 = add nsw i64 %73, %72
  %75 = lshr i64 %74, 13
  %76 = trunc i64 %75 to i32
  store i32 %76, ptr %18, align 4, !tbaa !16
  %77 = or disjoint i64 %49, 4096
  %78 = sub nsw i64 %77, %72
  %79 = lshr i64 %78, 13
  %80 = trunc i64 %79 to i32
  br label %81

81:                                               ; preds = %43, %46
  %82 = phi i32 [ %80, %46 ], [ %45, %43 ]
  %83 = getelementptr inbounds i32, ptr %18, i64 8
  store i32 %82, ptr %83, align 4, !tbaa !16
  br label %84

84:                                               ; preds = %81, %14
  %85 = getelementptr inbounds i16, ptr %16, i64 1
  %86 = getelementptr inbounds i32, ptr %17, i64 1
  %87 = getelementptr inbounds i32, ptr %18, i64 1
  %88 = add nsw i32 %15, -1
  %89 = icmp ugt i32 %15, 1
  br i1 %89, label %14, label %11, !llvm.loop !22

90:                                               ; preds = %11, %142
  %91 = phi i64 [ 0, %11 ], [ %146, %142 ]
  %92 = phi ptr [ %6, %11 ], [ %145, %142 ]
  %93 = getelementptr inbounds ptr, ptr %3, i64 %91
  %94 = load ptr, ptr %93, align 8, !tbaa !19
  %95 = getelementptr inbounds i8, ptr %94, i64 %13
  %96 = getelementptr inbounds i32, ptr %92, i64 1
  %97 = load i32, ptr %96, align 4, !tbaa !16
  %98 = getelementptr inbounds i32, ptr %92, i64 3
  %99 = load i32, ptr %98, align 4, !tbaa !16
  %100 = or i32 %99, %97
  %101 = getelementptr inbounds i32, ptr %92, i64 5
  %102 = load i32, ptr %101, align 4, !tbaa !16
  %103 = or i32 %100, %102
  %104 = getelementptr inbounds i32, ptr %92, i64 7
  %105 = load i32, ptr %104, align 4, !tbaa !16
  %106 = or i32 %103, %105
  %107 = icmp eq i32 %106, 0
  %108 = load i32, ptr %92, align 4, !tbaa !16
  br i1 %107, label %109, label %116

109:                                              ; preds = %90
  %110 = add i32 %108, 16
  %111 = lshr i32 %110, 5
  %112 = and i32 %111, 1023
  %113 = zext nneg i32 %112 to i64
  %114 = getelementptr inbounds i8, ptr %12, i64 %113
  %115 = load i8, ptr %114, align 1, !tbaa !20
  store i8 %115, ptr %95, align 1, !tbaa !20
  br label %142

116:                                              ; preds = %90
  %117 = sext i32 %108 to i64
  %118 = shl nsw i64 %117, 15
  %119 = zext i32 %105 to i64
  %120 = mul nsw i64 %119, -5906
  %121 = zext i32 %102 to i64
  %122 = mul nuw nsw i64 %121, 6967
  %123 = zext i32 %99 to i64
  %124 = mul nsw i64 %123, -10426
  %125 = zext i32 %97 to i64
  %126 = mul nuw nsw i64 %125, 29692
  %127 = add nsw i64 %124, %126
  %128 = add nsw i64 %127, %122
  %129 = add nsw i64 %128, %120
  %130 = add nsw i64 %129, 524288
  %131 = add nsw i64 %130, %118
  %132 = lshr i64 %131, 20
  %133 = and i64 %132, 1023
  %134 = getelementptr inbounds i8, ptr %12, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !20
  store i8 %135, ptr %95, align 1, !tbaa !20
  %136 = sub nsw i64 %118, %129
  %137 = add nsw i64 %136, 524288
  %138 = lshr i64 %137, 20
  %139 = and i64 %138, 1023
  %140 = getelementptr inbounds i8, ptr %12, i64 %139
  %141 = load i8, ptr %140, align 1, !tbaa !20
  br label %142

142:                                              ; preds = %116, %109
  %143 = phi i8 [ %141, %116 ], [ %115, %109 ]
  %144 = getelementptr inbounds i8, ptr %95, i64 1
  store i8 %143, ptr %144, align 1, !tbaa !20
  %145 = getelementptr inbounds i32, ptr %92, i64 8
  %146 = add nuw nsw i64 %91, 1
  %147 = icmp eq i64 %91, 0
  br i1 %147, label %90, label %148, !llvm.loop !23

148:                                              ; preds = %142
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @jpeg_idct_1x1(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 61
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = getelementptr inbounds i8, ptr %7, i64 128
  %9 = getelementptr inbounds %struct.jpeg_component_info, ptr %1, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !13
  %11 = load i16, ptr %2, align 2, !tbaa !15
  %12 = zext i16 %11 to i32
  %13 = load i32, ptr %10, align 4, !tbaa !16
  %14 = mul i32 %13, %12
  %15 = add i32 %14, 4
  %16 = lshr i32 %15, 3
  %17 = and i32 %16, 1023
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %8, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !20
  %21 = load ptr, ptr %3, align 8, !tbaa !19
  %22 = zext i32 %4 to i64
  %23 = getelementptr inbounds i8, ptr %21, i64 %22
  store i8 %20, ptr %23, align 1, !tbaa !20
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 408}
!6 = !{!"jpeg_decompress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !11, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !7, i64 152, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !7, i64 184, !8, i64 192, !8, i64 224, !8, i64 256, !10, i64 288, !7, i64 296, !10, i64 304, !10, i64 308, !8, i64 312, !8, i64 328, !8, i64 344, !10, i64 360, !10, i64 364, !8, i64 368, !12, i64 370, !12, i64 372, !10, i64 376, !8, i64 380, !10, i64 384, !10, i64 388, !10, i64 392, !10, i64 396, !10, i64 400, !7, i64 408, !10, i64 416, !8, i64 424, !10, i64 456, !10, i64 460, !10, i64 464, !8, i64 468, !10, i64 508, !10, i64 512, !10, i64 516, !10, i64 520, !10, i64 524, !7, i64 528, !7, i64 536, !7, i64 544, !7, i64 552, !7, i64 560, !7, i64 568, !7, i64 576, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!14, !7, i64 88}
!14 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !7, i64 88}
!15 = !{!12, !12, i64 0}
!16 = !{!10, !10, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = !{!7, !7, i64 0}
!20 = !{!8, !8, i64 0}
!21 = distinct !{!21, !18}
!22 = distinct !{!22, !18}
!23 = distinct !{!23, !18}
