; ModuleID = 'gxctable.c'
source_filename = "gxctable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gx_color_lookup_table_s = type { i32, [4 x i32], i32, ptr }
%struct.gs_const_string_s = type { ptr, i32 }

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @gx_color_interpolate_nearest(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.gx_color_lookup_table_s, ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %56

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gx_color_lookup_table_s, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = load i32, ptr %1, align 8, !tbaa !12
  %11 = icmp sgt i32 %10, 3
  %12 = zext i1 %11 to i64
  %13 = getelementptr inbounds i64, ptr %0, i64 %12
  %14 = load i64, ptr %13, align 8, !tbaa !13
  %15 = shl i64 %14, 20
  %16 = add i64 %15, 2147483648
  %17 = ashr i64 %16, 32
  %18 = getelementptr inbounds %struct.gs_const_string_s, ptr %9, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !15
  %20 = getelementptr inbounds %struct.gx_color_lookup_table_s, ptr %1, i64 0, i32 1, i64 1
  %21 = getelementptr inbounds %struct.gx_color_lookup_table_s, ptr %1, i64 0, i32 1
  %22 = select i1 %11, ptr %20, ptr %21
  %23 = getelementptr inbounds i32, ptr %22, i64 2
  %24 = load i32, ptr %23, align 4, !tbaa !17
  %25 = getelementptr inbounds i64, ptr %13, i64 1
  %26 = load i64, ptr %25, align 8, !tbaa !13
  %27 = add nsw i64 %26, 2048
  %28 = lshr i64 %27, 12
  %29 = trunc i64 %28 to i32
  %30 = mul nsw i32 %24, %29
  %31 = getelementptr inbounds i64, ptr %13, i64 2
  %32 = load i64, ptr %31, align 8, !tbaa !13
  %33 = add nsw i64 %32, 2048
  %34 = lshr i64 %33, 12
  %35 = trunc i64 %34 to i32
  %36 = add nsw i32 %30, %35
  %37 = mul nsw i32 %36, %5
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, ptr %19, i64 %38
  %40 = zext nneg i32 %5 to i64
  br label %41

41:                                               ; preds = %7, %41
  %42 = phi i64 [ 0, %7 ], [ %53, %41 ]
  %43 = phi ptr [ %39, %7 ], [ %54, %41 ]
  %44 = load i8, ptr %43, align 1, !tbaa !18
  %45 = zext i8 %44 to i32
  %46 = shl nuw nsw i32 %45, 7
  %47 = lshr i32 %45, 1
  %48 = or disjoint i32 %46, %47
  %49 = lshr i32 %45, 5
  %50 = sub nsw i32 %48, %49
  %51 = trunc i32 %50 to i16
  %52 = getelementptr inbounds i16, ptr %2, i64 %42
  store i16 %51, ptr %52, align 2, !tbaa !19
  %53 = add nuw nsw i64 %42, 1
  %54 = getelementptr inbounds i8, ptr %43, i64 1
  %55 = icmp eq i64 %53, %40
  br i1 %55, label %56, label %41, !llvm.loop !21

56:                                               ; preds = %41, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @gx_color_interpolate_linear(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #2 {
  %4 = alloca %struct.gx_color_lookup_table_s, align 8
  %5 = alloca [4 x i16], align 2
  %6 = getelementptr inbounds %struct.gx_color_lookup_table_s, ptr %1, i64 0, i32 1
  %7 = getelementptr inbounds %struct.gx_color_lookup_table_s, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !5
  %9 = load i32, ptr %1, align 8, !tbaa !12
  %10 = icmp sgt i32 %9, 3
  br i1 %10, label %11, label %59

11:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #3
  %12 = load i64, ptr %0, align 8, !tbaa !13
  %13 = lshr i64 %12, 12
  %14 = trunc i64 %13 to i32
  store i32 3, ptr %4, align 8, !tbaa !12
  %15 = getelementptr inbounds %struct.gx_color_lookup_table_s, ptr %1, i64 0, i32 1, i64 2
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = getelementptr inbounds %struct.gx_color_lookup_table_s, ptr %4, i64 0, i32 1, i64 1
  store i32 %16, ptr %17, align 8, !tbaa !17
  %18 = getelementptr inbounds %struct.gx_color_lookup_table_s, ptr %1, i64 0, i32 1, i64 3
  %19 = load i32, ptr %18, align 4, !tbaa !17
  %20 = getelementptr inbounds %struct.gx_color_lookup_table_s, ptr %4, i64 0, i32 1, i64 2
  store i32 %19, ptr %20, align 4, !tbaa !17
  %21 = getelementptr inbounds %struct.gx_color_lookup_table_s, ptr %4, i64 0, i32 2
  store i32 %8, ptr %21, align 4, !tbaa !5
  %22 = getelementptr inbounds %struct.gx_color_lookup_table_s, ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !11
  %24 = getelementptr inbounds %struct.gx_color_lookup_table_s, ptr %1, i64 0, i32 1, i64 1
  %25 = load i32, ptr %24, align 4, !tbaa !17
  %26 = mul nsw i32 %25, %14
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.gs_const_string_s, ptr %23, i64 %27
  %29 = getelementptr inbounds %struct.gx_color_lookup_table_s, ptr %4, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !11
  %30 = getelementptr inbounds i64, ptr %0, i64 1
  call void @gx_color_interpolate_linear(ptr noundef nonnull %30, ptr noundef nonnull %4, ptr noundef %2)
  %31 = load i32, ptr %6, align 4, !tbaa !17
  %32 = add nsw i32 %31, -1
  %33 = icmp eq i32 %32, %14
  br i1 %33, label %229, label %34

34:                                               ; preds = %11
  %35 = load i32, ptr %24, align 4, !tbaa !17
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.gs_const_string_s, ptr %28, i64 %36
  store ptr %37, ptr %29, align 8, !tbaa !11
  call void @gx_color_interpolate_linear(ptr noundef nonnull %30, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %38 = icmp sgt i32 %8, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %34
  %40 = trunc i64 %12 to i32
  %41 = and i32 %40, 4095
  %42 = zext nneg i32 %8 to i64
  br label %43

43:                                               ; preds = %39, %43
  %44 = phi i64 [ 0, %39 ], [ %56, %43 ]
  %45 = getelementptr inbounds [4 x i16], ptr %5, i64 0, i64 %44
  %46 = load i16, ptr %45, align 2, !tbaa !19
  %47 = sext i16 %46 to i32
  %48 = getelementptr inbounds i16, ptr %2, i64 %44
  %49 = load i16, ptr %48, align 2, !tbaa !19
  %50 = sext i16 %49 to i32
  %51 = sub nsw i32 %47, %50
  %52 = mul nsw i32 %51, %41
  %53 = lshr i32 %52, 12
  %54 = trunc i32 %53 to i16
  %55 = add i16 %49, %54
  store i16 %55, ptr %48, align 2, !tbaa !19
  %56 = add nuw nsw i64 %44, 1
  %57 = icmp eq i64 %56, %42
  br i1 %57, label %58, label %43, !llvm.loop !23

58:                                               ; preds = %43, %34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #3
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #3
  br label %230

59:                                               ; preds = %3
  %60 = getelementptr inbounds i64, ptr %0, i64 2
  %61 = load i64, ptr %60, align 8, !tbaa !13
  %62 = lshr i64 %61, 12
  %63 = trunc i64 %62 to i32
  %64 = getelementptr inbounds %struct.gx_color_lookup_table_s, ptr %1, i64 0, i32 1, i64 2
  %65 = load i32, ptr %64, align 4, !tbaa !17
  %66 = add nsw i32 %65, -1
  %67 = icmp eq i32 %66, %63
  %68 = select i1 %67, i32 0, i32 %8
  %69 = getelementptr inbounds i64, ptr %0, i64 1
  %70 = load i64, ptr %69, align 8, !tbaa !13
  %71 = lshr i64 %70, 12
  %72 = trunc i64 %71 to i32
  %73 = getelementptr inbounds %struct.gx_color_lookup_table_s, ptr %1, i64 0, i32 1, i64 1
  %74 = load i32, ptr %73, align 4, !tbaa !17
  %75 = add nsw i32 %74, -1
  %76 = icmp eq i32 %75, %72
  %77 = mul nsw i32 %65, %8
  %78 = select i1 %76, i32 0, i32 %77
  %79 = mul nsw i32 %65, %72
  %80 = add nsw i32 %79, %63
  %81 = mul nsw i32 %80, %8
  %82 = add i32 %78, %68
  %83 = load i64, ptr %0, align 8, !tbaa !13
  %84 = lshr i64 %83, 12
  %85 = trunc i64 %84 to i32
  %86 = getelementptr inbounds %struct.gx_color_lookup_table_s, ptr %1, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !11
  %88 = shl i64 %84, 32
  %89 = ashr exact i64 %88, 32
  %90 = getelementptr inbounds %struct.gs_const_string_s, ptr %87, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !15
  %92 = zext i32 %81 to i64
  %93 = getelementptr inbounds i8, ptr %91, i64 %92
  %94 = load i32, ptr %6, align 4, !tbaa !17
  %95 = add nsw i32 %94, -1
  %96 = icmp eq i32 %95, %85
  br i1 %96, label %103, label %97

97:                                               ; preds = %59
  %98 = add i64 %88, 4294967296
  %99 = ashr exact i64 %98, 32
  %100 = getelementptr inbounds %struct.gs_const_string_s, ptr %87, i64 %99
  %101 = load ptr, ptr %100, align 8, !tbaa !15
  %102 = getelementptr inbounds i8, ptr %101, i64 %92
  br label %103

103:                                              ; preds = %59, %97
  %104 = phi ptr [ %102, %97 ], [ %93, %59 ]
  %105 = icmp sgt i32 %8, 0
  br i1 %105, label %106, label %230

106:                                              ; preds = %103
  %107 = zext nneg i32 %68 to i64
  %108 = zext i32 %78 to i64
  %109 = zext i32 %82 to i64
  %110 = trunc i64 %61 to i32
  %111 = and i32 %110, 4095
  %112 = trunc i64 %70 to i32
  %113 = and i32 %112, 4095
  %114 = trunc i64 %83 to i32
  %115 = and i32 %114, 4095
  %116 = zext nneg i32 %8 to i64
  br label %117

117:                                              ; preds = %106, %117
  %118 = phi i64 [ 0, %106 ], [ %225, %117 ]
  %119 = phi ptr [ %93, %106 ], [ %226, %117 ]
  %120 = phi ptr [ %104, %106 ], [ %227, %117 ]
  %121 = load i8, ptr %119, align 1, !tbaa !18
  %122 = zext i8 %121 to i32
  %123 = shl nuw nsw i32 %122, 7
  %124 = lshr i32 %122, 1
  %125 = or disjoint i32 %123, %124
  %126 = lshr i32 %122, 5
  %127 = sub nsw i32 %125, %126
  %128 = getelementptr inbounds i8, ptr %119, i64 %107
  %129 = load i8, ptr %128, align 1, !tbaa !18
  %130 = zext i8 %129 to i32
  %131 = shl nuw nsw i32 %130, 7
  %132 = lshr i32 %130, 1
  %133 = or disjoint i32 %131, %132
  %134 = lshr i32 %130, 5
  %135 = getelementptr inbounds i8, ptr %119, i64 %108
  %136 = load i8, ptr %135, align 1, !tbaa !18
  %137 = zext i8 %136 to i32
  %138 = shl nuw nsw i32 %137, 7
  %139 = lshr i32 %137, 1
  %140 = or disjoint i32 %138, %139
  %141 = lshr i32 %137, 5
  %142 = sub nsw i32 %140, %141
  %143 = getelementptr inbounds i8, ptr %119, i64 %109
  %144 = load i8, ptr %143, align 1, !tbaa !18
  %145 = zext i8 %144 to i32
  %146 = shl nuw nsw i32 %145, 7
  %147 = lshr i32 %145, 1
  %148 = or disjoint i32 %146, %147
  %149 = lshr i32 %145, 5
  %150 = load i8, ptr %120, align 1, !tbaa !18
  %151 = zext i8 %150 to i32
  %152 = shl nuw nsw i32 %151, 7
  %153 = lshr i32 %151, 1
  %154 = or disjoint i32 %152, %153
  %155 = lshr i32 %151, 5
  %156 = sub nsw i32 %154, %155
  %157 = getelementptr inbounds i8, ptr %120, i64 %107
  %158 = load i8, ptr %157, align 1, !tbaa !18
  %159 = zext i8 %158 to i32
  %160 = shl nuw nsw i32 %159, 7
  %161 = lshr i32 %159, 1
  %162 = or disjoint i32 %160, %161
  %163 = lshr i32 %159, 5
  %164 = getelementptr inbounds i8, ptr %120, i64 %108
  %165 = load i8, ptr %164, align 1, !tbaa !18
  %166 = zext i8 %165 to i32
  %167 = shl nuw nsw i32 %166, 7
  %168 = lshr i32 %166, 1
  %169 = or disjoint i32 %167, %168
  %170 = lshr i32 %166, 5
  %171 = sub nsw i32 %169, %170
  %172 = getelementptr inbounds i8, ptr %120, i64 %109
  %173 = load i8, ptr %172, align 1, !tbaa !18
  %174 = zext i8 %173 to i32
  %175 = shl nuw nsw i32 %174, 7
  %176 = lshr i32 %174, 1
  %177 = or disjoint i32 %175, %176
  %178 = lshr i32 %174, 5
  %179 = add nsw i32 %134, %127
  %180 = sub nsw i32 %133, %179
  %181 = mul nsw i32 %180, %111
  %182 = lshr i32 %181, 12
  %183 = add nsw i32 %182, %127
  %184 = add nsw i32 %149, %142
  %185 = sub nsw i32 %148, %184
  %186 = mul nsw i32 %185, %111
  %187 = lshr i32 %186, 12
  %188 = add nsw i32 %187, %142
  %189 = add nsw i32 %163, %156
  %190 = sub nsw i32 %162, %189
  %191 = mul nsw i32 %190, %111
  %192 = lshr i32 %191, 12
  %193 = add nsw i32 %192, %156
  %194 = add nsw i32 %178, %171
  %195 = sub nsw i32 %177, %194
  %196 = mul nsw i32 %195, %111
  %197 = lshr i32 %196, 12
  %198 = add nsw i32 %197, %171
  %199 = shl i32 %183, 16
  %200 = ashr exact i32 %199, 16
  %201 = shl i32 %188, 16
  %202 = ashr exact i32 %201, 16
  %203 = sub nsw i32 %202, %200
  %204 = mul nsw i32 %203, %113
  %205 = lshr i32 %204, 12
  %206 = add nsw i32 %205, %183
  %207 = shl i32 %193, 16
  %208 = ashr exact i32 %207, 16
  %209 = shl i32 %198, 16
  %210 = ashr exact i32 %209, 16
  %211 = sub nsw i32 %210, %208
  %212 = mul nsw i32 %211, %113
  %213 = lshr i32 %212, 12
  %214 = add nsw i32 %213, %193
  %215 = shl i32 %206, 16
  %216 = ashr exact i32 %215, 16
  %217 = shl i32 %214, 16
  %218 = ashr exact i32 %217, 16
  %219 = sub nsw i32 %218, %216
  %220 = mul nsw i32 %219, %115
  %221 = lshr i32 %220, 12
  %222 = add nsw i32 %221, %206
  %223 = trunc i32 %222 to i16
  %224 = getelementptr inbounds i16, ptr %2, i64 %118
  store i16 %223, ptr %224, align 2, !tbaa !19
  %225 = add nuw nsw i64 %118, 1
  %226 = getelementptr inbounds i8, ptr %119, i64 1
  %227 = getelementptr inbounds i8, ptr %120, i64 1
  %228 = icmp eq i64 %225, %116
  br i1 %228, label %230, label %117, !llvm.loop !24

229:                                              ; preds = %11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #3
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #3
  br label %230

230:                                              ; preds = %117, %103, %58, %229
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 20}
!6 = !{!"gx_color_lookup_table_s", !7, i64 0, !8, i64 4, !7, i64 20, !10, i64 24}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!6, !10, i64 24}
!12 = !{!6, !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !8, i64 0}
!15 = !{!16, !10, i64 0}
!16 = !{!"gs_const_string_s", !10, i64 0, !7, i64 8}
!17 = !{!7, !7, i64 0}
!18 = !{!8, !8, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"short", !8, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !22}
