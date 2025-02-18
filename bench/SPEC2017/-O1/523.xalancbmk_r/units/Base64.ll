; ModuleID = 'Base64.cpp'
source_filename = "Base64.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }

$_ZN11xercesc_2_712ArrayJanitorIhED2Ev = comdat any

$__clang_call_terminate = comdat any

@_ZN11xercesc_2_76Base6414base64AlphabetE = dso_local local_unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16
@_ZN11xercesc_2_76Base6413base64InverseE = dso_local local_unnamed_addr global [255 x i8] zeroinitializer, align 16
@_ZN11xercesc_2_76Base6413base64PaddingE = dso_local local_unnamed_addr constant i8 61, align 1
@_ZN11xercesc_2_76Base6413isInitializedE = dso_local local_unnamed_addr global i8 0, align 1
@_ZN11xercesc_2_76Base6412quadsPerLineE = dso_local local_unnamed_addr constant i32 15, align 4
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E = external local_unnamed_addr global [65536 x i8], align 16

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_76Base646encodeEPKhjPjPNS_13MemoryManagerE(ptr noundef readonly %0, i32 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #1 align 2 !prof !34 {
  %5 = load i8, ptr @_ZN11xercesc_2_76Base6413isInitializedE, align 1, !tbaa !35, !range !39, !noundef !40
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %4
  store i8 1, ptr @_ZN11xercesc_2_76Base6413isInitializedE, align 1, !tbaa !35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(255) @_ZN11xercesc_2_76Base6413base64InverseE, i8 -1, i64 255, i1 false), !tbaa !41
  br label %8

8:                                                ; preds = %7, %8
  %9 = phi i64 [ 0, %7 ], [ %15, %8 ]
  %10 = trunc i64 %9 to i8
  %11 = getelementptr inbounds [65 x i8], ptr @_ZN11xercesc_2_76Base6414base64AlphabetE, i64 0, i64 %9
  %12 = load i8, ptr %11, align 1, !tbaa !41
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76Base6413base64InverseE, i64 0, i64 %13
  store i8 %10, ptr %14, align 1, !tbaa !41
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, 64
  br i1 %16, label %17, label %8, !llvm.loop !42

17:                                               ; preds = %8, %4
  %18 = icmp ne ptr %0, null
  %19 = icmp ne ptr %2, null
  %20 = and i1 %18, %19
  br i1 %20, label %21, label %177

21:                                               ; preds = %17
  %22 = add i32 %1, 2
  %23 = udiv i32 %22, 3
  %24 = icmp ult i32 %22, 3
  br i1 %24, label %177, label %25

25:                                               ; preds = %21
  %26 = add nuw nsw i32 %23, 14
  %27 = udiv i32 %26, 15
  %28 = shl nsw i32 %23, 2
  %29 = or disjoint i32 %28, 1
  %30 = add nuw i32 %29, %27
  %31 = icmp eq ptr %3, null
  %32 = zext nneg i32 %30 to i64
  br i1 %31, label %38, label %33

33:                                               ; preds = %25
  %34 = load ptr, ptr %3, align 8, !tbaa !45
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %32)
  br label %40

38:                                               ; preds = %25
  %39 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %32) #10
  br label %40

40:                                               ; preds = %33, %38
  %41 = phi ptr [ %37, %33 ], [ %39, %38 ]
  %42 = icmp ugt i32 %22, 5
  br i1 %42, label %43, label %103

43:                                               ; preds = %40
  %44 = getelementptr i8, ptr %0, i64 1
  %45 = getelementptr i8, ptr %0, i64 2
  br label %46

46:                                               ; preds = %43, %97
  %47 = phi i64 [ %61, %97 ], [ 0, %43 ]
  %48 = phi i32 [ %99, %97 ], [ 1, %43 ]
  %49 = phi i32 [ %98, %97 ], [ 0, %43 ]
  %50 = getelementptr inbounds i8, ptr %0, i64 %47
  %51 = load i8, ptr %50, align 1, !tbaa !41
  %52 = lshr i8 %51, 2
  %53 = shl i8 %51, 4
  %54 = and i8 %53, 48
  %55 = getelementptr i8, ptr %44, i64 %47
  %56 = load i8, ptr %55, align 1, !tbaa !41
  %57 = lshr i8 %56, 4
  %58 = or disjoint i8 %54, %57
  %59 = shl i8 %56, 2
  %60 = and i8 %59, 60
  %61 = add nuw nsw i64 %47, 3
  %62 = getelementptr i8, ptr %45, i64 %47
  %63 = load i8, ptr %62, align 1, !tbaa !41
  %64 = lshr i8 %63, 6
  %65 = or disjoint i8 %60, %64
  %66 = and i8 %63, 63
  %67 = zext nneg i8 %52 to i64
  %68 = getelementptr inbounds [65 x i8], ptr @_ZN11xercesc_2_76Base6414base64AlphabetE, i64 0, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !41
  %70 = add i32 %49, 1
  %71 = zext i32 %49 to i64
  %72 = getelementptr inbounds i8, ptr %41, i64 %71
  store i8 %69, ptr %72, align 1, !tbaa !41
  %73 = zext nneg i8 %58 to i64
  %74 = getelementptr inbounds [65 x i8], ptr @_ZN11xercesc_2_76Base6414base64AlphabetE, i64 0, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !41
  %76 = add i32 %49, 2
  %77 = zext i32 %70 to i64
  %78 = getelementptr inbounds i8, ptr %41, i64 %77
  store i8 %75, ptr %78, align 1, !tbaa !41
  %79 = zext nneg i8 %65 to i64
  %80 = getelementptr inbounds [65 x i8], ptr @_ZN11xercesc_2_76Base6414base64AlphabetE, i64 0, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !41
  %82 = add i32 %49, 3
  %83 = zext i32 %76 to i64
  %84 = getelementptr inbounds i8, ptr %41, i64 %83
  store i8 %81, ptr %84, align 1, !tbaa !41
  %85 = zext nneg i8 %66 to i64
  %86 = getelementptr inbounds [65 x i8], ptr @_ZN11xercesc_2_76Base6414base64AlphabetE, i64 0, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !41
  %88 = add i32 %49, 4
  %89 = zext i32 %82 to i64
  %90 = getelementptr inbounds i8, ptr %41, i64 %89
  store i8 %87, ptr %90, align 1, !tbaa !41
  %91 = urem i32 %48, 15
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %46
  %94 = add i32 %49, 5
  %95 = zext i32 %88 to i64
  %96 = getelementptr inbounds i8, ptr %41, i64 %95
  store i8 10, ptr %96, align 1, !tbaa !41
  br label %97

97:                                               ; preds = %46, %93
  %98 = phi i32 [ %94, %93 ], [ %88, %46 ]
  %99 = add nuw nsw i32 %48, 1
  %100 = icmp eq i32 %99, %23
  br i1 %100, label %101, label %46, !llvm.loop !47

101:                                              ; preds = %97
  %102 = trunc i64 %61 to i32
  br label %103

103:                                              ; preds = %101, %40
  %104 = phi i32 [ 0, %40 ], [ %102, %101 ]
  %105 = phi i32 [ 0, %40 ], [ %98, %101 ]
  %106 = add i32 %104, 1
  %107 = zext i32 %104 to i64
  %108 = getelementptr inbounds i8, ptr %0, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !41
  %110 = lshr i8 %109, 2
  %111 = shl i8 %109, 4
  %112 = and i8 %111, 48
  %113 = zext nneg i8 %110 to i64
  %114 = getelementptr inbounds [65 x i8], ptr @_ZN11xercesc_2_76Base6414base64AlphabetE, i64 0, i64 %113
  %115 = load i8, ptr %114, align 1, !tbaa !41
  %116 = add i32 %105, 1
  %117 = zext i32 %105 to i64
  %118 = getelementptr inbounds i8, ptr %41, i64 %117
  store i8 %115, ptr %118, align 1, !tbaa !41
  %119 = icmp ult i32 %106, %1
  br i1 %119, label %120, label %157

120:                                              ; preds = %103
  %121 = add i32 %104, 2
  %122 = zext i32 %106 to i64
  %123 = getelementptr inbounds i8, ptr %0, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !41
  %125 = lshr i8 %124, 4
  %126 = or disjoint i8 %125, %112
  %127 = shl i8 %124, 2
  %128 = and i8 %127, 60
  %129 = zext nneg i8 %126 to i64
  %130 = getelementptr inbounds [65 x i8], ptr @_ZN11xercesc_2_76Base6414base64AlphabetE, i64 0, i64 %129
  %131 = load i8, ptr %130, align 1, !tbaa !41
  %132 = add i32 %105, 2
  %133 = zext i32 %116 to i64
  %134 = getelementptr inbounds i8, ptr %41, i64 %133
  store i8 %131, ptr %134, align 1, !tbaa !41
  %135 = icmp ult i32 %121, %1
  br i1 %135, label %136, label %151

136:                                              ; preds = %120
  %137 = zext i32 %121 to i64
  %138 = getelementptr inbounds i8, ptr %0, i64 %137
  %139 = load i8, ptr %138, align 1, !tbaa !41
  %140 = lshr i8 %139, 6
  %141 = or disjoint i8 %140, %128
  %142 = and i8 %139, 63
  %143 = zext nneg i8 %141 to i64
  %144 = getelementptr inbounds [65 x i8], ptr @_ZN11xercesc_2_76Base6414base64AlphabetE, i64 0, i64 %143
  %145 = load i8, ptr %144, align 1, !tbaa !41
  %146 = zext i32 %132 to i64
  %147 = getelementptr inbounds i8, ptr %41, i64 %146
  store i8 %145, ptr %147, align 1, !tbaa !41
  %148 = zext nneg i8 %142 to i64
  %149 = getelementptr inbounds [65 x i8], ptr @_ZN11xercesc_2_76Base6414base64AlphabetE, i64 0, i64 %148
  %150 = load i8, ptr %149, align 1, !tbaa !41
  br label %166

151:                                              ; preds = %120
  %152 = zext nneg i8 %128 to i64
  %153 = getelementptr inbounds [65 x i8], ptr @_ZN11xercesc_2_76Base6414base64AlphabetE, i64 0, i64 %152
  %154 = load i8, ptr %153, align 4, !tbaa !41
  %155 = zext i32 %132 to i64
  %156 = getelementptr inbounds i8, ptr %41, i64 %155
  store i8 %154, ptr %156, align 1, !tbaa !41
  br label %166

157:                                              ; preds = %103
  %158 = zext nneg i8 %112 to i64
  %159 = getelementptr inbounds [65 x i8], ptr @_ZN11xercesc_2_76Base6414base64AlphabetE, i64 0, i64 %158
  %160 = load i8, ptr %159, align 16, !tbaa !41
  %161 = add i32 %105, 2
  %162 = zext i32 %116 to i64
  %163 = getelementptr inbounds i8, ptr %41, i64 %162
  store i8 %160, ptr %163, align 1, !tbaa !41
  %164 = zext i32 %161 to i64
  %165 = getelementptr inbounds i8, ptr %41, i64 %164
  store i8 61, ptr %165, align 1, !tbaa !41
  br label %166

166:                                              ; preds = %136, %151, %157
  %167 = phi i8 [ %150, %136 ], [ 61, %151 ], [ 61, %157 ]
  %168 = add i32 %105, 3
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i8, ptr %41, i64 %169
  store i8 %167, ptr %170, align 1, !tbaa !41
  %171 = add i32 %105, 4
  %172 = add i32 %105, 5
  %173 = zext i32 %171 to i64
  %174 = getelementptr inbounds i8, ptr %41, i64 %173
  store i8 10, ptr %174, align 1, !tbaa !41
  %175 = zext i32 %172 to i64
  %176 = getelementptr inbounds i8, ptr %41, i64 %175
  store i8 0, ptr %176, align 1, !tbaa !41
  store i32 %172, ptr %2, align 4, !tbaa !48
  br label %177

177:                                              ; preds = %166, %21, %17
  %178 = phi ptr [ null, %17 ], [ %41, %166 ], [ null, %21 ]
  ret ptr %178
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_76Base644initEv() local_unnamed_addr #2 align 2 !prof !34 {
  %1 = load i8, ptr @_ZN11xercesc_2_76Base6413isInitializedE, align 1, !tbaa !35, !range !39, !noundef !40
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %13

3:                                                ; preds = %0
  store i8 1, ptr @_ZN11xercesc_2_76Base6413isInitializedE, align 1, !tbaa !35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(255) @_ZN11xercesc_2_76Base6413base64InverseE, i8 -1, i64 255, i1 false), !tbaa !41
  br label %4

4:                                                ; preds = %3, %4
  %5 = phi i64 [ 0, %3 ], [ %11, %4 ]
  %6 = trunc i64 %5 to i8
  %7 = getelementptr inbounds [65 x i8], ptr @_ZN11xercesc_2_76Base6414base64AlphabetE, i64 0, i64 %5
  %8 = load i8, ptr %7, align 1, !tbaa !41
  %9 = zext i8 %8 to i64
  %10 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76Base6413base64InverseE, i64 0, i64 %9
  store i8 %6, ptr %10, align 1, !tbaa !41
  %11 = add nuw nsw i64 %5, 1
  %12 = icmp eq i64 %11, 64
  br i1 %12, label %13, label %4, !llvm.loop !42

13:                                               ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_76Base6413getDataLengthEPKtPNS_13MemoryManagerENS0_11ConformanceE(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 !prof !34 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !tbaa !48
  %5 = call noundef ptr @_ZN11xercesc_2_76Base6415decodeToXMLByteEPKtPjPNS_13MemoryManagerENS0_11ConformanceE(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %1, i32 noundef %2)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %1, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = load ptr, ptr %1, align 8, !tbaa !45
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %5)
  br label %14

13:                                               ; preds = %7
  tail call void @_ZdlPv(ptr noundef nonnull %5) #11
  br label %14

14:                                               ; preds = %9, %13
  %15 = load i32, ptr %4, align 4, !tbaa !48
  br label %16

16:                                               ; preds = %3, %14
  %17 = phi i32 [ %15, %14 ], [ -1, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %17
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_76Base6415decodeToXMLByteEPKtPjPNS_13MemoryManagerENS0_11ConformanceE(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %6 = icmp eq ptr %0, null
  br i1 %6, label %54, label %7

7:                                                ; preds = %4
  %8 = load i16, ptr %0, align 2, !tbaa !50
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %54, label %10

10:                                               ; preds = %7, %10
  %11 = phi ptr [ %12, %10 ], [ %0, %7 ]
  %12 = getelementptr inbounds i16, ptr %11, i64 1
  %13 = load i16, ptr %12, align 2, !tbaa !50
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %10, !llvm.loop !52

15:                                               ; preds = %10
  %16 = ptrtoint ptr %12 to i64
  %17 = ptrtoint ptr %0 to i64
  %18 = sub i64 %16, %17
  %19 = lshr exact i64 %18, 1
  %20 = add nuw i64 %19, 1
  %21 = icmp eq ptr %2, null
  %22 = and i64 %20, 4294967295
  br i1 %21, label %28, label %23

23:                                               ; preds = %15
  %24 = load ptr, ptr %2, align 8, !tbaa !45
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %22)
  br label %30

28:                                               ; preds = %15
  %29 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %22) #10
  br label %30

30:                                               ; preds = %23, %28
  %31 = phi ptr [ %27, %23 ], [ %29, %28 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %32 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8
  %33 = select i1 %21, ptr %32, ptr %2
  store ptr %31, ptr %5, align 8, !tbaa !53
  %34 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %5, i64 0, i32 1
  store ptr %33, ptr %34, align 8, !tbaa !56
  %35 = and i64 %18, 8589934590
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %30
  %38 = and i64 %19, 4294967295
  br label %43

39:                                               ; preds = %43, %30
  %40 = and i64 %19, 4294967295
  %41 = getelementptr inbounds i8, ptr %31, i64 %40
  store i8 0, ptr %41, align 1, !tbaa !41
  store i32 0, ptr %1, align 4, !tbaa !48
  %42 = invoke noundef ptr @_ZN11xercesc_2_76Base646decodeEPKhPjPNS_13MemoryManagerENS0_11ConformanceE(ptr noundef %31, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3)
          to label %51 unwind label %52

43:                                               ; preds = %37, %43
  %44 = phi i64 [ 0, %37 ], [ %49, %43 ]
  %45 = getelementptr inbounds i16, ptr %0, i64 %44
  %46 = load i16, ptr %45, align 2, !tbaa !50
  %47 = trunc i16 %46 to i8
  %48 = getelementptr inbounds i8, ptr %31, i64 %44
  store i8 %47, ptr %48, align 1, !tbaa !41
  %49 = add nuw nsw i64 %44, 1
  %50 = icmp ult i64 %49, %38
  br i1 %50, label %43, label %39, !llvm.loop !57

51:                                               ; preds = %39
  call void @_ZN11xercesc_2_712ArrayJanitorIhED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  br label %54

52:                                               ; preds = %39
  %53 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorIhED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  resume { ptr, i32 } %53

54:                                               ; preds = %4, %7, %51
  %55 = phi ptr [ %42, %51 ], [ null, %7 ], [ null, %4 ]
  ret ptr %55
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_76Base646decodeEPKhPjPNS_13MemoryManagerENS0_11ConformanceE(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 !prof !34 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store ptr null, ptr %5, align 8, !tbaa !58
  %6 = call noundef ptr @_ZN11xercesc_2_76Base646decodeEPKhPjRPhPNS_13MemoryManagerENS0_11ConformanceE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %2, i32 noundef %3)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %5, align 8, !tbaa !58
  %10 = icmp eq ptr %2, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %2, align 8, !tbaa !45
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %9)
  br label %16

15:                                               ; preds = %8
  tail call void @_ZdlPv(ptr noundef %9) #11
  br label %16

16:                                               ; preds = %15, %11, %4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  ret ptr %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_76Base646decodeEPKhPjRPhPNS_13MemoryManagerENS0_11ConformanceE(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %6 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %7 = load i8, ptr @_ZN11xercesc_2_76Base6413isInitializedE, align 1, !tbaa !35, !range !39, !noundef !40
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  store i8 1, ptr @_ZN11xercesc_2_76Base6413isInitializedE, align 1, !tbaa !35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(255) @_ZN11xercesc_2_76Base6413base64InverseE, i8 -1, i64 255, i1 false), !tbaa !41
  br label %10

10:                                               ; preds = %9, %10
  %11 = phi i64 [ 0, %9 ], [ %17, %10 ]
  %12 = trunc i64 %11 to i8
  %13 = getelementptr inbounds [65 x i8], ptr @_ZN11xercesc_2_76Base6414base64AlphabetE, i64 0, i64 %11
  %14 = load i8, ptr %13, align 1, !tbaa !41
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76Base6413base64InverseE, i64 0, i64 %15
  store i8 %12, ptr %16, align 1, !tbaa !41
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, 64
  br i1 %18, label %19, label %10, !llvm.loop !42

19:                                               ; preds = %10, %5
  %20 = icmp eq ptr %0, null
  br i1 %20, label %267, label %21

21:                                               ; preds = %19
  %22 = load i8, ptr %0, align 1, !tbaa !41
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %267, label %24

24:                                               ; preds = %21
  %25 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKc(ptr noundef nonnull %0)
  %26 = add nsw i32 %25, 1
  %27 = icmp eq ptr %3, null
  %28 = zext i32 %26 to i64
  br i1 %27, label %34, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %3, align 8, !tbaa !45
  %31 = getelementptr inbounds ptr, ptr %30, i64 2
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %28)
  br label %36

34:                                               ; preds = %24
  %35 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %28) #10
  br label %36

36:                                               ; preds = %29, %34
  %37 = phi ptr [ %33, %29 ], [ %35, %34 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  %38 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8
  %39 = select i1 %27, ptr %38, ptr %3
  store ptr %37, ptr %6, align 8, !tbaa !53
  %40 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %6, i64 0, i32 1
  store ptr %39, ptr %40, align 8, !tbaa !56
  switch i32 %4, label %92 [
    i32 0, label %41
    i32 1, label %62
  ]

41:                                               ; preds = %36
  %42 = icmp sgt i32 %25, 0
  br i1 %42, label %43, label %92

43:                                               ; preds = %41
  %44 = zext nneg i32 %25 to i64
  br label %45

45:                                               ; preds = %43, %58
  %46 = phi i64 [ 0, %43 ], [ %60, %58 ]
  %47 = phi i32 [ 0, %43 ], [ %59, %58 ]
  %48 = getelementptr inbounds i8, ptr %0, i64 %46
  %49 = load i8, ptr %48, align 1, !tbaa !41
  %50 = zext i8 %49 to i64
  %51 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !41
  %53 = icmp slt i8 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %45
  %55 = add nsw i32 %47, 1
  %56 = sext i32 %47 to i64
  %57 = getelementptr inbounds i8, ptr %37, i64 %56
  store i8 %49, ptr %57, align 1, !tbaa !41
  br label %58

58:                                               ; preds = %54, %45
  %59 = phi i32 [ %47, %45 ], [ %55, %54 ]
  %60 = add nuw nsw i64 %46, 1
  %61 = icmp eq i64 %60, %44
  br i1 %61, label %92, label %45, !llvm.loop !59

62:                                               ; preds = %36
  %63 = load i8, ptr %0, align 1, !tbaa !41
  %64 = icmp eq i8 %63, 32
  br i1 %64, label %265, label %65

65:                                               ; preds = %62
  %66 = icmp sgt i32 %25, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %65
  %68 = zext nneg i32 %25 to i64
  br label %69

69:                                               ; preds = %67, %82
  %70 = phi i64 [ 0, %67 ], [ %85, %82 ]
  %71 = phi i8 [ 0, %67 ], [ %84, %82 ]
  %72 = phi i32 [ 0, %67 ], [ %83, %82 ]
  %73 = getelementptr inbounds i8, ptr %0, i64 %70
  %74 = load i8, ptr %73, align 1, !tbaa !41
  %75 = icmp eq i8 %74, 32
  br i1 %75, label %80, label %76

76:                                               ; preds = %69
  %77 = add nsw i32 %72, 1
  %78 = sext i32 %72 to i64
  %79 = getelementptr inbounds i8, ptr %37, i64 %78
  store i8 %74, ptr %79, align 1, !tbaa !41
  br label %82

80:                                               ; preds = %69
  %81 = icmp eq i8 %71, 0
  br i1 %81, label %82, label %265

82:                                               ; preds = %80, %76
  %83 = phi i32 [ %77, %76 ], [ %72, %80 ]
  %84 = phi i8 [ 0, %76 ], [ 1, %80 ]
  %85 = add nuw nsw i64 %70, 1
  %86 = icmp eq i64 %85, %68
  br i1 %86, label %87, label %69, !llvm.loop !60

87:                                               ; preds = %82, %65
  %88 = phi i32 [ 0, %65 ], [ %83, %82 ]
  %89 = phi i8 [ 0, %65 ], [ %84, %82 ]
  %90 = and i8 %89, 1
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %265

92:                                               ; preds = %58, %41, %36, %87
  %93 = phi i32 [ 0, %36 ], [ %88, %87 ], [ 0, %41 ], [ %59, %58 ]
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, ptr %37, i64 %94
  store i8 0, ptr %95, align 1, !tbaa !41
  %96 = and i32 %93, 3
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %265

98:                                               ; preds = %92
  %99 = ashr exact i32 %93, 2
  %100 = icmp eq i32 %93, 0
  br i1 %100, label %265, label %101

101:                                              ; preds = %98
  %102 = mul nsw i32 %99, 3
  %103 = add nsw i32 %102, 1
  %104 = zext i32 %103 to i64
  br i1 %27, label %110, label %105

105:                                              ; preds = %101
  %106 = load ptr, ptr %3, align 8, !tbaa !45
  %107 = getelementptr inbounds ptr, ptr %106, i64 2
  %108 = load ptr, ptr %107, align 8
  %109 = invoke noundef ptr %108(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %104)
          to label %112 unwind label %149

110:                                              ; preds = %101
  %111 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %104) #10
          to label %112 unwind label %149

112:                                              ; preds = %110, %105
  %113 = phi ptr [ %109, %105 ], [ %111, %110 ]
  %114 = icmp sgt i32 %99, 1
  br i1 %114, label %115, label %172

115:                                              ; preds = %112, %153
  %116 = phi i64 [ %154, %153 ], [ 0, %112 ]
  %117 = phi i64 [ %165, %153 ], [ 0, %112 ]
  %118 = phi i32 [ %167, %153 ], [ 1, %112 ]
  %119 = getelementptr inbounds i8, ptr %37, i64 %116
  %120 = load i8, ptr %119, align 1, !tbaa !41
  %121 = zext i8 %120 to i64
  %122 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76Base6413base64InverseE, i64 0, i64 %121
  %123 = load i8, ptr %122, align 1, !tbaa !41
  %124 = icmp eq i8 %123, -1
  br i1 %124, label %147, label %125

125:                                              ; preds = %115
  %126 = getelementptr i8, ptr %119, i64 1
  %127 = load i8, ptr %126, align 1, !tbaa !41
  %128 = zext i8 %127 to i64
  %129 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76Base6413base64InverseE, i64 0, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !41
  %131 = icmp eq i8 %130, -1
  br i1 %131, label %147, label %132

132:                                              ; preds = %125
  %133 = getelementptr i8, ptr %119, i64 2
  %134 = load i8, ptr %133, align 1, !tbaa !41
  %135 = zext i8 %134 to i64
  %136 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76Base6413base64InverseE, i64 0, i64 %135
  %137 = load i8, ptr %136, align 1, !tbaa !41
  %138 = icmp eq i8 %137, -1
  br i1 %138, label %147, label %139

139:                                              ; preds = %132
  %140 = or disjoint i64 %116, 3
  %141 = getelementptr inbounds i8, ptr %37, i64 %140
  %142 = load i8, ptr %141, align 1, !tbaa !41
  %143 = zext i8 %142 to i64
  %144 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76Base6413base64InverseE, i64 0, i64 %143
  %145 = load i8, ptr %144, align 1, !tbaa !41
  %146 = icmp eq i8 %145, -1
  br i1 %146, label %147, label %153

147:                                              ; preds = %139, %132, %125, %115
  br i1 %27, label %148, label %240

148:                                              ; preds = %147
  tail call void @_ZdlPv(ptr noundef %113) #11
  br label %265

149:                                              ; preds = %110, %105
  %150 = landingpad { ptr, i32 }
          cleanup
  br label %263

151:                                              ; preds = %240
  %152 = landingpad { ptr, i32 }
          cleanup
  br label %263

153:                                              ; preds = %139
  %154 = add nuw nsw i64 %116, 4
  %155 = shl i8 %123, 2
  %156 = lshr i8 %130, 4
  %157 = or i8 %156, %155
  %158 = getelementptr inbounds i8, ptr %113, i64 %117
  store i8 %157, ptr %158, align 1, !tbaa !41
  %159 = shl i8 %130, 4
  %160 = lshr i8 %137, 2
  %161 = or i8 %160, %159
  %162 = getelementptr i8, ptr %158, i64 1
  store i8 %161, ptr %162, align 1, !tbaa !41
  %163 = shl i8 %137, 6
  %164 = or i8 %145, %163
  %165 = add nuw nsw i64 %117, 3
  %166 = getelementptr i8, ptr %158, i64 2
  store i8 %164, ptr %166, align 1, !tbaa !41
  %167 = add nuw nsw i32 %118, 1
  %168 = icmp eq i32 %167, %99
  br i1 %168, label %169, label %115, !llvm.loop !61

169:                                              ; preds = %153
  %170 = trunc i64 %165 to i32
  %171 = and i64 %154, 4294967292
  br label %172

172:                                              ; preds = %169, %112
  %173 = phi i64 [ 0, %112 ], [ %171, %169 ]
  %174 = phi i32 [ 0, %112 ], [ %170, %169 ]
  %175 = getelementptr inbounds i8, ptr %37, i64 %173
  %176 = load i8, ptr %175, align 1, !tbaa !41
  %177 = zext i8 %176 to i64
  %178 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76Base6413base64InverseE, i64 0, i64 %177
  %179 = load i8, ptr %178, align 1, !tbaa !41
  %180 = icmp eq i8 %179, -1
  br i1 %180, label %188, label %181

181:                                              ; preds = %172
  %182 = getelementptr i8, ptr %175, i64 1
  %183 = load i8, ptr %182, align 1, !tbaa !41
  %184 = zext i8 %183 to i64
  %185 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76Base6413base64InverseE, i64 0, i64 %184
  %186 = load i8, ptr %185, align 1, !tbaa !41
  %187 = icmp eq i8 %186, -1
  br i1 %187, label %188, label %190

188:                                              ; preds = %181, %172
  br i1 %27, label %189, label %240

189:                                              ; preds = %188
  tail call void @_ZdlPv(ptr noundef %113) #11
  br label %265

190:                                              ; preds = %181
  %191 = getelementptr i8, ptr %175, i64 2
  %192 = load i8, ptr %191, align 1, !tbaa !41
  %193 = getelementptr i8, ptr %175, i64 3
  %194 = load i8, ptr %193, align 1, !tbaa !41
  %195 = zext i8 %192 to i64
  %196 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76Base6413base64InverseE, i64 0, i64 %195
  %197 = load i8, ptr %196, align 1, !tbaa !41
  %198 = icmp eq i8 %197, -1
  br i1 %198, label %204, label %199

199:                                              ; preds = %190
  %200 = zext i8 %194 to i64
  %201 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76Base6413base64InverseE, i64 0, i64 %200
  %202 = load i8, ptr %201, align 1, !tbaa !41
  %203 = icmp eq i8 %202, -1
  br i1 %203, label %204, label %245

204:                                              ; preds = %199, %190
  %205 = icmp eq i8 %192, 61
  %206 = icmp eq i8 %194, 61
  %207 = select i1 %205, i1 %206, i1 false
  br i1 %207, label %208, label %220

208:                                              ; preds = %204
  %209 = and i8 %186, 15
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %213, label %211

211:                                              ; preds = %208
  br i1 %27, label %212, label %240

212:                                              ; preds = %211
  tail call void @_ZdlPv(ptr noundef %113) #11
  br label %265

213:                                              ; preds = %208
  %214 = shl i8 %179, 2
  %215 = lshr exact i8 %186, 4
  %216 = or i8 %215, %214
  %217 = add nuw nsw i32 %174, 1
  %218 = zext nneg i32 %174 to i64
  %219 = getelementptr inbounds i8, ptr %113, i64 %218
  store i8 %216, ptr %219, align 1, !tbaa !41
  br label %259

220:                                              ; preds = %204
  %221 = icmp ne i8 %194, 61
  %222 = select i1 %205, i1 true, i1 %221
  br i1 %222, label %239, label %223

223:                                              ; preds = %220
  %224 = and i8 %197, 3
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %228, label %226

226:                                              ; preds = %223
  br i1 %27, label %227, label %240

227:                                              ; preds = %226
  tail call void @_ZdlPv(ptr noundef %113) #11
  br label %265

228:                                              ; preds = %223
  %229 = shl i8 %179, 2
  %230 = lshr i8 %186, 4
  %231 = or i8 %230, %229
  %232 = zext nneg i32 %174 to i64
  %233 = getelementptr inbounds i8, ptr %113, i64 %232
  store i8 %231, ptr %233, align 1, !tbaa !41
  %234 = shl i8 %186, 4
  %235 = lshr exact i8 %197, 2
  %236 = or i8 %235, %234
  %237 = add nuw nsw i32 %174, 2
  %238 = getelementptr i8, ptr %233, i64 1
  store i8 %236, ptr %238, align 1, !tbaa !41
  br label %259

239:                                              ; preds = %220
  br i1 %27, label %244, label %240

240:                                              ; preds = %239, %226, %211, %188, %147
  %241 = load ptr, ptr %3, align 8, !tbaa !45
  %242 = getelementptr inbounds ptr, ptr %241, i64 3
  %243 = load ptr, ptr %242, align 8
  invoke void %243(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %113)
          to label %265 unwind label %151

244:                                              ; preds = %239
  tail call void @_ZdlPv(ptr noundef %113) #11
  br label %265

245:                                              ; preds = %199
  %246 = shl i8 %179, 2
  %247 = lshr i8 %186, 4
  %248 = or i8 %247, %246
  %249 = zext nneg i32 %174 to i64
  %250 = getelementptr inbounds i8, ptr %113, i64 %249
  store i8 %248, ptr %250, align 1, !tbaa !41
  %251 = shl i8 %186, 4
  %252 = lshr i8 %197, 2
  %253 = or i8 %252, %251
  %254 = getelementptr i8, ptr %250, i64 1
  store i8 %253, ptr %254, align 1, !tbaa !41
  %255 = shl i8 %197, 6
  %256 = or i8 %202, %255
  %257 = add nuw nsw i32 %174, 3
  %258 = getelementptr i8, ptr %250, i64 2
  store i8 %256, ptr %258, align 1, !tbaa !41
  br label %259

259:                                              ; preds = %213, %228, %245
  %260 = phi i32 [ %257, %245 ], [ %217, %213 ], [ %237, %228 ]
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i8, ptr %113, i64 %261
  store i8 0, ptr %262, align 1, !tbaa !41
  store i32 %260, ptr %1, align 4, !tbaa !48
  store ptr null, ptr %6, align 8, !tbaa !53
  store ptr %37, ptr %2, align 8, !tbaa !58
  br label %265

263:                                              ; preds = %151, %149
  %264 = phi { ptr, i32 } [ %152, %151 ], [ %150, %149 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIhED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  resume { ptr, i32 } %264

265:                                              ; preds = %80, %240, %87, %259, %148, %189, %212, %227, %244, %98, %92, %62
  %266 = phi ptr [ null, %62 ], [ null, %92 ], [ null, %98 ], [ %113, %259 ], [ null, %148 ], [ null, %189 ], [ null, %212 ], [ null, %227 ], [ null, %244 ], [ null, %87 ], [ null, %240 ], [ null, %80 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIhED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  br label %267

267:                                              ; preds = %19, %21, %265
  %268 = phi ptr [ %266, %265 ], [ null, %21 ], [ null, %19 ]
  ret ptr %268
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_76Base646decodeEPKtPjPNS_13MemoryManagerENS0_11ConformanceE(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %6 = icmp eq ptr %0, null
  br i1 %6, label %97, label %7

7:                                                ; preds = %4
  %8 = load i16, ptr %0, align 2, !tbaa !50
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %7, %10
  %11 = phi ptr [ %12, %10 ], [ %0, %7 ]
  %12 = getelementptr inbounds i16, ptr %11, i64 1
  %13 = load i16, ptr %12, align 2, !tbaa !50
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %10, !llvm.loop !52

15:                                               ; preds = %10
  %16 = ptrtoint ptr %12 to i64
  %17 = ptrtoint ptr %0 to i64
  %18 = sub i64 %16, %17
  %19 = lshr exact i64 %18, 1
  %20 = trunc i64 %19 to i32
  br label %21

21:                                               ; preds = %7, %15
  %22 = phi i32 [ %20, %15 ], [ 0, %7 ]
  %23 = add i32 %22, 1
  %24 = icmp eq ptr %2, null
  %25 = zext i32 %23 to i64
  br i1 %24, label %31, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %2, align 8, !tbaa !45
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %25)
  br label %33

31:                                               ; preds = %21
  %32 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %25) #10
  br label %33

33:                                               ; preds = %26, %31
  %34 = phi ptr [ %30, %26 ], [ %32, %31 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %35 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8
  %36 = select i1 %24, ptr %35, ptr %2
  store ptr %34, ptr %5, align 8, !tbaa !53
  %37 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %5, i64 0, i32 1
  store ptr %36, ptr %37, align 8, !tbaa !56
  %38 = icmp eq i32 %22, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = zext i32 %22 to i64
  br label %45

41:                                               ; preds = %45, %33
  %42 = zext i32 %22 to i64
  %43 = getelementptr inbounds i8, ptr %34, i64 %42
  store i8 0, ptr %43, align 1, !tbaa !41
  store i32 0, ptr %1, align 4, !tbaa !48
  %44 = invoke noundef ptr @_ZN11xercesc_2_76Base646decodeEPKhPjPNS_13MemoryManagerENS0_11ConformanceE(ptr noundef %34, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3)
          to label %53 unwind label %55

45:                                               ; preds = %39, %45
  %46 = phi i64 [ 0, %39 ], [ %51, %45 ]
  %47 = getelementptr inbounds i16, ptr %0, i64 %46
  %48 = load i16, ptr %47, align 2, !tbaa !50
  %49 = trunc i16 %48 to i8
  %50 = getelementptr inbounds i8, ptr %34, i64 %46
  store i8 %49, ptr %50, align 1, !tbaa !41
  %51 = add nuw nsw i64 %46, 1
  %52 = icmp eq i64 %51, %40
  br i1 %52, label %41, label %45, !llvm.loop !62

53:                                               ; preds = %41
  %54 = icmp eq ptr %44, null
  br i1 %54, label %93, label %57

55:                                               ; preds = %41
  %56 = landingpad { ptr, i32 }
          cleanup
  br label %95

57:                                               ; preds = %53
  %58 = load i32, ptr %1, align 4, !tbaa !48
  %59 = shl i32 %58, 1
  %60 = add i32 %59, 2
  %61 = zext i32 %60 to i64
  br i1 %24, label %67, label %62

62:                                               ; preds = %57
  %63 = load ptr, ptr %2, align 8, !tbaa !45
  %64 = getelementptr inbounds ptr, ptr %63, i64 2
  %65 = load ptr, ptr %64, align 8
  %66 = invoke noundef ptr %65(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61)
          to label %69 unwind label %83

67:                                               ; preds = %57
  %68 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %61) #10
          to label %69 unwind label %83

69:                                               ; preds = %67, %62
  %70 = phi ptr [ %66, %62 ], [ %68, %67 ]
  %71 = load i32, ptr %1, align 4, !tbaa !48
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = zext i32 %71 to i64
  br label %85

75:                                               ; preds = %85, %69
  %76 = zext i32 %71 to i64
  %77 = getelementptr inbounds i16, ptr %70, i64 %76
  store i16 0, ptr %77, align 2, !tbaa !50
  br i1 %24, label %82, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr %2, align 8, !tbaa !45
  %80 = getelementptr inbounds ptr, ptr %79, i64 3
  %81 = load ptr, ptr %80, align 8
  invoke void %81(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %44)
          to label %93 unwind label %83

82:                                               ; preds = %75
  tail call void @_ZdlPv(ptr noundef nonnull %44) #11
  br label %93

83:                                               ; preds = %78, %67, %62
  %84 = landingpad { ptr, i32 }
          cleanup
  br label %95

85:                                               ; preds = %73, %85
  %86 = phi i64 [ 0, %73 ], [ %91, %85 ]
  %87 = getelementptr inbounds i8, ptr %44, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !41
  %89 = zext i8 %88 to i16
  %90 = getelementptr inbounds i16, ptr %70, i64 %86
  store i16 %89, ptr %90, align 2, !tbaa !50
  %91 = add nuw nsw i64 %86, 1
  %92 = icmp eq i64 %91, %74
  br i1 %92, label %75, label %85, !llvm.loop !63

93:                                               ; preds = %82, %78, %53
  %94 = phi ptr [ null, %53 ], [ %70, %78 ], [ %70, %82 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIhED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  br label %97

95:                                               ; preds = %83, %55
  %96 = phi { ptr, i32 } [ %84, %83 ], [ %56, %55 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIhED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  resume { ptr, i32 } %96

97:                                               ; preds = %4, %93
  %98 = phi ptr [ %94, %93 ], [ null, %4 ]
  ret ptr %98
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIhED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !53
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !45
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #12
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #13
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_76Base6426getCanonicalRepresentationEPKtPNS_13MemoryManagerENS0_11ConformanceE(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = icmp eq ptr %0, null
  br i1 %7, label %105, label %8

8:                                                ; preds = %3
  %9 = load i16, ptr %0, align 2, !tbaa !50
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %105, label %11

11:                                               ; preds = %8, %11
  %12 = phi ptr [ %13, %11 ], [ %0, %8 ]
  %13 = getelementptr inbounds i16, ptr %12, i64 1
  %14 = load i16, ptr %13, align 2, !tbaa !50
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %11, !llvm.loop !52

16:                                               ; preds = %11
  %17 = ptrtoint ptr %13 to i64
  %18 = ptrtoint ptr %0 to i64
  %19 = sub i64 %17, %18
  %20 = lshr exact i64 %19, 1
  %21 = add nuw i64 %20, 1
  %22 = icmp eq ptr %1, null
  %23 = and i64 %21, 4294967295
  br i1 %22, label %29, label %24

24:                                               ; preds = %16
  %25 = load ptr, ptr %1, align 8, !tbaa !45
  %26 = getelementptr inbounds ptr, ptr %25, i64 2
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %23)
  br label %31

29:                                               ; preds = %16
  %30 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %23) #10
  br label %31

31:                                               ; preds = %24, %29
  %32 = phi ptr [ %28, %24 ], [ %30, %29 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %33 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8
  %34 = select i1 %22, ptr %33, ptr %1
  store ptr %32, ptr %4, align 8, !tbaa !53
  %35 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %4, i64 0, i32 1
  store ptr %34, ptr %35, align 8, !tbaa !56
  %36 = and i64 %19, 8589934590
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %31
  %39 = and i64 %20, 4294967295
  br label %44

40:                                               ; preds = %44, %31
  %41 = and i64 %20, 4294967295
  %42 = getelementptr inbounds i8, ptr %32, i64 %41
  store i8 0, ptr %42, align 1, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  store ptr null, ptr %6, align 8, !tbaa !58
  %43 = invoke noundef ptr @_ZN11xercesc_2_76Base646decodeEPKhPjRPhPNS_13MemoryManagerENS0_11ConformanceE(ptr noundef %32, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %2)
          to label %52 unwind label %54

44:                                               ; preds = %38, %44
  %45 = phi i64 [ 0, %38 ], [ %50, %44 ]
  %46 = getelementptr inbounds i16, ptr %0, i64 %45
  %47 = load i16, ptr %46, align 2, !tbaa !50
  %48 = trunc i16 %47 to i8
  %49 = getelementptr inbounds i8, ptr %32, i64 %45
  store i8 %48, ptr %49, align 1, !tbaa !41
  %50 = add nuw nsw i64 %45, 1
  %51 = icmp ult i64 %50, %39
  br i1 %51, label %44, label %40, !llvm.loop !64

52:                                               ; preds = %40
  %53 = icmp eq ptr %43, null
  br i1 %53, label %101, label %56

54:                                               ; preds = %40
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %103

56:                                               ; preds = %52
  %57 = load ptr, ptr %6, align 8, !tbaa !58
  %58 = invoke noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKc(ptr noundef %57)
          to label %59 unwind label %83

59:                                               ; preds = %56
  %60 = shl i32 %58, 1
  %61 = add i32 %60, 2
  %62 = zext i32 %61 to i64
  br i1 %22, label %68, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %1, align 8, !tbaa !45
  %65 = getelementptr inbounds ptr, ptr %64, i64 2
  %66 = load ptr, ptr %65, align 8
  %67 = invoke noundef ptr %66(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %62)
          to label %70 unwind label %85

68:                                               ; preds = %59
  %69 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %62) #10
          to label %70 unwind label %85

70:                                               ; preds = %68, %63
  %71 = phi ptr [ %67, %63 ], [ %69, %68 ]
  %72 = icmp eq i32 %58, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = zext i32 %58 to i64
  br label %87

75:                                               ; preds = %87, %70
  %76 = zext i32 %58 to i64
  %77 = getelementptr inbounds i16, ptr %71, i64 %76
  store i16 0, ptr %77, align 2, !tbaa !50
  br i1 %22, label %82, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr %1, align 8, !tbaa !45
  %80 = getelementptr inbounds ptr, ptr %79, i64 3
  %81 = load ptr, ptr %80, align 8
  invoke void %81(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %43)
          to label %95 unwind label %85

82:                                               ; preds = %75
  tail call void @_ZdlPv(ptr noundef nonnull %43) #11
  br label %95

83:                                               ; preds = %56
  %84 = landingpad { ptr, i32 }
          cleanup
  br label %103

85:                                               ; preds = %96, %78, %68, %63
  %86 = landingpad { ptr, i32 }
          cleanup
  br label %103

87:                                               ; preds = %73, %87
  %88 = phi i64 [ 0, %73 ], [ %93, %87 ]
  %89 = getelementptr inbounds i8, ptr %57, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !41
  %91 = zext i8 %90 to i16
  %92 = getelementptr inbounds i16, ptr %71, i64 %88
  store i16 %91, ptr %92, align 2, !tbaa !50
  %93 = add nuw nsw i64 %88, 1
  %94 = icmp eq i64 %93, %74
  br i1 %94, label %75, label %87, !llvm.loop !65

95:                                               ; preds = %82, %78
  br i1 %22, label %100, label %96

96:                                               ; preds = %95
  %97 = load ptr, ptr %1, align 8, !tbaa !45
  %98 = getelementptr inbounds ptr, ptr %97, i64 3
  %99 = load ptr, ptr %98, align 8
  invoke void %99(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %57)
          to label %101 unwind label %85

100:                                              ; preds = %95
  tail call void @_ZdlPv(ptr noundef %57) #11
  br label %101

101:                                              ; preds = %100, %96, %52
  %102 = phi ptr [ null, %52 ], [ %71, %96 ], [ %71, %100 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @_ZN11xercesc_2_712ArrayJanitorIhED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  br label %105

103:                                              ; preds = %83, %85, %54
  %104 = phi { ptr, i32 } [ %55, %54 ], [ %86, %85 ], [ %84, %83 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @_ZN11xercesc_2_712ArrayJanitorIhED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  resume { ptr, i32 } %104

105:                                              ; preds = %3, %8, %101
  %106 = phi ptr [ %102, %101 ], [ null, %8 ], [ null, %3 ]
  ret ptr %106
}

declare noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76Base646isDataERKh(ptr nocapture noundef nonnull readonly align 1 dereferenceable(1) %0) local_unnamed_addr #6 align 2 !prof !34 {
  %2 = load i8, ptr %0, align 1, !tbaa !41
  %3 = zext i8 %2 to i64
  %4 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76Base6413base64InverseE, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !41
  %6 = icmp ne i8 %5, -1
  ret i1 %6
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat !prof !34 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { allocsize(0) }
attributes #11 = { nounwind }
attributes #12 = { builtin nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 291165203993}
!8 = !{!"MaxCount", i64 30012997636}
!9 = !{!"MaxInternalCount", i64 22313335011}
!10 = !{!"MaxFunctionCount", i64 30012997636}
!11 = !{!"NumCounts", i64 82185}
!12 = !{!"NumFunctions", i64 15169}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 30012997636, i32 1}
!18 = !{i32 100000, i64 30012997636, i32 1}
!19 = !{i32 200000, i64 28750937236, i32 2}
!20 = !{i32 300000, i64 22313335011, i32 4}
!21 = !{i32 400000, i64 22313318476, i32 5}
!22 = !{i32 500000, i64 22291044611, i32 6}
!23 = !{i32 600000, i64 16685493830, i32 8}
!24 = !{i32 700000, i64 11836361228, i32 10}
!25 = !{i32 800000, i64 1835010489, i32 17}
!26 = !{i32 900000, i64 917973775, i32 41}
!27 = !{i32 950000, i64 89504425, i32 134}
!28 = !{i32 990000, i64 22419101, i32 349}
!29 = !{i32 999000, i64 832910, i32 928}
!30 = !{i32 999900, i64 93159, i32 1814}
!31 = !{i32 999990, i64 19206, i32 2310}
!32 = !{i32 999999, i64 550, i32 2997}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"bool", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = !{i8 0, i8 2}
!40 = !{}
!41 = !{!37, !37, i64 0}
!42 = distinct !{!42, !43, !44}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = !{!46, !46, i64 0}
!46 = !{!"vtable pointer", !38, i64 0}
!47 = distinct !{!47, !43, !44}
!48 = !{!49, !49, i64 0}
!49 = !{!"int", !37, i64 0}
!50 = !{!51, !51, i64 0}
!51 = !{!"short", !37, i64 0}
!52 = distinct !{!52, !43, !44}
!53 = !{!54, !55, i64 0}
!54 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIhEE", !55, i64 0, !55, i64 8}
!55 = !{!"any pointer", !37, i64 0}
!56 = !{!54, !55, i64 8}
!57 = distinct !{!57, !43, !44}
!58 = !{!55, !55, i64 0}
!59 = distinct !{!59, !43, !44}
!60 = distinct !{!60, !43, !44}
!61 = distinct !{!61, !43, !44}
!62 = distinct !{!62, !43, !44}
!63 = distinct !{!63, !43, !44}
!64 = distinct !{!64, !43, !44}
!65 = distinct !{!65, !43, !44}
