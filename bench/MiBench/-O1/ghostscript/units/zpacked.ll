; ModuleID = 'zpacked.c'
source_filename = "zpacked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.op_def = type { ptr, ptr }

@o_stack = external global %struct.ref_stack_s, align 8
@.str = private unnamed_addr constant [12 x i8] c"packedarray\00", align 1
@gs_imemory = external global %struct.gs_dual_memory_s, align 8
@zpacked_op_defs.op_defs_ = internal constant [4 x %struct.op_def] [%struct.op_def { ptr @.str.1, ptr @zcurrentpacking }, %struct.op_def { ptr @.str.2, ptr @zpackedarray }, %struct.op_def { ptr @.str.3, ptr @zsetpacking }, %struct.op_def zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [16 x i8] c"0currentpacking\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"1packedarray\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"1setpacking\00", align 1
@ref_array_packing = external global %struct.ref_s, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"setpacking\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @zpackedarray(ptr noundef %0) #0 {
  %2 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6
  %3 = getelementptr inbounds i8, ptr %0, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !5
  %5 = icmp eq i8 %4, 11
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @check_type_failed(ptr noundef %0) #6
  br label %33

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !5
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !8
  %14 = ptrtoint ptr %0 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = ashr exact i64 %16, 4
  %18 = icmp sgt i64 %10, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = tail call i32 @ref_stack_count(ptr noundef nonnull @o_stack) #6
  %21 = zext i32 %20 to i64
  %22 = icmp slt i64 %10, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %19, %12
  %24 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %25 = getelementptr inbounds %struct.ref_s, ptr %24, i64 -1
  store ptr %25, ptr @o_stack, align 8, !tbaa !15
  %26 = load i64, ptr %9, align 8, !tbaa !5
  %27 = trunc i64 %26 to i32
  %28 = call i32 @make_packed_array(ptr noundef nonnull %2, ptr noundef nonnull @o_stack, i32 noundef %27, ptr noundef nonnull @.str), !range !16
  %29 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %30 = getelementptr inbounds %struct.ref_s, ptr %29, i64 1
  store ptr %30, ptr @o_stack, align 8, !tbaa !15
  %31 = icmp sgt i32 %28, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !17
  br label %33

33:                                               ; preds = %23, %32, %8, %19, %6
  %34 = phi i32 [ %7, %6 ], [ -15, %19 ], [ -15, %8 ], [ %28, %32 ], [ %28, %23 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6
  ret i32 %34
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #2

declare i32 @ref_stack_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @make_packed_array(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ref_s, align 8
  %6 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %83, label %8

8:                                                ; preds = %4
  %9 = zext i32 %2 to i64
  br label %10

10:                                               ; preds = %8, %78
  %11 = phi i64 [ %9, %8 ], [ %16, %78 ]
  %12 = phi i32 [ 0, %8 ], [ %81, %78 ]
  %13 = phi i32 [ 0, %8 ], [ %80, %78 ]
  %14 = phi i32 [ 0, %8 ], [ %79, %78 ]
  %15 = add nsw i64 %11, -1
  %16 = add nsw i64 %11, -1
  %17 = tail call ptr @ref_stack_index(ptr noundef %1, i64 noundef %15) #6
  %18 = load i16, ptr %17, align 8, !tbaa !26
  %19 = icmp ugt i16 %18, 5375
  br i1 %19, label %23, label %20

20:                                               ; preds = %10
  %21 = getelementptr inbounds i8, ptr %17, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !5
  br label %23

23:                                               ; preds = %10, %20
  %24 = phi i8 [ %22, %20 ], [ 15, %10 ]
  switch i8 %24, label %60 [
    i8 13, label %25
    i8 11, label %30
    i8 20, label %37
    i8 15, label %41
  ]

25:                                               ; preds = %23
  %26 = tail call i32 @name_index(ptr noundef nonnull %17) #6
  %27 = icmp ugt i32 %26, 4094
  br i1 %27, label %64, label %28

28:                                               ; preds = %25
  %29 = add i32 %12, 1
  br label %78

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.ref_s, ptr %17, i64 0, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !5
  %33 = add i64 %32, -2048
  %34 = icmp ult i64 %33, -4096
  br i1 %34, label %64, label %35

35:                                               ; preds = %30
  %36 = add i32 %12, 1
  br label %78

37:                                               ; preds = %23
  %38 = and i16 %18, 12
  %39 = zext nneg i16 %38 to i32
  %40 = icmp ult i32 %6, %39
  br i1 %40, label %215, label %41

41:                                               ; preds = %37, %23
  %42 = and i16 %18, 128
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.tas_s, ptr %17, i64 0, i32 1
  %46 = load i16, ptr %45, align 2, !tbaa !27
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = tail call zeroext i16 @op_find_index(ptr noundef nonnull %17) #6
  br label %50

50:                                               ; preds = %44, %48
  %51 = phi i16 [ %49, %48 ], [ %46, %44 ]
  %52 = add i16 %51, -4096
  %53 = icmp ult i16 %52, -4095
  %54 = select i1 %53, i32 5, i32 0
  br label %55

55:                                               ; preds = %50, %41
  %56 = phi i32 [ 5, %41 ], [ %54, %50 ]
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = add i32 %12, 1
  br label %78

60:                                               ; preds = %23
  %61 = and i16 %18, 12
  %62 = zext nneg i16 %61 to i32
  %63 = icmp ult i32 %6, %62
  br i1 %63, label %215, label %64

64:                                               ; preds = %55, %60, %30, %25
  %65 = icmp eq i32 %13, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = sub i32 0, %12
  %68 = and i32 %67, 3
  br label %73

69:                                               ; preds = %64
  %70 = sub i32 %12, %13
  %71 = and i32 %70, 3
  %72 = mul nuw nsw i32 %71, 7
  br label %73

73:                                               ; preds = %69, %66
  %74 = phi i32 [ %68, %66 ], [ %14, %69 ]
  %75 = phi i32 [ %68, %66 ], [ %72, %69 ]
  %76 = add i32 %12, 8
  %77 = add i32 %76, %75
  br label %78

78:                                               ; preds = %73, %58, %35, %28
  %79 = phi i32 [ %74, %73 ], [ %14, %58 ], [ %14, %35 ], [ %14, %28 ]
  %80 = phi i32 [ %77, %73 ], [ %13, %58 ], [ %13, %35 ], [ %13, %28 ]
  %81 = phi i32 [ %77, %73 ], [ %59, %58 ], [ %36, %35 ], [ %29, %28 ]
  %82 = icmp eq i64 %15, 0
  br i1 %82, label %83, label %10, !llvm.loop !28

83:                                               ; preds = %78, %4
  %84 = phi i32 [ 0, %4 ], [ %79, %78 ]
  %85 = phi i32 [ 0, %4 ], [ %81, %78 ]
  %86 = sub i32 0, %85
  %87 = and i32 %86, 7
  %88 = load ptr, ptr @gs_imemory, align 8, !tbaa !30
  %89 = add i32 %87, %85
  %90 = lshr i32 %89, 3
  %91 = call i32 @gs_alloc_ref_array(ptr noundef %88, ptr noundef nonnull %5, i32 noundef 0, i32 noundef %90, ptr noundef %3) #6
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %215, label %93

93:                                               ; preds = %83
  %94 = getelementptr inbounds %struct.ref_s, ptr %5, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !5
  %96 = icmp eq i32 %84, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %102, %93
  %98 = phi ptr [ %95, %93 ], [ %105, %102 ]
  %99 = icmp eq i32 %2, 0
  br i1 %99, label %193, label %100

100:                                              ; preds = %97
  %101 = zext i32 %2 to i64
  br label %108

102:                                              ; preds = %93, %102
  %103 = phi ptr [ %105, %102 ], [ %95, %93 ]
  %104 = phi i32 [ %106, %102 ], [ %84, %93 ]
  %105 = getelementptr inbounds i16, ptr %103, i64 1
  store i16 24576, ptr %103, align 2, !tbaa !18
  %106 = add nsw i32 %104, -1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %97, label %102, !llvm.loop !31

108:                                              ; preds = %100, %189
  %109 = phi i64 [ %101, %100 ], [ %113, %189 ]
  %110 = phi ptr [ %98, %100 ], [ %191, %189 ]
  %111 = phi ptr [ %95, %100 ], [ %190, %189 ]
  %112 = add nsw i64 %109, -1
  %113 = add nsw i64 %109, -1
  %114 = call ptr @ref_stack_index(ptr noundef %1, i64 noundef %112) #6
  %115 = load i16, ptr %114, align 8, !tbaa !26
  %116 = icmp ugt i16 %115, 5375
  br i1 %116, label %120, label %117

117:                                              ; preds = %108
  %118 = getelementptr inbounds i8, ptr %114, i64 1
  %119 = load i8, ptr %118, align 1, !tbaa !5
  br label %120

120:                                              ; preds = %108, %117
  %121 = phi i8 [ %119, %117 ], [ 15, %108 ]
  switch i8 %121, label %163 [
    i8 13, label %122
    i8 11, label %135
    i8 20, label %144
    i8 15, label %144
  ]

122:                                              ; preds = %120
  %123 = call i32 @name_index(ptr noundef nonnull %114) #6
  %124 = icmp ult i32 %123, 4095
  br i1 %124, label %125, label %133

125:                                              ; preds = %122
  %126 = load i16, ptr %114, align 8, !tbaa !26
  %127 = and i16 %126, 128
  %128 = icmp eq i16 %127, 0
  %129 = select i1 %128, i32 49152, i32 57344
  %130 = or disjoint i32 %129, %123
  %131 = trunc i32 %130 to i16
  %132 = getelementptr inbounds i16, ptr %110, i64 1
  store i16 %131, ptr %110, align 2, !tbaa !18
  br label %133

133:                                              ; preds = %122, %125
  %134 = phi ptr [ %132, %125 ], [ %110, %122 ]
  br i1 %124, label %189, label %163

135:                                              ; preds = %120
  %136 = getelementptr inbounds %struct.ref_s, ptr %114, i64 0, i32 1
  %137 = load i64, ptr %136, align 8, !tbaa !5
  %138 = add i64 %137, -2048
  %139 = icmp ult i64 %138, -4096
  br i1 %139, label %163, label %140

140:                                              ; preds = %135
  %141 = trunc i64 %137 to i16
  %142 = add i16 %141, 26624
  %143 = getelementptr inbounds i16, ptr %110, i64 1
  store i16 %142, ptr %110, align 2, !tbaa !18
  br label %189

144:                                              ; preds = %120, %120
  %145 = and i16 %115, 128
  %146 = icmp eq i16 %145, 0
  br i1 %146, label %160, label %147

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.tas_s, ptr %114, i64 0, i32 1
  %149 = load i16, ptr %148, align 2, !tbaa !27
  %150 = icmp eq i16 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = call zeroext i16 @op_find_index(ptr noundef nonnull %114) #6
  br label %153

153:                                              ; preds = %147, %151
  %154 = phi i16 [ %152, %151 ], [ %149, %147 ]
  %155 = add i16 %154, -4096
  %156 = icmp ult i16 %155, -4095
  br i1 %156, label %160, label %157

157:                                              ; preds = %153
  %158 = or disjoint i16 %154, 16384
  %159 = getelementptr inbounds i16, ptr %110, i64 1
  store i16 %158, ptr %110, align 2, !tbaa !18
  br label %160

160:                                              ; preds = %153, %144, %157
  %161 = phi ptr [ %159, %157 ], [ %110, %144 ], [ %110, %153 ]
  %162 = phi i1 [ true, %157 ], [ false, %144 ], [ false, %153 ]
  br i1 %162, label %189, label %163

163:                                              ; preds = %160, %133, %135, %120
  %164 = phi ptr [ %110, %120 ], [ %161, %160 ], [ %110, %135 ], [ %134, %133 ]
  %165 = ptrtoint ptr %164 to i64
  %166 = ptrtoint ptr %111 to i64
  %167 = sub i64 %165, %166
  %168 = trunc i64 %167 to i32
  %169 = lshr i32 %168, 1
  %170 = and i32 %169, 3
  %171 = mul nuw nsw i32 %170, 7
  %172 = zext nneg i32 %171 to i64
  %173 = getelementptr inbounds i16, ptr %164, i64 %172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %173, ptr noundef nonnull align 8 dereferenceable(16) %114, i64 16, i1 false), !tbaa.struct !17
  %174 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !32
  %175 = load i16, ptr %173, align 8, !tbaa !26
  %176 = trunc i32 %174 to i16
  %177 = or i16 %175, %176
  store i16 %177, ptr %173, align 8, !tbaa !26
  %178 = icmp eq i32 %170, 0
  br i1 %178, label %187, label %179

179:                                              ; preds = %163, %179
  %180 = phi ptr [ %185, %179 ], [ %173, %163 ]
  %181 = phi ptr [ %184, %179 ], [ %164, %163 ]
  %182 = phi i32 [ %183, %179 ], [ %170, %163 ]
  %183 = add nsw i32 %182, -1
  %184 = getelementptr inbounds i16, ptr %181, i64 -1
  %185 = getelementptr inbounds %struct.ref_s, ptr %180, i64 -1
  call void @packed_get(ptr noundef nonnull %184, ptr noundef nonnull %185) #6
  %186 = icmp sgt i32 %182, 1
  br i1 %186, label %179, label %187, !llvm.loop !33

187:                                              ; preds = %179, %163
  %188 = getelementptr inbounds i16, ptr %173, i64 8
  br label %189

189:                                              ; preds = %160, %133, %187, %140
  %190 = phi ptr [ %188, %187 ], [ %111, %160 ], [ %111, %140 ], [ %111, %133 ]
  %191 = phi ptr [ %188, %187 ], [ %161, %160 ], [ %143, %140 ], [ %134, %133 ]
  %192 = icmp eq i64 %112, 0
  br i1 %192, label %193, label %108, !llvm.loop !34

193:                                              ; preds = %189, %97
  %194 = phi ptr [ %98, %97 ], [ %191, %189 ]
  %195 = zext i32 %2 to i64
  %196 = getelementptr inbounds i16, ptr %98, i64 %195
  %197 = icmp eq ptr %194, %196
  %198 = select i1 %197, i32 1536, i32 1280
  %199 = icmp eq i32 %87, 0
  br i1 %199, label %206, label %200

200:                                              ; preds = %193, %200
  %201 = phi i32 [ %204, %200 ], [ %87, %193 ]
  %202 = phi ptr [ %203, %200 ], [ %194, %193 ]
  %203 = getelementptr inbounds i16, ptr %202, i64 1
  store i16 24576, ptr %202, align 2, !tbaa !18
  %204 = add nsw i32 %201, -1
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %200, !llvm.loop !35

206:                                              ; preds = %200, %193
  call void @ref_stack_pop(ptr noundef %1, i32 noundef %2) #6
  %207 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  store ptr %98, ptr %207, align 8, !tbaa !5
  %208 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !32
  %209 = or i32 %6, %208
  %210 = or i32 %209, 96
  %211 = add i32 %210, %198
  %212 = trunc i32 %211 to i16
  store i16 %212, ptr %0, align 8, !tbaa !26
  %213 = trunc i32 %2 to i16
  %214 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  store i16 %213, ptr %214, align 2, !tbaa !27
  br label %215

215:                                              ; preds = %60, %37, %83, %206
  %216 = phi i32 [ 0, %206 ], [ %91, %83 ], [ -7, %37 ], [ -7, %60 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  ret i32 %216
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @ref_stack_index(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @name_index(ptr noundef) local_unnamed_addr #2

declare zeroext i16 @op_find_index(ptr noundef) local_unnamed_addr #2

declare i32 @gs_alloc_ref_array(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @packed_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ref_stack_pop(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zpacked_op_defs() local_unnamed_addr #4 {
  ret ptr @zpacked_op_defs.op_defs_
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @zcurrentpacking(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !36
  %4 = icmp ugt ptr %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !37
  br label %7

6:                                                ; preds = %1
  store ptr %2, ptr @o_stack, align 8, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) @ref_array_packing, i64 16, i1 false), !tbaa.struct !17
  br label %7

7:                                                ; preds = %6, %5
  %8 = phi i32 [ -16, %5 ], [ 0, %6 ]
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetpacking(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  %4 = icmp eq i8 %3, 1
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #6
  br label %22

7:                                                ; preds = %1
  %8 = load i16, ptr @ref_array_packing, align 8, !tbaa !26
  %9 = zext i16 %8 to i32
  %10 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 5), align 8, !tbaa !38
  %11 = and i32 %10, %9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = tail call i32 @alloc_save_change(ptr noundef nonnull @gs_imemory, ptr noundef null, ptr noundef nonnull @ref_array_packing, ptr noundef nonnull @.str.4) #6
  br label %15

15:                                               ; preds = %7, %13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @ref_array_packing, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !17
  %16 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !32
  %17 = load i16, ptr @ref_array_packing, align 8, !tbaa !26
  %18 = trunc i32 %16 to i16
  %19 = or i16 %17, %18
  store i16 %19, ptr @ref_array_packing, align 8, !tbaa !26
  %20 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %21 = getelementptr inbounds %struct.ref_s, ptr %20, i64 -1
  store ptr %21, ptr @o_stack, align 8, !tbaa !15
  br label %22

22:                                               ; preds = %15, %5
  %23 = phi i32 [ 0, %15 ], [ %6, %5 ]
  ret i32 %23
}

declare i32 @alloc_save_change(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = !{!9, !10, i64 8}
!9 = !{!"ref_stack_s", !10, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !14, i64 40, !14, i64 44, !11, i64 48, !14, i64 64, !14, i64 68, !14, i64 72, !14, i64 76, !14, i64 80, !11, i64 88, !14, i64 104, !14, i64 108, !14, i64 112, !10, i64 120}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"ref_s", !12, i64 0, !6, i64 8}
!12 = !{!"tas_s", !13, i64 0, !13, i64 2}
!13 = !{!"short", !6, i64 0}
!14 = !{!"int", !6, i64 0}
!15 = !{!9, !10, i64 0}
!16 = !{i32 -2147483648, i32 1}
!17 = !{i64 0, i64 2, !18, i64 2, i64 2, !18, i64 8, i64 8, !19, i64 8, i64 2, !18, i64 8, i64 4, !21, i64 8, i64 8, !19, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23}
!18 = !{!13, !13, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"long", !6, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"float", !6, i64 0}
!23 = !{!10, !10, i64 0}
!24 = !{!25, !14, i64 40}
!25 = !{!"gs_dual_memory_s", !10, i64 0, !6, i64 8, !14, i64 40, !14, i64 44, !10, i64 48, !14, i64 56, !14, i64 60}
!26 = !{!11, !13, i64 0}
!27 = !{!11, !13, i64 2}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.unroll.disable"}
!30 = !{!25, !10, i64 0}
!31 = distinct !{!31, !29}
!32 = !{!25, !14, i64 60}
!33 = distinct !{!33, !29}
!34 = distinct !{!34, !29}
!35 = distinct !{!35, !29}
!36 = !{!9, !10, i64 16}
!37 = !{!9, !14, i64 64}
!38 = !{!25, !14, i64 56}
