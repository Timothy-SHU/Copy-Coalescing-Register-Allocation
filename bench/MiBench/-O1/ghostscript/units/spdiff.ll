; ModuleID = 'spdiff.c'
source_filename = "spdiff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.stream_PDiff_state_s = type { ptr, ptr, ptr, i32, i32, i32, i32, i8, i32, i32, i8, i8, i8, i8 }
%struct.stream_cursor_write_s = type { ptr, ptr, ptr }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }

@st_PDiff_state = internal constant %struct.gs_memory_struct_type_s { i32 56, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@s_PDiffE_template = dso_local local_unnamed_addr constant %struct.stream_template_s { ptr @st_PDiff_state, ptr @s_PDiffE_init, ptr @s_PDiff_process, i32 1, i32 1, ptr null, ptr @s_PDiff_set_defaults, ptr @s_PDiff_reinit }, align 8
@s_PDiffD_template = dso_local local_unnamed_addr constant %struct.stream_template_s { ptr @st_PDiff_state, ptr @s_PDiffD_init, ptr @s_PDiff_process, i32 1, i32 1, ptr null, ptr @s_PDiff_set_defaults, ptr @s_PDiff_reinit }, align 8
@.str = private unnamed_addr constant [35 x i8] c"PixelDifferenceEncode/Decode state\00", align 1
@s_PDiffE_init.cb_values = internal unnamed_addr constant [9 x i8] c"\00\00\04\00\08\00\00\00\0C", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @s_PDiffE_init(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !11
  %6 = mul nsw i32 %5, %3
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !12
  %10 = sext i32 %9 to i64
  %11 = mul nsw i64 %7, %10
  %12 = add nsw i64 %11, 7
  %13 = lshr i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 6
  store i32 %14, ptr %15, align 4, !tbaa !13
  %16 = trunc i64 %11 to i8
  %17 = sub i8 0, %16
  %18 = and i8 %17, 7
  %19 = shl nsw i8 -1, %18
  %20 = xor i8 %19, -1
  %21 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 7
  store i8 %20, ptr %21, align 8, !tbaa !14
  %22 = sext i32 %5 to i64
  %23 = getelementptr inbounds [9 x i8], ptr @s_PDiffE_init.cb_values, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !15
  %25 = zext i8 %24 to i32
  %26 = add i32 %3, -1
  %27 = add i32 %26, %25
  %28 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 8
  store i32 %27, ptr %28, align 4, !tbaa !16
  %29 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 9
  store i32 0, ptr %29, align 8, !tbaa !17
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @s_PDiff_process(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 %3) #1 {
  %5 = load ptr, ptr %1, align 8, !tbaa !18
  %6 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !20
  %8 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 10
  %9 = load i8, ptr %8, align 4, !tbaa !22
  %10 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 7
  %11 = load i8, ptr %10, align 8, !tbaa !14
  %12 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 9
  %13 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %14 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %15 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 8
  %16 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 6
  %17 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 13
  %18 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 12
  %19 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 11
  %20 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 11
  %21 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 12
  %22 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 13
  %23 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 11
  %24 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 12
  %25 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 13
  %26 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 11
  %27 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 12
  %28 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 11
  %29 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 12
  %30 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 11
  %31 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 11
  %32 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 11
  %33 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 11
  %34 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 11
  %35 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 11
  %36 = icmp eq i8 %11, 0
  %37 = xor i8 %11, -1
  br label %38

38:                                               ; preds = %863, %4
  %39 = phi ptr [ %7, %4 ], [ %847, %863 ]
  %40 = phi i32 [ 0, %4 ], [ %63, %863 ]
  %41 = phi i8 [ %9, %4 ], [ %849, %863 ]
  %42 = phi i8 [ undef, %4 ], [ %72, %863 ]
  %43 = phi ptr [ %5, %4 ], [ %850, %863 ]
  %44 = load i32, ptr %12, align 8, !tbaa !17
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, ptr %16, align 4, !tbaa !13
  store i32 %47, ptr %12, align 8, !tbaa !17
  store i8 0, ptr %17, align 1, !tbaa !23
  store i8 0, ptr %18, align 2, !tbaa !24
  store i8 0, ptr %19, align 1, !tbaa !25
  br label %48

48:                                               ; preds = %46, %38
  %49 = phi i8 [ 0, %46 ], [ %41, %38 ]
  %50 = load ptr, ptr %13, align 8, !tbaa !26
  %51 = ptrtoint ptr %50 to i64
  %52 = ptrtoint ptr %43 to i64
  %53 = sub i64 %51, %52
  %54 = trunc i64 %53 to i32
  %55 = load ptr, ptr %14, align 8, !tbaa !27
  %56 = ptrtoint ptr %55 to i64
  %57 = ptrtoint ptr %39 to i64
  %58 = sub i64 %56, %57
  %59 = trunc i64 %58 to i32
  %60 = load i32, ptr %12, align 8, !tbaa !17
  %61 = tail call i32 @llvm.umin.i32(i32 %60, i32 %54)
  %62 = icmp sgt i32 %61, %59
  %63 = select i1 %62, i32 1, i32 %40
  %64 = tail call i32 @llvm.smin.i32(i32 %61, i32 %59)
  %65 = sub i32 %60, %64
  store i32 %65, ptr %12, align 8, !tbaa !17
  %66 = icmp eq i32 %65, %64
  br i1 %66, label %67, label %71

67:                                               ; preds = %48
  %68 = sext i32 %64 to i64
  %69 = getelementptr inbounds i8, ptr %43, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !15
  br label %71

71:                                               ; preds = %67, %48
  %72 = phi i8 [ %70, %67 ], [ %42, %48 ]
  %73 = load i32, ptr %15, align 4, !tbaa !16
  switch i32 %73, label %846 [
    i32 0, label %98
    i32 1, label %112
    i32 2, label %130
    i32 3, label %148
    i32 16, label %166
    i32 17, label %96
    i32 18, label %94
    i32 19, label %92
    i32 4, label %90
    i32 5, label %253
    i32 6, label %276
    i32 7, label %299
    i32 20, label %321
    i32 21, label %88
    i32 22, label %86
    i32 23, label %84
    i32 8, label %82
    i32 9, label %439
    i32 10, label %461
    i32 11, label %492
    i32 24, label %80
    i32 25, label %78
    i32 26, label %560
    i32 27, label %587
    i32 12, label %76
    i32 28, label %74
    i32 13, label %645
    i32 29, label %672
    i32 14, label %697
    i32 30, label %732
    i32 15, label %764
    i32 31, label %807
  ]

74:                                               ; preds = %71
  %75 = icmp sgt i32 %64, 0
  br i1 %75, label %634, label %846

76:                                               ; preds = %71
  %77 = icmp sgt i32 %64, 0
  br i1 %77, label %622, label %846

78:                                               ; preds = %71
  %79 = icmp sgt i32 %64, 0
  br i1 %79, label %544, label %846

80:                                               ; preds = %71
  %81 = icmp sgt i32 %64, 0
  br i1 %81, label %527, label %846

82:                                               ; preds = %71
  %83 = icmp sgt i32 %64, 0
  br i1 %83, label %422, label %439

84:                                               ; preds = %71
  %85 = icmp sgt i32 %64, 0
  br i1 %85, label %407, label %846

86:                                               ; preds = %71
  %87 = icmp sgt i32 %64, 0
  br i1 %87, label %381, label %846

88:                                               ; preds = %71
  %89 = icmp sgt i32 %64, 0
  br i1 %89, label %355, label %846

90:                                               ; preds = %71
  %91 = icmp sgt i32 %64, 0
  br i1 %91, label %236, label %253

92:                                               ; preds = %71
  %93 = icmp sgt i32 %64, 0
  br i1 %93, label %222, label %846

94:                                               ; preds = %71
  %95 = icmp sgt i32 %64, 0
  br i1 %95, label %206, label %846

96:                                               ; preds = %71
  %97 = icmp sgt i32 %64, 0
  br i1 %97, label %190, label %846

98:                                               ; preds = %71
  %99 = icmp sgt i32 %64, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %98, %100
  %101 = phi ptr [ %105, %100 ], [ %43, %98 ]
  %102 = phi i8 [ %107, %100 ], [ %49, %98 ]
  %103 = phi i32 [ %110, %100 ], [ %64, %98 ]
  %104 = phi ptr [ %106, %100 ], [ %39, %98 ]
  %105 = getelementptr inbounds i8, ptr %101, i64 1
  %106 = getelementptr inbounds i8, ptr %104, i64 1
  %107 = load i8, ptr %105, align 1, !tbaa !15
  %108 = tail call i8 @llvm.fshl.i8(i8 %102, i8 %107, i8 7)
  %109 = xor i8 %108, %107
  store i8 %109, ptr %106, align 1, !tbaa !15
  %110 = add nsw i32 %103, -1
  %111 = icmp sgt i32 %103, 1
  br i1 %111, label %100, label %112, !llvm.loop !28

112:                                              ; preds = %100, %98, %71
  %113 = phi ptr [ %39, %71 ], [ %39, %98 ], [ %106, %100 ]
  %114 = phi i32 [ %64, %71 ], [ %64, %98 ], [ 0, %100 ]
  %115 = phi i8 [ %49, %71 ], [ %49, %98 ], [ %107, %100 ]
  %116 = phi ptr [ %43, %71 ], [ %43, %98 ], [ %105, %100 ]
  %117 = icmp sgt i32 %114, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %112, %118
  %119 = phi ptr [ %123, %118 ], [ %116, %112 ]
  %120 = phi i8 [ %125, %118 ], [ %115, %112 ]
  %121 = phi i32 [ %128, %118 ], [ %114, %112 ]
  %122 = phi ptr [ %124, %118 ], [ %113, %112 ]
  %123 = getelementptr inbounds i8, ptr %119, i64 1
  %124 = getelementptr inbounds i8, ptr %122, i64 1
  %125 = load i8, ptr %123, align 1, !tbaa !15
  %126 = tail call i8 @llvm.fshl.i8(i8 %120, i8 %125, i8 6)
  %127 = xor i8 %126, %125
  store i8 %127, ptr %124, align 1, !tbaa !15
  %128 = add nsw i32 %121, -1
  %129 = icmp sgt i32 %121, 1
  br i1 %129, label %118, label %130, !llvm.loop !30

130:                                              ; preds = %118, %112, %71
  %131 = phi ptr [ %39, %71 ], [ %113, %112 ], [ %124, %118 ]
  %132 = phi i32 [ %64, %71 ], [ %114, %112 ], [ 0, %118 ]
  %133 = phi i8 [ %49, %71 ], [ %115, %112 ], [ %125, %118 ]
  %134 = phi ptr [ %43, %71 ], [ %116, %112 ], [ %123, %118 ]
  %135 = icmp sgt i32 %132, 0
  br i1 %135, label %136, label %148

136:                                              ; preds = %130, %136
  %137 = phi ptr [ %141, %136 ], [ %134, %130 ]
  %138 = phi i8 [ %143, %136 ], [ %133, %130 ]
  %139 = phi i32 [ %146, %136 ], [ %132, %130 ]
  %140 = phi ptr [ %142, %136 ], [ %131, %130 ]
  %141 = getelementptr inbounds i8, ptr %137, i64 1
  %142 = getelementptr inbounds i8, ptr %140, i64 1
  %143 = load i8, ptr %141, align 1, !tbaa !15
  %144 = tail call i8 @llvm.fshl.i8(i8 %138, i8 %143, i8 5)
  %145 = xor i8 %144, %143
  store i8 %145, ptr %142, align 1, !tbaa !15
  %146 = add nsw i32 %139, -1
  %147 = icmp sgt i32 %139, 1
  br i1 %147, label %136, label %148, !llvm.loop !31

148:                                              ; preds = %136, %130, %71
  %149 = phi ptr [ %39, %71 ], [ %131, %130 ], [ %142, %136 ]
  %150 = phi i32 [ %64, %71 ], [ %132, %130 ], [ 0, %136 ]
  %151 = phi i8 [ %49, %71 ], [ %133, %130 ], [ %143, %136 ]
  %152 = phi ptr [ %43, %71 ], [ %134, %130 ], [ %141, %136 ]
  %153 = icmp sgt i32 %150, 0
  br i1 %153, label %154, label %166

154:                                              ; preds = %148, %154
  %155 = phi ptr [ %159, %154 ], [ %152, %148 ]
  %156 = phi i8 [ %161, %154 ], [ %151, %148 ]
  %157 = phi i32 [ %164, %154 ], [ %150, %148 ]
  %158 = phi ptr [ %160, %154 ], [ %149, %148 ]
  %159 = getelementptr inbounds i8, ptr %155, i64 1
  %160 = getelementptr inbounds i8, ptr %158, i64 1
  %161 = load i8, ptr %159, align 1, !tbaa !15
  %162 = tail call i8 @llvm.fshl.i8(i8 %156, i8 %161, i8 4)
  %163 = xor i8 %162, %161
  store i8 %163, ptr %160, align 1, !tbaa !15
  %164 = add nsw i32 %157, -1
  %165 = icmp sgt i32 %157, 1
  br i1 %165, label %154, label %166, !llvm.loop !32

166:                                              ; preds = %154, %148, %71
  %167 = phi ptr [ %39, %71 ], [ %149, %148 ], [ %160, %154 ]
  %168 = phi i32 [ %64, %71 ], [ %150, %148 ], [ 0, %154 ]
  %169 = phi i8 [ %49, %71 ], [ %151, %148 ], [ %161, %154 ]
  %170 = phi ptr [ %43, %71 ], [ %152, %148 ], [ %159, %154 ]
  %171 = icmp sgt i32 %168, 0
  br i1 %171, label %172, label %846

172:                                              ; preds = %166, %172
  %173 = phi ptr [ %177, %172 ], [ %170, %166 ]
  %174 = phi i8 [ %187, %172 ], [ %169, %166 ]
  %175 = phi i32 [ %188, %172 ], [ %168, %166 ]
  %176 = phi ptr [ %178, %172 ], [ %167, %166 ]
  %177 = getelementptr inbounds i8, ptr %173, i64 1
  %178 = getelementptr inbounds i8, ptr %176, i64 1
  %179 = load i8, ptr %177, align 1, !tbaa !15
  %180 = shl i8 %174, 7
  %181 = xor i8 %179, %180
  %182 = lshr i8 %181, 1
  %183 = xor i8 %182, %181
  %184 = lshr i8 %183, 2
  %185 = xor i8 %184, %183
  %186 = lshr i8 %185, 4
  %187 = xor i8 %186, %185
  store i8 %187, ptr %178, align 1, !tbaa !15
  %188 = add nsw i32 %175, -1
  %189 = icmp sgt i32 %175, 1
  br i1 %189, label %172, label %846, !llvm.loop !33

190:                                              ; preds = %96, %190
  %191 = phi ptr [ %195, %190 ], [ %43, %96 ]
  %192 = phi i8 [ %203, %190 ], [ %49, %96 ]
  %193 = phi i32 [ %204, %190 ], [ %64, %96 ]
  %194 = phi ptr [ %196, %190 ], [ %39, %96 ]
  %195 = getelementptr inbounds i8, ptr %191, i64 1
  %196 = getelementptr inbounds i8, ptr %194, i64 1
  %197 = load i8, ptr %195, align 1, !tbaa !15
  %198 = shl i8 %192, 6
  %199 = xor i8 %197, %198
  %200 = lshr i8 %199, 2
  %201 = xor i8 %200, %199
  %202 = lshr i8 %201, 4
  %203 = xor i8 %202, %201
  store i8 %203, ptr %196, align 1, !tbaa !15
  %204 = add nsw i32 %193, -1
  %205 = icmp sgt i32 %193, 1
  br i1 %205, label %190, label %846, !llvm.loop !34

206:                                              ; preds = %94, %206
  %207 = phi ptr [ %211, %206 ], [ %43, %94 ]
  %208 = phi i8 [ %219, %206 ], [ %49, %94 ]
  %209 = phi i32 [ %220, %206 ], [ %64, %94 ]
  %210 = phi ptr [ %212, %206 ], [ %39, %94 ]
  %211 = getelementptr inbounds i8, ptr %207, i64 1
  %212 = getelementptr inbounds i8, ptr %210, i64 1
  %213 = load i8, ptr %211, align 1, !tbaa !15
  %214 = shl i8 %208, 5
  %215 = xor i8 %213, %214
  %216 = lshr i8 %215, 3
  %217 = lshr i8 %215, 6
  %218 = xor i8 %217, %216
  %219 = xor i8 %218, %215
  store i8 %219, ptr %212, align 1, !tbaa !15
  %220 = add nsw i32 %209, -1
  %221 = icmp sgt i32 %209, 1
  br i1 %221, label %206, label %846, !llvm.loop !35

222:                                              ; preds = %92, %222
  %223 = phi ptr [ %227, %222 ], [ %43, %92 ]
  %224 = phi i8 [ %233, %222 ], [ %49, %92 ]
  %225 = phi i32 [ %234, %222 ], [ %64, %92 ]
  %226 = phi ptr [ %228, %222 ], [ %39, %92 ]
  %227 = getelementptr inbounds i8, ptr %223, i64 1
  %228 = getelementptr inbounds i8, ptr %226, i64 1
  %229 = load i8, ptr %227, align 1, !tbaa !15
  %230 = shl i8 %224, 4
  %231 = xor i8 %229, %230
  %232 = lshr i8 %231, 4
  %233 = xor i8 %232, %231
  store i8 %233, ptr %228, align 1, !tbaa !15
  %234 = add nsw i32 %225, -1
  %235 = icmp sgt i32 %225, 1
  br i1 %235, label %222, label %846, !llvm.loop !36

236:                                              ; preds = %90, %236
  %237 = phi ptr [ %241, %236 ], [ %43, %90 ]
  %238 = phi i8 [ %243, %236 ], [ %49, %90 ]
  %239 = phi i32 [ %251, %236 ], [ %64, %90 ]
  %240 = phi ptr [ %242, %236 ], [ %39, %90 ]
  %241 = getelementptr inbounds i8, ptr %237, i64 1
  %242 = getelementptr inbounds i8, ptr %240, i64 1
  %243 = load i8, ptr %241, align 1, !tbaa !15
  %244 = tail call i8 @llvm.fshl.i8(i8 %238, i8 %243, i8 6)
  %245 = xor i8 %243, -1
  %246 = and i8 %244, %245
  %247 = shl i8 %246, 1
  %248 = and i8 %247, -86
  %249 = xor i8 %243, %248
  %250 = xor i8 %249, %244
  store i8 %250, ptr %242, align 1, !tbaa !15
  %251 = add nsw i32 %239, -1
  %252 = icmp sgt i32 %239, 1
  br i1 %252, label %236, label %253, !llvm.loop !37

253:                                              ; preds = %236, %90, %71
  %254 = phi ptr [ %39, %71 ], [ %39, %90 ], [ %242, %236 ]
  %255 = phi i32 [ %64, %71 ], [ %64, %90 ], [ 0, %236 ]
  %256 = phi i8 [ %49, %71 ], [ %49, %90 ], [ %243, %236 ]
  %257 = phi ptr [ %43, %71 ], [ %43, %90 ], [ %241, %236 ]
  %258 = icmp sgt i32 %255, 0
  br i1 %258, label %259, label %276

259:                                              ; preds = %253, %259
  %260 = phi ptr [ %264, %259 ], [ %257, %253 ]
  %261 = phi i8 [ %266, %259 ], [ %256, %253 ]
  %262 = phi i32 [ %274, %259 ], [ %255, %253 ]
  %263 = phi ptr [ %265, %259 ], [ %254, %253 ]
  %264 = getelementptr inbounds i8, ptr %260, i64 1
  %265 = getelementptr inbounds i8, ptr %263, i64 1
  %266 = load i8, ptr %264, align 1, !tbaa !15
  %267 = tail call i8 @llvm.fshl.i8(i8 %261, i8 %266, i8 4)
  %268 = xor i8 %266, -1
  %269 = and i8 %267, %268
  %270 = shl i8 %269, 1
  %271 = and i8 %270, -86
  %272 = xor i8 %266, %271
  %273 = xor i8 %272, %267
  store i8 %273, ptr %265, align 1, !tbaa !15
  %274 = add nsw i32 %262, -1
  %275 = icmp sgt i32 %262, 1
  br i1 %275, label %259, label %276, !llvm.loop !38

276:                                              ; preds = %259, %253, %71
  %277 = phi ptr [ %39, %71 ], [ %254, %253 ], [ %265, %259 ]
  %278 = phi i32 [ %64, %71 ], [ %255, %253 ], [ 0, %259 ]
  %279 = phi i8 [ %49, %71 ], [ %256, %253 ], [ %266, %259 ]
  %280 = phi ptr [ %43, %71 ], [ %257, %253 ], [ %264, %259 ]
  %281 = icmp sgt i32 %278, 0
  br i1 %281, label %282, label %299

282:                                              ; preds = %276, %282
  %283 = phi ptr [ %287, %282 ], [ %280, %276 ]
  %284 = phi i8 [ %289, %282 ], [ %279, %276 ]
  %285 = phi i32 [ %297, %282 ], [ %278, %276 ]
  %286 = phi ptr [ %288, %282 ], [ %277, %276 ]
  %287 = getelementptr inbounds i8, ptr %283, i64 1
  %288 = getelementptr inbounds i8, ptr %286, i64 1
  %289 = load i8, ptr %287, align 1, !tbaa !15
  %290 = tail call i8 @llvm.fshl.i8(i8 %284, i8 %289, i8 2)
  %291 = xor i8 %289, -1
  %292 = and i8 %290, %291
  %293 = shl i8 %292, 1
  %294 = and i8 %293, -86
  %295 = xor i8 %289, %294
  %296 = xor i8 %295, %290
  store i8 %296, ptr %288, align 1, !tbaa !15
  %297 = add nsw i32 %285, -1
  %298 = icmp sgt i32 %285, 1
  br i1 %298, label %282, label %299, !llvm.loop !39

299:                                              ; preds = %282, %276, %71
  %300 = phi ptr [ %39, %71 ], [ %277, %276 ], [ %288, %282 ]
  %301 = phi i32 [ %64, %71 ], [ %278, %276 ], [ 0, %282 ]
  %302 = phi i8 [ %49, %71 ], [ %279, %276 ], [ %289, %282 ]
  %303 = phi ptr [ %43, %71 ], [ %280, %276 ], [ %287, %282 ]
  %304 = icmp sgt i32 %301, 0
  br i1 %304, label %305, label %321

305:                                              ; preds = %299, %305
  %306 = phi ptr [ %310, %305 ], [ %303, %299 ]
  %307 = phi i8 [ %312, %305 ], [ %302, %299 ]
  %308 = phi i32 [ %319, %305 ], [ %301, %299 ]
  %309 = phi ptr [ %311, %305 ], [ %300, %299 ]
  %310 = getelementptr inbounds i8, ptr %306, i64 1
  %311 = getelementptr inbounds i8, ptr %309, i64 1
  %312 = load i8, ptr %310, align 1, !tbaa !15
  %313 = xor i8 %312, -1
  %314 = and i8 %307, %313
  %315 = shl i8 %314, 1
  %316 = and i8 %315, -86
  %317 = xor i8 %307, %316
  %318 = xor i8 %317, %312
  store i8 %318, ptr %311, align 1, !tbaa !15
  %319 = add nsw i32 %308, -1
  %320 = icmp sgt i32 %308, 1
  br i1 %320, label %305, label %321, !llvm.loop !40

321:                                              ; preds = %305, %299, %71
  %322 = phi ptr [ %39, %71 ], [ %300, %299 ], [ %311, %305 ]
  %323 = phi i32 [ %64, %71 ], [ %301, %299 ], [ 0, %305 ]
  %324 = phi i8 [ %49, %71 ], [ %302, %299 ], [ %312, %305 ]
  %325 = phi ptr [ %43, %71 ], [ %303, %299 ], [ %310, %305 ]
  %326 = icmp sgt i32 %323, 0
  br i1 %326, label %327, label %846

327:                                              ; preds = %321, %327
  %328 = phi ptr [ %332, %327 ], [ %325, %321 ]
  %329 = phi i8 [ %352, %327 ], [ %324, %321 ]
  %330 = phi i32 [ %353, %327 ], [ %323, %321 ]
  %331 = phi ptr [ %333, %327 ], [ %322, %321 ]
  %332 = getelementptr inbounds i8, ptr %328, i64 1
  %333 = getelementptr inbounds i8, ptr %331, i64 1
  %334 = load i8, ptr %332, align 1, !tbaa !15
  %335 = shl i8 %329, 6
  %336 = add i8 %334, %335
  %337 = zext i8 %336 to i32
  %338 = lshr i32 %337, 2
  %339 = and i32 %338, %337
  %340 = shl nuw nsw i32 %339, 1
  %341 = and i32 %340, 42
  %342 = xor i32 %341, %338
  %343 = trunc i32 %342 to i8
  %344 = xor i8 %336, %343
  %345 = zext i8 %344 to i32
  %346 = lshr i32 %345, 4
  %347 = and i32 %346, %345
  %348 = shl nuw nsw i32 %347, 1
  %349 = and i32 %348, 10
  %350 = xor i32 %349, %346
  %351 = trunc i32 %350 to i8
  %352 = xor i8 %344, %351
  store i8 %352, ptr %333, align 1, !tbaa !15
  %353 = add nsw i32 %330, -1
  %354 = icmp sgt i32 %330, 1
  br i1 %354, label %327, label %846, !llvm.loop !41

355:                                              ; preds = %88, %355
  %356 = phi ptr [ %360, %355 ], [ %43, %88 ]
  %357 = phi i8 [ %378, %355 ], [ %49, %88 ]
  %358 = phi i32 [ %379, %355 ], [ %64, %88 ]
  %359 = phi ptr [ %361, %355 ], [ %39, %88 ]
  %360 = getelementptr inbounds i8, ptr %356, i64 1
  %361 = getelementptr inbounds i8, ptr %359, i64 1
  %362 = load i8, ptr %360, align 1, !tbaa !15
  %363 = zext i8 %362 to i32
  %364 = zext i8 %357 to i32
  %365 = shl nuw nsw i32 %364, 4
  %366 = and i32 %365, %363
  %367 = shl nuw nsw i32 %366, 1
  %368 = and i32 %367, 160
  %369 = and i32 %365, 240
  %370 = xor i32 %369, %368
  %371 = xor i32 %370, %363
  %372 = lshr i32 %371, 4
  %373 = and i32 %372, %363
  %374 = shl nuw nsw i32 %373, 1
  %375 = and i32 %374, 10
  %376 = xor i32 %371, %375
  %377 = xor i32 %376, %372
  %378 = trunc i32 %377 to i8
  store i8 %378, ptr %361, align 1, !tbaa !15
  %379 = add nsw i32 %358, -1
  %380 = icmp sgt i32 %358, 1
  br i1 %380, label %355, label %846, !llvm.loop !42

381:                                              ; preds = %86, %381
  %382 = phi ptr [ %386, %381 ], [ %43, %86 ]
  %383 = phi i8 [ %404, %381 ], [ %49, %86 ]
  %384 = phi i32 [ %405, %381 ], [ %64, %86 ]
  %385 = phi ptr [ %387, %381 ], [ %39, %86 ]
  %386 = getelementptr inbounds i8, ptr %382, i64 1
  %387 = getelementptr inbounds i8, ptr %385, i64 1
  %388 = load i8, ptr %386, align 1, !tbaa !15
  %389 = zext i8 %388 to i32
  %390 = zext i8 %383 to i32
  %391 = shl nuw nsw i32 %390, 2
  %392 = and i32 %391, %389
  %393 = shl nuw nsw i32 %392, 1
  %394 = and i32 %393, 168
  %395 = and i32 %391, 252
  %396 = xor i32 %395, %394
  %397 = xor i32 %396, %389
  %398 = lshr i32 %397, 6
  %399 = and i32 %398, %389
  %400 = shl nuw nsw i32 %399, 1
  %401 = and i32 %400, 2
  %402 = xor i32 %397, %401
  %403 = xor i32 %402, %398
  %404 = trunc i32 %403 to i8
  store i8 %404, ptr %387, align 1, !tbaa !15
  %405 = add nsw i32 %384, -1
  %406 = icmp sgt i32 %384, 1
  br i1 %406, label %381, label %846, !llvm.loop !43

407:                                              ; preds = %84, %407
  %408 = phi ptr [ %412, %407 ], [ %43, %84 ]
  %409 = phi i8 [ %419, %407 ], [ %49, %84 ]
  %410 = phi i32 [ %420, %407 ], [ %64, %84 ]
  %411 = phi ptr [ %413, %407 ], [ %39, %84 ]
  %412 = getelementptr inbounds i8, ptr %408, i64 1
  %413 = getelementptr inbounds i8, ptr %411, i64 1
  %414 = load i8, ptr %412, align 1, !tbaa !15
  %415 = and i8 %414, %409
  %416 = shl i8 %415, 1
  %417 = and i8 %416, -86
  %418 = xor i8 %409, %417
  %419 = xor i8 %418, %414
  store i8 %419, ptr %413, align 1, !tbaa !15
  %420 = add nsw i32 %410, -1
  %421 = icmp sgt i32 %410, 1
  br i1 %421, label %407, label %846, !llvm.loop !44

422:                                              ; preds = %82, %422
  %423 = phi ptr [ %427, %422 ], [ %43, %82 ]
  %424 = phi i8 [ %429, %422 ], [ %49, %82 ]
  %425 = phi i32 [ %437, %422 ], [ %64, %82 ]
  %426 = phi ptr [ %428, %422 ], [ %39, %82 ]
  %427 = getelementptr inbounds i8, ptr %423, i64 1
  %428 = getelementptr inbounds i8, ptr %426, i64 1
  %429 = load i8, ptr %427, align 1, !tbaa !15
  %430 = shl i8 %424, 4
  %431 = sub i8 %429, %430
  %432 = and i8 %431, -16
  %433 = lshr i8 %429, 4
  %434 = sub i8 %429, %433
  %435 = and i8 %434, 15
  %436 = or disjoint i8 %435, %432
  store i8 %436, ptr %428, align 1, !tbaa !15
  %437 = add nsw i32 %425, -1
  %438 = icmp sgt i32 %425, 1
  br i1 %438, label %422, label %439, !llvm.loop !45

439:                                              ; preds = %422, %82, %71
  %440 = phi ptr [ %39, %71 ], [ %39, %82 ], [ %428, %422 ]
  %441 = phi i32 [ %64, %71 ], [ %64, %82 ], [ 0, %422 ]
  %442 = phi i8 [ %49, %71 ], [ %49, %82 ], [ %429, %422 ]
  %443 = phi ptr [ %43, %71 ], [ %43, %82 ], [ %427, %422 ]
  %444 = icmp sgt i32 %441, 0
  br i1 %444, label %445, label %461

445:                                              ; preds = %439, %445
  %446 = phi ptr [ %450, %445 ], [ %443, %439 ]
  %447 = phi i8 [ %452, %445 ], [ %442, %439 ]
  %448 = phi i32 [ %459, %445 ], [ %441, %439 ]
  %449 = phi ptr [ %451, %445 ], [ %440, %439 ]
  %450 = getelementptr inbounds i8, ptr %446, i64 1
  %451 = getelementptr inbounds i8, ptr %449, i64 1
  %452 = load i8, ptr %450, align 1, !tbaa !15
  %453 = sub i8 %452, %447
  %454 = and i8 %453, 15
  %455 = and i8 %452, -16
  %456 = and i8 %447, -16
  %457 = sub i8 %455, %456
  %458 = or disjoint i8 %457, %454
  store i8 %458, ptr %451, align 1, !tbaa !15
  %459 = add nsw i32 %448, -1
  %460 = icmp sgt i32 %448, 1
  br i1 %460, label %445, label %461, !llvm.loop !46

461:                                              ; preds = %445, %439, %71
  %462 = phi ptr [ %39, %71 ], [ %440, %439 ], [ %451, %445 ]
  %463 = phi i32 [ %64, %71 ], [ %441, %439 ], [ 0, %445 ]
  %464 = phi i8 [ %49, %71 ], [ %442, %439 ], [ %452, %445 ]
  %465 = phi ptr [ %43, %71 ], [ %443, %439 ], [ %450, %445 ]
  %466 = load i8, ptr %35, align 1, !tbaa !25
  %467 = icmp sgt i32 %463, 0
  br i1 %467, label %468, label %486

468:                                              ; preds = %461, %468
  %469 = phi i8 [ %476, %468 ], [ %466, %461 ]
  %470 = phi ptr [ %474, %468 ], [ %465, %461 ]
  %471 = phi i8 [ %469, %468 ], [ %464, %461 ]
  %472 = phi i32 [ %484, %468 ], [ %463, %461 ]
  %473 = phi ptr [ %475, %468 ], [ %462, %461 ]
  %474 = getelementptr inbounds i8, ptr %470, i64 1
  %475 = getelementptr inbounds i8, ptr %473, i64 1
  %476 = load i8, ptr %474, align 1, !tbaa !15
  %477 = shl i8 %471, 4
  %478 = sub i8 %476, %477
  %479 = and i8 %478, -16
  %480 = lshr i8 %469, 4
  %481 = sub i8 %476, %480
  %482 = and i8 %481, 15
  %483 = or disjoint i8 %479, %482
  store i8 %483, ptr %475, align 1, !tbaa !15
  %484 = add nsw i32 %472, -1
  %485 = icmp sgt i32 %472, 1
  br i1 %485, label %468, label %486, !llvm.loop !47

486:                                              ; preds = %468, %461
  %487 = phi ptr [ %462, %461 ], [ %475, %468 ]
  %488 = phi i32 [ %463, %461 ], [ 0, %468 ]
  %489 = phi i8 [ %464, %461 ], [ %469, %468 ]
  %490 = phi ptr [ %465, %461 ], [ %474, %468 ]
  %491 = phi i8 [ %466, %461 ], [ %476, %468 ]
  store i8 %491, ptr %35, align 1, !tbaa !25
  br label %846

492:                                              ; preds = %71
  %493 = load i8, ptr %34, align 1, !tbaa !25
  %494 = icmp sgt i32 %64, 1
  br i1 %494, label %495, label %521

495:                                              ; preds = %492, %495
  %496 = phi i8 [ %512, %495 ], [ %493, %492 ]
  %497 = phi ptr [ %501, %495 ], [ %43, %492 ]
  %498 = phi i8 [ %504, %495 ], [ %49, %492 ]
  %499 = phi i32 [ %519, %495 ], [ %64, %492 ]
  %500 = phi ptr [ %502, %495 ], [ %39, %492 ]
  %501 = getelementptr inbounds i8, ptr %497, i64 2
  %502 = getelementptr inbounds i8, ptr %500, i64 2
  %503 = getelementptr inbounds i8, ptr %497, i64 1
  %504 = load i8, ptr %503, align 1, !tbaa !15
  %505 = sub i8 %504, %498
  %506 = and i8 %505, 15
  %507 = and i8 %504, -16
  %508 = and i8 %498, -16
  %509 = sub i8 %507, %508
  %510 = or disjoint i8 %509, %506
  %511 = getelementptr inbounds i8, ptr %500, i64 1
  store i8 %510, ptr %511, align 1, !tbaa !15
  %512 = load i8, ptr %501, align 1, !tbaa !15
  %513 = sub i8 %512, %496
  %514 = and i8 %513, 15
  %515 = and i8 %512, -16
  %516 = and i8 %496, -16
  %517 = sub i8 %515, %516
  %518 = or disjoint i8 %517, %514
  store i8 %518, ptr %502, align 1, !tbaa !15
  %519 = add nsw i32 %499, -2
  %520 = icmp sgt i32 %499, 3
  br i1 %520, label %495, label %521, !llvm.loop !48

521:                                              ; preds = %495, %492
  %522 = phi ptr [ %39, %492 ], [ %502, %495 ]
  %523 = phi i32 [ %64, %492 ], [ %519, %495 ]
  %524 = phi i8 [ %49, %492 ], [ %504, %495 ]
  %525 = phi ptr [ %43, %492 ], [ %501, %495 ]
  %526 = phi i8 [ %493, %492 ], [ %512, %495 ]
  store i8 %526, ptr %34, align 1, !tbaa !25
  br label %846

527:                                              ; preds = %80, %527
  %528 = phi ptr [ %532, %527 ], [ %43, %80 ]
  %529 = phi i8 [ %541, %527 ], [ %49, %80 ]
  %530 = phi i32 [ %542, %527 ], [ %64, %80 ]
  %531 = phi ptr [ %533, %527 ], [ %39, %80 ]
  %532 = getelementptr inbounds i8, ptr %528, i64 1
  %533 = getelementptr inbounds i8, ptr %531, i64 1
  %534 = load i8, ptr %532, align 1, !tbaa !15
  %535 = shl i8 %529, 4
  %536 = add i8 %534, %535
  %537 = lshr i8 %536, 4
  %538 = add i8 %537, %534
  %539 = and i8 %538, 15
  %540 = and i8 %536, -16
  %541 = or disjoint i8 %539, %540
  store i8 %541, ptr %533, align 1, !tbaa !15
  %542 = add nsw i32 %530, -1
  %543 = icmp sgt i32 %530, 1
  br i1 %543, label %527, label %846, !llvm.loop !49

544:                                              ; preds = %78, %544
  %545 = phi ptr [ %549, %544 ], [ %43, %78 ]
  %546 = phi i8 [ %557, %544 ], [ %49, %78 ]
  %547 = phi i32 [ %558, %544 ], [ %64, %78 ]
  %548 = phi ptr [ %550, %544 ], [ %39, %78 ]
  %549 = getelementptr inbounds i8, ptr %545, i64 1
  %550 = getelementptr inbounds i8, ptr %548, i64 1
  %551 = load i8, ptr %549, align 1, !tbaa !15
  %552 = add i8 %551, %546
  %553 = and i8 %552, 15
  %554 = and i8 %551, -16
  %555 = or disjoint i8 %553, %554
  %556 = and i8 %546, -16
  %557 = add i8 %555, %556
  store i8 %557, ptr %550, align 1, !tbaa !15
  %558 = add nsw i32 %547, -1
  %559 = icmp sgt i32 %547, 1
  br i1 %559, label %544, label %846, !llvm.loop !50

560:                                              ; preds = %71
  %561 = load i8, ptr %33, align 1, !tbaa !25
  %562 = icmp sgt i32 %64, 0
  br i1 %562, label %563, label %581

563:                                              ; preds = %560, %563
  %564 = phi i8 [ %578, %563 ], [ %561, %560 ]
  %565 = phi ptr [ %569, %563 ], [ %43, %560 ]
  %566 = phi i8 [ %564, %563 ], [ %49, %560 ]
  %567 = phi i32 [ %579, %563 ], [ %64, %560 ]
  %568 = phi ptr [ %570, %563 ], [ %39, %560 ]
  %569 = getelementptr inbounds i8, ptr %565, i64 1
  %570 = getelementptr inbounds i8, ptr %568, i64 1
  %571 = tail call i8 @llvm.fshl.i8(i8 %566, i8 %564, i8 4)
  %572 = load i8, ptr %569, align 1, !tbaa !15
  %573 = add i8 %572, %571
  %574 = and i8 %573, 15
  %575 = and i8 %572, -16
  %576 = or disjoint i8 %574, %575
  %577 = and i8 %571, -16
  %578 = add i8 %576, %577
  store i8 %578, ptr %570, align 1, !tbaa !15
  %579 = add nsw i32 %567, -1
  %580 = icmp sgt i32 %567, 1
  br i1 %580, label %563, label %581, !llvm.loop !51

581:                                              ; preds = %563, %560
  %582 = phi ptr [ %39, %560 ], [ %570, %563 ]
  %583 = phi i32 [ %64, %560 ], [ 0, %563 ]
  %584 = phi i8 [ %49, %560 ], [ %564, %563 ]
  %585 = phi ptr [ %43, %560 ], [ %569, %563 ]
  %586 = phi i8 [ %561, %560 ], [ %578, %563 ]
  store i8 %586, ptr %33, align 1, !tbaa !25
  br label %846

587:                                              ; preds = %71
  %588 = load i8, ptr %32, align 1, !tbaa !25
  %589 = icmp sgt i32 %64, 1
  br i1 %589, label %590, label %616

590:                                              ; preds = %587, %590
  %591 = phi i8 [ %613, %590 ], [ %588, %587 ]
  %592 = phi ptr [ %596, %590 ], [ %43, %587 ]
  %593 = phi i8 [ %605, %590 ], [ %49, %587 ]
  %594 = phi i32 [ %614, %590 ], [ %64, %587 ]
  %595 = phi ptr [ %597, %590 ], [ %39, %587 ]
  %596 = getelementptr inbounds i8, ptr %592, i64 2
  %597 = getelementptr inbounds i8, ptr %595, i64 2
  %598 = getelementptr inbounds i8, ptr %592, i64 1
  %599 = load i8, ptr %598, align 1, !tbaa !15
  %600 = add i8 %599, %593
  %601 = and i8 %600, 15
  %602 = and i8 %593, -16
  %603 = or disjoint i8 %601, %602
  %604 = and i8 %599, -16
  %605 = add i8 %603, %604
  %606 = getelementptr inbounds i8, ptr %595, i64 1
  store i8 %605, ptr %606, align 1, !tbaa !15
  %607 = load i8, ptr %596, align 1, !tbaa !15
  %608 = add i8 %607, %591
  %609 = and i8 %608, 15
  %610 = and i8 %591, -16
  %611 = or disjoint i8 %609, %610
  %612 = and i8 %607, -16
  %613 = add i8 %611, %612
  store i8 %613, ptr %597, align 1, !tbaa !15
  %614 = add nsw i32 %594, -2
  %615 = icmp sgt i32 %594, 3
  br i1 %615, label %590, label %616, !llvm.loop !52

616:                                              ; preds = %590, %587
  %617 = phi ptr [ %39, %587 ], [ %597, %590 ]
  %618 = phi i32 [ %64, %587 ], [ %614, %590 ]
  %619 = phi i8 [ %49, %587 ], [ %605, %590 ]
  %620 = phi ptr [ %43, %587 ], [ %596, %590 ]
  %621 = phi i8 [ %588, %587 ], [ %613, %590 ]
  store i8 %621, ptr %32, align 1, !tbaa !25
  br label %846

622:                                              ; preds = %76, %622
  %623 = phi ptr [ %627, %622 ], [ %43, %76 ]
  %624 = phi i8 [ %631, %622 ], [ %49, %76 ]
  %625 = phi i32 [ %632, %622 ], [ %64, %76 ]
  %626 = phi ptr [ %628, %622 ], [ %39, %76 ]
  %627 = getelementptr inbounds i8, ptr %623, i64 1
  %628 = getelementptr inbounds i8, ptr %626, i64 1
  %629 = load i8, ptr %627, align 1, !tbaa !15
  %630 = sub i8 %629, %624
  store i8 %630, ptr %628, align 1, !tbaa !15
  %631 = load i8, ptr %627, align 1, !tbaa !15
  %632 = add nsw i32 %625, -1
  %633 = icmp sgt i32 %625, 1
  br i1 %633, label %622, label %846, !llvm.loop !53

634:                                              ; preds = %74, %634
  %635 = phi ptr [ %639, %634 ], [ %43, %74 ]
  %636 = phi i8 [ %642, %634 ], [ %49, %74 ]
  %637 = phi i32 [ %643, %634 ], [ %64, %74 ]
  %638 = phi ptr [ %640, %634 ], [ %39, %74 ]
  %639 = getelementptr inbounds i8, ptr %635, i64 1
  %640 = getelementptr inbounds i8, ptr %638, i64 1
  %641 = load i8, ptr %639, align 1, !tbaa !15
  %642 = add i8 %641, %636
  store i8 %642, ptr %640, align 1, !tbaa !15
  %643 = add nsw i32 %637, -1
  %644 = icmp sgt i32 %637, 1
  br i1 %644, label %634, label %846, !llvm.loop !54

645:                                              ; preds = %71
  %646 = load i8, ptr %31, align 1, !tbaa !15
  %647 = icmp sgt i32 %64, 1
  br i1 %647, label %648, label %666

648:                                              ; preds = %645, %648
  %649 = phi i8 [ %664, %648 ], [ %646, %645 ]
  %650 = phi ptr [ %654, %648 ], [ %43, %645 ]
  %651 = phi i8 [ %660, %648 ], [ %49, %645 ]
  %652 = phi i32 [ %663, %648 ], [ %64, %645 ]
  %653 = phi ptr [ %655, %648 ], [ %39, %645 ]
  %654 = getelementptr inbounds i8, ptr %650, i64 2
  %655 = getelementptr inbounds i8, ptr %653, i64 2
  %656 = getelementptr inbounds i8, ptr %650, i64 1
  %657 = load i8, ptr %656, align 1, !tbaa !15
  %658 = sub i8 %657, %651
  %659 = getelementptr inbounds i8, ptr %653, i64 1
  store i8 %658, ptr %659, align 1, !tbaa !15
  %660 = load i8, ptr %656, align 1, !tbaa !15
  %661 = load i8, ptr %654, align 1, !tbaa !15
  %662 = sub i8 %661, %649
  store i8 %662, ptr %655, align 1, !tbaa !15
  %663 = add nsw i32 %652, -2
  %664 = load i8, ptr %654, align 1, !tbaa !15
  %665 = icmp sgt i32 %652, 3
  br i1 %665, label %648, label %666, !llvm.loop !55

666:                                              ; preds = %648, %645
  %667 = phi ptr [ %39, %645 ], [ %655, %648 ]
  %668 = phi i32 [ %64, %645 ], [ %663, %648 ]
  %669 = phi i8 [ %49, %645 ], [ %660, %648 ]
  %670 = phi ptr [ %43, %645 ], [ %654, %648 ]
  %671 = phi i8 [ %646, %645 ], [ %664, %648 ]
  store i8 %671, ptr %31, align 1, !tbaa !25
  br label %846

672:                                              ; preds = %71
  %673 = load i8, ptr %30, align 1, !tbaa !25
  %674 = icmp sgt i32 %64, 1
  br i1 %674, label %675, label %691

675:                                              ; preds = %672, %675
  %676 = phi i8 [ %688, %675 ], [ %673, %672 ]
  %677 = phi ptr [ %681, %675 ], [ %43, %672 ]
  %678 = phi i8 [ %685, %675 ], [ %49, %672 ]
  %679 = phi i32 [ %689, %675 ], [ %64, %672 ]
  %680 = phi ptr [ %682, %675 ], [ %39, %672 ]
  %681 = getelementptr inbounds i8, ptr %677, i64 2
  %682 = getelementptr inbounds i8, ptr %680, i64 2
  %683 = getelementptr inbounds i8, ptr %677, i64 1
  %684 = load i8, ptr %683, align 1, !tbaa !15
  %685 = add i8 %684, %678
  %686 = getelementptr inbounds i8, ptr %680, i64 1
  store i8 %685, ptr %686, align 1, !tbaa !15
  %687 = load i8, ptr %681, align 1, !tbaa !15
  %688 = add i8 %687, %676
  store i8 %688, ptr %682, align 1, !tbaa !15
  %689 = add nsw i32 %679, -2
  %690 = icmp sgt i32 %679, 3
  br i1 %690, label %675, label %691, !llvm.loop !56

691:                                              ; preds = %675, %672
  %692 = phi ptr [ %39, %672 ], [ %682, %675 ]
  %693 = phi i32 [ %64, %672 ], [ %689, %675 ]
  %694 = phi i8 [ %49, %672 ], [ %685, %675 ]
  %695 = phi ptr [ %43, %672 ], [ %681, %675 ]
  %696 = phi i8 [ %673, %672 ], [ %688, %675 ]
  store i8 %696, ptr %30, align 1, !tbaa !25
  br label %846

697:                                              ; preds = %71
  %698 = load i8, ptr %28, align 1, !tbaa !25
  %699 = load i8, ptr %29, align 1, !tbaa !15
  %700 = icmp sgt i32 %64, 2
  br i1 %700, label %701, label %725

701:                                              ; preds = %697, %701
  %702 = phi i8 [ %723, %701 ], [ %699, %697 ]
  %703 = phi i8 [ %719, %701 ], [ %698, %697 ]
  %704 = phi ptr [ %708, %701 ], [ %43, %697 ]
  %705 = phi i8 [ %714, %701 ], [ %49, %697 ]
  %706 = phi i32 [ %722, %701 ], [ %64, %697 ]
  %707 = phi ptr [ %709, %701 ], [ %39, %697 ]
  %708 = getelementptr inbounds i8, ptr %704, i64 3
  %709 = getelementptr inbounds i8, ptr %707, i64 3
  %710 = getelementptr inbounds i8, ptr %704, i64 1
  %711 = load i8, ptr %710, align 1, !tbaa !15
  %712 = sub i8 %711, %705
  %713 = getelementptr inbounds i8, ptr %707, i64 1
  store i8 %712, ptr %713, align 1, !tbaa !15
  %714 = load i8, ptr %710, align 1, !tbaa !15
  %715 = getelementptr inbounds i8, ptr %704, i64 2
  %716 = load i8, ptr %715, align 1, !tbaa !15
  %717 = sub i8 %716, %703
  %718 = getelementptr inbounds i8, ptr %707, i64 2
  store i8 %717, ptr %718, align 1, !tbaa !15
  %719 = load i8, ptr %715, align 1, !tbaa !15
  %720 = load i8, ptr %708, align 1, !tbaa !15
  %721 = sub i8 %720, %702
  store i8 %721, ptr %709, align 1, !tbaa !15
  %722 = add nsw i32 %706, -3
  %723 = load i8, ptr %708, align 1, !tbaa !15
  %724 = icmp sgt i32 %706, 5
  br i1 %724, label %701, label %725, !llvm.loop !57

725:                                              ; preds = %701, %697
  %726 = phi ptr [ %39, %697 ], [ %709, %701 ]
  %727 = phi i32 [ %64, %697 ], [ %722, %701 ]
  %728 = phi i8 [ %49, %697 ], [ %714, %701 ]
  %729 = phi ptr [ %43, %697 ], [ %708, %701 ]
  %730 = phi i8 [ %698, %697 ], [ %719, %701 ]
  %731 = phi i8 [ %699, %697 ], [ %723, %701 ]
  store i8 %730, ptr %28, align 1, !tbaa !25
  store i8 %731, ptr %29, align 2, !tbaa !24
  br label %846

732:                                              ; preds = %71
  %733 = load i8, ptr %26, align 1, !tbaa !25
  %734 = load i8, ptr %27, align 2, !tbaa !24
  %735 = icmp sgt i32 %64, 2
  br i1 %735, label %736, label %757

736:                                              ; preds = %732, %736
  %737 = phi i8 [ %754, %736 ], [ %734, %732 ]
  %738 = phi i8 [ %751, %736 ], [ %733, %732 ]
  %739 = phi ptr [ %743, %736 ], [ %43, %732 ]
  %740 = phi i8 [ %747, %736 ], [ %49, %732 ]
  %741 = phi i32 [ %755, %736 ], [ %64, %732 ]
  %742 = phi ptr [ %744, %736 ], [ %39, %732 ]
  %743 = getelementptr inbounds i8, ptr %739, i64 3
  %744 = getelementptr inbounds i8, ptr %742, i64 3
  %745 = getelementptr inbounds i8, ptr %739, i64 1
  %746 = load i8, ptr %745, align 1, !tbaa !15
  %747 = add i8 %746, %740
  %748 = getelementptr inbounds i8, ptr %742, i64 1
  store i8 %747, ptr %748, align 1, !tbaa !15
  %749 = getelementptr inbounds i8, ptr %739, i64 2
  %750 = load i8, ptr %749, align 1, !tbaa !15
  %751 = add i8 %750, %738
  %752 = getelementptr inbounds i8, ptr %742, i64 2
  store i8 %751, ptr %752, align 1, !tbaa !15
  %753 = load i8, ptr %743, align 1, !tbaa !15
  %754 = add i8 %753, %737
  store i8 %754, ptr %744, align 1, !tbaa !15
  %755 = add nsw i32 %741, -3
  %756 = icmp sgt i32 %741, 5
  br i1 %756, label %736, label %757, !llvm.loop !58

757:                                              ; preds = %736, %732
  %758 = phi ptr [ %39, %732 ], [ %744, %736 ]
  %759 = phi i32 [ %64, %732 ], [ %755, %736 ]
  %760 = phi i8 [ %49, %732 ], [ %747, %736 ]
  %761 = phi ptr [ %43, %732 ], [ %743, %736 ]
  %762 = phi i8 [ %733, %732 ], [ %751, %736 ]
  %763 = phi i8 [ %734, %732 ], [ %754, %736 ]
  store i8 %762, ptr %26, align 1, !tbaa !25
  store i8 %763, ptr %27, align 2, !tbaa !24
  br label %846

764:                                              ; preds = %71
  %765 = load i8, ptr %23, align 1, !tbaa !25
  %766 = load i8, ptr %24, align 2, !tbaa !24
  %767 = load i8, ptr %25, align 1, !tbaa !15
  %768 = icmp sgt i32 %64, 3
  br i1 %768, label %769, label %799

769:                                              ; preds = %764, %769
  %770 = phi i8 [ %797, %769 ], [ %767, %764 ]
  %771 = phi i8 [ %793, %769 ], [ %766, %764 ]
  %772 = phi i8 [ %788, %769 ], [ %765, %764 ]
  %773 = phi ptr [ %777, %769 ], [ %43, %764 ]
  %774 = phi i8 [ %783, %769 ], [ %49, %764 ]
  %775 = phi i32 [ %796, %769 ], [ %64, %764 ]
  %776 = phi ptr [ %778, %769 ], [ %39, %764 ]
  %777 = getelementptr inbounds i8, ptr %773, i64 4
  %778 = getelementptr inbounds i8, ptr %776, i64 4
  %779 = getelementptr inbounds i8, ptr %773, i64 1
  %780 = load i8, ptr %779, align 1, !tbaa !15
  %781 = sub i8 %780, %774
  %782 = getelementptr inbounds i8, ptr %776, i64 1
  store i8 %781, ptr %782, align 1, !tbaa !15
  %783 = load i8, ptr %779, align 1, !tbaa !15
  %784 = getelementptr inbounds i8, ptr %773, i64 2
  %785 = load i8, ptr %784, align 1, !tbaa !15
  %786 = sub i8 %785, %772
  %787 = getelementptr inbounds i8, ptr %776, i64 2
  store i8 %786, ptr %787, align 1, !tbaa !15
  %788 = load i8, ptr %784, align 1, !tbaa !15
  %789 = getelementptr inbounds i8, ptr %773, i64 3
  %790 = load i8, ptr %789, align 1, !tbaa !15
  %791 = sub i8 %790, %771
  %792 = getelementptr inbounds i8, ptr %776, i64 3
  store i8 %791, ptr %792, align 1, !tbaa !15
  %793 = load i8, ptr %789, align 1, !tbaa !15
  %794 = load i8, ptr %777, align 1, !tbaa !15
  %795 = sub i8 %794, %770
  store i8 %795, ptr %778, align 1, !tbaa !15
  %796 = add nsw i32 %775, -4
  %797 = load i8, ptr %777, align 1, !tbaa !15
  %798 = icmp sgt i32 %775, 7
  br i1 %798, label %769, label %799, !llvm.loop !59

799:                                              ; preds = %769, %764
  %800 = phi ptr [ %39, %764 ], [ %778, %769 ]
  %801 = phi i32 [ %64, %764 ], [ %796, %769 ]
  %802 = phi i8 [ %49, %764 ], [ %783, %769 ]
  %803 = phi ptr [ %43, %764 ], [ %777, %769 ]
  %804 = phi i8 [ %765, %764 ], [ %788, %769 ]
  %805 = phi i8 [ %766, %764 ], [ %793, %769 ]
  %806 = phi i8 [ %767, %764 ], [ %797, %769 ]
  store i8 %804, ptr %23, align 1, !tbaa !25
  store i8 %805, ptr %24, align 2, !tbaa !24
  store i8 %806, ptr %25, align 1, !tbaa !23
  br label %846

807:                                              ; preds = %71
  %808 = load i8, ptr %20, align 1, !tbaa !25
  %809 = load i8, ptr %21, align 2, !tbaa !24
  %810 = load i8, ptr %22, align 1, !tbaa !23
  %811 = icmp sgt i32 %64, 3
  br i1 %811, label %812, label %838

812:                                              ; preds = %807, %812
  %813 = phi i8 [ %835, %812 ], [ %810, %807 ]
  %814 = phi i8 [ %832, %812 ], [ %809, %807 ]
  %815 = phi i8 [ %828, %812 ], [ %808, %807 ]
  %816 = phi ptr [ %820, %812 ], [ %43, %807 ]
  %817 = phi i8 [ %824, %812 ], [ %49, %807 ]
  %818 = phi i32 [ %836, %812 ], [ %64, %807 ]
  %819 = phi ptr [ %821, %812 ], [ %39, %807 ]
  %820 = getelementptr inbounds i8, ptr %816, i64 4
  %821 = getelementptr inbounds i8, ptr %819, i64 4
  %822 = getelementptr inbounds i8, ptr %816, i64 1
  %823 = load i8, ptr %822, align 1, !tbaa !15
  %824 = add i8 %823, %817
  %825 = getelementptr inbounds i8, ptr %819, i64 1
  store i8 %824, ptr %825, align 1, !tbaa !15
  %826 = getelementptr inbounds i8, ptr %816, i64 2
  %827 = load i8, ptr %826, align 1, !tbaa !15
  %828 = add i8 %827, %815
  %829 = getelementptr inbounds i8, ptr %819, i64 2
  store i8 %828, ptr %829, align 1, !tbaa !15
  %830 = getelementptr inbounds i8, ptr %816, i64 3
  %831 = load i8, ptr %830, align 1, !tbaa !15
  %832 = add i8 %831, %814
  %833 = getelementptr inbounds i8, ptr %819, i64 3
  store i8 %832, ptr %833, align 1, !tbaa !15
  %834 = load i8, ptr %820, align 1, !tbaa !15
  %835 = add i8 %834, %813
  store i8 %835, ptr %821, align 1, !tbaa !15
  %836 = add nsw i32 %818, -4
  %837 = icmp sgt i32 %818, 7
  br i1 %837, label %812, label %838, !llvm.loop !60

838:                                              ; preds = %812, %807
  %839 = phi ptr [ %39, %807 ], [ %821, %812 ]
  %840 = phi i32 [ %64, %807 ], [ %836, %812 ]
  %841 = phi i8 [ %49, %807 ], [ %824, %812 ]
  %842 = phi ptr [ %43, %807 ], [ %820, %812 ]
  %843 = phi i8 [ %808, %807 ], [ %828, %812 ]
  %844 = phi i8 [ %809, %807 ], [ %832, %812 ]
  %845 = phi i8 [ %810, %807 ], [ %835, %812 ]
  store i8 %843, ptr %20, align 1, !tbaa !25
  store i8 %844, ptr %21, align 2, !tbaa !24
  store i8 %845, ptr %22, align 1, !tbaa !23
  br label %846

846:                                              ; preds = %634, %622, %544, %527, %407, %381, %355, %327, %222, %206, %190, %172, %74, %76, %78, %80, %84, %86, %88, %321, %92, %94, %96, %166, %71, %838, %799, %757, %725, %691, %666, %616, %581, %521, %486
  %847 = phi ptr [ %39, %71 ], [ %839, %838 ], [ %800, %799 ], [ %758, %757 ], [ %726, %725 ], [ %692, %691 ], [ %667, %666 ], [ %617, %616 ], [ %582, %581 ], [ %522, %521 ], [ %487, %486 ], [ %167, %166 ], [ %39, %96 ], [ %39, %94 ], [ %39, %92 ], [ %322, %321 ], [ %39, %88 ], [ %39, %86 ], [ %39, %84 ], [ %39, %80 ], [ %39, %78 ], [ %39, %76 ], [ %39, %74 ], [ %178, %172 ], [ %196, %190 ], [ %212, %206 ], [ %228, %222 ], [ %333, %327 ], [ %361, %355 ], [ %387, %381 ], [ %413, %407 ], [ %533, %527 ], [ %550, %544 ], [ %628, %622 ], [ %640, %634 ]
  %848 = phi i32 [ %64, %71 ], [ %840, %838 ], [ %801, %799 ], [ %759, %757 ], [ %727, %725 ], [ %693, %691 ], [ %668, %666 ], [ %618, %616 ], [ %583, %581 ], [ %523, %521 ], [ %488, %486 ], [ %168, %166 ], [ %64, %96 ], [ %64, %94 ], [ %64, %92 ], [ %323, %321 ], [ %64, %88 ], [ %64, %86 ], [ %64, %84 ], [ %64, %80 ], [ %64, %78 ], [ %64, %76 ], [ %64, %74 ], [ 0, %172 ], [ 0, %190 ], [ 0, %206 ], [ 0, %222 ], [ 0, %327 ], [ 0, %355 ], [ 0, %381 ], [ 0, %407 ], [ 0, %527 ], [ 0, %544 ], [ 0, %622 ], [ 0, %634 ]
  %849 = phi i8 [ %49, %71 ], [ %841, %838 ], [ %802, %799 ], [ %760, %757 ], [ %728, %725 ], [ %694, %691 ], [ %669, %666 ], [ %619, %616 ], [ %584, %581 ], [ %524, %521 ], [ %489, %486 ], [ %169, %166 ], [ %49, %96 ], [ %49, %94 ], [ %49, %92 ], [ %324, %321 ], [ %49, %88 ], [ %49, %86 ], [ %49, %84 ], [ %49, %80 ], [ %49, %78 ], [ %49, %76 ], [ %49, %74 ], [ %187, %172 ], [ %203, %190 ], [ %219, %206 ], [ %233, %222 ], [ %352, %327 ], [ %378, %355 ], [ %404, %381 ], [ %419, %407 ], [ %541, %527 ], [ %557, %544 ], [ %631, %622 ], [ %642, %634 ]
  %850 = phi ptr [ %43, %71 ], [ %842, %838 ], [ %803, %799 ], [ %761, %757 ], [ %729, %725 ], [ %695, %691 ], [ %670, %666 ], [ %620, %616 ], [ %585, %581 ], [ %525, %521 ], [ %490, %486 ], [ %170, %166 ], [ %43, %96 ], [ %43, %94 ], [ %43, %92 ], [ %325, %321 ], [ %43, %88 ], [ %43, %86 ], [ %43, %84 ], [ %43, %80 ], [ %43, %78 ], [ %43, %76 ], [ %43, %74 ], [ %177, %172 ], [ %195, %190 ], [ %211, %206 ], [ %227, %222 ], [ %332, %327 ], [ %360, %355 ], [ %386, %381 ], [ %412, %407 ], [ %532, %527 ], [ %549, %544 ], [ %627, %622 ], [ %639, %634 ]
  %851 = load i32, ptr %12, align 8, !tbaa !17
  %852 = add i32 %851, %848
  store i32 %852, ptr %12, align 8, !tbaa !17
  %853 = icmp eq i32 %852, 0
  br i1 %853, label %854, label %866

854:                                              ; preds = %846
  br i1 %36, label %860, label %855

855:                                              ; preds = %854
  %856 = load i8, ptr %847, align 1, !tbaa !15
  %857 = and i8 %856, %37
  %858 = and i8 %72, %11
  %859 = or i8 %857, %858
  store i8 %859, ptr %847, align 1, !tbaa !15
  br label %860

860:                                              ; preds = %855, %854
  %861 = load ptr, ptr %13, align 8, !tbaa !26
  %862 = icmp ult ptr %850, %861
  br i1 %862, label %863, label %866

863:                                              ; preds = %860
  %864 = load ptr, ptr %14, align 8, !tbaa !27
  %865 = icmp ult ptr %847, %864
  br i1 %865, label %38, label %866

866:                                              ; preds = %860, %863, %846
  store i8 %849, ptr %8, align 4, !tbaa !22
  store ptr %850, ptr %1, align 8, !tbaa !18
  store ptr %847, ptr %6, align 8, !tbaa !20
  ret i32 %63
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @s_PDiff_set_defaults(ptr nocapture noundef writeonly %0) #2 {
  %2 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 3
  store i32 1, ptr %2, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 4
  store i32 8, ptr %3, align 4, !tbaa !11
  %4 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 5
  store i32 1, ptr %4, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @s_PDiff_reinit(ptr nocapture noundef writeonly %0) #2 {
  %2 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 9
  store i32 0, ptr %2, align 8, !tbaa !17
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @s_PDiffD_init(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !11
  %6 = mul nsw i32 %5, %3
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !12
  %10 = sext i32 %9 to i64
  %11 = mul nsw i64 %7, %10
  %12 = add nsw i64 %11, 7
  %13 = lshr i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 6
  store i32 %14, ptr %15, align 4, !tbaa !13
  %16 = trunc i64 %11 to i8
  %17 = sub i8 0, %16
  %18 = and i8 %17, 7
  %19 = shl nsw i8 -1, %18
  %20 = xor i8 %19, -1
  %21 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 7
  store i8 %20, ptr %21, align 8, !tbaa !14
  %22 = sext i32 %5 to i64
  %23 = getelementptr inbounds [9 x i8], ptr @s_PDiffE_init.cb_values, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !15
  %25 = zext i8 %24 to i32
  %26 = add i32 %3, -1
  %27 = add i32 %26, %25
  %28 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 8
  store i32 %27, ptr %28, align 4, !tbaa !16
  %29 = getelementptr inbounds %struct.stream_PDiff_state_s, ptr %0, i64 0, i32 9
  store i32 0, ptr %29, align 8, !tbaa !17
  %30 = add nsw i32 %27, 16
  store i32 %30, ptr %28, align 4, !tbaa !16
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 24}
!6 = !{!"stream_PDiff_state_s", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !8, i64 40, !10, i64 44, !10, i64 48, !8, i64 52, !8, i64 53, !8, i64 54, !8, i64 55}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!6, !10, i64 28}
!12 = !{!6, !10, i64 32}
!13 = !{!6, !10, i64 36}
!14 = !{!6, !8, i64 40}
!15 = !{!8, !8, i64 0}
!16 = !{!6, !10, i64 44}
!17 = !{!6, !10, i64 48}
!18 = !{!19, !7, i64 0}
!19 = !{!"stream_cursor_read_s", !7, i64 0, !7, i64 8, !7, i64 16}
!20 = !{!21, !7, i64 8}
!21 = !{!"stream_cursor_write_s", !7, i64 0, !7, i64 8, !7, i64 16}
!22 = !{!6, !8, i64 52}
!23 = !{!6, !8, i64 55}
!24 = !{!6, !8, i64 54}
!25 = !{!6, !8, i64 53}
!26 = !{!19, !7, i64 8}
!27 = !{!21, !7, i64 16}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.unroll.disable"}
!30 = distinct !{!30, !29}
!31 = distinct !{!31, !29}
!32 = distinct !{!32, !29}
!33 = distinct !{!33, !29}
!34 = distinct !{!34, !29}
!35 = distinct !{!35, !29}
!36 = distinct !{!36, !29}
!37 = distinct !{!37, !29}
!38 = distinct !{!38, !29}
!39 = distinct !{!39, !29}
!40 = distinct !{!40, !29}
!41 = distinct !{!41, !29}
!42 = distinct !{!42, !29}
!43 = distinct !{!43, !29}
!44 = distinct !{!44, !29}
!45 = distinct !{!45, !29}
!46 = distinct !{!46, !29}
!47 = distinct !{!47, !29}
!48 = distinct !{!48, !29}
!49 = distinct !{!49, !29}
!50 = distinct !{!50, !29}
!51 = distinct !{!51, !29}
!52 = distinct !{!52, !29}
!53 = distinct !{!53, !29}
!54 = distinct !{!54, !29}
!55 = distinct !{!55, !29}
!56 = distinct !{!56, !29}
!57 = distinct !{!57, !29}
!58 = distinct !{!58, !29}
!59 = distinct !{!59, !29}
!60 = distinct !{!60, !29}
