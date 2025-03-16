; ModuleID = 'gsbitops.c'
source_filename = "gsbitops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }

@mono_copy_masks = dso_local local_unnamed_addr constant [17 x i16] [i16 -1, i16 -129, i16 -193, i16 -225, i16 -241, i16 -249, i16 -253, i16 -255, i16 -256, i16 32512, i16 16128, i16 7936, i16 3840, i16 1792, i16 768, i16 256, i16 0], align 16
@mono_fill_masks = dso_local local_unnamed_addr constant [33 x i32] [i32 -1, i32 -129, i32 -193, i32 -225, i32 -241, i32 -249, i32 -253, i32 -255, i32 -256, i32 -33024, i32 -49408, i32 -57600, i32 -61696, i32 -63744, i32 -64768, i32 -65280, i32 -65536, i32 -8454144, i32 -12648448, i32 -14745600, i32 -15794176, i32 -16318464, i32 -16580608, i32 -16711680, i32 -16777216, i32 2130706432, i32 1056964608, i32 520093696, i32 251658240, i32 117440512, i32 50331648, i32 16777216, i32 0], align 16
@bits_bounding_box.first_1 = internal unnamed_addr constant <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\04\03\02\02\01\01\01\01", [8 x i8] zeroinitializer }>, align 16
@bits_bounding_box.last_1 = internal unnamed_addr constant [16 x i8] c"\00\04\03\04\02\04\03\04\01\04\03\04\02\04\03\04", align 16
@compress_tables = internal unnamed_addr constant [4 x [4 x ptr]] [[4 x ptr] [ptr @compress_1_1, ptr @compress_2_1, ptr @compress_3_1, ptr @compress_4_1], [4 x ptr] [ptr null, ptr @compress_2_2, ptr @compress_3_2, ptr @compress_4_2], [4 x ptr] [ptr null, ptr null, ptr null, ptr @compress_4_4], [4 x ptr] zeroinitializer], align 16
@half_byte_1s = internal unnamed_addr constant [16 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04", align 16
@bits5_trailing_1s = internal unnamed_addr constant [32 x i8] c"\00\00\00\01\00\00\00\02\00\00\00\01\00\00\00\03\00\00\00\01\00\00\00\02\00\00\00\01\00\00\00\04", align 16
@bits5_leading_1s = internal unnamed_addr constant [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\03\04", align 16
@compress_1_1 = internal constant [3 x i8] c"\00\01\01", align 1
@compress_2_1 = internal constant [5 x i8] c"\00\00\01\01\01", align 1
@compress_3_1 = internal constant [9 x i8] c"\00\00\00\00\01\01\01\01\01", align 1
@compress_4_1 = internal constant [17 x i8] c"\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01", align 16
@compress_2_2 = internal constant [5 x i8] c"\00\01\02\02\03", align 1
@compress_3_2 = internal constant [9 x i8] c"\00\00\01\01\02\02\02\03\03", align 1
@compress_4_2 = internal constant [17 x i8] c"\00\00\00\00\01\01\01\01\02\02\02\02\02\03\03\03\03", align 16
@compress_4_4 = internal constant [17 x i8] c"\00\01\02\03\04\05\06\07\08\08\09\0A\0B\0C\0D\0E\0F", align 16

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @bits_fill_rectangle(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = ashr i32 %1, 3
  %8 = and i32 %7, -4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %0, i64 %9
  %11 = and i32 %1, 31
  %12 = add i32 %11, %4
  %13 = add i32 %12, -33
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %59

15:                                               ; preds = %6
  %16 = zext i32 %12 to i64
  %17 = getelementptr inbounds [33 x i32], ptr @mono_fill_masks, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !5
  %19 = xor i32 %18, -1
  %20 = zext nneg i32 %11 to i64
  %21 = getelementptr inbounds [33 x i32], ptr @mono_fill_masks, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !5
  %23 = and i32 %22, %19
  %24 = trunc i32 %3 to i8
  switch i8 %24, label %30 [
    i8 0, label %27
    i8 -1, label %25
  ]

25:                                               ; preds = %15
  %26 = zext i32 %2 to i64
  br label %42

27:                                               ; preds = %15
  %28 = xor i32 %23, -1
  %29 = zext i32 %2 to i64
  br label %34

30:                                               ; preds = %15
  %31 = xor i32 %23, -1
  %32 = and i32 %23, %3
  %33 = zext i32 %2 to i64
  br label %50

34:                                               ; preds = %27, %34
  %35 = phi ptr [ %39, %34 ], [ %10, %27 ]
  %36 = phi i32 [ %40, %34 ], [ %5, %27 ]
  %37 = load i32, ptr %35, align 4, !tbaa !5
  %38 = and i32 %37, %28
  store i32 %38, ptr %35, align 4, !tbaa !5
  %39 = getelementptr inbounds i8, ptr %35, i64 %29
  %40 = add nsw i32 %36, -1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %228, label %34, !llvm.loop !9

42:                                               ; preds = %25, %42
  %43 = phi i32 [ %48, %42 ], [ %5, %25 ]
  %44 = phi ptr [ %47, %42 ], [ %10, %25 ]
  %45 = load i32, ptr %44, align 4, !tbaa !5
  %46 = or i32 %45, %23
  store i32 %46, ptr %44, align 4, !tbaa !5
  %47 = getelementptr inbounds i8, ptr %44, i64 %26
  %48 = add nsw i32 %43, -1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %228, label %42, !llvm.loop !11

50:                                               ; preds = %30, %50
  %51 = phi i32 [ %57, %50 ], [ %5, %30 ]
  %52 = phi ptr [ %56, %50 ], [ %10, %30 ]
  %53 = load i32, ptr %52, align 4, !tbaa !5
  %54 = and i32 %53, %31
  %55 = or i32 %54, %32
  store i32 %55, ptr %52, align 4, !tbaa !5
  %56 = getelementptr inbounds i8, ptr %52, i64 %33
  %57 = add nsw i32 %51, -1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %228, label %50, !llvm.loop !12

59:                                               ; preds = %6
  %60 = lshr i32 %13, 5
  %61 = zext nneg i32 %11 to i64
  %62 = getelementptr inbounds [33 x i32], ptr @mono_fill_masks, i64 0, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !5
  %64 = and i32 %13, 31
  %65 = add nuw nsw i32 %64, 1
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds [33 x i32], ptr @mono_fill_masks, i64 0, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !5
  %69 = xor i32 %68, -1
  switch i32 %60, label %167 [
    i32 0, label %70
    i32 1, label %117
  ]

70:                                               ; preds = %59
  %71 = trunc i32 %3 to i8
  switch i8 %71, label %77 [
    i8 0, label %74
    i8 -1, label %72
  ]

72:                                               ; preds = %70
  %73 = zext i32 %2 to i64
  br label %93

74:                                               ; preds = %70
  %75 = xor i32 %63, -1
  %76 = zext i32 %2 to i64
  br label %82

77:                                               ; preds = %70
  %78 = xor i32 %63, -1
  %79 = and i32 %63, %3
  %80 = and i32 %69, %3
  %81 = zext i32 %2 to i64
  br label %104

82:                                               ; preds = %74, %82
  %83 = phi i32 [ %91, %82 ], [ %5, %74 ]
  %84 = phi ptr [ %90, %82 ], [ %10, %74 ]
  %85 = load i32, ptr %84, align 4, !tbaa !5
  %86 = and i32 %85, %75
  store i32 %86, ptr %84, align 4, !tbaa !5
  %87 = getelementptr inbounds i32, ptr %84, i64 1
  %88 = load i32, ptr %87, align 4, !tbaa !5
  %89 = and i32 %88, %68
  store i32 %89, ptr %87, align 4, !tbaa !5
  %90 = getelementptr inbounds i8, ptr %84, i64 %76
  %91 = add nsw i32 %83, -1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %228, label %82, !llvm.loop !13

93:                                               ; preds = %72, %93
  %94 = phi i32 [ %102, %93 ], [ %5, %72 ]
  %95 = phi ptr [ %101, %93 ], [ %10, %72 ]
  %96 = load i32, ptr %95, align 4, !tbaa !5
  %97 = or i32 %96, %63
  store i32 %97, ptr %95, align 4, !tbaa !5
  %98 = getelementptr inbounds i32, ptr %95, i64 1
  %99 = load i32, ptr %98, align 4, !tbaa !5
  %100 = or i32 %99, %69
  store i32 %100, ptr %98, align 4, !tbaa !5
  %101 = getelementptr inbounds i8, ptr %95, i64 %73
  %102 = add nsw i32 %94, -1
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %228, label %93, !llvm.loop !14

104:                                              ; preds = %77, %104
  %105 = phi i32 [ %115, %104 ], [ %5, %77 ]
  %106 = phi ptr [ %114, %104 ], [ %10, %77 ]
  %107 = load i32, ptr %106, align 4, !tbaa !5
  %108 = and i32 %107, %78
  %109 = or i32 %108, %79
  store i32 %109, ptr %106, align 4, !tbaa !5
  %110 = getelementptr inbounds i32, ptr %106, i64 1
  %111 = load i32, ptr %110, align 4, !tbaa !5
  %112 = and i32 %111, %68
  %113 = or i32 %112, %80
  store i32 %113, ptr %110, align 4, !tbaa !5
  %114 = getelementptr inbounds i8, ptr %106, i64 %81
  %115 = add nsw i32 %105, -1
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %228, label %104, !llvm.loop !15

117:                                              ; preds = %59
  %118 = trunc i32 %3 to i8
  switch i8 %118, label %124 [
    i8 0, label %121
    i8 -1, label %119
  ]

119:                                              ; preds = %117
  %120 = zext i32 %2 to i64
  br label %141

121:                                              ; preds = %117
  %122 = xor i32 %63, -1
  %123 = zext i32 %2 to i64
  br label %129

124:                                              ; preds = %117
  %125 = xor i32 %63, -1
  %126 = and i32 %63, %3
  %127 = and i32 %69, %3
  %128 = zext i32 %2 to i64
  br label %153

129:                                              ; preds = %121, %129
  %130 = phi i32 [ %139, %129 ], [ %5, %121 ]
  %131 = phi ptr [ %138, %129 ], [ %10, %121 ]
  %132 = load i32, ptr %131, align 4, !tbaa !5
  %133 = and i32 %132, %122
  store i32 %133, ptr %131, align 4, !tbaa !5
  %134 = getelementptr inbounds i32, ptr %131, i64 1
  store i32 0, ptr %134, align 4, !tbaa !5
  %135 = getelementptr inbounds i32, ptr %131, i64 2
  %136 = load i32, ptr %135, align 4, !tbaa !5
  %137 = and i32 %136, %68
  store i32 %137, ptr %135, align 4, !tbaa !5
  %138 = getelementptr inbounds i8, ptr %131, i64 %123
  %139 = add nsw i32 %130, -1
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %228, label %129, !llvm.loop !16

141:                                              ; preds = %119, %141
  %142 = phi i32 [ %151, %141 ], [ %5, %119 ]
  %143 = phi ptr [ %150, %141 ], [ %10, %119 ]
  %144 = load i32, ptr %143, align 4, !tbaa !5
  %145 = or i32 %144, %63
  store i32 %145, ptr %143, align 4, !tbaa !5
  %146 = getelementptr inbounds i32, ptr %143, i64 1
  store i32 -1, ptr %146, align 4, !tbaa !5
  %147 = getelementptr inbounds i32, ptr %143, i64 2
  %148 = load i32, ptr %147, align 4, !tbaa !5
  %149 = or i32 %148, %69
  store i32 %149, ptr %147, align 4, !tbaa !5
  %150 = getelementptr inbounds i8, ptr %143, i64 %120
  %151 = add nsw i32 %142, -1
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %228, label %141, !llvm.loop !17

153:                                              ; preds = %124, %153
  %154 = phi i32 [ %165, %153 ], [ %5, %124 ]
  %155 = phi ptr [ %164, %153 ], [ %10, %124 ]
  %156 = load i32, ptr %155, align 4, !tbaa !5
  %157 = and i32 %156, %125
  %158 = or i32 %157, %126
  store i32 %158, ptr %155, align 4, !tbaa !5
  %159 = getelementptr inbounds i32, ptr %155, i64 1
  store i32 %3, ptr %159, align 4, !tbaa !5
  %160 = getelementptr inbounds i32, ptr %155, i64 2
  %161 = load i32, ptr %160, align 4, !tbaa !5
  %162 = and i32 %161, %68
  %163 = or i32 %162, %127
  store i32 %163, ptr %160, align 4, !tbaa !5
  %164 = getelementptr inbounds i8, ptr %155, i64 %128
  %165 = add nsw i32 %154, -1
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %228, label %153, !llvm.loop !18

167:                                              ; preds = %59
  %168 = lshr i32 %13, 3
  %169 = and i32 %168, 268435452
  %170 = trunc i32 %3 to i8
  switch i8 %170, label %182 [
    i8 0, label %176
    i8 -1, label %171
  ]

171:                                              ; preds = %167
  %172 = zext nneg i32 %169 to i64
  %173 = add nuw nsw i32 %60, 1
  %174 = zext nneg i32 %173 to i64
  %175 = zext i32 %2 to i64
  br label %202

176:                                              ; preds = %167
  %177 = xor i32 %63, -1
  %178 = zext nneg i32 %169 to i64
  %179 = add nuw nsw i32 %60, 1
  %180 = zext nneg i32 %179 to i64
  %181 = zext i32 %2 to i64
  br label %190

182:                                              ; preds = %167
  %183 = xor i32 %63, -1
  %184 = and i32 %63, %3
  %185 = zext nneg i32 %169 to i64
  %186 = add nuw nsw i32 %60, 1
  %187 = zext nneg i32 %186 to i64
  %188 = and i32 %69, %3
  %189 = zext i32 %2 to i64
  br label %214

190:                                              ; preds = %176, %190
  %191 = phi i32 [ %200, %190 ], [ %5, %176 ]
  %192 = phi ptr [ %199, %190 ], [ %10, %176 ]
  %193 = load i32, ptr %192, align 4, !tbaa !5
  %194 = and i32 %193, %177
  store i32 %194, ptr %192, align 4, !tbaa !5
  %195 = getelementptr inbounds i32, ptr %192, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %195, i8 0, i64 %178, i1 false)
  %196 = getelementptr inbounds i32, ptr %192, i64 %180
  %197 = load i32, ptr %196, align 4, !tbaa !5
  %198 = and i32 %197, %68
  store i32 %198, ptr %196, align 4, !tbaa !5
  %199 = getelementptr inbounds i8, ptr %192, i64 %181
  %200 = add nsw i32 %191, -1
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %228, label %190, !llvm.loop !19

202:                                              ; preds = %171, %202
  %203 = phi i32 [ %212, %202 ], [ %5, %171 ]
  %204 = phi ptr [ %211, %202 ], [ %10, %171 ]
  %205 = load i32, ptr %204, align 4, !tbaa !5
  %206 = or i32 %205, %63
  store i32 %206, ptr %204, align 4, !tbaa !5
  %207 = getelementptr inbounds i32, ptr %204, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %207, i8 -1, i64 %172, i1 false)
  %208 = getelementptr inbounds i32, ptr %204, i64 %174
  %209 = load i32, ptr %208, align 4, !tbaa !5
  %210 = or i32 %209, %69
  store i32 %210, ptr %208, align 4, !tbaa !5
  %211 = getelementptr inbounds i8, ptr %204, i64 %175
  %212 = add nsw i32 %203, -1
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %228, label %202, !llvm.loop !20

214:                                              ; preds = %182, %214
  %215 = phi i32 [ %226, %214 ], [ %5, %182 ]
  %216 = phi ptr [ %225, %214 ], [ %10, %182 ]
  %217 = load i32, ptr %216, align 4, !tbaa !5
  %218 = and i32 %217, %183
  %219 = or i32 %218, %184
  store i32 %219, ptr %216, align 4, !tbaa !5
  %220 = getelementptr inbounds i32, ptr %216, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %220, i8 %170, i64 %185, i1 false)
  %221 = getelementptr inbounds i32, ptr %216, i64 %187
  %222 = load i32, ptr %221, align 4, !tbaa !5
  %223 = and i32 %222, %68
  %224 = or i32 %223, %188
  store i32 %224, ptr %221, align 4, !tbaa !5
  %225 = getelementptr inbounds i8, ptr %216, i64 %189
  %226 = add nsw i32 %215, -1
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %214, !llvm.loop !21

228:                                              ; preds = %141, %129, %153, %93, %82, %104, %202, %190, %214, %42, %34, %50
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @bits_replicate_horizontally(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %79, label %8

8:                                                ; preds = %6
  %9 = and i32 %1, 7
  %10 = icmp eq i32 %9, 0
  %11 = icmp eq i32 %1, 0
  %12 = lshr exact i32 %1, 3
  %13 = icmp eq i32 %1, 0
  %14 = lshr i32 %4, 3
  %15 = zext i32 %2 to i64
  br label %16

16:                                               ; preds = %8, %77
  %17 = phi i64 [ %15, %8 ], [ %18, %77 ]
  %18 = add nsw i64 %17, -1
  %19 = trunc i64 %18 to i32
  %20 = mul i32 %19, %3
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %0, i64 %21
  %23 = mul i32 %19, %5
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %0, i64 %24
  br i1 %10, label %27, label %26

26:                                               ; preds = %16
  br i1 %11, label %77, label %46

27:                                               ; preds = %16
  br i1 %13, label %77, label %30

28:                                               ; preds = %38, %30
  %29 = icmp eq i32 %32, 0
  br i1 %29, label %77, label %30, !llvm.loop !22

30:                                               ; preds = %27, %28
  %31 = phi i32 [ %32, %28 ], [ %12, %27 ]
  %32 = add nsw i32 %31, -1
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i8, ptr %22, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !23
  %36 = add i32 %32, %14
  %37 = icmp ult i32 %36, %12
  br i1 %37, label %28, label %38

38:                                               ; preds = %30, %38
  %39 = phi i32 [ %40, %38 ], [ %36, %30 ]
  %40 = sub i32 %39, %12
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i8, ptr %25, i64 %41
  store i8 %35, ptr %42, align 1, !tbaa !23
  %43 = icmp ult i32 %40, %12
  br i1 %43, label %28, label %38, !llvm.loop !24

44:                                               ; preds = %61, %46
  %45 = icmp eq i32 %48, 0
  br i1 %45, label %77, label %46, !llvm.loop !25

46:                                               ; preds = %26, %44
  %47 = phi i32 [ %48, %44 ], [ %1, %26 ]
  %48 = add i32 %47, -1
  %49 = add i32 %48, %4
  %50 = icmp ult i32 %49, %1
  br i1 %50, label %44, label %51

51:                                               ; preds = %46
  %52 = lshr i32 %48, 3
  %53 = zext nneg i32 %52 to i64
  %54 = getelementptr inbounds i8, ptr %22, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !23
  %56 = and i32 %48, 7
  %57 = lshr exact i32 128, %56
  %58 = trunc i32 %57 to i8
  %59 = and i8 %55, %58
  %60 = icmp eq i8 %59, 0
  br label %61

61:                                               ; preds = %51, %61
  %62 = phi i32 [ %49, %51 ], [ %63, %61 ]
  %63 = sub i32 %62, %1
  %64 = lshr i32 %63, 3
  %65 = zext nneg i32 %64 to i64
  %66 = getelementptr inbounds i8, ptr %25, i64 %65
  %67 = and i32 %63, 7
  %68 = load i8, ptr %66, align 1, !tbaa !23
  %69 = ashr i32 -129, %67
  %70 = trunc i32 %69 to i8
  %71 = and i8 %68, %70
  %72 = lshr exact i32 128, %67
  %73 = trunc i32 %72 to i8
  %74 = or i8 %68, %73
  %75 = select i1 %60, i8 %71, i8 %74
  store i8 %75, ptr %66, align 1, !tbaa !23
  %76 = icmp ult i32 %63, %1
  br i1 %76, label %44, label %61, !llvm.loop !26

77:                                               ; preds = %44, %28, %26, %27
  %78 = icmp eq i32 %19, 0
  br i1 %78, label %79, label %16, !llvm.loop !27

79:                                               ; preds = %77, %6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @bits_replicate_vertically(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ugt i32 %3, %1
  br i1 %5, label %6, label %15

6:                                                ; preds = %4
  %7 = mul i32 %2, %1
  %8 = zext i32 %7 to i64
  br label %9

9:                                                ; preds = %6, %9
  %10 = phi ptr [ %0, %6 ], [ %12, %9 ]
  %11 = phi i32 [ %3, %6 ], [ %13, %9 ]
  %12 = getelementptr inbounds i8, ptr %10, i64 %8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %10, i64 %8, i1 false)
  %13 = sub i32 %11, %1
  %14 = icmp ugt i32 %13, %1
  br i1 %14, label %9, label %15, !llvm.loop !28

15:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @bits_bounding_box(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #4 {
  %5 = mul i32 %2, %1
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  br label %8

8:                                                ; preds = %11, %4
  %9 = phi ptr [ %7, %4 ], [ %12, %11 ]
  %10 = icmp ugt ptr %9, %0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = getelementptr inbounds i64, ptr %9, i64 -1
  %13 = load i64, ptr %12, align 8, !tbaa !29
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %8, label %15, !llvm.loop !31

15:                                               ; preds = %8, %11
  %16 = icmp eq ptr %9, %0
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br label %167

18:                                               ; preds = %15
  %19 = ptrtoint ptr %9 to i64
  %20 = ptrtoint ptr %0 to i64
  %21 = zext i32 %2 to i64
  %22 = xor i64 %20, -1
  %23 = add i64 %22, %21
  %24 = add i64 %23, %19
  %25 = sdiv i64 %24, %21
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds %struct.gs_int_rect_s, ptr %3, i64 0, i32 1, i32 1
  store i32 %26, ptr %27, align 4, !tbaa !32
  br label %28

28:                                               ; preds = %28, %18
  %29 = phi ptr [ %0, %18 ], [ %32, %28 ]
  %30 = load i64, ptr %29, align 8, !tbaa !29
  %31 = icmp eq i64 %30, 0
  %32 = getelementptr inbounds i64, ptr %29, i64 1
  br i1 %31, label %28, label %33, !llvm.loop !35

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.gs_int_rect_s, ptr %3, i64 0, i32 1
  %35 = ptrtoint ptr %29 to i64
  %36 = sub i64 %35, %20
  %37 = sdiv i64 %36, %21
  %38 = trunc i64 %37 to i32
  %39 = getelementptr inbounds %struct.gs_int_point_s, ptr %3, i64 0, i32 1
  store i32 %38, ptr %39, align 4, !tbaa !36
  %40 = lshr i32 %2, 3
  %41 = add nsw i32 %40, -1
  %42 = icmp eq i32 %26, %38
  br i1 %42, label %96, label %43

43:                                               ; preds = %33
  %44 = xor i32 %38, -1
  %45 = add i32 %44, %26
  %46 = mul i32 %38, %2
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr %0, i64 %47
  br label %49

49:                                               ; preds = %43, %89
  %50 = phi i32 [ %92, %89 ], [ %45, %43 ]
  %51 = phi ptr [ %73, %89 ], [ %48, %43 ]
  %52 = phi i64 [ %91, %89 ], [ 0, %43 ]
  %53 = phi i64 [ %72, %89 ], [ 0, %43 ]
  %54 = phi i32 [ %90, %89 ], [ 0, %43 ]
  %55 = phi i32 [ %71, %89 ], [ %41, %43 ]
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %49, %62
  %58 = phi i32 [ %64, %62 ], [ 0, %49 ]
  %59 = phi ptr [ %63, %62 ], [ %51, %49 ]
  %60 = load i64, ptr %59, align 8, !tbaa !29
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = getelementptr inbounds i64, ptr %59, i64 1
  %64 = add nuw i32 %58, 1
  %65 = icmp eq i32 %64, %55
  br i1 %65, label %66, label %57, !llvm.loop !37

66:                                               ; preds = %62, %49
  %67 = phi ptr [ %51, %49 ], [ %63, %62 ]
  %68 = load i64, ptr %67, align 8, !tbaa !29
  %69 = or i64 %68, %53
  br label %70

70:                                               ; preds = %57, %66
  %71 = phi i32 [ %55, %66 ], [ %58, %57 ]
  %72 = phi i64 [ %69, %66 ], [ %60, %57 ]
  %73 = getelementptr inbounds i8, ptr %51, i64 %21
  %74 = getelementptr inbounds i8, ptr %73, i64 -8
  %75 = icmp ugt i32 %41, %54
  br i1 %75, label %76, label %85

76:                                               ; preds = %70, %81
  %77 = phi i32 [ %83, %81 ], [ %41, %70 ]
  %78 = phi ptr [ %82, %81 ], [ %74, %70 ]
  %79 = load i64, ptr %78, align 8, !tbaa !29
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = getelementptr inbounds i64, ptr %78, i64 -1
  %83 = add i32 %77, -1
  %84 = icmp ugt i32 %83, %54
  br i1 %84, label %76, label %85, !llvm.loop !38

85:                                               ; preds = %81, %70
  %86 = phi ptr [ %74, %70 ], [ %82, %81 ]
  %87 = load i64, ptr %86, align 8, !tbaa !29
  %88 = or i64 %87, %52
  br label %89

89:                                               ; preds = %76, %85
  %90 = phi i32 [ %54, %85 ], [ %77, %76 ]
  %91 = phi i64 [ %88, %85 ], [ %79, %76 ]
  %92 = add i32 %50, -1
  %93 = icmp eq i32 %50, 0
  br i1 %93, label %94, label %49, !llvm.loop !39

94:                                               ; preds = %89
  %95 = shl i32 %90, 6
  br label %96

96:                                               ; preds = %94, %33
  %97 = phi i32 [ %41, %33 ], [ %71, %94 ]
  %98 = phi i32 [ 0, %33 ], [ %95, %94 ]
  %99 = phi i64 [ 0, %33 ], [ %72, %94 ]
  %100 = phi i64 [ 0, %33 ], [ %91, %94 ]
  %101 = shl i32 %97, 6
  %102 = and i64 %99, 4294967295
  %103 = icmp eq i64 %102, 0
  %104 = shl i64 %99, 32
  %105 = or disjoint i32 %101, 32
  %106 = select i1 %103, i32 %105, i32 %101
  %107 = select i1 %103, i64 %99, i64 %104
  %108 = and i64 %107, 281470681743360
  %109 = icmp eq i64 %108, 0
  %110 = shl i64 %107, 16
  %111 = or disjoint i32 %106, 16
  %112 = select i1 %109, i32 %111, i32 %106
  %113 = select i1 %109, i64 %107, i64 %110
  %114 = and i64 %113, 72057594037927935
  %115 = icmp eq i64 %114, 0
  %116 = shl i64 %113, 8
  %117 = or disjoint i32 %112, 8
  %118 = select i1 %115, i32 %117, i32 %112
  %119 = select i1 %115, i64 %113, i64 %116
  %120 = icmp ult i64 %119, 1152921504606846976
  br i1 %120, label %126, label %121

121:                                              ; preds = %96
  %122 = lshr i64 %119, 60
  %123 = getelementptr inbounds [16 x i8], ptr @bits_bounding_box.first_1, i64 0, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !23
  %125 = zext i8 %124 to i32
  br label %132

126:                                              ; preds = %96
  %127 = lshr i64 %119, 56
  %128 = getelementptr inbounds [16 x i8], ptr @bits_bounding_box.first_1, i64 0, i64 %127
  %129 = load i8, ptr %128, align 1, !tbaa !23
  %130 = zext i8 %129 to i32
  %131 = add nuw nsw i32 %130, 4
  br label %132

132:                                              ; preds = %126, %121
  %133 = phi i32 [ %125, %121 ], [ %131, %126 ]
  %134 = add i32 %133, %118
  %135 = icmp ult i64 %100, 4294967296
  %136 = or disjoint i32 %98, 32
  %137 = shl nuw i64 %100, 32
  %138 = select i1 %135, i32 %98, i32 %136
  %139 = select i1 %135, i64 %137, i64 %100
  %140 = icmp ult i64 %139, 281474976710656
  %141 = or disjoint i32 %138, 16
  %142 = shl nuw i64 %139, 16
  %143 = select i1 %140, i32 %138, i32 %141
  %144 = select i1 %140, i64 %142, i64 %139
  %145 = icmp ult i64 %144, 72057594037927936
  %146 = or disjoint i32 %143, 8
  %147 = shl nuw i64 %144, 8
  %148 = select i1 %145, i32 %143, i32 %146
  %149 = select i1 %145, i64 %147, i64 %144
  %150 = and i64 %149, 1080863910568919040
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %132
  %153 = lshr i64 %149, 60
  %154 = getelementptr inbounds [16 x i8], ptr @bits_bounding_box.last_1, i64 0, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !23
  %156 = zext i8 %155 to i32
  br label %164

157:                                              ; preds = %132
  %158 = lshr i64 %149, 56
  %159 = and i64 %158, 15
  %160 = getelementptr inbounds [16 x i8], ptr @bits_bounding_box.last_1, i64 0, i64 %159
  %161 = load i8, ptr %160, align 1, !tbaa !23
  %162 = zext i8 %161 to i32
  %163 = add nuw nsw i32 %162, 4
  br label %164

164:                                              ; preds = %157, %152
  %165 = phi i32 [ %163, %157 ], [ %156, %152 ]
  %166 = add i32 %165, %148
  store i32 %134, ptr %3, align 4, !tbaa !40
  store i32 %166, ptr %34, align 4, !tbaa !41
  br label %167

167:                                              ; preds = %164, %17
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @bits_compress_scaled(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5, i32 noundef %6, ptr nocapture noundef readonly %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = load i32, ptr %7, align 4, !tbaa !42
  %11 = getelementptr inbounds %struct.gs_log2_scale_point_s, ptr %7, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !44
  %13 = shl nuw i32 1, %10
  %14 = shl nuw i32 1, %12
  %15 = shl nuw i32 1, %8
  %16 = sext i32 %8 to i64
  %17 = add nsw i32 %12, %10
  %18 = add nsw i32 %17, -1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x [4 x ptr]], ptr @compress_tables, i64 0, i64 %16, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  %22 = shl i32 %4, %12
  %23 = shl nsw i32 -1, %13
  %24 = xor i32 %23, -1
  %25 = shl nuw i32 1, %17
  %26 = sub nsw i32 8, %13
  %27 = and i32 %1, 7
  %28 = sub nsw i32 %26, %27
  %29 = icmp sgt i32 %15, %13
  %30 = select i1 %29, i32 -1, i32 %26
  %31 = sub nsw i32 3, %10
  %32 = shl i32 %15, %31
  %33 = select i1 %29, i32 undef, i32 %32
  %34 = icmp eq i32 %3, 0
  br i1 %34, label %359, label %35

35:                                               ; preds = %9
  %36 = lshr i32 %2, %10
  %37 = shl i32 %36, %8
  %38 = add i32 %37, 7
  %39 = lshr i32 %38, 3
  %40 = shl nsw i32 -1, %32
  %41 = trunc i32 %40 to i8
  %42 = xor i8 %41, -1
  %43 = select i1 %29, i8 undef, i8 %42
  %44 = ashr i32 %1, 3
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %0, i64 %45
  %47 = sub nsw i32 8, %15
  %48 = sub nuw nsw i32 8, %27
  %49 = icmp sgt i32 %2, 0
  %50 = icmp eq i32 %22, %4
  %51 = zext i8 %43 to i32
  %52 = zext i8 %43 to i32
  %53 = icmp eq i32 %22, %4
  %54 = icmp eq i32 %22, 0
  %55 = icmp sgt i32 %14, 1
  %56 = sub i32 0, %4
  %57 = icmp ult i32 %22, %4
  %58 = sub i32 %22, %4
  %59 = zext i32 %58 to i64
  %60 = shl i32 %22, 1
  %61 = icmp sgt i32 %22, 0
  %62 = icmp sgt i32 %13, 1
  %63 = shl nuw i32 %24, 1
  %64 = or disjoint i32 %63, 1
  %65 = add i32 %13, -1
  %66 = icmp eq i32 %22, 0
  %67 = icmp eq i32 %22, 0
  %68 = sub nsw i32 4, %13
  %69 = icmp eq i32 %39, %6
  %70 = zext i32 %22 to i64
  %71 = xor i32 %39, -1
  %72 = add i32 %71, %6
  %73 = zext i32 %72 to i64
  %74 = add nuw nsw i64 %73, 1
  %75 = zext i32 %72 to i64
  %76 = add nuw nsw i64 %75, 1
  br label %77

77:                                               ; preds = %35, %354
  %78 = phi ptr [ %46, %35 ], [ %356, %354 ]
  %79 = phi ptr [ %5, %35 ], [ %355, %354 ]
  %80 = phi i32 [ %3, %35 ], [ %357, %354 ]
  br i1 %49, label %81, label %343

81:                                               ; preds = %77
  %82 = icmp ult i32 %80, %3
  %83 = icmp ugt i32 %80, %14
  br label %84

84:                                               ; preds = %81, %335
  %85 = phi ptr [ %79, %81 ], [ %339, %335 ]
  %86 = phi ptr [ %78, %81 ], [ %340, %335 ]
  %87 = phi i32 [ %47, %81 ], [ %338, %335 ]
  %88 = phi i8 [ 0, %81 ], [ %337, %335 ]
  %89 = phi i32 [ %28, %81 ], [ %336, %335 ]
  %90 = phi i32 [ %2, %81 ], [ %341, %335 ]
  %91 = phi i32 [ %48, %81 ], [ 8, %335 ]
  %92 = icmp slt i32 %90, %91
  %93 = sub nsw i32 %91, %90
  %94 = select i1 %92, i32 %93, i32 0
  %95 = icmp eq i32 %89, %30
  %96 = icmp eq i32 %94, 0
  %97 = select i1 %95, i1 %96, i1 false
  br i1 %97, label %98, label %144

98:                                               ; preds = %84
  %99 = load i8, ptr %86, align 1, !tbaa !23
  switch i8 %99, label %144 [
    i8 0, label %101
    i8 -1, label %100
  ]

100:                                              ; preds = %98
  br i1 %50, label %126, label %120

101:                                              ; preds = %98
  br i1 %53, label %111, label %105

102:                                              ; preds = %105
  %103 = add i32 %106, %4
  %104 = icmp eq i32 %103, %22
  br i1 %104, label %111, label %105, !llvm.loop !47

105:                                              ; preds = %101, %102
  %106 = phi i32 [ %103, %102 ], [ %4, %101 ]
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, ptr %86, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !23
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %102, label %144

111:                                              ; preds = %102, %101
  %112 = sub nsw i32 %87, %33
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %335

114:                                              ; preds = %111
  %115 = getelementptr inbounds i8, ptr %85, i64 1
  store i8 %88, ptr %85, align 1, !tbaa !23
  %116 = and i32 %112, 7
  br label %335

117:                                              ; preds = %120
  %118 = add i32 %121, %4
  %119 = icmp eq i32 %118, %22
  br i1 %119, label %126, label %120, !llvm.loop !48

120:                                              ; preds = %100, %117
  %121 = phi i32 [ %118, %117 ], [ %4, %100 ]
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, ptr %86, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !23
  %125 = icmp eq i8 %124, -1
  br i1 %125, label %117, label %144

126:                                              ; preds = %117, %100
  %127 = sub nsw i32 %87, %33
  %128 = add nsw i32 %127, %15
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = shl i32 %52, %128
  %132 = trunc i32 %131 to i8
  %133 = or i8 %88, %132
  br label %335

134:                                              ; preds = %126
  %135 = sub nsw i32 0, %128
  %136 = lshr i32 %51, %135
  %137 = trunc i32 %136 to i8
  %138 = or i8 %88, %137
  %139 = getelementptr inbounds i8, ptr %85, i64 1
  store i8 %138, ptr %85, align 1, !tbaa !23
  %140 = add nsw i32 %127, 8
  %141 = add nsw i32 %128, 8
  %142 = shl nuw nsw i32 %51, %141
  %143 = trunc i32 %142 to i8
  br label %335

144:                                              ; preds = %120, %105, %84, %98
  %145 = getelementptr inbounds i8, ptr %86, i64 %59
  %146 = icmp ult i32 %90, %2
  %147 = icmp sgt i32 %90, %13
  br label %148

148:                                              ; preds = %327, %144
  %149 = phi i32 [ %89, %144 ], [ %331, %327 ]
  %150 = phi i8 [ %88, %144 ], [ %328, %327 ]
  %151 = phi i32 [ %87, %144 ], [ %329, %327 ]
  %152 = phi ptr [ %85, %144 ], [ %330, %327 ]
  br i1 %54, label %169, label %153

153:                                              ; preds = %148, %153
  %154 = phi i32 [ %166, %153 ], [ 0, %148 ]
  %155 = phi i32 [ %167, %153 ], [ 0, %148 ]
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, ptr %86, i64 %156
  %158 = load i8, ptr %157, align 1, !tbaa !23
  %159 = zext i8 %158 to i32
  %160 = lshr i32 %159, %149
  %161 = and i32 %160, %24
  %162 = zext nneg i32 %161 to i64
  %163 = getelementptr inbounds [16 x i8], ptr @half_byte_1s, i64 0, i64 %162
  %164 = load i8, ptr %163, align 1, !tbaa !23
  %165 = zext i8 %164 to i32
  %166 = add i32 %154, %165
  %167 = add i32 %155, %4
  %168 = icmp eq i32 %167, %22
  br i1 %168, label %169, label %153, !llvm.loop !49

169:                                              ; preds = %153, %148
  %170 = phi i32 [ 0, %148 ], [ %166, %153 ]
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %313, label %172

172:                                              ; preds = %169
  %173 = zext i32 %170 to i64
  %174 = getelementptr inbounds i8, ptr %21, i64 %173
  %175 = load i8, ptr %174, align 1, !tbaa !23
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %313

177:                                              ; preds = %172
  %178 = shl i32 %24, %149
  br i1 %55, label %179, label %243

179:                                              ; preds = %177
  br i1 %82, label %180, label %211

180:                                              ; preds = %179
  %181 = load i8, ptr %86, align 1, !tbaa !23
  %182 = trunc i32 %178 to i8
  %183 = and i8 %181, %182
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %211, label %185

185:                                              ; preds = %180
  br i1 %57, label %206, label %186

186:                                              ; preds = %185, %195
  %187 = phi i32 [ %203, %195 ], [ %56, %185 ]
  %188 = phi i32 [ %202, %195 ], [ 0, %185 ]
  %189 = phi i8 [ %193, %195 ], [ %183, %185 ]
  %190 = sext i32 %187 to i64
  %191 = getelementptr inbounds i8, ptr %86, i64 %190
  %192 = load i8, ptr %191, align 1, !tbaa !23
  %193 = and i8 %192, %189
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %206, label %195

195:                                              ; preds = %186
  %196 = zext i8 %193 to i32
  %197 = lshr i32 %196, %149
  %198 = zext nneg i32 %197 to i64
  %199 = getelementptr inbounds [16 x i8], ptr @half_byte_1s, i64 0, i64 %198
  %200 = load i8, ptr %199, align 1, !tbaa !23
  %201 = zext i8 %200 to i32
  %202 = add i32 %188, %201
  %203 = sub i32 %187, %4
  %204 = sub nsw i32 0, %203
  %205 = icmp ult i32 %22, %204
  br i1 %205, label %206, label %186, !llvm.loop !50

206:                                              ; preds = %195, %186, %185
  %207 = phi i32 [ 0, %185 ], [ %202, %195 ], [ %188, %186 ]
  %208 = icmp ugt i32 %207, %170
  %209 = select i1 %208, i32 0, i32 %207
  %210 = add i32 %209, %170
  br label %211

211:                                              ; preds = %206, %180, %179
  %212 = phi i32 [ %210, %206 ], [ %170, %180 ], [ %170, %179 ]
  br i1 %83, label %213, label %243

213:                                              ; preds = %211
  %214 = load i8, ptr %145, align 1, !tbaa !23
  %215 = trunc i32 %178 to i8
  %216 = and i8 %214, %215
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %243, label %218

218:                                              ; preds = %213
  br i1 %61, label %219, label %238

219:                                              ; preds = %218, %228
  %220 = phi i32 [ %235, %228 ], [ 0, %218 ]
  %221 = phi i8 [ %226, %228 ], [ %216, %218 ]
  %222 = phi i32 [ %236, %228 ], [ %22, %218 ]
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8, ptr %86, i64 %223
  %225 = load i8, ptr %224, align 1, !tbaa !23
  %226 = and i8 %225, %221
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %238, label %228

228:                                              ; preds = %219
  %229 = zext i8 %226 to i32
  %230 = lshr i32 %229, %149
  %231 = zext nneg i32 %230 to i64
  %232 = getelementptr inbounds [16 x i8], ptr @half_byte_1s, i64 0, i64 %231
  %233 = load i8, ptr %232, align 1, !tbaa !23
  %234 = zext i8 %233 to i32
  %235 = add i32 %220, %234
  %236 = add i32 %222, %4
  %237 = icmp ult i32 %236, %60
  br i1 %237, label %219, label %238, !llvm.loop !51

238:                                              ; preds = %228, %219, %218
  %239 = phi i32 [ 0, %218 ], [ %235, %228 ], [ %220, %219 ]
  %240 = icmp ult i32 %239, %170
  %241 = select i1 %240, i32 %239, i32 0
  %242 = add i32 %241, %212
  br label %243

243:                                              ; preds = %211, %213, %238, %177
  %244 = phi i32 [ %242, %238 ], [ %212, %213 ], [ %212, %211 ], [ %170, %177 ]
  br i1 %62, label %245, label %310

245:                                              ; preds = %243
  br i1 %146, label %246, label %276

246:                                              ; preds = %245
  %247 = add i32 %65, %149
  br i1 %66, label %271, label %248

248:                                              ; preds = %246, %248
  %249 = phi i32 [ %268, %248 ], [ 0, %246 ]
  %250 = phi i32 [ %269, %248 ], [ 0, %246 ]
  %251 = add nsw i32 %250, -1
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8, ptr %86, i64 %252
  %254 = load i8, ptr %253, align 1, !tbaa !23
  %255 = zext i8 %254 to i32
  %256 = shl nuw nsw i32 %255, 8
  %257 = sext i32 %250 to i64
  %258 = getelementptr inbounds i8, ptr %86, i64 %257
  %259 = load i8, ptr %258, align 1, !tbaa !23
  %260 = zext i8 %259 to i32
  %261 = or disjoint i32 %256, %260
  %262 = lshr i32 %261, %247
  %263 = and i32 %262, %64
  %264 = zext nneg i32 %263 to i64
  %265 = getelementptr inbounds [32 x i8], ptr @bits5_trailing_1s, i64 0, i64 %264
  %266 = load i8, ptr %265, align 1, !tbaa !23
  %267 = zext i8 %266 to i32
  %268 = add i32 %249, %267
  %269 = add i32 %250, %4
  %270 = icmp ult i32 %269, %22
  br i1 %270, label %248, label %271, !llvm.loop !52

271:                                              ; preds = %248, %246
  %272 = phi i32 [ 0, %246 ], [ %268, %248 ]
  %273 = icmp ult i32 %272, %170
  %274 = select i1 %273, i32 %272, i32 0
  %275 = add i32 %274, %244
  br label %276

276:                                              ; preds = %271, %245
  %277 = phi i32 [ %275, %271 ], [ %244, %245 ]
  br i1 %147, label %278, label %310

278:                                              ; preds = %276
  %279 = sub i32 %149, %13
  %280 = add i32 %279, 8
  br i1 %67, label %305, label %281

281:                                              ; preds = %278, %281
  %282 = phi i32 [ %302, %281 ], [ 0, %278 ]
  %283 = phi i32 [ %303, %281 ], [ 0, %278 ]
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i8, ptr %86, i64 %284
  %286 = load i8, ptr %285, align 1, !tbaa !23
  %287 = zext i8 %286 to i32
  %288 = shl nuw nsw i32 %287, 8
  %289 = add nuw nsw i32 %283, 1
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i8, ptr %86, i64 %290
  %292 = load i8, ptr %291, align 1, !tbaa !23
  %293 = zext i8 %292 to i32
  %294 = or disjoint i32 %288, %293
  %295 = lshr i32 %294, %280
  %296 = and i32 %295, %64
  %297 = shl nuw nsw i32 %296, %68
  %298 = zext nneg i32 %297 to i64
  %299 = getelementptr inbounds [32 x i8], ptr @bits5_leading_1s, i64 0, i64 %298
  %300 = load i8, ptr %299, align 1, !tbaa !23
  %301 = zext i8 %300 to i32
  %302 = add i32 %282, %301
  %303 = add i32 %283, %4
  %304 = icmp ult i32 %303, %22
  br i1 %304, label %281, label %305, !llvm.loop !53

305:                                              ; preds = %281, %278
  %306 = phi i32 [ 0, %278 ], [ %302, %281 ]
  %307 = icmp ugt i32 %306, %170
  %308 = select i1 %307, i32 0, i32 %306
  %309 = add i32 %308, %277
  br label %310

310:                                              ; preds = %276, %305, %243
  %311 = phi i32 [ %244, %243 ], [ %309, %305 ], [ %277, %276 ]
  %312 = tail call i32 @llvm.umin.i32(i32 %311, i32 %25)
  br label %313

313:                                              ; preds = %310, %172, %169
  %314 = phi i32 [ %312, %310 ], [ %170, %172 ], [ 0, %169 ]
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds i8, ptr %21, i64 %315
  %317 = load i8, ptr %316, align 1, !tbaa !23
  %318 = zext i8 %317 to i32
  %319 = shl i32 %318, %151
  %320 = trunc i32 %319 to i8
  %321 = add i8 %150, %320
  %322 = sub nsw i32 %151, %15
  %323 = icmp slt i32 %322, 0
  br i1 %323, label %324, label %327

324:                                              ; preds = %313
  %325 = getelementptr inbounds i8, ptr %152, i64 1
  store i8 %321, ptr %152, align 1, !tbaa !23
  %326 = and i32 %322, 7
  br label %327

327:                                              ; preds = %324, %313
  %328 = phi i8 [ 0, %324 ], [ %321, %313 ]
  %329 = phi i32 [ %326, %324 ], [ %322, %313 ]
  %330 = phi ptr [ %325, %324 ], [ %152, %313 ]
  %331 = sub nsw i32 %149, %13
  %332 = icmp slt i32 %331, %94
  br i1 %332, label %333, label %148, !llvm.loop !54

333:                                              ; preds = %327
  %334 = add nsw i32 %331, 8
  br label %335

335:                                              ; preds = %130, %134, %111, %114, %333
  %336 = phi i32 [ %334, %333 ], [ %89, %114 ], [ %89, %111 ], [ %89, %134 ], [ %89, %130 ]
  %337 = phi i8 [ %328, %333 ], [ 0, %114 ], [ %88, %111 ], [ %143, %134 ], [ %133, %130 ]
  %338 = phi i32 [ %329, %333 ], [ %116, %114 ], [ %112, %111 ], [ %140, %134 ], [ %127, %130 ]
  %339 = phi ptr [ %330, %333 ], [ %115, %114 ], [ %85, %111 ], [ %139, %134 ], [ %85, %130 ]
  %340 = getelementptr inbounds i8, ptr %86, i64 1
  %341 = sub nsw i32 %90, %91
  %342 = icmp sgt i32 %341, 0
  br i1 %342, label %84, label %343, !llvm.loop !55

343:                                              ; preds = %335, %77
  %344 = phi i8 [ 0, %77 ], [ %337, %335 ]
  %345 = phi i32 [ %47, %77 ], [ %338, %335 ]
  %346 = phi ptr [ %79, %77 ], [ %339, %335 ]
  %347 = icmp eq i32 %345, %47
  br i1 %347, label %350, label %348

348:                                              ; preds = %343
  %349 = getelementptr inbounds i8, ptr %346, i64 1
  store i8 %344, ptr %346, align 1, !tbaa !23
  br label %350

350:                                              ; preds = %348, %343
  %351 = phi ptr [ %349, %348 ], [ %346, %343 ]
  br i1 %69, label %354, label %352

352:                                              ; preds = %350
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %351, i8 0, i64 %74, i1 false), !tbaa !23
  %353 = getelementptr i8, ptr %351, i64 %76
  br label %354

354:                                              ; preds = %352, %350
  %355 = phi ptr [ %351, %350 ], [ %353, %352 ]
  %356 = getelementptr inbounds i8, ptr %78, i64 %70
  %357 = sub i32 %80, %14
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %77, !llvm.loop !56

359:                                              ; preds = %354, %9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable
define dso_local void @bytes_fill_rectangle(ptr nocapture noundef writeonly %0, i32 noundef %1, i8 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 {
  %6 = icmp sgt i32 %4, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %5
  %8 = sext i32 %3 to i64
  %9 = zext i32 %1 to i64
  br label %10

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %4, %7 ], [ %13, %10 ]
  %12 = phi ptr [ %0, %7 ], [ %14, %10 ]
  %13 = add nsw i32 %11, -1
  tail call void @llvm.memset.p0.i64(ptr align 1 %12, i8 %2, i64 %8, i1 false)
  %14 = getelementptr inbounds i8, ptr %12, i64 %9
  %15 = icmp sgt i32 %11, 1
  br i1 %15, label %10, label %16, !llvm.loop !57

16:                                               ; preds = %10, %5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @bytes_copy_rectangle(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = icmp sgt i32 %5, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %6
  %9 = sext i32 %4 to i64
  %10 = zext i32 %3 to i64
  %11 = zext i32 %1 to i64
  br label %12

12:                                               ; preds = %8, %12
  %13 = phi i32 [ %5, %8 ], [ %16, %12 ]
  %14 = phi ptr [ %0, %8 ], [ %18, %12 ]
  %15 = phi ptr [ %2, %8 ], [ %17, %12 ]
  %16 = add nsw i32 %13, -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %15, i64 %9, i1 false)
  %17 = getelementptr inbounds i8, ptr %15, i64 %10
  %18 = getelementptr inbounds i8, ptr %14, i64 %11
  %19 = icmp sgt i32 %13, 1
  br i1 %19, label %12, label %20, !llvm.loop !58

20:                                               ; preds = %12, %6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = !{!7, !7, i64 0}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = !{!30, !30, i64 0}
!30 = !{!"long", !7, i64 0}
!31 = distinct !{!31, !10}
!32 = !{!33, !6, i64 12}
!33 = !{!"gs_int_rect_s", !34, i64 0, !34, i64 8}
!34 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!35 = distinct !{!35, !10}
!36 = !{!33, !6, i64 4}
!37 = distinct !{!37, !10}
!38 = distinct !{!38, !10}
!39 = distinct !{!39, !10}
!40 = !{!33, !6, i64 0}
!41 = !{!33, !6, i64 8}
!42 = !{!43, !6, i64 0}
!43 = !{!"gs_log2_scale_point_s", !6, i64 0, !6, i64 4}
!44 = !{!43, !6, i64 4}
!45 = !{!46, !46, i64 0}
!46 = !{!"any pointer", !7, i64 0}
!47 = distinct !{!47, !10}
!48 = distinct !{!48, !10}
!49 = distinct !{!49, !10}
!50 = distinct !{!50, !10}
!51 = distinct !{!51, !10}
!52 = distinct !{!52, !10}
!53 = distinct !{!53, !10}
!54 = distinct !{!54, !10}
!55 = distinct !{!55, !10}
!56 = distinct !{!56, !10}
!57 = distinct !{!57, !10}
!58 = distinct !{!58, !10}
