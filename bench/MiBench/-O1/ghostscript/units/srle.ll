; ModuleID = 'srle.c'
source_filename = "srle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.stream_RLE_state_s = type { ptr, ptr, ptr, i32, i64, i64, i32 }
%struct.stream_cursor_write_s = type { ptr, ptr, ptr }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }

@st_RLE_state = internal constant %struct.gs_memory_struct_type_s { i32 56, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@s_RLE_template = dso_local local_unnamed_addr constant %struct.stream_template_s { ptr @st_RLE_state, ptr @s_RLE_init, ptr @s_RLE_process, i32 128, i32 2, ptr null, ptr @s_RLE_set_defaults, ptr @s_RLE_init }, align 8
@.str = private unnamed_addr constant [22 x i8] c"RunLengthEncode state\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @s_RLE_init(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.stream_RLE_state_s, ptr %0, i64 0, i32 4
  %3 = load i64, ptr %2, align 8, !tbaa !5
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i64 4294967295, ptr %2, align 8, !tbaa !5
  br label %6

6:                                                ; preds = %1, %5
  %7 = phi i64 [ 4294967295, %5 ], [ %3, %1 ]
  %8 = getelementptr inbounds %struct.stream_RLE_state_s, ptr %0, i64 0, i32 5
  store i64 %7, ptr %8, align 8, !tbaa !12
  %9 = getelementptr inbounds %struct.stream_RLE_state_s, ptr %0, i64 0, i32 6
  store i32 0, ptr %9, align 8, !tbaa !13
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @s_RLE_process(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3) #1 {
  %5 = load ptr, ptr %1, align 8, !tbaa !14
  %6 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !16
  %8 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !18
  %10 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !19
  %12 = getelementptr inbounds %struct.stream_RLE_state_s, ptr %0, i64 0, i32 5
  %13 = load i64, ptr %12, align 8, !tbaa !12
  %14 = getelementptr inbounds %struct.stream_RLE_state_s, ptr %0, i64 0, i32 6
  %15 = ptrtoint ptr %9 to i64
  %16 = ptrtoint ptr %11 to i64
  %17 = getelementptr inbounds %struct.stream_RLE_state_s, ptr %0, i64 0, i32 4
  %18 = ptrtoint ptr %9 to i64
  %19 = ptrtoint ptr %11 to i64
  %20 = ptrtoint ptr %11 to i64
  %21 = ptrtoint ptr %11 to i64
  %22 = ptrtoint ptr %11 to i64
  %23 = ptrtoint ptr %11 to i64
  %24 = getelementptr inbounds %struct.stream_RLE_state_s, ptr %0, i64 0, i32 4
  br label %26

25:                                               ; preds = %212
  br label %26, !llvm.loop !20

26:                                               ; preds = %25, %4
  %27 = phi i64 [ %13, %4 ], [ %213, %25 ]
  %28 = phi i32 [ 0, %4 ], [ %214, %25 ]
  %29 = phi ptr [ %7, %4 ], [ %215, %25 ]
  %30 = phi ptr [ %5, %4 ], [ %217, %25 ]
  %31 = phi i32 [ undef, %4 ], [ %68, %25 ]
  %32 = load i32, ptr %14, align 8, !tbaa !13
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %64, label %34

34:                                               ; preds = %26
  %35 = ptrtoint ptr %30 to i64
  %36 = sub i64 %15, %35
  %37 = trunc i64 %36 to i32
  %38 = ptrtoint ptr %29 to i64
  %39 = sub i64 %16, %38
  %40 = trunc i64 %39 to i32
  %41 = tail call i32 @llvm.umin.i32(i32 %32, i32 %37)
  %42 = tail call i32 @llvm.umin.i32(i32 %41, i32 %40)
  %43 = zext i32 %42 to i64
  %44 = icmp ult i64 %27, %43
  %45 = trunc i64 %27 to i32
  %46 = select i1 %44, i32 %45, i32 %42
  %47 = getelementptr inbounds i8, ptr %29, i64 1
  %48 = getelementptr inbounds i8, ptr %30, i64 1
  %49 = zext i32 %46 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %47, ptr nonnull align 1 %48, i64 %49, i1 false)
  %50 = getelementptr inbounds i8, ptr %30, i64 %49
  store ptr %50, ptr %1, align 8, !tbaa !14
  %51 = getelementptr inbounds i8, ptr %29, i64 %49
  store ptr %51, ptr %6, align 8, !tbaa !16
  %52 = sub i64 %27, %49
  store i64 %52, ptr %12, align 8, !tbaa !12
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %34
  %55 = load i64, ptr %17, align 8, !tbaa !5
  store i64 %55, ptr %12, align 8, !tbaa !12
  br label %56

56:                                               ; preds = %54, %34
  %57 = phi i64 [ %55, %54 ], [ %52, %34 ]
  %58 = load i32, ptr %14, align 8, !tbaa !13
  %59 = sub i32 %58, %46
  store i32 %59, ptr %14, align 8, !tbaa !13
  %60 = icmp eq i32 %58, %46
  %61 = icmp ne i32 %37, 0
  %62 = zext i1 %61 to i32
  %63 = select i1 %60, i32 %31, i32 %62
  br i1 %60, label %64, label %237

64:                                               ; preds = %56, %26
  %65 = phi i64 [ %57, %56 ], [ %27, %26 ]
  %66 = phi ptr [ %51, %56 ], [ %29, %26 ]
  %67 = phi ptr [ %50, %56 ], [ %30, %26 ]
  %68 = phi i32 [ %63, %56 ], [ %31, %26 ]
  br label %69

69:                                               ; preds = %212, %64
  %70 = phi i64 [ %65, %64 ], [ %213, %212 ]
  %71 = phi i32 [ %28, %64 ], [ %214, %212 ]
  %72 = phi ptr [ %66, %64 ], [ %215, %212 ]
  %73 = phi ptr [ %67, %64 ], [ %217, %212 ]
  %74 = icmp ult ptr %73, %9
  br i1 %74, label %75, label %218

75:                                               ; preds = %69
  %76 = ptrtoint ptr %73 to i64
  %77 = sub i64 %18, %76
  %78 = and i64 %77, 4294967295
  %79 = icmp ugt i64 %78, %70
  %80 = select i1 %79, i64 %70, i64 %77
  %81 = trunc i64 %80 to i32
  %82 = icmp ugt i32 %81, 128
  %83 = tail call i32 @llvm.umin.i32(i32 %81, i32 128)
  %84 = or i1 %82, %79
  %85 = select i1 %84, i32 1, i32 %3
  %86 = zext nneg i32 %83 to i64
  %87 = getelementptr inbounds i8, ptr %73, i64 %86
  %88 = getelementptr inbounds i8, ptr %87, i64 -1
  %89 = icmp ult i32 %81, 3
  br i1 %89, label %90, label %123

90:                                               ; preds = %75
  %91 = icmp eq i32 %85, 0
  %92 = icmp eq i32 %81, 0
  %93 = or i1 %92, %91
  br i1 %93, label %212, label %94

94:                                               ; preds = %90
  %95 = icmp eq i32 %81, 1
  br i1 %95, label %96, label %100

96:                                               ; preds = %94
  %97 = ptrtoint ptr %72 to i64
  %98 = sub i64 %23, %97
  %99 = icmp slt i64 %98, 2
  br i1 %99, label %212, label %116

100:                                              ; preds = %94
  %101 = getelementptr inbounds i8, ptr %73, i64 1
  %102 = load i8, ptr %101, align 1, !tbaa !22
  %103 = getelementptr inbounds i8, ptr %73, i64 2
  %104 = load i8, ptr %103, align 1, !tbaa !22
  %105 = icmp eq i8 %102, %104
  %106 = ptrtoint ptr %72 to i64
  br i1 %105, label %107, label %110

107:                                              ; preds = %100
  %108 = sub i64 %22, %106
  %109 = icmp slt i64 %108, 2
  br i1 %109, label %212, label %116

110:                                              ; preds = %100
  %111 = sub i64 %21, %106
  %112 = icmp slt i64 %111, 3
  br i1 %112, label %212, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds i8, ptr %72, i64 1
  store i8 1, ptr %114, align 1, !tbaa !22
  %115 = load i8, ptr %101, align 1, !tbaa !22
  br label %116

116:                                              ; preds = %107, %96, %113
  %117 = phi i64 [ 2, %113 ], [ 1, %96 ], [ 1, %107 ]
  %118 = phi i8 [ %115, %113 ], [ 0, %96 ], [ -1, %107 ]
  %119 = getelementptr inbounds i8, ptr %72, i64 %117
  store i8 %118, ptr %119, align 1, !tbaa !22
  %120 = getelementptr inbounds i8, ptr %72, i64 %117
  %121 = load i8, ptr %87, align 1, !tbaa !22
  %122 = getelementptr inbounds i8, ptr %120, i64 1
  store i8 %121, ptr %122, align 1, !tbaa !22
  br label %203

123:                                              ; preds = %75
  %124 = getelementptr inbounds i8, ptr %73, i64 1
  %125 = load i8, ptr %124, align 1, !tbaa !22
  %126 = getelementptr inbounds i8, ptr %73, i64 2
  %127 = load i8, ptr %126, align 1, !tbaa !22
  %128 = icmp eq i8 %125, %127
  br i1 %128, label %129, label %157

129:                                              ; preds = %123
  %130 = getelementptr inbounds i8, ptr %73, i64 3
  %131 = load i8, ptr %130, align 1, !tbaa !22
  %132 = icmp eq i8 %125, %131
  br i1 %132, label %133, label %157

133:                                              ; preds = %129
  %134 = ptrtoint ptr %72 to i64
  %135 = sub i64 %20, %134
  %136 = icmp slt i64 %135, 2
  br i1 %136, label %212, label %137

137:                                              ; preds = %133, %141
  %138 = phi ptr [ %139, %141 ], [ %73, %133 ]
  %139 = getelementptr inbounds i8, ptr %138, i64 1
  %140 = icmp ult ptr %139, %88
  br i1 %140, label %141, label %145

141:                                              ; preds = %137
  %142 = getelementptr inbounds i8, ptr %138, i64 3
  %143 = load i8, ptr %142, align 1, !tbaa !22
  %144 = icmp eq i8 %143, %125
  br i1 %144, label %137, label %145, !llvm.loop !23

145:                                              ; preds = %137, %141
  %146 = icmp ne ptr %139, %88
  %147 = icmp ne i32 %85, 0
  %148 = or i1 %147, %146
  br i1 %148, label %149, label %212

149:                                              ; preds = %145
  %150 = getelementptr inbounds i8, ptr %138, i64 2
  %151 = ptrtoint ptr %150 to i64
  %152 = sub i64 %76, %151
  %153 = trunc i64 %152 to i8
  %154 = add i8 %153, 1
  %155 = getelementptr inbounds i8, ptr %72, i64 1
  store i8 %154, ptr %155, align 1, !tbaa !22
  %156 = getelementptr inbounds i8, ptr %72, i64 2
  store i8 %125, ptr %156, align 1, !tbaa !22
  br label %203

157:                                              ; preds = %129, %123
  %158 = getelementptr inbounds i8, ptr %87, i64 -2
  %159 = icmp ult ptr %73, %158
  br i1 %159, label %160, label %173

160:                                              ; preds = %157, %171
  %161 = phi ptr [ %164, %171 ], [ %73, %157 ]
  %162 = getelementptr inbounds i8, ptr %161, i64 2
  %163 = load i8, ptr %162, align 1, !tbaa !22
  %164 = getelementptr inbounds i8, ptr %161, i64 1
  %165 = load i8, ptr %164, align 1, !tbaa !22
  %166 = icmp eq i8 %163, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %160
  %168 = getelementptr inbounds i8, ptr %161, i64 3
  %169 = load i8, ptr %168, align 1, !tbaa !22
  %170 = icmp eq i8 %169, %165
  br i1 %170, label %173, label %171

171:                                              ; preds = %160, %167
  %172 = icmp eq ptr %164, %158
  br i1 %172, label %173, label %160, !llvm.loop !24

173:                                              ; preds = %167, %171, %157
  %174 = phi ptr [ %73, %157 ], [ %161, %167 ], [ %158, %171 ]
  %175 = icmp eq ptr %174, %158
  br i1 %175, label %176, label %180

176:                                              ; preds = %173
  %177 = icmp eq i32 %85, 0
  br i1 %177, label %212, label %178

178:                                              ; preds = %176
  %179 = getelementptr inbounds i8, ptr %174, i64 2
  br label %180

180:                                              ; preds = %178, %173
  %181 = phi ptr [ %179, %178 ], [ %174, %173 ]
  %182 = ptrtoint ptr %181 to i64
  %183 = sub i64 %182, %76
  %184 = trunc i64 %183 to i32
  %185 = ptrtoint ptr %72 to i64
  %186 = sub i64 %19, %185
  %187 = add i64 %183, 1
  %188 = and i64 %187, 4294967295
  %189 = icmp slt i64 %186, %188
  br i1 %189, label %190, label %196

190:                                              ; preds = %180
  %191 = icmp ult ptr %72, %11
  br i1 %191, label %192, label %212

192:                                              ; preds = %190
  %193 = trunc i64 %183 to i8
  %194 = add i8 %193, -1
  %195 = getelementptr inbounds i8, ptr %72, i64 1
  store i8 %194, ptr %195, align 1, !tbaa !22
  store i32 %184, ptr %14, align 8, !tbaa !13
  br label %212

196:                                              ; preds = %180
  %197 = trunc i64 %183 to i8
  %198 = add i8 %197, -1
  %199 = getelementptr inbounds i8, ptr %72, i64 1
  store i8 %198, ptr %199, align 1, !tbaa !22
  %200 = getelementptr inbounds i8, ptr %72, i64 2
  %201 = and i64 %183, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %200, ptr nonnull align 1 %124, i64 %201, i1 false)
  %202 = getelementptr inbounds i8, ptr %199, i64 %201
  br label %203

203:                                              ; preds = %149, %196, %116
  %204 = phi ptr [ %122, %116 ], [ %156, %149 ], [ %202, %196 ]
  %205 = phi ptr [ %87, %116 ], [ %150, %149 ], [ %181, %196 ]
  %206 = ptrtoint ptr %205 to i64
  %207 = sub i64 %76, %206
  %208 = add i64 %207, %70
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %203
  %211 = load i64, ptr %24, align 8, !tbaa !5
  br label %212

212:                                              ; preds = %203, %210, %190, %176, %145, %133, %110, %107, %96, %90, %192
  %213 = phi i64 [ %70, %192 ], [ %70, %90 ], [ %70, %96 ], [ %70, %107 ], [ %70, %110 ], [ %70, %133 ], [ %70, %145 ], [ %70, %176 ], [ %70, %190 ], [ %211, %210 ], [ %208, %203 ]
  %214 = phi i32 [ %71, %192 ], [ %71, %90 ], [ 1, %96 ], [ 1, %107 ], [ 1, %110 ], [ 1, %133 ], [ %71, %145 ], [ %71, %176 ], [ 1, %190 ], [ %71, %210 ], [ %71, %203 ]
  %215 = phi ptr [ %195, %192 ], [ %72, %90 ], [ %72, %96 ], [ %72, %107 ], [ %72, %110 ], [ %72, %133 ], [ %72, %145 ], [ %72, %176 ], [ %72, %190 ], [ %204, %210 ], [ %204, %203 ]
  %216 = phi i32 [ 2, %192 ], [ 4, %90 ], [ 4, %96 ], [ 4, %107 ], [ 4, %110 ], [ 4, %133 ], [ 4, %145 ], [ 4, %176 ], [ 4, %190 ], [ 0, %210 ], [ 0, %203 ]
  %217 = phi ptr [ %73, %192 ], [ %73, %90 ], [ %73, %96 ], [ %73, %107 ], [ %73, %110 ], [ %73, %133 ], [ %73, %145 ], [ %73, %176 ], [ %73, %190 ], [ %205, %210 ], [ %205, %203 ]
  switch i32 %216, label %239 [
    i32 0, label %69
    i32 4, label %218
    i32 2, label %25
  ], !llvm.loop !20

218:                                              ; preds = %212, %69
  %219 = phi i64 [ %213, %212 ], [ %70, %69 ]
  %220 = phi i32 [ %214, %212 ], [ %71, %69 ]
  %221 = phi ptr [ %215, %212 ], [ %72, %69 ]
  %222 = phi ptr [ %217, %212 ], [ %73, %69 ]
  %223 = icmp ne i32 %3, 0
  %224 = icmp eq i32 %220, 0
  %225 = select i1 %223, i1 %224, i1 false
  br i1 %225, label %226, label %234

226:                                              ; preds = %218
  %227 = getelementptr inbounds %struct.stream_RLE_state_s, ptr %0, i64 0, i32 3
  %228 = load i32, ptr %227, align 8, !tbaa !25
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %234, label %230

230:                                              ; preds = %226
  %231 = icmp ult ptr %221, %11
  br i1 %231, label %232, label %234

232:                                              ; preds = %230
  %233 = getelementptr inbounds i8, ptr %221, i64 1
  store i8 -128, ptr %233, align 1, !tbaa !22
  br label %234

234:                                              ; preds = %230, %232, %226, %218
  %235 = phi i32 [ 0, %232 ], [ 0, %226 ], [ %220, %218 ], [ 1, %230 ]
  %236 = phi ptr [ %233, %232 ], [ %221, %226 ], [ %221, %218 ], [ %221, %230 ]
  store ptr %222, ptr %1, align 8, !tbaa !14
  store ptr %236, ptr %6, align 8, !tbaa !16
  store i64 %219, ptr %12, align 8, !tbaa !12
  br label %237

237:                                              ; preds = %56, %234
  %238 = phi i32 [ %235, %234 ], [ %63, %56 ]
  ret i32 %238

239:                                              ; preds = %212
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @s_RLE_set_defaults(ptr nocapture noundef writeonly %0) #2 {
  %2 = getelementptr inbounds %struct.stream_RLE_state_s, ptr %0, i64 0, i32 3
  store i32 1, ptr %2, align 8, !tbaa !25
  %3 = getelementptr inbounds %struct.stream_RLE_state_s, ptr %0, i64 0, i32 4
  store i64 0, ptr %3, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !11, i64 32}
!6 = !{!"stream_RLE_state_s", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !11, i64 32, !11, i64 40, !10, i64 48}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!6, !11, i64 40}
!13 = !{!6, !10, i64 48}
!14 = !{!15, !7, i64 0}
!15 = !{!"stream_cursor_read_s", !7, i64 0, !7, i64 8, !7, i64 16}
!16 = !{!17, !7, i64 8}
!17 = !{!"stream_cursor_write_s", !7, i64 0, !7, i64 8, !7, i64 16}
!18 = !{!15, !7, i64 8}
!19 = !{!17, !7, i64 16}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = !{!8, !8, i64 0}
!23 = distinct !{!23, !21}
!24 = distinct !{!24, !21}
!25 = !{!6, !10, i64 24}
