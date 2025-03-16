; ModuleID = 'iscanbin.c'
source_filename = "iscanbin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.stream_s = type { ptr, ptr, ptr, %union.stream_cursor_s, ptr, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, ptr, i32, i32, ptr, i16, i16, ptr, ptr, i32, ptr, i32, ptr }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }
%struct.gs_string_s = type { ptr, i32 }
%struct.stream_procs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scanner_state_s = type { i32, i32, i32, i32, %struct.dynamic_area_s, %union.sss_ }
%struct.dynamic_area_s = type { %struct.gs_string_s, ptr, ptr, ptr, i32, [257 x i8], ptr }
%union.sss_ = type { %struct.scan_binary_state_s }
%struct.scan_binary_state_s = type { i32, ptr, %struct.ref_s, i32, i32, i32, i32, i32 }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bin_seq_obj = type { i8, i8, %union.anon, %union.anon.0 }
%union.anon = type { i16 }
%union.anon.0 = type { i32 }

@bin_token_bytes = dso_local local_unnamed_addr constant [32 x i8] c"\04\04\04\04\05\05\03\03\02\02\05\05\05\02\02\03\03\02\02\02\02\04\01\01\01\01\01\01\01\01\01\01", align 16
@gs_imemory = external local_unnamed_addr global %struct.gs_dual_memory_s, align 8
@.str = private unnamed_addr constant [32 x i8] c"binary object sequence(objects)\00", align 1
@enc_num_bytes = external local_unnamed_addr constant [0 x i8], align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"string token\00", align 1
@system_names = external global %struct.ref_s, align 8
@user_names = external global %struct.ref_s, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"number array token\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"bos strings\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"scan_bos_resize\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @scan_binary_token(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = load i8, ptr %6, align 1, !tbaa !5
  %10 = zext i8 %9 to i64
  %11 = add nsw i64 %10, -128
  %12 = getelementptr inbounds [32 x i8], ptr @bin_token_bytes, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !5
  %14 = zext i8 %13 to i32
  %15 = add nsw i32 %14, -1
  %16 = ptrtoint ptr %8 to i64
  %17 = ptrtoint ptr %6 to i64
  %18 = sub i64 %16, %17
  %19 = trunc i64 %18 to i32
  %20 = icmp ugt i32 %15, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = getelementptr inbounds i8, ptr %6, i64 -1
  store ptr %22, ptr %5, align 8, !tbaa !5
  %23 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 3
  store i32 0, ptr %23, align 4, !tbaa !8
  br label %277

24:                                               ; preds = %3
  switch i8 %9, label %277 [
    i8 -128, label %28
    i8 -127, label %25
    i8 -126, label %26
    i8 -125, label %27
    i8 -124, label %135
    i8 -123, label %106
    i8 -122, label %107
    i8 -121, label %108
    i8 -120, label %109
    i8 -119, label %114
    i8 -118, label %132
    i8 -117, label %133
    i8 -116, label %134
    i8 -115, label %147
    i8 -114, label %154
    i8 -113, label %158
    i8 -112, label %167
    i8 -111, label %218
    i8 -110, label %232
    i8 -109, label %217
    i8 -108, label %231
    i8 -107, label %247
  ]

25:                                               ; preds = %24
  br label %28

26:                                               ; preds = %24
  br label %28

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %24, %27, %26, %25
  %29 = phi i32 [ 177, %27 ], [ 49, %26 ], [ 176, %25 ], [ 48, %24 ]
  %30 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 5
  store i32 %29, ptr %30, align 8, !tbaa !5
  %31 = getelementptr inbounds i8, ptr %6, i64 1
  %32 = load i8, ptr %31, align 1, !tbaa !5
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %28
  %35 = icmp ult i32 %19, 7
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = getelementptr inbounds i8, ptr %6, i64 -1
  store ptr %37, ptr %5, align 8, !tbaa !5
  %38 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 3
  store i32 0, ptr %38, align 4, !tbaa !8
  br label %47

39:                                               ; preds = %34
  %40 = getelementptr inbounds i8, ptr %6, i64 2
  %41 = tail call signext i16 @sdecodeshort(ptr noundef nonnull %40, i32 noundef %29) #6
  %42 = sext i16 %41 to i32
  %43 = getelementptr inbounds i8, ptr %6, i64 4
  %44 = tail call i64 @sdecodelong(ptr noundef nonnull %43, i32 noundef %29) #6
  %45 = trunc i64 %44 to i32
  %46 = icmp ult i64 %44, 4294967296
  br label %47

47:                                               ; preds = %39, %36
  %48 = phi i1 [ false, %36 ], [ %46, %39 ]
  %49 = phi i32 [ 0, %36 ], [ %42, %39 ]
  %50 = phi i32 [ undef, %36 ], [ %45, %39 ]
  %51 = phi ptr [ %37, %36 ], [ %6, %39 ]
  %52 = phi i32 [ 3, %36 ], [ -13, %39 ]
  br i1 %48, label %58, label %81

53:                                               ; preds = %28
  %54 = zext i8 %32 to i32
  %55 = getelementptr inbounds i8, ptr %6, i64 2
  %56 = tail call signext i16 @sdecodeshort(ptr noundef nonnull %55, i32 noundef %29) #6
  %57 = sext i16 %56 to i32
  br label %58

58:                                               ; preds = %47, %53
  %59 = phi i32 [ %49, %47 ], [ %54, %53 ]
  %60 = phi i32 [ 8, %47 ], [ 4, %53 ]
  %61 = phi i32 [ %50, %47 ], [ %57, %53 ]
  %62 = phi ptr [ %51, %47 ], [ %6, %53 ]
  %63 = phi i32 [ %52, %47 ], [ undef, %53 ]
  %64 = icmp ult i32 %61, %60
  br i1 %64, label %81, label %65

65:                                               ; preds = %58
  %66 = load ptr, ptr @gs_imemory, align 8, !tbaa !14
  %67 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 5, i32 0, i32 2
  %68 = lshr i32 %61, 4
  %69 = tail call i32 @gs_alloc_ref_array(ptr noundef %66, ptr noundef nonnull %67, i32 noundef 240, i32 noundef %68, ptr noundef nonnull @.str) #6
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %81, label %71

71:                                               ; preds = %65
  %72 = add nsw i32 %60, -1
  %73 = zext nneg i32 %72 to i64
  %74 = getelementptr inbounds i8, ptr %62, i64 %73
  %75 = sub i32 %61, %60
  store ptr %74, ptr %5, align 8, !tbaa !5
  %76 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 5, i32 0, i32 6
  store i32 %59, ptr %76, align 4, !tbaa !5
  %77 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 5, i32 0, i32 4
  store i32 %59, ptr %77, align 4, !tbaa !5
  %78 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 5, i32 0, i32 7
  store i32 %75, ptr %78, align 8, !tbaa !5
  %79 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 5, i32 0, i32 5
  store i32 %75, ptr %79, align 8, !tbaa !5
  %80 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 5, i32 0, i32 3
  store i32 0, ptr %80, align 8, !tbaa !5
  br label %81

81:                                               ; preds = %65, %58, %47, %71
  %82 = phi i1 [ true, %71 ], [ false, %47 ], [ false, %58 ], [ false, %65 ]
  %83 = phi i32 [ %63, %71 ], [ %52, %47 ], [ -18, %58 ], [ %69, %65 ]
  br i1 %82, label %84, label %277

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 4, i32 4
  store i32 0, ptr %85, align 8, !tbaa !16
  %86 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 4, i32 5
  %87 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 4, i32 3
  store ptr %86, ptr %87, align 8, !tbaa !17
  %88 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 4, i32 2
  store ptr %86, ptr %88, align 8, !tbaa !18
  %89 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 4, i32 1
  store ptr %86, ptr %89, align 8, !tbaa !19
  %90 = tail call i32 @scan_bos_continue(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %91 = icmp eq i32 %90, 3
  %92 = icmp slt i32 %90, 0
  %93 = or i1 %91, %92
  br i1 %93, label %94, label %277

94:                                               ; preds = %84
  %95 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 5, i32 0, i32 3
  %96 = load i32, ptr %95, align 8, !tbaa !5
  %97 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 5, i32 0, i32 2, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !5
  %99 = zext i32 %96 to i64
  %100 = getelementptr inbounds %struct.ref_s, ptr %98, i64 %99
  %101 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 5, i32 0, i32 2, i32 0, i32 1
  %102 = load i16, ptr %101, align 2, !tbaa !5
  %103 = zext i16 %102 to i32
  %104 = sub i32 %103, %96
  tail call void @refset_null(ptr noundef %100, i32 noundef %104) #6
  %105 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 5, i32 0, i32 1
  store ptr @scan_bos_continue, ptr %105, align 8, !tbaa !5
  br label %277

106:                                              ; preds = %24
  br label %135

107:                                              ; preds = %24
  br label %135

108:                                              ; preds = %24
  br label %135

109:                                              ; preds = %24
  %110 = getelementptr inbounds i8, ptr %6, i64 1
  %111 = load i8, ptr %110, align 1, !tbaa !5
  %112 = sext i8 %111 to i64
  %113 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  store i64 %112, ptr %113, align 8, !tbaa !5
  store i16 2816, ptr %1, align 8, !tbaa !20
  store ptr %110, ptr %5, align 8, !tbaa !5
  br label %277

114:                                              ; preds = %24
  %115 = getelementptr inbounds i8, ptr %6, i64 1
  %116 = load i8, ptr %115, align 1, !tbaa !5
  %117 = zext i8 %116 to i32
  %118 = and i32 %117, 126
  %119 = icmp ult i32 %118, 50
  br i1 %119, label %120, label %277

120:                                              ; preds = %114
  %121 = lshr i32 %117, 4
  %122 = zext nneg i32 %121 to i64
  %123 = getelementptr inbounds [0 x i8], ptr @enc_num_bytes, i64 0, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !5
  %125 = zext i8 %124 to i32
  %126 = icmp ult i32 %125, %19
  br i1 %126, label %130, label %127

127:                                              ; preds = %120
  %128 = getelementptr inbounds i8, ptr %6, i64 -1
  store ptr %128, ptr %5, align 8, !tbaa !5
  %129 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 3
  store i32 0, ptr %129, align 4, !tbaa !8
  br label %277

130:                                              ; preds = %120
  %131 = add nuw nsw i32 %125, 1
  br label %135

132:                                              ; preds = %24
  br label %135

133:                                              ; preds = %24
  br label %135

134:                                              ; preds = %24
  br label %135

135:                                              ; preds = %106, %107, %108, %132, %133, %134, %24, %130
  %136 = phi i64 [ 2, %130 ], [ 1, %24 ], [ 1, %134 ], [ 1, %133 ], [ 1, %132 ], [ 1, %108 ], [ 1, %107 ], [ 1, %106 ]
  %137 = phi i32 [ %117, %130 ], [ 0, %24 ], [ 49, %134 ], [ 176, %133 ], [ 48, %132 ], [ 160, %108 ], [ 32, %107 ], [ 128, %106 ]
  %138 = phi i32 [ %131, %130 ], [ %15, %24 ], [ %15, %134 ], [ %15, %133 ], [ %15, %132 ], [ %15, %108 ], [ %15, %107 ], [ %15, %106 ]
  %139 = getelementptr inbounds i8, ptr %6, i64 %136
  %140 = tail call i32 @sdecode_number(ptr noundef nonnull %139, i32 noundef %137, ptr noundef %1) #6
  switch i32 %140, label %146 [
    i32 11, label %141
    i32 16, label %141
    i32 14, label %277
  ]

141:                                              ; preds = %135, %135
  %142 = trunc i32 %140 to i16
  %143 = shl i16 %142, 8
  store i16 %143, ptr %1, align 8, !tbaa !20
  %144 = zext i32 %138 to i64
  %145 = getelementptr inbounds i8, ptr %6, i64 %144
  store ptr %145, ptr %5, align 8, !tbaa !5
  br label %277

146:                                              ; preds = %135
  br label %277

147:                                              ; preds = %24
  %148 = getelementptr inbounds i8, ptr %6, i64 1
  %149 = load i8, ptr %148, align 1, !tbaa !5
  %150 = icmp ult i8 %149, 2
  br i1 %150, label %151, label %277

151:                                              ; preds = %147
  %152 = zext nneg i8 %149 to i16
  %153 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  store i16 %152, ptr %153, align 8, !tbaa !5
  store i16 256, ptr %1, align 8, !tbaa !20
  store ptr %148, ptr %5, align 8, !tbaa !5
  br label %277

154:                                              ; preds = %24
  %155 = getelementptr inbounds i8, ptr %6, i64 1
  %156 = load i8, ptr %155, align 1, !tbaa !5
  %157 = zext i8 %156 to i32
  br label %176

158:                                              ; preds = %24
  %159 = getelementptr inbounds i8, ptr %6, i64 1
  %160 = load i8, ptr %159, align 1, !tbaa !5
  %161 = zext i8 %160 to i32
  %162 = shl nuw nsw i32 %161, 8
  %163 = getelementptr inbounds i8, ptr %6, i64 2
  %164 = load i8, ptr %163, align 1, !tbaa !5
  %165 = zext i8 %164 to i32
  %166 = or disjoint i32 %162, %165
  br label %176

167:                                              ; preds = %24
  %168 = getelementptr inbounds i8, ptr %6, i64 1
  %169 = load i8, ptr %168, align 1, !tbaa !5
  %170 = zext i8 %169 to i32
  %171 = getelementptr inbounds i8, ptr %6, i64 2
  %172 = load i8, ptr %171, align 1, !tbaa !5
  %173 = zext i8 %172 to i32
  %174 = shl nuw nsw i32 %173, 8
  %175 = or disjoint i32 %174, %170
  br label %176

176:                                              ; preds = %167, %158, %154
  %177 = phi i32 [ %175, %167 ], [ %166, %158 ], [ %157, %154 ]
  %178 = phi ptr [ %171, %167 ], [ %163, %158 ], [ %155, %154 ]
  %179 = load ptr, ptr @gs_imemory, align 8, !tbaa !14
  %180 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %179, i64 0, i32 12
  %181 = load ptr, ptr %180, align 8, !tbaa !24
  %182 = tail call ptr %181(ptr noundef %179, i32 noundef %177, ptr noundef nonnull @.str.1) #6
  %183 = icmp eq ptr %182, null
  br i1 %183, label %277, label %184

184:                                              ; preds = %176
  store ptr %178, ptr %5, align 8, !tbaa !5
  %185 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 4, i32 2
  store ptr %182, ptr %185, align 8, !tbaa !18
  %186 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 4, i32 1
  store ptr %182, ptr %186, align 8, !tbaa !19
  %187 = zext nneg i32 %177 to i64
  %188 = getelementptr inbounds i8, ptr %182, i64 %187
  %189 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 4, i32 3
  store ptr %188, ptr %189, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  %190 = call i32 @sgets(ptr noundef %0, ptr noundef nonnull %182, i32 noundef %177, ptr noundef nonnull %4) #6
  %191 = load i32, ptr %4, align 4, !tbaa !27
  %192 = icmp eq i32 %191, %177
  br i1 %192, label %193, label %207

193:                                              ; preds = %184
  %194 = load ptr, ptr %186, align 8, !tbaa !19
  %195 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  store ptr %194, ptr %195, align 8, !tbaa !5
  %196 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !28
  %197 = trunc i32 %196 to i16
  %198 = or i16 %197, 112
  %199 = add i16 %198, 4608
  store i16 %199, ptr %1, align 8, !tbaa !20
  %200 = load ptr, ptr %189, align 8, !tbaa !17
  %201 = load ptr, ptr %186, align 8, !tbaa !19
  %202 = ptrtoint ptr %200 to i64
  %203 = ptrtoint ptr %201 to i64
  %204 = sub i64 %202, %203
  %205 = trunc i64 %204 to i16
  %206 = getelementptr inbounds %struct.tas_s, ptr %1, i64 0, i32 1
  store i16 %205, ptr %206, align 2, !tbaa !29
  br label %211

207:                                              ; preds = %184
  %208 = zext i32 %191 to i64
  %209 = getelementptr inbounds i8, ptr %182, i64 %208
  store ptr %209, ptr %185, align 8, !tbaa !18
  %210 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 3
  store i32 1, ptr %210, align 4, !tbaa !8
  br label %211

211:                                              ; preds = %193, %207
  %212 = phi i32 [ 0, %193 ], [ 3, %207 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  br i1 %192, label %277, label %213

213:                                              ; preds = %211
  %214 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 4, i32 4
  store i32 1, ptr %214, align 8, !tbaa !16
  %215 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 5, i32 0, i32 2
  store i16 3584, ptr %215, align 8, !tbaa !5
  %216 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 5, i32 0, i32 1
  store ptr @scan_bin_string_continue, ptr %216, align 8, !tbaa !5
  br label %277

217:                                              ; preds = %24
  br label %218

218:                                              ; preds = %24, %217
  %219 = phi ptr [ @user_names, %217 ], [ @system_names, %24 ]
  %220 = getelementptr inbounds i8, ptr %6, i64 1
  %221 = load i8, ptr %220, align 1, !tbaa !5
  %222 = zext i8 %221 to i64
  %223 = tail call i32 @array_get(ptr noundef nonnull %219, i64 noundef %222, ptr noundef %1) #6
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %277, label %225

225:                                              ; preds = %218
  %226 = getelementptr inbounds i8, ptr %1, i64 1
  %227 = load i8, ptr %226, align 1, !tbaa !5
  %228 = icmp eq i8 %227, 13
  br i1 %228, label %229, label %277

229:                                              ; preds = %225
  %230 = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %230, ptr %5, align 8, !tbaa !5
  br label %277

231:                                              ; preds = %24
  br label %232

232:                                              ; preds = %24, %231
  %233 = phi ptr [ @user_names, %231 ], [ @system_names, %24 ]
  %234 = getelementptr inbounds i8, ptr %6, i64 1
  %235 = load i8, ptr %234, align 1, !tbaa !5
  %236 = zext i8 %235 to i64
  %237 = tail call i32 @array_get(ptr noundef nonnull %233, i64 noundef %236, ptr noundef %1) #6
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %277, label %239

239:                                              ; preds = %232
  %240 = getelementptr inbounds i8, ptr %1, i64 1
  %241 = load i8, ptr %240, align 1, !tbaa !5
  %242 = icmp eq i8 %241, 13
  br i1 %242, label %243, label %277

243:                                              ; preds = %239
  %244 = load i16, ptr %1, align 8, !tbaa !20
  %245 = or i16 %244, 128
  store i16 %245, ptr %1, align 8, !tbaa !20
  %246 = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %246, ptr %5, align 8, !tbaa !5
  br label %277

247:                                              ; preds = %24
  %248 = getelementptr inbounds i8, ptr %6, i64 1
  %249 = load i8, ptr %248, align 1, !tbaa !5
  %250 = zext i8 %249 to i32
  %251 = and i32 %250, 126
  %252 = icmp ult i32 %251, 50
  br i1 %252, label %253, label %277

253:                                              ; preds = %247
  %254 = getelementptr inbounds i8, ptr %6, i64 2
  %255 = tail call signext i16 @sdecodeshort(ptr noundef nonnull %254, i32 noundef %250) #6
  %256 = sext i16 %255 to i32
  %257 = load ptr, ptr @gs_imemory, align 8, !tbaa !14
  %258 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 5, i32 0, i32 2
  %259 = tail call i32 @gs_alloc_ref_array(ptr noundef %257, ptr noundef nonnull %258, i32 noundef 112, i32 noundef %256, ptr noundef nonnull @.str.2) #6
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %277, label %261

261:                                              ; preds = %253
  %262 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 5
  store i32 %250, ptr %262, align 8, !tbaa !5
  %263 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 5, i32 0, i32 3
  store i32 0, ptr %263, align 8, !tbaa !5
  %264 = getelementptr inbounds i8, ptr %6, i64 3
  store ptr %264, ptr %5, align 8, !tbaa !5
  %265 = tail call i32 @scan_bin_num_array_continue(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %266 = icmp eq i32 %265, 3
  %267 = icmp slt i32 %265, 0
  %268 = or i1 %266, %267
  br i1 %268, label %269, label %277

269:                                              ; preds = %261
  %270 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 5, i32 0, i32 2, i32 1
  %271 = load ptr, ptr %270, align 8, !tbaa !5
  %272 = load i32, ptr %263, align 8, !tbaa !5
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds %struct.ref_s, ptr %271, i64 %273
  %275 = sub i32 %256, %272
  tail call void @refset_null(ptr noundef %274, i32 noundef %275) #6
  %276 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 5, i32 0, i32 1
  store ptr @scan_bin_num_array_continue, ptr %276, align 8, !tbaa !5
  br label %277

277:                                              ; preds = %24, %269, %261, %253, %247, %239, %232, %225, %218, %176, %211, %213, %147, %135, %114, %94, %84, %81, %243, %229, %151, %141, %146, %127, %109, %21
  %278 = phi i32 [ 3, %21 ], [ 0, %243 ], [ 0, %229 ], [ 0, %151 ], [ %140, %146 ], [ 0, %141 ], [ 3, %127 ], [ 0, %109 ], [ %83, %81 ], [ %90, %84 ], [ %90, %94 ], [ -18, %114 ], [ -18, %135 ], [ -18, %147 ], [ -25, %176 ], [ %212, %211 ], [ %212, %213 ], [ %223, %218 ], [ -21, %225 ], [ %237, %232 ], [ -21, %239 ], [ -18, %247 ], [ %259, %253 ], [ %265, %261 ], [ %265, %269 ], [ -18, %24 ]
  ret i32 %278
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare signext i16 @sdecodeshort(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @sdecodelong(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @gs_alloc_ref_array(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @scan_bos_continue(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.bin_seq_obj, align 8
  %5 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 5
  %6 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 5, i32 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !5
  %8 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 5, i32 0, i32 5
  %9 = load i32, ptr %5, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 5, i32 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 5, i32 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 5, i32 0, i32 2
  %15 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 5, i32 0, i32 2, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  %19 = icmp ult i32 %11, %7
  br i1 %19, label %20, label %357

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !5
  %23 = load i32, ptr %8, align 8, !tbaa !5
  %24 = ptrtoint ptr %22 to i64
  %25 = icmp sgt i32 %9, 127
  %26 = getelementptr inbounds %struct.bin_seq_obj, ptr %4, i64 0, i32 2
  %27 = getelementptr inbounds i8, ptr %4, i64 3
  %28 = getelementptr inbounds %struct.bin_seq_obj, ptr %4, i64 0, i32 3
  %29 = getelementptr inbounds i8, ptr %4, i64 7
  %30 = getelementptr inbounds i8, ptr %4, i64 5
  %31 = getelementptr inbounds i8, ptr %4, i64 6
  %32 = getelementptr inbounds %struct.bin_seq_obj, ptr %4, i64 0, i32 2
  %33 = icmp sgt i32 %9, 127
  %34 = getelementptr inbounds %struct.bin_seq_obj, ptr %4, i64 0, i32 2
  %35 = getelementptr inbounds i8, ptr %4, i64 3
  %36 = getelementptr inbounds %struct.bin_seq_obj, ptr %4, i64 0, i32 3
  %37 = getelementptr inbounds i8, ptr %4, i64 7
  %38 = getelementptr inbounds i8, ptr %4, i64 5
  %39 = getelementptr inbounds i8, ptr %4, i64 6
  %40 = getelementptr inbounds %struct.bin_seq_obj, ptr %4, i64 0, i32 3
  %41 = getelementptr inbounds %struct.bin_seq_obj, ptr %4, i64 0, i32 2
  %42 = icmp sgt i32 %9, 127
  %43 = getelementptr inbounds %struct.bin_seq_obj, ptr %4, i64 0, i32 2
  %44 = getelementptr inbounds i8, ptr %4, i64 3
  %45 = getelementptr inbounds %struct.bin_seq_obj, ptr %4, i64 0, i32 3
  %46 = getelementptr inbounds i8, ptr %4, i64 7
  %47 = getelementptr inbounds i8, ptr %4, i64 5
  %48 = getelementptr inbounds i8, ptr %4, i64 6
  %49 = getelementptr inbounds %struct.bin_seq_obj, ptr %4, i64 0, i32 2
  %50 = getelementptr inbounds %struct.bin_seq_obj, ptr %4, i64 0, i32 3
  %51 = getelementptr inbounds %struct.bin_seq_obj, ptr %4, i64 0, i32 3
  %52 = icmp sgt i32 %9, 127
  %53 = getelementptr inbounds %struct.bin_seq_obj, ptr %4, i64 0, i32 2
  %54 = getelementptr inbounds i8, ptr %4, i64 3
  %55 = getelementptr inbounds %struct.bin_seq_obj, ptr %4, i64 0, i32 3
  %56 = getelementptr inbounds i8, ptr %4, i64 7
  %57 = getelementptr inbounds i8, ptr %4, i64 5
  %58 = getelementptr inbounds i8, ptr %4, i64 6
  %59 = getelementptr inbounds %struct.bin_seq_obj, ptr %4, i64 0, i32 2
  %60 = getelementptr inbounds %struct.bin_seq_obj, ptr %4, i64 0, i32 3
  %61 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 4, i32 4
  %62 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 4, i32 3
  %63 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 4, i32 1
  %64 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 4, i32 2
  %65 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 4, i32 1
  %66 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 4, i32 3
  %67 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 4, i32 1
  %68 = icmp sgt i32 %9, 127
  %69 = getelementptr inbounds %struct.bin_seq_obj, ptr %4, i64 0, i32 3
  %70 = getelementptr inbounds i8, ptr %4, i64 7
  %71 = getelementptr inbounds i8, ptr %4, i64 5
  %72 = getelementptr inbounds i8, ptr %4, i64 6
  %73 = getelementptr inbounds %struct.bin_seq_obj, ptr %4, i64 0, i32 3
  %74 = getelementptr inbounds %struct.bin_seq_obj, ptr %4, i64 0, i32 2
  %75 = icmp sgt i32 %9, 127
  %76 = getelementptr inbounds i8, ptr %4, i64 3
  %77 = getelementptr inbounds %struct.bin_seq_obj, ptr %4, i64 0, i32 3
  %78 = getelementptr inbounds i8, ptr %4, i64 7
  %79 = getelementptr inbounds i8, ptr %4, i64 5
  %80 = getelementptr inbounds i8, ptr %4, i64 6
  %81 = getelementptr inbounds %struct.bin_seq_obj, ptr %4, i64 0, i32 3
  %82 = and i32 %9, -129
  %83 = icmp eq i32 %82, 49
  %84 = getelementptr inbounds %struct.bin_seq_obj, ptr %4, i64 0, i32 3
  %85 = getelementptr inbounds %struct.bin_seq_obj, ptr %4, i64 0, i32 3
  %86 = icmp sgt i32 %9, 127
  %87 = getelementptr inbounds %struct.bin_seq_obj, ptr %4, i64 0, i32 3
  %88 = getelementptr inbounds i8, ptr %4, i64 7
  %89 = getelementptr inbounds i8, ptr %4, i64 5
  %90 = getelementptr inbounds i8, ptr %4, i64 6
  %91 = getelementptr inbounds %struct.bin_seq_obj, ptr %4, i64 0, i32 3
  %92 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 3
  %93 = zext i32 %11 to i64
  br label %98

94:                                               ; preds = %351
  %95 = add nuw nsw i64 %99, 1
  %96 = zext i32 %353 to i64
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %98, label %357, !llvm.loop !30

98:                                               ; preds = %20, %94
  %99 = phi i64 [ %93, %20 ], [ %95, %94 ]
  %100 = phi i32 [ undef, %20 ], [ %356, %94 ]
  %101 = phi ptr [ %18, %20 ], [ %355, %94 ]
  %102 = phi i32 [ %7, %20 ], [ %353, %94 ]
  %103 = phi i32 [ %23, %20 ], [ %352, %94 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %104 = getelementptr inbounds %struct.ref_s, ptr %16, i64 %99
  store ptr %101, ptr %17, align 8, !tbaa !5
  %105 = ptrtoint ptr %101 to i64
  %106 = sub i64 %24, %105
  %107 = icmp slt i64 %106, 8
  br i1 %107, label %108, label %110

108:                                              ; preds = %98
  %109 = trunc i64 %99 to i32
  store i32 %109, ptr %10, align 8, !tbaa !5
  store i32 %102, ptr %6, align 4, !tbaa !5
  store i32 %103, ptr %8, align 8, !tbaa !5
  store i32 1, ptr %92, align 4, !tbaa !8
  br label %351

110:                                              ; preds = %98
  %111 = getelementptr inbounds i8, ptr %101, i64 1
  %112 = load i64, ptr %111, align 1
  store i64 %112, ptr %4, align 8
  %113 = getelementptr inbounds i8, ptr %101, i64 8
  %114 = load i8, ptr %4, align 8, !tbaa !32
  %115 = and i8 %114, 127
  switch i8 %115, label %351 [
    i8 0, label %116
    i8 1, label %117
    i8 2, label %127
    i8 4, label %153
    i8 5, label %164
    i8 3, label %270
    i8 6, label %273
    i8 9, label %300
    i8 15, label %336
    i8 10, label %350
  ]

116:                                              ; preds = %110
  store i16 3584, ptr %104, align 8, !tbaa !20
  br label %351

117:                                              ; preds = %110
  br i1 %86, label %123, label %118

118:                                              ; preds = %117
  %119 = load i8, ptr %87, align 4, !tbaa !5
  %120 = load i8, ptr %88, align 1, !tbaa !5
  store i8 %120, ptr %87, align 4, !tbaa !5
  store i8 %119, ptr %88, align 1, !tbaa !5
  %121 = load i8, ptr %89, align 1, !tbaa !5
  %122 = load i8, ptr %90, align 2, !tbaa !5
  store i8 %122, ptr %89, align 1, !tbaa !5
  store i8 %121, ptr %90, align 2, !tbaa !5
  br label %123

123:                                              ; preds = %118, %117
  %124 = load i32, ptr %91, align 4, !tbaa !5
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.ref_s, ptr %16, i64 %99, i32 1
  store i64 %125, ptr %126, align 8, !tbaa !5
  store i16 2816, ptr %104, align 8, !tbaa !20
  br label %351

127:                                              ; preds = %110
  %128 = load i16, ptr %74, align 2, !tbaa !5
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %147, label %130

130:                                              ; preds = %127
  br i1 %75, label %138, label %131

131:                                              ; preds = %130
  %132 = load i8, ptr %74, align 2, !tbaa !5
  %133 = load i8, ptr %76, align 1, !tbaa !5
  store i8 %133, ptr %74, align 2, !tbaa !5
  store i8 %132, ptr %76, align 1, !tbaa !5
  %134 = load i8, ptr %77, align 4, !tbaa !5
  %135 = load i8, ptr %78, align 1, !tbaa !5
  store i8 %135, ptr %77, align 4, !tbaa !5
  store i8 %134, ptr %78, align 1, !tbaa !5
  %136 = load i8, ptr %79, align 1, !tbaa !5
  %137 = load i8, ptr %80, align 2, !tbaa !5
  store i8 %137, ptr %79, align 1, !tbaa !5
  store i8 %136, ptr %80, align 2, !tbaa !5
  br label %138

138:                                              ; preds = %131, %130
  %139 = load i32, ptr %81, align 4, !tbaa !5
  %140 = uitofp i32 %139 to float
  %141 = fpext float %140 to double
  %142 = load i16, ptr %74, align 2, !tbaa !5
  %143 = zext i16 %142 to i32
  %144 = sub nsw i32 0, %143
  %145 = call double @ldexp(double noundef %141, i32 noundef %144) #6
  %146 = fptrunc double %145 to float
  store float %146, ptr %81, align 4, !tbaa !5
  br label %150

147:                                              ; preds = %127
  br i1 %83, label %150, label %148

148:                                              ; preds = %147
  %149 = call float @sdecodefloat(ptr noundef nonnull %84, i32 noundef %9) #6
  store float %149, ptr %84, align 4, !tbaa !5
  br label %150

150:                                              ; preds = %147, %148, %138
  %151 = load float, ptr %85, align 4, !tbaa !5
  %152 = getelementptr inbounds %struct.ref_s, ptr %16, i64 %99, i32 1
  store float %151, ptr %152, align 8, !tbaa !5
  store i16 4096, ptr %104, align 8, !tbaa !20
  br label %351

153:                                              ; preds = %110
  br i1 %68, label %159, label %154

154:                                              ; preds = %153
  %155 = load i8, ptr %69, align 4, !tbaa !5
  %156 = load i8, ptr %70, align 1, !tbaa !5
  store i8 %156, ptr %69, align 4, !tbaa !5
  store i8 %155, ptr %70, align 1, !tbaa !5
  %157 = load i8, ptr %71, align 1, !tbaa !5
  %158 = load i8, ptr %72, align 2, !tbaa !5
  store i8 %158, ptr %71, align 1, !tbaa !5
  store i8 %157, ptr %72, align 2, !tbaa !5
  br label %159

159:                                              ; preds = %154, %153
  %160 = load i32, ptr %73, align 4, !tbaa !5
  %161 = icmp ne i32 %160, 0
  %162 = zext i1 %161 to i16
  %163 = getelementptr inbounds %struct.ref_s, ptr %16, i64 %99, i32 1
  store i16 %162, ptr %163, align 8, !tbaa !5
  store i16 256, ptr %104, align 8, !tbaa !20
  br label %351

164:                                              ; preds = %110
  br i1 %52, label %172, label %165

165:                                              ; preds = %164
  %166 = load i8, ptr %53, align 2, !tbaa !5
  %167 = load i8, ptr %54, align 1, !tbaa !5
  store i8 %167, ptr %53, align 2, !tbaa !5
  store i8 %166, ptr %54, align 1, !tbaa !5
  %168 = load i8, ptr %55, align 4, !tbaa !5
  %169 = load i8, ptr %56, align 1, !tbaa !5
  store i8 %169, ptr %55, align 4, !tbaa !5
  store i8 %168, ptr %56, align 1, !tbaa !5
  %170 = load i8, ptr %57, align 1, !tbaa !5
  %171 = load i8, ptr %58, align 2, !tbaa !5
  store i8 %171, ptr %57, align 1, !tbaa !5
  store i8 %170, ptr %58, align 2, !tbaa !5
  br label %172

172:                                              ; preds = %165, %164
  %173 = icmp sgt i8 %114, -1
  %174 = select i1 %173, i32 112, i32 240
  br label %175

175:                                              ; preds = %282, %172
  %176 = phi i32 [ %274, %282 ], [ %174, %172 ]
  %177 = load i16, ptr %59, align 2, !tbaa !5
  %178 = icmp eq i16 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.ref_s, ptr %16, i64 %99, i32 1
  store ptr null, ptr %180, align 8, !tbaa !5
  %181 = trunc i32 %176 to i16
  %182 = add nuw nsw i16 %181, 4608
  store i16 %182, ptr %104, align 8, !tbaa !20
  %183 = getelementptr inbounds %struct.tas_s, ptr %104, i64 0, i32 1
  store i16 0, ptr %183, align 2, !tbaa !29
  br label %351

184:                                              ; preds = %175
  %185 = zext i16 %177 to i32
  %186 = load i32, ptr %60, align 4, !tbaa !5
  %187 = shl i32 %102, 3
  %188 = icmp ult i32 %186, %187
  %189 = add i32 %186, %185
  %190 = icmp ugt i32 %189, %13
  %191 = select i1 %188, i1 true, i1 %190
  br i1 %191, label %351, label %192

192:                                              ; preds = %184
  %193 = icmp ult i32 %186, %103
  br i1 %193, label %194, label %255

194:                                              ; preds = %192
  %195 = sub i32 %13, %186
  %196 = load i32, ptr %61, align 8, !tbaa !16
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %240, label %198

198:                                              ; preds = %194
  %199 = load ptr, ptr %62, align 8, !tbaa !17
  %200 = load ptr, ptr %63, align 8, !tbaa !19
  %201 = ptrtoint ptr %199 to i64
  %202 = ptrtoint ptr %200 to i64
  %203 = sub i64 %201, %202
  %204 = trunc i64 %203 to i32
  %205 = load ptr, ptr @gs_imemory, align 8, !tbaa !14
  %206 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %205, i64 0, i32 14
  %207 = load ptr, ptr %206, align 8, !tbaa !34
  %208 = call ptr %207(ptr noundef %205, ptr noundef %200, i32 noundef %204, i32 noundef %195, ptr noundef nonnull @.str.4) #6
  %209 = sub i32 %195, %204
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds i8, ptr %208, i64 %210
  %212 = icmp eq ptr %208, null
  br i1 %212, label %245, label %213

213:                                              ; preds = %198
  %214 = icmp eq ptr %211, %200
  %215 = icmp eq i64 %99, 0
  %216 = or i1 %215, %214
  br i1 %216, label %245, label %217

217:                                              ; preds = %213
  %218 = load ptr, ptr %15, align 8, !tbaa !5
  %219 = trunc i64 %99 to i32
  br label %220

220:                                              ; preds = %236, %217
  %221 = phi ptr [ %238, %236 ], [ %218, %217 ]
  %222 = phi i32 [ %237, %236 ], [ %219, %217 ]
  %223 = getelementptr inbounds i8, ptr %221, i64 1
  %224 = load i8, ptr %223, align 1, !tbaa !5
  %225 = icmp eq i8 %224, 18
  br i1 %225, label %226, label %236

226:                                              ; preds = %220
  %227 = getelementptr inbounds %struct.tas_s, ptr %221, i64 0, i32 1
  %228 = load i16, ptr %227, align 2, !tbaa !29
  %229 = icmp eq i16 %228, 0
  br i1 %229, label %236, label %230

230:                                              ; preds = %226
  %231 = getelementptr inbounds %struct.ref_s, ptr %221, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !5
  %233 = ptrtoint ptr %232 to i64
  %234 = sub i64 %233, %202
  %235 = getelementptr inbounds i8, ptr %211, i64 %234
  store ptr %235, ptr %231, align 8, !tbaa !5
  br label %236

236:                                              ; preds = %230, %226, %220
  %237 = add i32 %222, -1
  %238 = getelementptr inbounds %struct.ref_s, ptr %221, i64 1
  %239 = icmp eq i32 %237, 0
  br i1 %239, label %245, label %220, !llvm.loop !35

240:                                              ; preds = %194
  %241 = load ptr, ptr @gs_imemory, align 8, !tbaa !14
  %242 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %241, i64 0, i32 12
  %243 = load ptr, ptr %242, align 8, !tbaa !24
  %244 = call ptr %243(ptr noundef %241, i32 noundef %195, ptr noundef nonnull @.str.3) #6
  br label %245

245:                                              ; preds = %236, %213, %198, %240
  %246 = phi ptr [ %244, %240 ], [ null, %198 ], [ %208, %213 ], [ %208, %236 ]
  %247 = icmp eq ptr %246, null
  br i1 %247, label %252, label %248

248:                                              ; preds = %245
  store i32 1, ptr %61, align 8, !tbaa !16
  store ptr %246, ptr %64, align 8, !tbaa !18
  store ptr %246, ptr %65, align 8, !tbaa !19
  %249 = zext i32 %195 to i64
  %250 = getelementptr inbounds i8, ptr %246, i64 %249
  store ptr %250, ptr %66, align 8, !tbaa !17
  %251 = load i32, ptr %60, align 4, !tbaa !5
  br label %252

252:                                              ; preds = %245, %248
  %253 = phi i32 [ %251, %248 ], [ %103, %245 ]
  %254 = phi i32 [ %100, %248 ], [ -25, %245 ]
  br i1 %247, label %351, label %255

255:                                              ; preds = %252, %192
  %256 = phi i32 [ %253, %252 ], [ %103, %192 ]
  %257 = phi i32 [ %254, %252 ], [ %100, %192 ]
  %258 = load ptr, ptr %67, align 8, !tbaa !19
  %259 = load i32, ptr %60, align 4, !tbaa !5
  %260 = sub i32 %259, %256
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds i8, ptr %258, i64 %261
  %263 = getelementptr inbounds %struct.ref_s, ptr %16, i64 %99, i32 1
  store ptr %262, ptr %263, align 8, !tbaa !5
  %264 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !28
  %265 = or i32 %264, %176
  %266 = trunc i32 %265 to i16
  %267 = add i16 %266, 4608
  store i16 %267, ptr %104, align 8, !tbaa !20
  %268 = load i16, ptr %59, align 2, !tbaa !5
  %269 = getelementptr inbounds %struct.tas_s, ptr %104, i64 0, i32 1
  store i16 %268, ptr %269, align 2, !tbaa !29
  br label %351

270:                                              ; preds = %110
  %271 = and i8 %114, -128
  %272 = zext i8 %271 to i32
  br label %273

273:                                              ; preds = %110, %270
  %274 = phi i32 [ %272, %270 ], [ 96, %110 ]
  br i1 %42, label %282, label %275

275:                                              ; preds = %273
  %276 = load i8, ptr %43, align 2, !tbaa !5
  %277 = load i8, ptr %44, align 1, !tbaa !5
  store i8 %277, ptr %43, align 2, !tbaa !5
  store i8 %276, ptr %44, align 1, !tbaa !5
  %278 = load i8, ptr %45, align 4, !tbaa !5
  %279 = load i8, ptr %46, align 1, !tbaa !5
  store i8 %279, ptr %45, align 4, !tbaa !5
  store i8 %278, ptr %46, align 1, !tbaa !5
  %280 = load i8, ptr %47, align 1, !tbaa !5
  %281 = load i8, ptr %48, align 2, !tbaa !5
  store i8 %281, ptr %47, align 1, !tbaa !5
  store i8 %280, ptr %48, align 2, !tbaa !5
  br label %282

282:                                              ; preds = %275, %273
  %283 = load i16, ptr %49, align 2, !tbaa !5
  switch i16 %283, label %175 [
    i16 0, label %285
    i16 -1, label %284
  ]

284:                                              ; preds = %282
  br label %285

285:                                              ; preds = %282, %284
  %286 = phi ptr [ %50, %284 ], [ %51, %282 ]
  %287 = phi ptr [ @system_names, %284 ], [ @user_names, %282 ]
  %288 = load i32, ptr %286, align 4, !tbaa !5
  %289 = zext i32 %288 to i64
  %290 = call i32 @array_get(ptr noundef nonnull %287, i64 noundef %289, ptr noundef %104) #6
  %291 = icmp slt i32 %290, 0
  br i1 %291, label %351, label %292

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %104, i64 1
  %294 = load i8, ptr %293, align 1, !tbaa !5
  %295 = icmp eq i8 %294, 13
  br i1 %295, label %296, label %351

296:                                              ; preds = %292
  %297 = load i16, ptr %104, align 8, !tbaa !20
  %298 = trunc i32 %274 to i16
  %299 = or i16 %297, %298
  store i16 %299, ptr %104, align 8, !tbaa !20
  br label %351

300:                                              ; preds = %110
  br i1 %33, label %308, label %301

301:                                              ; preds = %300
  %302 = load i8, ptr %34, align 2, !tbaa !5
  %303 = load i8, ptr %35, align 1, !tbaa !5
  store i8 %303, ptr %34, align 2, !tbaa !5
  store i8 %302, ptr %35, align 1, !tbaa !5
  %304 = load i8, ptr %36, align 4, !tbaa !5
  %305 = load i8, ptr %37, align 1, !tbaa !5
  store i8 %305, ptr %36, align 4, !tbaa !5
  store i8 %304, ptr %37, align 1, !tbaa !5
  %306 = load i8, ptr %38, align 1, !tbaa !5
  %307 = load i8, ptr %39, align 2, !tbaa !5
  store i8 %307, ptr %38, align 1, !tbaa !5
  store i8 %306, ptr %39, align 2, !tbaa !5
  br label %308

308:                                              ; preds = %344, %300, %301
  %309 = phi i32 [ 1024, %301 ], [ 1024, %300 ], [ 1280, %344 ]
  %310 = load i32, ptr %40, align 4, !tbaa !5
  %311 = load i16, ptr %41, align 2
  %312 = zext i16 %311 to i32
  %313 = add i32 %310, %312
  %314 = icmp ule i32 %313, %103
  %315 = and i32 %310, 7
  %316 = icmp eq i32 %315, 0
  %317 = and i1 %316, %314
  br i1 %317, label %318, label %351

318:                                              ; preds = %308
  %319 = lshr exact i32 %310, 3
  %320 = add nuw nsw i32 %319, %312
  %321 = call i32 @llvm.umax.i32(i32 %102, i32 %320)
  %322 = zext nneg i32 %319 to i64
  %323 = getelementptr inbounds %struct.ref_s, ptr %16, i64 %322
  %324 = getelementptr inbounds %struct.ref_s, ptr %16, i64 %99, i32 1
  store ptr %323, ptr %324, align 8, !tbaa !5
  %325 = load i8, ptr %4, align 8, !tbaa !32
  %326 = icmp sgt i8 %325, -1
  %327 = select i1 %326, i32 112, i32 240
  %328 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !28
  %329 = or i32 %327, %328
  %330 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !36
  %331 = or i32 %329, %330
  %332 = add i32 %331, %309
  %333 = trunc i32 %332 to i16
  store i16 %333, ptr %104, align 8, !tbaa !20
  %334 = load i16, ptr %41, align 2, !tbaa !5
  %335 = getelementptr inbounds %struct.tas_s, ptr %104, i64 0, i32 1
  store i16 %334, ptr %335, align 2, !tbaa !29
  br label %351

336:                                              ; preds = %110
  br i1 %25, label %344, label %337

337:                                              ; preds = %336
  %338 = load i8, ptr %26, align 2, !tbaa !5
  %339 = load i8, ptr %27, align 1, !tbaa !5
  store i8 %339, ptr %26, align 2, !tbaa !5
  store i8 %338, ptr %27, align 1, !tbaa !5
  %340 = load i8, ptr %28, align 4, !tbaa !5
  %341 = load i8, ptr %29, align 1, !tbaa !5
  store i8 %341, ptr %28, align 4, !tbaa !5
  store i8 %340, ptr %29, align 1, !tbaa !5
  %342 = load i8, ptr %30, align 1, !tbaa !5
  %343 = load i8, ptr %31, align 2, !tbaa !5
  store i8 %343, ptr %30, align 1, !tbaa !5
  store i8 %342, ptr %31, align 2, !tbaa !5
  br label %344

344:                                              ; preds = %337, %336
  %345 = load i16, ptr %32, align 2
  %346 = and i16 %345, 1
  %347 = icmp ne i16 %346, 0
  %348 = icmp ne i16 %345, 1
  %349 = and i1 %348, %347
  br i1 %349, label %351, label %308

350:                                              ; preds = %110
  store i16 3072, ptr %104, align 8, !tbaa !20
  br label %351

351:                                              ; preds = %116, %123, %150, %159, %179, %255, %296, %318, %350, %110, %344, %308, %292, %285, %184, %252, %108
  %352 = phi i32 [ %103, %108 ], [ %253, %252 ], [ %103, %184 ], [ %103, %285 ], [ %103, %292 ], [ %103, %308 ], [ %103, %344 ], [ %103, %110 ], [ %103, %350 ], [ %103, %318 ], [ %103, %179 ], [ %256, %255 ], [ %103, %296 ], [ %103, %159 ], [ %103, %150 ], [ %103, %123 ], [ %103, %116 ]
  %353 = phi i32 [ %102, %108 ], [ %102, %252 ], [ %102, %184 ], [ %102, %285 ], [ %102, %292 ], [ %102, %308 ], [ %102, %344 ], [ %102, %110 ], [ %102, %350 ], [ %321, %318 ], [ %102, %179 ], [ %102, %255 ], [ %102, %296 ], [ %102, %159 ], [ %102, %150 ], [ %102, %123 ], [ %102, %116 ]
  %354 = phi i1 [ false, %108 ], [ false, %252 ], [ false, %184 ], [ false, %285 ], [ false, %292 ], [ false, %308 ], [ false, %344 ], [ false, %110 ], [ true, %350 ], [ true, %318 ], [ true, %179 ], [ true, %255 ], [ true, %296 ], [ true, %159 ], [ true, %150 ], [ true, %123 ], [ true, %116 ]
  %355 = phi ptr [ %101, %108 ], [ %113, %252 ], [ %113, %184 ], [ %113, %285 ], [ %113, %292 ], [ %113, %308 ], [ %113, %344 ], [ %113, %110 ], [ %113, %350 ], [ %113, %318 ], [ %113, %179 ], [ %113, %255 ], [ %113, %296 ], [ %113, %159 ], [ %113, %150 ], [ %113, %123 ], [ %113, %116 ]
  %356 = phi i32 [ 3, %108 ], [ %254, %252 ], [ -18, %184 ], [ %290, %285 ], [ -21, %292 ], [ -18, %308 ], [ -18, %344 ], [ -18, %110 ], [ %100, %350 ], [ %100, %318 ], [ %100, %179 ], [ %257, %255 ], [ %100, %296 ], [ %100, %159 ], [ %100, %150 ], [ %100, %123 ], [ %100, %116 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  br i1 %354, label %94, label %366

357:                                              ; preds = %94, %3
  %358 = phi i32 [ %7, %3 ], [ %353, %94 ]
  %359 = phi ptr [ %18, %3 ], [ %355, %94 ]
  store ptr %359, ptr %17, align 8, !tbaa !5
  %360 = load ptr, ptr @gs_imemory, align 8, !tbaa !14
  %361 = call i32 @gs_resize_ref_array(ptr noundef %360, ptr noundef nonnull %14, i32 noundef %358, ptr noundef nonnull @.str) #6
  %362 = call i32 @scan_bos_string_continue(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %363 = icmp eq i32 %362, 3
  br i1 %363, label %364, label %366

364:                                              ; preds = %357
  %365 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 5, i32 0, i32 1
  store ptr @scan_bos_string_continue, ptr %365, align 8, !tbaa !5
  br label %366

366:                                              ; preds = %351, %357, %364
  %367 = phi i32 [ %362, %364 ], [ %362, %357 ], [ %356, %351 ]
  ret i32 %367
}

declare void @refset_null(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @sdecode_number(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @scan_bin_string_continue(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 4, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !18
  %7 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 4, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !17
  %9 = ptrtoint ptr %8 to i64
  %10 = ptrtoint ptr %6 to i64
  %11 = sub i64 %9, %10
  %12 = trunc i64 %11 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  %13 = call i32 @sgets(ptr noundef %0, ptr noundef %6, i32 noundef %12, ptr noundef nonnull %4) #6
  %14 = load i32, ptr %4, align 4, !tbaa !27
  %15 = icmp eq i32 %14, %12
  br i1 %15, label %16, label %31

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 4, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !19
  %19 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  store ptr %18, ptr %19, align 8, !tbaa !5
  %20 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !28
  %21 = trunc i32 %20 to i16
  %22 = or i16 %21, 112
  %23 = add i16 %22, 4608
  store i16 %23, ptr %1, align 8, !tbaa !20
  %24 = load ptr, ptr %7, align 8, !tbaa !17
  %25 = load ptr, ptr %17, align 8, !tbaa !19
  %26 = ptrtoint ptr %24 to i64
  %27 = ptrtoint ptr %25 to i64
  %28 = sub i64 %26, %27
  %29 = trunc i64 %28 to i16
  %30 = getelementptr inbounds %struct.tas_s, ptr %1, i64 0, i32 1
  store i16 %29, ptr %30, align 2, !tbaa !29
  br label %35

31:                                               ; preds = %3
  %32 = zext i32 %14 to i64
  %33 = getelementptr inbounds i8, ptr %6, i64 %32
  store ptr %33, ptr %5, align 8, !tbaa !18
  %34 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 3
  store i32 1, ptr %34, align 4, !tbaa !8
  br label %35

35:                                               ; preds = %31, %16
  %36 = phi i32 [ 0, %16 ], [ 3, %31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %36
}

declare i32 @array_get(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @scan_bin_num_array_continue(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 5
  %5 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 5, i32 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 5, i32 0, i32 2
  %8 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 5, i32 0, i32 2, i32 0, i32 1
  %9 = load i16, ptr %8, align 2, !tbaa !5
  %10 = zext i16 %9 to i32
  %11 = icmp ult i32 %6, %10
  br i1 %11, label %12, label %56

12:                                               ; preds = %3
  %13 = load i32, ptr %4, align 8, !tbaa !5
  %14 = ashr i32 %13, 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [0 x i8], ptr @enc_num_bytes, i64 0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !5
  %18 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 5, i32 0, i32 2, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = zext i32 %6 to i64
  %21 = getelementptr inbounds %struct.ref_s, ptr %19, i64 %20
  %22 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  %23 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %24 = zext i8 %17 to i64
  %25 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 3
  br label %26

26:                                               ; preds = %12, %50
  %27 = phi i32 [ undef, %12 ], [ %48, %50 ]
  %28 = phi i32 [ %6, %12 ], [ %51, %50 ]
  %29 = phi ptr [ %21, %12 ], [ %52, %50 ]
  %30 = load ptr, ptr %23, align 8, !tbaa !5
  %31 = load ptr, ptr %22, align 8, !tbaa !5
  %32 = ptrtoint ptr %30 to i64
  %33 = ptrtoint ptr %31 to i64
  %34 = sub i64 %32, %33
  %35 = icmp slt i64 %34, %24
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  store i32 %28, ptr %5, align 8, !tbaa !5
  store i32 1, ptr %25, align 4, !tbaa !8
  br label %47

37:                                               ; preds = %26
  %38 = getelementptr inbounds i8, ptr %31, i64 1
  %39 = load i32, ptr %4, align 8, !tbaa !5
  %40 = tail call i32 @sdecode_number(ptr noundef nonnull %38, i32 noundef %39, ptr noundef %29) #6
  switch i32 %40, label %46 [
    i32 11, label %41
    i32 16, label %41
    i32 14, label %47
  ]

41:                                               ; preds = %37, %37
  %42 = trunc i32 %40 to i16
  %43 = shl i16 %42, 8
  store i16 %43, ptr %29, align 8, !tbaa !20
  %44 = load ptr, ptr %22, align 8, !tbaa !5
  %45 = getelementptr inbounds i8, ptr %44, i64 %24
  store ptr %45, ptr %22, align 8, !tbaa !5
  br label %47

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %37, %41, %46, %36
  %48 = phi i32 [ 3, %36 ], [ %40, %46 ], [ %27, %41 ], [ -18, %37 ]
  %49 = phi i1 [ false, %36 ], [ false, %46 ], [ true, %41 ], [ false, %37 ]
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = add nuw nsw i32 %28, 1
  %52 = getelementptr inbounds %struct.ref_s, ptr %29, i64 1
  %53 = load i16, ptr %8, align 2, !tbaa !5
  %54 = zext i16 %53 to i32
  %55 = icmp ult i32 %51, %54
  br i1 %55, label %26, label %56, !llvm.loop !37

56:                                               ; preds = %50, %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !38
  br label %57

57:                                               ; preds = %47, %56
  %58 = phi i32 [ 0, %56 ], [ %48, %47 ]
  ret i32 %58
}

declare i32 @sgets(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #4

declare float @sdecodefloat(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @gs_resize_ref_array(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @scan_bos_string_continue(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ref_s, align 8
  %6 = alloca [14 x i8], align 2
  %7 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 5, i32 0, i32 2
  %8 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 5, i32 0, i32 2, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 4, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 4, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !17
  %14 = ptrtoint ptr %13 to i64
  %15 = ptrtoint ptr %11 to i64
  %16 = sub i64 %14, %15
  %17 = trunc i64 %16 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  %18 = call i32 @sgets(ptr noundef %0, ptr noundef %11, i32 noundef %17, ptr noundef nonnull %4) #6
  %19 = load i32, ptr %4, align 4, !tbaa !27
  %20 = icmp eq i32 %19, %17
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = zext i32 %19 to i64
  %23 = getelementptr inbounds i8, ptr %11, i64 %22
  store ptr %23, ptr %10, align 8, !tbaa !18
  %24 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 3
  store i32 1, ptr %24, align 4, !tbaa !8
  br label %25

25:                                               ; preds = %3, %21
  %26 = phi i32 [ 3, %21 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  %27 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !28
  br i1 %20, label %28, label %167

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 5, i32 0, i32 2, i32 0, i32 1
  %30 = load i16, ptr %29, align 2, !tbaa !5
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %125, label %32

32:                                               ; preds = %28
  %33 = zext i16 %30 to i32
  br label %34

34:                                               ; preds = %32, %117
  %35 = phi i32 [ %119, %117 ], [ undef, %32 ]
  %36 = phi ptr [ %121, %117 ], [ %9, %32 ]
  %37 = phi i32 [ %118, %117 ], [ 0, %32 ]
  %38 = phi i32 [ %120, %117 ], [ %33, %32 ]
  %39 = getelementptr inbounds i8, ptr %36, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !5
  switch i8 %40, label %117 [
    i8 18, label %41
    i8 13, label %59
    i8 5, label %77
  ]

41:                                               ; preds = %34
  %42 = load i16, ptr %36, align 8, !tbaa !20
  %43 = and i16 %42, 16
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %117

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.ref_s, ptr %36, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !5
  %48 = getelementptr inbounds %struct.tas_s, ptr %36, i64 0, i32 1
  %49 = load i16, ptr %48, align 2, !tbaa !29
  %50 = zext i16 %49 to i32
  %51 = call i32 @name_ref(ptr noundef %47, i32 noundef %50, ptr noundef nonnull %36, i32 noundef 1) #6
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = and i16 %42, 128
  %55 = load i16, ptr %36, align 8, !tbaa !20
  %56 = or i16 %55, %54
  store i16 %56, ptr %36, align 8, !tbaa !20
  br label %57

57:                                               ; preds = %45, %53
  %58 = phi i32 [ %35, %53 ], [ %51, %45 ]
  br i1 %52, label %59, label %167

59:                                               ; preds = %57, %34
  %60 = phi i32 [ %35, %34 ], [ %58, %57 ]
  %61 = load i16, ptr %36, align 8, !tbaa !20
  %62 = and i16 %61, 32
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %117, label %64

64:                                               ; preds = %59
  %65 = call i32 @name_index(ptr noundef nonnull %36) #6
  %66 = call ptr @dict_find_name_by_index(i32 noundef %65) #6
  %67 = icmp eq ptr %66, null
  br i1 %67, label %74, label %68

68:                                               ; preds = %64
  %69 = load i16, ptr %66, align 8, !tbaa !20
  %70 = and i16 %69, 12
  %71 = zext nneg i16 %70 to i32
  %72 = icmp ult i32 %27, %71
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull align 8 dereferenceable(16) %66, i64 16, i1 false), !tbaa.struct !38
  br label %74

74:                                               ; preds = %68, %64, %73
  %75 = phi i1 [ true, %73 ], [ false, %64 ], [ false, %68 ]
  %76 = phi i32 [ %60, %73 ], [ -21, %64 ], [ -7, %68 ]
  br i1 %75, label %117, label %167

77:                                               ; preds = %34
  %78 = getelementptr inbounds %struct.tas_s, ptr %36, i64 0, i32 1
  %79 = load i16, ptr %78, align 2, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  %80 = icmp eq i16 %79, 1
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.ref_s, ptr %36, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !5
  %84 = icmp ult ptr %83, %36
  br i1 %84, label %85, label %113

85:                                               ; preds = %81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %83, i64 16, i1 false), !tbaa.struct !38
  br label %106

86:                                               ; preds = %77
  %87 = zext i16 %79 to i32
  %88 = lshr i32 %87, 1
  %89 = call i32 @dict_create(i32 noundef %88, ptr noundef nonnull %5) #6
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %113, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.ref_s, ptr %36, i64 0, i32 1
  br label %93

93:                                               ; preds = %91, %96
  %94 = phi i32 [ %97, %96 ], [ %87, %91 ]
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %106, label %96

96:                                               ; preds = %93
  %97 = add i32 %94, -2
  %98 = load ptr, ptr %92, align 8, !tbaa !5
  %99 = zext i32 %97 to i64
  %100 = getelementptr inbounds %struct.ref_s, ptr %98, i64 %99
  %101 = add i32 %94, -1
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.ref_s, ptr %98, i64 %102
  %104 = call i32 @dict_put(ptr noundef nonnull %5, ptr noundef %100, ptr noundef %103) #6
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %113, label %93, !llvm.loop !45

106:                                              ; preds = %93, %85
  %107 = load i16, ptr %5, align 8, !tbaa !20
  %108 = or i16 %107, 112
  store i16 %108, ptr %5, align 8, !tbaa !20
  %109 = and i16 %108, -129
  %110 = load i16, ptr %36, align 8, !tbaa !20
  %111 = and i16 %110, 128
  %112 = or disjoint i16 %111, %109
  store i16 %112, ptr %5, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !38
  br label %113

113:                                              ; preds = %96, %86, %81, %106
  %114 = phi i32 [ 0, %106 ], [ 4, %81 ], [ 1, %86 ], [ 1, %96 ]
  %115 = phi i32 [ %37, %106 ], [ 1, %81 ], [ %37, %86 ], [ %37, %96 ]
  %116 = phi i32 [ %35, %106 ], [ %35, %81 ], [ %89, %86 ], [ %104, %96 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  switch i32 %114, label %167 [
    i32 0, label %117
    i32 4, label %117
  ]

117:                                              ; preds = %34, %41, %74, %59, %113, %113
  %118 = phi i32 [ %37, %34 ], [ %115, %113 ], [ %115, %113 ], [ %37, %74 ], [ %37, %59 ], [ %37, %41 ]
  %119 = phi i32 [ %35, %34 ], [ %116, %113 ], [ %116, %113 ], [ %76, %74 ], [ %60, %59 ], [ %35, %41 ]
  %120 = add nsw i32 %38, -1
  %121 = getelementptr inbounds %struct.ref_s, ptr %36, i64 1
  %122 = icmp eq i32 %120, 0
  br i1 %122, label %123, label %34, !llvm.loop !46

123:                                              ; preds = %117
  %124 = icmp eq i32 %118, 0
  br label %125

125:                                              ; preds = %123, %28
  %126 = phi i1 [ true, %28 ], [ %124, %123 ]
  %127 = phi i32 [ undef, %28 ], [ %119, %123 ]
  br i1 %126, label %162, label %128

128:                                              ; preds = %125
  %129 = load i16, ptr %29, align 2, !tbaa !5
  %130 = icmp eq i16 %129, 0
  br i1 %130, label %162, label %131

131:                                              ; preds = %128
  %132 = zext i16 %129 to i32
  %133 = load ptr, ptr %8, align 8, !tbaa !5
  br label %134

134:                                              ; preds = %131, %157
  %135 = phi i32 [ %158, %157 ], [ %127, %131 ]
  %136 = phi ptr [ %160, %157 ], [ %133, %131 ]
  %137 = phi i32 [ %159, %157 ], [ %132, %131 ]
  %138 = getelementptr inbounds i8, ptr %136, i64 1
  %139 = load i8, ptr %138, align 1, !tbaa !5
  %140 = icmp eq i8 %139, 5
  br i1 %140, label %141, label %157

141:                                              ; preds = %134
  %142 = getelementptr inbounds %struct.ref_s, ptr %136, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %6)
  %144 = getelementptr inbounds i8, ptr %143, i64 1
  %145 = load i8, ptr %144, align 1, !tbaa !5
  %146 = icmp eq i8 %145, 5
  br i1 %146, label %155, label %147

147:                                              ; preds = %141
  %148 = load i16, ptr %143, align 8, !tbaa.struct !38
  %149 = getelementptr inbounds i8, ptr %143, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %6, ptr noundef nonnull align 2 dereferenceable(14) %149, i64 14, i1 false), !tbaa.struct !47
  %150 = and i16 %148, -129
  %151 = load i16, ptr %136, align 8, !tbaa !20
  %152 = and i16 %151, 128
  %153 = or disjoint i16 %152, %150
  store i16 %153, ptr %136, align 8, !tbaa.struct !38
  %154 = getelementptr inbounds i8, ptr %136, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %154, ptr noundef nonnull align 2 dereferenceable(14) %6, i64 14, i1 false), !tbaa.struct !47
  br label %155

155:                                              ; preds = %141, %147
  %156 = phi i32 [ %135, %147 ], [ -18, %141 ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %6)
  br i1 %146, label %167, label %157

157:                                              ; preds = %134, %155
  %158 = phi i32 [ %156, %155 ], [ %135, %134 ]
  %159 = add nsw i32 %137, -1
  %160 = getelementptr inbounds %struct.ref_s, ptr %136, i64 1
  %161 = icmp eq i32 %159, 0
  br i1 %161, label %162, label %134, !llvm.loop !48

162:                                              ; preds = %157, %128, %125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !38
  %163 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 5, i32 0, i32 6
  %164 = load i32, ptr %163, align 4, !tbaa !5
  %165 = trunc i32 %164 to i16
  %166 = getelementptr inbounds %struct.tas_s, ptr %1, i64 0, i32 1
  store i16 %165, ptr %166, align 2, !tbaa !29
  br label %167

167:                                              ; preds = %57, %74, %113, %155, %25, %162
  %168 = phi i32 [ 1, %162 ], [ %26, %25 ], [ %156, %155 ], [ %116, %113 ], [ %76, %74 ], [ %58, %57 ]
  ret i32 %168
}

declare i32 @name_ref(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @dict_find_name_by_index(i32 noundef) local_unnamed_addr #2

declare i32 @name_index(ptr noundef) local_unnamed_addr #2

declare i32 @dict_create(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dict_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 12}
!9 = !{!"scanner_state_s", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !11, i64 16, !6, i64 328}
!10 = !{!"int", !6, i64 0}
!11 = !{!"dynamic_area_s", !12, i64 0, !13, i64 16, !13, i64 24, !13, i64 32, !10, i64 40, !6, i64 44, !13, i64 304}
!12 = !{!"gs_string_s", !13, i64 0, !10, i64 8}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!15, !13, i64 0}
!15 = !{!"gs_dual_memory_s", !13, i64 0, !6, i64 8, !10, i64 40, !10, i64 44, !13, i64 48, !10, i64 56, !10, i64 60}
!16 = !{!9, !10, i64 56}
!17 = !{!9, !13, i64 48}
!18 = !{!9, !13, i64 40}
!19 = !{!9, !13, i64 32}
!20 = !{!21, !23, i64 0}
!21 = !{!"ref_s", !22, i64 0, !6, i64 8}
!22 = !{!"tas_s", !23, i64 0, !23, i64 2}
!23 = !{!"short", !6, i64 0}
!24 = !{!25, !13, i64 96}
!25 = !{!"gs_memory_s", !26, i64 0}
!26 = !{!"gs_memory_procs_s", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152}
!27 = !{!10, !10, i64 0}
!28 = !{!15, !10, i64 40}
!29 = !{!21, !23, i64 2}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = !{!33, !6, i64 0}
!33 = !{!"", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 4}
!34 = !{!25, !13, i64 112}
!35 = distinct !{!35, !31}
!36 = !{!15, !10, i64 60}
!37 = distinct !{!37, !31}
!38 = !{i64 0, i64 2, !39, i64 2, i64 2, !39, i64 8, i64 8, !40, i64 8, i64 2, !39, i64 8, i64 4, !42, i64 8, i64 8, !40, i64 8, i64 8, !44, i64 8, i64 8, !44, i64 8, i64 8, !44, i64 8, i64 8, !44, i64 8, i64 8, !44, i64 8, i64 8, !44, i64 8, i64 8, !44, i64 8, i64 8, !44, i64 8, i64 8, !44, i64 8, i64 8, !44, i64 8, i64 8, !44, i64 8, i64 8, !44, i64 8, i64 8, !44}
!39 = !{!23, !23, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"long", !6, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"float", !6, i64 0}
!44 = !{!13, !13, i64 0}
!45 = distinct !{!45, !31}
!46 = distinct !{!46, !31}
!47 = !{i64 0, i64 2, !39, i64 6, i64 8, !40, i64 6, i64 2, !39, i64 6, i64 4, !42, i64 6, i64 8, !40, i64 6, i64 8, !44, i64 6, i64 8, !44, i64 6, i64 8, !44, i64 6, i64 8, !44, i64 6, i64 8, !44, i64 6, i64 8, !44, i64 6, i64 8, !44, i64 6, i64 8, !44, i64 6, i64 8, !44, i64 6, i64 8, !44, i64 6, i64 8, !44, i64 6, i64 8, !44, i64 6, i64 8, !44}
!48 = distinct !{!48, !31}
