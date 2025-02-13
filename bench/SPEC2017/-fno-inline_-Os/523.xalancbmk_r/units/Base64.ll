; ModuleID = 'Base64.cpp'
source_filename = "Base64.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }

$_ZN11xercesc_2_76Base6413split1stOctetERKhRhS3_ = comdat any

$_ZN11xercesc_2_76Base6413split2ndOctetERKhRhS3_ = comdat any

$_ZN11xercesc_2_76Base6413split3rdOctetERKhRhS3_ = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_712ArrayJanitorIhEC2EPhPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorIhED2Ev = comdat any

$_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt = comdat any

$_ZN11xercesc_2_76Base6411set1stOctetERKhS2_ = comdat any

$_ZN11xercesc_2_76Base6411set2ndOctetERKhS2_ = comdat any

$_ZN11xercesc_2_76Base6411set3rdOctetERKhS2_ = comdat any

$_ZN11xercesc_2_76Base645isPadERKh = comdat any

$_ZN11xercesc_2_712ArrayJanitorIhE7releaseEv = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorIhE5resetEPh = comdat any

$__clang_call_terminate = comdat any

@_ZN11xercesc_2_76Base6414base64AlphabetE = dso_local local_unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16
@_ZN11xercesc_2_76Base6413base64InverseE = dso_local local_unnamed_addr global [255 x i8] zeroinitializer, align 16
@_ZN11xercesc_2_76Base6413base64PaddingE = dso_local local_unnamed_addr constant i8 61, align 1
@_ZN11xercesc_2_76Base6413isInitializedE = dso_local local_unnamed_addr global i8 0, align 1
@_ZN11xercesc_2_76Base6412quadsPerLineE = dso_local local_unnamed_addr constant i32 15, align 4
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E = external local_unnamed_addr global [65536 x i8], align 16

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_76Base646encodeEPKhjPjPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #1 align 2 !prof !34 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = load i8, ptr @_ZN11xercesc_2_76Base6413isInitializedE, align 1, !tbaa !35, !range !39, !noundef !40
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_76Base644initEv() #10
  br label %12

12:                                               ; preds = %11, %4
  %13 = icmp ne ptr %0, null
  %14 = icmp ne ptr %2, null
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %146

16:                                               ; preds = %12
  %17 = add i32 %1, 2
  %18 = udiv i32 %17, 3
  %19 = icmp ult i32 %17, 3
  br i1 %19, label %146, label %20

20:                                               ; preds = %16
  %21 = add nuw nsw i32 %18, 14
  %22 = udiv i32 %21, 15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #11
  %23 = shl nsw i32 %18, 2
  %24 = or disjoint i32 %23, 1
  %25 = add nuw i32 %24, %22
  %26 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L17getExternalMemoryEPNS_13MemoryManagerEj(ptr noundef %3, i32 noundef %25) #10
  %27 = icmp ugt i32 %17, 5
  br i1 %27, label %28, label %79

28:                                               ; preds = %20
  %29 = getelementptr i8, ptr %0, i64 1
  %30 = getelementptr i8, ptr %0, i64 2
  br label %31

31:                                               ; preds = %28, %73
  %32 = phi i64 [ 0, %28 ], [ %37, %73 ]
  %33 = phi i32 [ 1, %28 ], [ %75, %73 ]
  %34 = phi i32 [ 0, %28 ], [ %74, %73 ]
  %35 = getelementptr inbounds i8, ptr %0, i64 %32
  call void @_ZN11xercesc_2_76Base6413split1stOctetERKhRhS3_(ptr noundef nonnull align 1 dereferenceable(1) %35, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #10
  %36 = getelementptr i8, ptr %29, i64 %32
  call void @_ZN11xercesc_2_76Base6413split2ndOctetERKhRhS3_(ptr noundef nonnull align 1 dereferenceable(1) %36, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) #10
  %37 = add nuw nsw i64 %32, 3
  %38 = getelementptr i8, ptr %30, i64 %32
  call void @_ZN11xercesc_2_76Base6413split3rdOctetERKhRhS3_(ptr noundef nonnull align 1 dereferenceable(1) %38, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8) #10
  %39 = load i8, ptr %5, align 1, !tbaa !41
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds [65 x i8], ptr @_ZN11xercesc_2_76Base6414base64AlphabetE, i64 0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !41
  %43 = add i32 %34, 1
  %44 = zext i32 %34 to i64
  %45 = getelementptr inbounds i8, ptr %26, i64 %44
  store i8 %42, ptr %45, align 1, !tbaa !41
  %46 = load i8, ptr %6, align 1, !tbaa !41
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds [65 x i8], ptr @_ZN11xercesc_2_76Base6414base64AlphabetE, i64 0, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !41
  %50 = add i32 %34, 2
  %51 = zext i32 %43 to i64
  %52 = getelementptr inbounds i8, ptr %26, i64 %51
  store i8 %49, ptr %52, align 1, !tbaa !41
  %53 = load i8, ptr %7, align 1, !tbaa !41
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds [65 x i8], ptr @_ZN11xercesc_2_76Base6414base64AlphabetE, i64 0, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !41
  %57 = add i32 %34, 3
  %58 = zext i32 %50 to i64
  %59 = getelementptr inbounds i8, ptr %26, i64 %58
  store i8 %56, ptr %59, align 1, !tbaa !41
  %60 = load i8, ptr %8, align 1, !tbaa !41
  %61 = zext i8 %60 to i64
  %62 = getelementptr inbounds [65 x i8], ptr @_ZN11xercesc_2_76Base6414base64AlphabetE, i64 0, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !41
  %64 = add i32 %34, 4
  %65 = zext i32 %57 to i64
  %66 = getelementptr inbounds i8, ptr %26, i64 %65
  store i8 %63, ptr %66, align 1, !tbaa !41
  %67 = urem i32 %33, 15
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %31
  %70 = add i32 %34, 5
  %71 = zext i32 %64 to i64
  %72 = getelementptr inbounds i8, ptr %26, i64 %71
  store i8 10, ptr %72, align 1, !tbaa !41
  br label %73

73:                                               ; preds = %31, %69
  %74 = phi i32 [ %70, %69 ], [ %64, %31 ]
  %75 = add nuw nsw i32 %33, 1
  %76 = icmp eq i32 %75, %18
  br i1 %76, label %77, label %31, !llvm.loop !42

77:                                               ; preds = %73
  %78 = trunc i64 %37 to i32
  br label %79

79:                                               ; preds = %77, %20
  %80 = phi i32 [ 0, %20 ], [ %78, %77 ]
  %81 = phi i32 [ 0, %20 ], [ %74, %77 ]
  %82 = add i32 %80, 1
  %83 = zext i32 %80 to i64
  %84 = getelementptr inbounds i8, ptr %0, i64 %83
  call void @_ZN11xercesc_2_76Base6413split1stOctetERKhRhS3_(ptr noundef nonnull align 1 dereferenceable(1) %84, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #10
  %85 = load i8, ptr %5, align 1, !tbaa !41
  %86 = zext i8 %85 to i64
  %87 = getelementptr inbounds [65 x i8], ptr @_ZN11xercesc_2_76Base6414base64AlphabetE, i64 0, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !41
  %89 = add i32 %81, 1
  %90 = zext i32 %81 to i64
  %91 = getelementptr inbounds i8, ptr %26, i64 %90
  store i8 %88, ptr %91, align 1, !tbaa !41
  %92 = icmp ult i32 %82, %1
  br i1 %92, label %93, label %125

93:                                               ; preds = %79
  %94 = add i32 %80, 2
  %95 = zext i32 %82 to i64
  %96 = getelementptr inbounds i8, ptr %0, i64 %95
  call void @_ZN11xercesc_2_76Base6413split2ndOctetERKhRhS3_(ptr noundef nonnull align 1 dereferenceable(1) %96, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) #10
  %97 = load i8, ptr %6, align 1, !tbaa !41
  %98 = zext i8 %97 to i64
  %99 = getelementptr inbounds [65 x i8], ptr @_ZN11xercesc_2_76Base6414base64AlphabetE, i64 0, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !41
  %101 = add i32 %81, 2
  %102 = zext i32 %89 to i64
  %103 = getelementptr inbounds i8, ptr %26, i64 %102
  store i8 %100, ptr %103, align 1, !tbaa !41
  %104 = icmp ult i32 %94, %1
  br i1 %104, label %105, label %118

105:                                              ; preds = %93
  %106 = zext i32 %94 to i64
  %107 = getelementptr inbounds i8, ptr %0, i64 %106
  call void @_ZN11xercesc_2_76Base6413split3rdOctetERKhRhS3_(ptr noundef nonnull align 1 dereferenceable(1) %107, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8) #10
  %108 = load i8, ptr %7, align 1, !tbaa !41
  %109 = zext i8 %108 to i64
  %110 = getelementptr inbounds [65 x i8], ptr @_ZN11xercesc_2_76Base6414base64AlphabetE, i64 0, i64 %109
  %111 = load i8, ptr %110, align 1, !tbaa !41
  %112 = zext i32 %101 to i64
  %113 = getelementptr inbounds i8, ptr %26, i64 %112
  store i8 %111, ptr %113, align 1, !tbaa !41
  %114 = load i8, ptr %8, align 1, !tbaa !41
  %115 = zext i8 %114 to i64
  %116 = getelementptr inbounds [65 x i8], ptr @_ZN11xercesc_2_76Base6414base64AlphabetE, i64 0, i64 %115
  %117 = load i8, ptr %116, align 1, !tbaa !41
  br label %135

118:                                              ; preds = %93
  %119 = load i8, ptr %7, align 1, !tbaa !41
  %120 = zext i8 %119 to i64
  %121 = getelementptr inbounds [65 x i8], ptr @_ZN11xercesc_2_76Base6414base64AlphabetE, i64 0, i64 %120
  %122 = load i8, ptr %121, align 1, !tbaa !41
  %123 = zext i32 %101 to i64
  %124 = getelementptr inbounds i8, ptr %26, i64 %123
  store i8 %122, ptr %124, align 1, !tbaa !41
  br label %135

125:                                              ; preds = %79
  %126 = load i8, ptr %6, align 1, !tbaa !41
  %127 = zext i8 %126 to i64
  %128 = getelementptr inbounds [65 x i8], ptr @_ZN11xercesc_2_76Base6414base64AlphabetE, i64 0, i64 %127
  %129 = load i8, ptr %128, align 1, !tbaa !41
  %130 = add i32 %81, 2
  %131 = zext i32 %89 to i64
  %132 = getelementptr inbounds i8, ptr %26, i64 %131
  store i8 %129, ptr %132, align 1, !tbaa !41
  %133 = zext i32 %130 to i64
  %134 = getelementptr inbounds i8, ptr %26, i64 %133
  store i8 61, ptr %134, align 1, !tbaa !41
  br label %135

135:                                              ; preds = %105, %118, %125
  %136 = phi i8 [ %117, %105 ], [ 61, %118 ], [ 61, %125 ]
  %137 = add i32 %81, 3
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i8, ptr %26, i64 %138
  store i8 %136, ptr %139, align 1, !tbaa !41
  %140 = add i32 %81, 4
  %141 = add i32 %81, 5
  %142 = zext i32 %140 to i64
  %143 = getelementptr inbounds i8, ptr %26, i64 %142
  store i8 10, ptr %143, align 1, !tbaa !41
  %144 = zext i32 %141 to i64
  %145 = getelementptr inbounds i8, ptr %26, i64 %144
  store i8 0, ptr %145, align 1, !tbaa !41
  store i32 %141, ptr %2, align 4, !tbaa !44
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  br label %146

146:                                              ; preds = %135, %16, %12
  %147 = phi ptr [ null, %12 ], [ %26, %135 ], [ null, %16 ]
  ret ptr %147
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
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
  br i1 %12, label %13, label %4, !llvm.loop !46

13:                                               ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef ptr @_ZN11xercesc_2_7L17getExternalMemoryEPNS_13MemoryManagerEj(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !34 !PGOFuncName !47 {
  %3 = icmp eq ptr %0, null
  %4 = zext i32 %1 to i64
  br i1 %3, label %10, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !48
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %4) #10
  br label %12

10:                                               ; preds = %2
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #12
  br label %12

12:                                               ; preds = %10, %5
  %13 = phi ptr [ %9, %5 ], [ %11, %10 ]
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_76Base6413split1stOctetERKhRhS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat align 2 !prof !34 {
  %4 = load i8, ptr %0, align 1, !tbaa !41
  %5 = lshr i8 %4, 2
  store i8 %5, ptr %1, align 1, !tbaa !41
  %6 = load i8, ptr %0, align 1, !tbaa !41
  %7 = shl i8 %6, 4
  %8 = and i8 %7, 48
  store i8 %8, ptr %2, align 1, !tbaa !41
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_76Base6413split2ndOctetERKhRhS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat align 2 !prof !34 {
  %4 = load i8, ptr %0, align 1, !tbaa !41
  %5 = lshr i8 %4, 4
  %6 = load i8, ptr %1, align 1, !tbaa !41
  %7 = or i8 %6, %5
  store i8 %7, ptr %1, align 1, !tbaa !41
  %8 = load i8, ptr %0, align 1, !tbaa !41
  %9 = shl i8 %8, 2
  %10 = and i8 %9, 60
  store i8 %10, ptr %2, align 1, !tbaa !41
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_76Base6413split3rdOctetERKhRhS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat align 2 !prof !34 {
  %4 = load i8, ptr %0, align 1, !tbaa !41
  %5 = lshr i8 %4, 6
  %6 = load i8, ptr %1, align 1, !tbaa !41
  %7 = or i8 %6, %5
  store i8 %7, ptr %1, align 1, !tbaa !41
  %8 = load i8, ptr %0, align 1, !tbaa !41
  %9 = and i8 %8, 63
  store i8 %9, ptr %2, align 1, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_76Base6413getDataLengthEPKtPNS_13MemoryManagerENS0_11ConformanceE(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 !prof !34 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !tbaa !44
  %5 = call noundef ptr @_ZN11xercesc_2_76Base6415decodeToXMLByteEPKtPjPNS_13MemoryManagerENS0_11ConformanceE(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %1, i32 noundef %2) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  tail call fastcc void @_ZN11xercesc_2_7L20returnExternalMemoryEPNS_13MemoryManagerEPv(ptr noundef %1, ptr noundef nonnull %5) #10
  %8 = load i32, ptr %4, align 4, !tbaa !44
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi i32 [ %8, %7 ], [ -1, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_76Base6415decodeToXMLByteEPKtPjPNS_13MemoryManagerENS0_11ConformanceE(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %6 = icmp eq ptr %0, null
  br i1 %6, label %35, label %7

7:                                                ; preds = %4
  %8 = load i16, ptr %0, align 2, !tbaa !50
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %35, label %10

10:                                               ; preds = %7
  %11 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #10
  %12 = add i32 %11, 1
  %13 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L17getExternalMemoryEPNS_13MemoryManagerEj(ptr noundef %2, i32 noundef %12) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %14 = icmp eq ptr %2, null
  %15 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8
  %16 = select i1 %14, ptr %15, ptr %2
  call void @_ZN11xercesc_2_712ArrayJanitorIhEC2EPhPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %13, ptr noundef %16) #10
  %17 = icmp eq i32 %11, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %10
  %19 = zext i32 %11 to i64
  br label %24

20:                                               ; preds = %24, %10
  %21 = phi i64 [ 0, %10 ], [ %19, %24 ]
  %22 = getelementptr inbounds i8, ptr %13, i64 %21
  store i8 0, ptr %22, align 1, !tbaa !41
  store i32 0, ptr %1, align 4, !tbaa !44
  %23 = invoke noundef ptr @_ZN11xercesc_2_76Base646decodeEPKhPjPNS_13MemoryManagerENS0_11ConformanceE(ptr noundef nonnull %13, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3) #10
          to label %32 unwind label %33

24:                                               ; preds = %18, %24
  %25 = phi i64 [ 0, %18 ], [ %30, %24 ]
  %26 = getelementptr inbounds i16, ptr %0, i64 %25
  %27 = load i16, ptr %26, align 2, !tbaa !50
  %28 = trunc i16 %27 to i8
  %29 = getelementptr inbounds i8, ptr %13, i64 %25
  store i8 %28, ptr %29, align 1, !tbaa !41
  %30 = add nuw nsw i64 %25, 1
  %31 = icmp eq i64 %30, %19
  br i1 %31, label %20, label %24, !llvm.loop !52

32:                                               ; preds = %20
  call void @_ZN11xercesc_2_712ArrayJanitorIhED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  br label %35

33:                                               ; preds = %20
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorIhED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  resume { ptr, i32 } %34

35:                                               ; preds = %4, %7, %32
  %36 = phi ptr [ %23, %32 ], [ null, %7 ], [ null, %4 ]
  ret ptr %36
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZN11xercesc_2_7L20returnExternalMemoryEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !34 !PGOFuncName !53 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !48
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #10
  br label %9

8:                                                ; preds = %2
  tail call void @_ZdlPv(ptr noundef %1) #13
  br label %9

9:                                                ; preds = %8, %4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_76Base646decodeEPKhPjPNS_13MemoryManagerENS0_11ConformanceE(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 !prof !34 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store ptr null, ptr %5, align 8, !tbaa !54
  %6 = call noundef ptr @_ZN11xercesc_2_76Base646decodeEPKhPjRPhPNS_13MemoryManagerENS0_11ConformanceE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %2, i32 noundef %3) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %5, align 8, !tbaa !54
  tail call fastcc void @_ZN11xercesc_2_7L20returnExternalMemoryEPNS_13MemoryManagerEPv(ptr noundef %2, ptr noundef %9) #10
  br label %10

10:                                               ; preds = %8, %4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_76Base646decodeEPKhPjRPhPNS_13MemoryManagerENS0_11ConformanceE(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %6 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = load i8, ptr @_ZN11xercesc_2_76Base6413isInitializedE, align 1, !tbaa !35, !range !39, !noundef !40
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  tail call void @_ZN11xercesc_2_76Base644initEv() #10
  br label %18

18:                                               ; preds = %17, %5
  %19 = icmp eq ptr %0, null
  br i1 %19, label %226, label %20

20:                                               ; preds = %18
  %21 = load i8, ptr %0, align 1, !tbaa !41
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %226, label %23

23:                                               ; preds = %20
  %24 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKc(ptr noundef nonnull %0) #10
  %25 = add nsw i32 %24, 1
  %26 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L17getExternalMemoryEPNS_13MemoryManagerEj(ptr noundef %3, i32 noundef %25) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  %27 = icmp eq ptr %3, null
  %28 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8
  %29 = select i1 %27, ptr %28, ptr %3
  call void @_ZN11xercesc_2_712ArrayJanitorIhEC2EPhPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %26, ptr noundef %29) #10
  switch i32 %4, label %34 [
    i32 0, label %30
    i32 1, label %51
  ]

30:                                               ; preds = %23
  %31 = icmp sgt i32 %24, 0
  br i1 %31, label %32, label %77

32:                                               ; preds = %30
  %33 = zext nneg i32 %24 to i64
  br label %35

34:                                               ; preds = %23
  store i8 0, ptr %26, align 1, !tbaa !41
  br label %224

35:                                               ; preds = %32, %47
  %36 = phi i64 [ 0, %32 ], [ %49, %47 ]
  %37 = phi i32 [ 0, %32 ], [ %48, %47 ]
  %38 = getelementptr inbounds i8, ptr %0, i64 %36
  %39 = load i8, ptr %38, align 1, !tbaa !41
  %40 = zext i8 %39 to i16
  %41 = call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt(i16 noundef zeroext %40) #10
  br i1 %41, label %47, label %42

42:                                               ; preds = %35
  %43 = load i8, ptr %38, align 1, !tbaa !41
  %44 = add nsw i32 %37, 1
  %45 = sext i32 %37 to i64
  %46 = getelementptr inbounds i8, ptr %26, i64 %45
  store i8 %43, ptr %46, align 1, !tbaa !41
  br label %47

47:                                               ; preds = %42, %35
  %48 = phi i32 [ %37, %35 ], [ %44, %42 ]
  %49 = add nuw nsw i64 %36, 1
  %50 = icmp eq i64 %49, %33
  br i1 %50, label %78, label %35, !llvm.loop !56

51:                                               ; preds = %23
  %52 = load i8, ptr %0, align 1, !tbaa !41
  %53 = icmp eq i8 %52, 32
  br i1 %53, label %224, label %54

54:                                               ; preds = %51
  %55 = icmp sgt i32 %24, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %54
  %57 = zext nneg i32 %24 to i64
  br label %58

58:                                               ; preds = %56, %71
  %59 = phi i64 [ 0, %56 ], [ %74, %71 ]
  %60 = phi i8 [ 0, %56 ], [ %73, %71 ]
  %61 = phi i32 [ 0, %56 ], [ %72, %71 ]
  %62 = getelementptr inbounds i8, ptr %0, i64 %59
  %63 = load i8, ptr %62, align 1, !tbaa !41
  %64 = icmp eq i8 %63, 32
  br i1 %64, label %69, label %65

65:                                               ; preds = %58
  %66 = add nsw i32 %61, 1
  %67 = sext i32 %61 to i64
  %68 = getelementptr inbounds i8, ptr %26, i64 %67
  store i8 %63, ptr %68, align 1, !tbaa !41
  br label %71

69:                                               ; preds = %58
  %70 = icmp eq i8 %60, 0
  br i1 %70, label %71, label %224

71:                                               ; preds = %69, %65
  %72 = phi i32 [ %66, %65 ], [ %61, %69 ]
  %73 = phi i8 [ 0, %65 ], [ 1, %69 ]
  %74 = add nuw nsw i64 %59, 1
  %75 = icmp eq i64 %74, %57
  br i1 %75, label %76, label %58, !llvm.loop !57

76:                                               ; preds = %71
  br i1 %64, label %224, label %78

77:                                               ; preds = %54, %30
  store i8 0, ptr %26, align 1, !tbaa !41
  br label %224

78:                                               ; preds = %47, %76
  %79 = phi i32 [ %72, %76 ], [ %48, %47 ]
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, ptr %26, i64 %80
  store i8 0, ptr %81, align 1, !tbaa !41
  %82 = and i32 %79, 3
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %224

84:                                               ; preds = %78
  %85 = ashr exact i32 %79, 2
  %86 = icmp eq i32 %79, 0
  br i1 %86, label %224, label %87

87:                                               ; preds = %84
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #11
  %88 = mul nsw i32 %85, 3
  %89 = add nsw i32 %88, 1
  %90 = invoke fastcc noundef ptr @_ZN11xercesc_2_7L17getExternalMemoryEPNS_13MemoryManagerEj(ptr noundef %3, i32 noundef %89) #10
          to label %91 unwind label %114

91:                                               ; preds = %87
  %92 = getelementptr i8, ptr %90, i64 2
  %93 = icmp sgt i32 %85, 1
  br i1 %93, label %94, label %144

94:                                               ; preds = %91, %118
  %95 = phi i64 [ %119, %118 ], [ 0, %91 ]
  %96 = phi i64 [ %137, %118 ], [ 0, %91 ]
  %97 = phi i32 [ %139, %118 ], [ 1, %91 ]
  %98 = getelementptr inbounds i8, ptr %26, i64 %95
  %99 = load i8, ptr %98, align 1, !tbaa !41
  store i8 %99, ptr %7, align 1, !tbaa !41
  %100 = call noundef zeroext i1 @_ZN11xercesc_2_76Base646isDataERKh(ptr noundef nonnull align 1 dereferenceable(1) %7) #10
  br i1 %100, label %101, label %199

101:                                              ; preds = %94
  %102 = getelementptr i8, ptr %98, i64 1
  %103 = load i8, ptr %102, align 1, !tbaa !41
  store i8 %103, ptr %8, align 1, !tbaa !41
  %104 = call noundef zeroext i1 @_ZN11xercesc_2_76Base646isDataERKh(ptr noundef nonnull align 1 dereferenceable(1) %8) #10
  br i1 %104, label %105, label %199

105:                                              ; preds = %101
  %106 = getelementptr i8, ptr %98, i64 2
  %107 = load i8, ptr %106, align 1, !tbaa !41
  store i8 %107, ptr %9, align 1, !tbaa !41
  %108 = call noundef zeroext i1 @_ZN11xercesc_2_76Base646isDataERKh(ptr noundef nonnull align 1 dereferenceable(1) %9) #10
  br i1 %108, label %109, label %199

109:                                              ; preds = %105
  %110 = or disjoint i64 %95, 3
  %111 = getelementptr inbounds i8, ptr %26, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !41
  store i8 %112, ptr %10, align 1, !tbaa !41
  %113 = call noundef zeroext i1 @_ZN11xercesc_2_76Base646isDataERKh(ptr noundef nonnull align 1 dereferenceable(1) %10) #10
  br i1 %113, label %118, label %199

114:                                              ; preds = %87
  %115 = landingpad { ptr, i32 }
          cleanup
  br label %222

116:                                              ; preds = %199
  %117 = landingpad { ptr, i32 }
          cleanup
  br label %222

118:                                              ; preds = %109
  %119 = add nuw nsw i64 %95, 4
  %120 = zext i8 %99 to i64
  %121 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76Base6413base64InverseE, i64 0, i64 %120
  %122 = load i8, ptr %121, align 1, !tbaa !41
  store i8 %122, ptr %11, align 1, !tbaa !41
  %123 = zext i8 %103 to i64
  %124 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76Base6413base64InverseE, i64 0, i64 %123
  %125 = load i8, ptr %124, align 1, !tbaa !41
  store i8 %125, ptr %12, align 1, !tbaa !41
  %126 = zext i8 %107 to i64
  %127 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76Base6413base64InverseE, i64 0, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !41
  store i8 %128, ptr %13, align 1, !tbaa !41
  %129 = zext i8 %112 to i64
  %130 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76Base6413base64InverseE, i64 0, i64 %129
  %131 = load i8, ptr %130, align 1, !tbaa !41
  store i8 %131, ptr %14, align 1, !tbaa !41
  %132 = call noundef zeroext i8 @_ZN11xercesc_2_76Base6411set1stOctetERKhS2_(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %12) #10
  %133 = getelementptr inbounds i8, ptr %90, i64 %96
  store i8 %132, ptr %133, align 1, !tbaa !41
  %134 = call noundef zeroext i8 @_ZN11xercesc_2_76Base6411set2ndOctetERKhS2_(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 1 dereferenceable(1) %13) #10
  %135 = getelementptr i8, ptr %133, i64 1
  store i8 %134, ptr %135, align 1, !tbaa !41
  %136 = call noundef zeroext i8 @_ZN11xercesc_2_76Base6411set3rdOctetERKhS2_(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %14) #10
  %137 = add nuw nsw i64 %96, 3
  %138 = getelementptr i8, ptr %92, i64 %96
  store i8 %136, ptr %138, align 1, !tbaa !41
  %139 = add nuw nsw i32 %97, 1
  %140 = icmp eq i32 %139, %85
  br i1 %140, label %141, label %94, !llvm.loop !58

141:                                              ; preds = %118
  %142 = trunc i64 %137 to i32
  %143 = and i64 %119, 4294967292
  br label %144

144:                                              ; preds = %141, %91
  %145 = phi i64 [ 0, %91 ], [ %143, %141 ]
  %146 = phi i32 [ 0, %91 ], [ %142, %141 ]
  %147 = getelementptr inbounds i8, ptr %26, i64 %145
  %148 = load i8, ptr %147, align 1, !tbaa !41
  store i8 %148, ptr %7, align 1, !tbaa !41
  %149 = call noundef zeroext i1 @_ZN11xercesc_2_76Base646isDataERKh(ptr noundef nonnull align 1 dereferenceable(1) %7) #10
  br i1 %149, label %150, label %199

150:                                              ; preds = %144
  %151 = getelementptr i8, ptr %147, i64 1
  %152 = load i8, ptr %151, align 1, !tbaa !41
  store i8 %152, ptr %8, align 1, !tbaa !41
  %153 = call noundef zeroext i1 @_ZN11xercesc_2_76Base646isDataERKh(ptr noundef nonnull align 1 dereferenceable(1) %8) #10
  br i1 %153, label %154, label %199

154:                                              ; preds = %150
  %155 = zext i8 %148 to i64
  %156 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76Base6413base64InverseE, i64 0, i64 %155
  %157 = load i8, ptr %156, align 1, !tbaa !41
  store i8 %157, ptr %11, align 1, !tbaa !41
  %158 = zext i8 %152 to i64
  %159 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76Base6413base64InverseE, i64 0, i64 %158
  %160 = load i8, ptr %159, align 1, !tbaa !41
  store i8 %160, ptr %12, align 1, !tbaa !41
  %161 = getelementptr i8, ptr %147, i64 2
  %162 = load i8, ptr %161, align 1, !tbaa !41
  store i8 %162, ptr %9, align 1, !tbaa !41
  %163 = getelementptr i8, ptr %147, i64 3
  %164 = load i8, ptr %163, align 1, !tbaa !41
  store i8 %164, ptr %10, align 1, !tbaa !41
  %165 = call noundef zeroext i1 @_ZN11xercesc_2_76Base646isDataERKh(ptr noundef nonnull align 1 dereferenceable(1) %9) #10
  br i1 %165, label %166, label %168

166:                                              ; preds = %154
  %167 = call noundef zeroext i1 @_ZN11xercesc_2_76Base646isDataERKh(ptr noundef nonnull align 1 dereferenceable(1) %10) #10
  br i1 %167, label %200, label %168

168:                                              ; preds = %166, %154
  %169 = call noundef zeroext i1 @_ZN11xercesc_2_76Base645isPadERKh(ptr noundef nonnull align 1 dereferenceable(1) %9) #10
  br i1 %169, label %170, label %181

170:                                              ; preds = %168
  %171 = call noundef zeroext i1 @_ZN11xercesc_2_76Base645isPadERKh(ptr noundef nonnull align 1 dereferenceable(1) %10) #10
  br i1 %171, label %172, label %181

172:                                              ; preds = %170
  %173 = load i8, ptr %12, align 1, !tbaa !41
  %174 = and i8 %173, 15
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %176, label %199

176:                                              ; preds = %172
  %177 = call noundef zeroext i8 @_ZN11xercesc_2_76Base6411set1stOctetERKhS2_(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %12) #10
  %178 = add nuw nsw i32 %146, 1
  %179 = zext nneg i32 %146 to i64
  %180 = getelementptr inbounds i8, ptr %90, i64 %179
  store i8 %177, ptr %180, align 1, !tbaa !41
  br label %215

181:                                              ; preds = %170, %168
  %182 = call noundef zeroext i1 @_ZN11xercesc_2_76Base645isPadERKh(ptr noundef nonnull align 1 dereferenceable(1) %9) #10
  br i1 %182, label %199, label %183

183:                                              ; preds = %181
  %184 = call noundef zeroext i1 @_ZN11xercesc_2_76Base645isPadERKh(ptr noundef nonnull align 1 dereferenceable(1) %10) #10
  br i1 %184, label %185, label %199

185:                                              ; preds = %183
  %186 = load i8, ptr %9, align 1, !tbaa !41
  %187 = zext i8 %186 to i64
  %188 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76Base6413base64InverseE, i64 0, i64 %187
  %189 = load i8, ptr %188, align 1, !tbaa !41
  store i8 %189, ptr %13, align 1, !tbaa !41
  %190 = and i8 %189, 3
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %185
  %193 = call noundef zeroext i8 @_ZN11xercesc_2_76Base6411set1stOctetERKhS2_(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %12) #10
  %194 = zext nneg i32 %146 to i64
  %195 = getelementptr inbounds i8, ptr %90, i64 %194
  store i8 %193, ptr %195, align 1, !tbaa !41
  %196 = call noundef zeroext i8 @_ZN11xercesc_2_76Base6411set2ndOctetERKhS2_(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 1 dereferenceable(1) %13) #10
  %197 = add nuw nsw i32 %146, 2
  %198 = getelementptr i8, ptr %195, i64 1
  store i8 %196, ptr %198, align 1, !tbaa !41
  br label %215

199:                                              ; preds = %94, %101, %105, %109, %181, %183, %185, %172, %144, %150
  invoke fastcc void @_ZN11xercesc_2_7L20returnExternalMemoryEPNS_13MemoryManagerEPv(ptr noundef %3, ptr noundef %90) #10
          to label %220 unwind label %116

200:                                              ; preds = %166
  %201 = zext i8 %162 to i64
  %202 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76Base6413base64InverseE, i64 0, i64 %201
  %203 = load i8, ptr %202, align 1, !tbaa !41
  store i8 %203, ptr %13, align 1, !tbaa !41
  %204 = zext i8 %164 to i64
  %205 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76Base6413base64InverseE, i64 0, i64 %204
  %206 = load i8, ptr %205, align 1, !tbaa !41
  store i8 %206, ptr %14, align 1, !tbaa !41
  %207 = call noundef zeroext i8 @_ZN11xercesc_2_76Base6411set1stOctetERKhS2_(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %12) #10
  %208 = zext nneg i32 %146 to i64
  %209 = getelementptr inbounds i8, ptr %90, i64 %208
  store i8 %207, ptr %209, align 1, !tbaa !41
  %210 = call noundef zeroext i8 @_ZN11xercesc_2_76Base6411set2ndOctetERKhS2_(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 1 dereferenceable(1) %13) #10
  %211 = getelementptr i8, ptr %209, i64 1
  store i8 %210, ptr %211, align 1, !tbaa !41
  %212 = call noundef zeroext i8 @_ZN11xercesc_2_76Base6411set3rdOctetERKhS2_(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %14) #10
  %213 = add nuw nsw i32 %146, 3
  %214 = getelementptr i8, ptr %209, i64 2
  store i8 %212, ptr %214, align 1, !tbaa !41
  br label %215

215:                                              ; preds = %176, %192, %200
  %216 = phi i32 [ %213, %200 ], [ %178, %176 ], [ %197, %192 ]
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8, ptr %90, i64 %217
  store i8 0, ptr %218, align 1, !tbaa !41
  store i32 %216, ptr %1, align 4, !tbaa !44
  %219 = call noundef ptr @_ZN11xercesc_2_712ArrayJanitorIhE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #10
  store ptr %26, ptr %2, align 8, !tbaa !54
  br label %220

220:                                              ; preds = %199, %215
  %221 = phi ptr [ %90, %215 ], [ null, %199 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #11
  br label %224

222:                                              ; preds = %116, %114
  %223 = phi { ptr, i32 } [ %117, %116 ], [ %115, %114 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #11
  call void @_ZN11xercesc_2_712ArrayJanitorIhED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  resume { ptr, i32 } %223

224:                                              ; preds = %69, %77, %34, %220, %84, %78, %76, %51
  %225 = phi ptr [ null, %51 ], [ null, %76 ], [ null, %78 ], [ %221, %220 ], [ null, %84 ], [ null, %34 ], [ null, %77 ], [ null, %69 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIhED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  br label %226

226:                                              ; preds = %18, %20, %224
  %227 = phi ptr [ %225, %224 ], [ null, %20 ], [ null, %18 ]
  ret ptr %227
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_76Base646decodeEPKtPjPNS_13MemoryManagerENS0_11ConformanceE(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %6 = icmp eq ptr %0, null
  br i1 %6, label %60, label %7

7:                                                ; preds = %4
  %8 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #10
  %9 = add i32 %8, 1
  %10 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L17getExternalMemoryEPNS_13MemoryManagerEj(ptr noundef %2, i32 noundef %9) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %11 = icmp eq ptr %2, null
  %12 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8
  %13 = select i1 %11, ptr %12, ptr %2
  call void @_ZN11xercesc_2_712ArrayJanitorIhEC2EPhPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %10, ptr noundef %13) #10
  %14 = icmp eq i32 %8, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %7
  %16 = zext i32 %8 to i64
  br label %21

17:                                               ; preds = %21, %7
  %18 = phi i64 [ 0, %7 ], [ %16, %21 ]
  %19 = getelementptr inbounds i8, ptr %10, i64 %18
  store i8 0, ptr %19, align 1, !tbaa !41
  store i32 0, ptr %1, align 4, !tbaa !44
  %20 = invoke noundef ptr @_ZN11xercesc_2_76Base646decodeEPKhPjPNS_13MemoryManagerENS0_11ConformanceE(ptr noundef nonnull %10, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3) #10
          to label %29 unwind label %31

21:                                               ; preds = %15, %21
  %22 = phi i64 [ 0, %15 ], [ %27, %21 ]
  %23 = getelementptr inbounds i16, ptr %0, i64 %22
  %24 = load i16, ptr %23, align 2, !tbaa !50
  %25 = trunc i16 %24 to i8
  %26 = getelementptr inbounds i8, ptr %10, i64 %22
  store i8 %25, ptr %26, align 1, !tbaa !41
  %27 = add nuw nsw i64 %22, 1
  %28 = icmp eq i64 %27, %16
  br i1 %28, label %17, label %21, !llvm.loop !59

29:                                               ; preds = %17
  %30 = icmp eq ptr %20, null
  br i1 %30, label %56, label %33

31:                                               ; preds = %17
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %58

33:                                               ; preds = %29
  %34 = load i32, ptr %1, align 4, !tbaa !44
  %35 = shl i32 %34, 1
  %36 = add i32 %35, 2
  %37 = invoke fastcc noundef ptr @_ZN11xercesc_2_7L17getExternalMemoryEPNS_13MemoryManagerEj(ptr noundef %2, i32 noundef %36) #10
          to label %38 unwind label %46

38:                                               ; preds = %33
  %39 = load i32, ptr %1, align 4, !tbaa !44
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = zext i32 %39 to i64
  br label %48

43:                                               ; preds = %48, %38
  %44 = phi i64 [ 0, %38 ], [ %42, %48 ]
  %45 = getelementptr inbounds i16, ptr %37, i64 %44
  store i16 0, ptr %45, align 2, !tbaa !50
  invoke fastcc void @_ZN11xercesc_2_7L20returnExternalMemoryEPNS_13MemoryManagerEPv(ptr noundef %2, ptr noundef nonnull %20) #10
          to label %56 unwind label %46

46:                                               ; preds = %43, %33
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %58

48:                                               ; preds = %41, %48
  %49 = phi i64 [ 0, %41 ], [ %54, %48 ]
  %50 = getelementptr inbounds i8, ptr %20, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !41
  %52 = zext i8 %51 to i16
  %53 = getelementptr inbounds i16, ptr %37, i64 %49
  store i16 %52, ptr %53, align 2, !tbaa !50
  %54 = add nuw nsw i64 %49, 1
  %55 = icmp eq i64 %54, %42
  br i1 %55, label %43, label %48, !llvm.loop !60

56:                                               ; preds = %43, %29
  %57 = phi ptr [ null, %29 ], [ %37, %43 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIhED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  br label %60

58:                                               ; preds = %46, %31
  %59 = phi { ptr, i32 } [ %47, %46 ], [ %32, %31 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIhED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  resume { ptr, i32 } %59

60:                                               ; preds = %4, %56
  %61 = phi ptr [ %57, %56 ], [ null, %4 ]
  ret ptr %61
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #4 comdat align 2 !prof !61 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !62

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !50
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !63

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !50
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !64, !llvm.loop !65

11:                                               ; preds = %6
  %12 = ptrtoint ptr %8 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 1
  %16 = trunc i64 %15 to i32
  br label %17

17:                                               ; preds = %1, %3, %11
  %18 = phi i32 [ %16, %11 ], [ 0, %3 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIhEC2EPhPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  store ptr %1, ptr %0, align 8, !tbaa !66
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !68
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIhED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorIhE5resetEPh(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #10
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #14
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_76Base6426getCanonicalRepresentationEPKtPNS_13MemoryManagerENS0_11ConformanceE(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = icmp eq ptr %0, null
  br i1 %7, label %68, label %8

8:                                                ; preds = %3
  %9 = load i16, ptr %0, align 2, !tbaa !50
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %68, label %11

11:                                               ; preds = %8
  %12 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #10
  %13 = add i32 %12, 1
  %14 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L17getExternalMemoryEPNS_13MemoryManagerEj(ptr noundef %1, i32 noundef %13) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %15 = icmp eq ptr %1, null
  %16 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8
  %17 = select i1 %15, ptr %16, ptr %1
  call void @_ZN11xercesc_2_712ArrayJanitorIhEC2EPhPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %14, ptr noundef %17) #10
  %18 = icmp eq i32 %12, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %11
  %20 = zext i32 %12 to i64
  br label %25

21:                                               ; preds = %25, %11
  %22 = phi i64 [ 0, %11 ], [ %20, %25 ]
  %23 = getelementptr inbounds i8, ptr %14, i64 %22
  store i8 0, ptr %23, align 1, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  store ptr null, ptr %6, align 8, !tbaa !54
  %24 = invoke noundef ptr @_ZN11xercesc_2_76Base646decodeEPKhPjRPhPNS_13MemoryManagerENS0_11ConformanceE(ptr noundef nonnull %14, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %2) #10
          to label %33 unwind label %35

25:                                               ; preds = %19, %25
  %26 = phi i64 [ 0, %19 ], [ %31, %25 ]
  %27 = getelementptr inbounds i16, ptr %0, i64 %26
  %28 = load i16, ptr %27, align 2, !tbaa !50
  %29 = trunc i16 %28 to i8
  %30 = getelementptr inbounds i8, ptr %14, i64 %26
  store i8 %29, ptr %30, align 1, !tbaa !41
  %31 = add nuw nsw i64 %26, 1
  %32 = icmp eq i64 %31, %20
  br i1 %32, label %21, label %25, !llvm.loop !69

33:                                               ; preds = %21
  %34 = icmp eq ptr %24, null
  br i1 %34, label %64, label %37

35:                                               ; preds = %21
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %66

37:                                               ; preds = %33
  %38 = load ptr, ptr %6, align 8, !tbaa !54
  %39 = invoke noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKc(ptr noundef %38) #10
          to label %40 unwind label %51

40:                                               ; preds = %37
  %41 = shl i32 %39, 1
  %42 = add i32 %41, 2
  %43 = invoke fastcc noundef ptr @_ZN11xercesc_2_7L17getExternalMemoryEPNS_13MemoryManagerEj(ptr noundef %1, i32 noundef %42) #10
          to label %44 unwind label %53

44:                                               ; preds = %40
  %45 = icmp eq i32 %39, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %44
  %47 = zext i32 %39 to i64
  br label %55

48:                                               ; preds = %55, %44
  %49 = phi i64 [ 0, %44 ], [ %47, %55 ]
  %50 = getelementptr inbounds i16, ptr %43, i64 %49
  store i16 0, ptr %50, align 2, !tbaa !50
  invoke fastcc void @_ZN11xercesc_2_7L20returnExternalMemoryEPNS_13MemoryManagerEPv(ptr noundef %1, ptr noundef nonnull %24) #10
          to label %63 unwind label %53

51:                                               ; preds = %37
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %66

53:                                               ; preds = %63, %48, %40
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %66

55:                                               ; preds = %46, %55
  %56 = phi i64 [ 0, %46 ], [ %61, %55 ]
  %57 = getelementptr inbounds i8, ptr %38, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !41
  %59 = zext i8 %58 to i16
  %60 = getelementptr inbounds i16, ptr %43, i64 %56
  store i16 %59, ptr %60, align 2, !tbaa !50
  %61 = add nuw nsw i64 %56, 1
  %62 = icmp eq i64 %61, %47
  br i1 %62, label %48, label %55, !llvm.loop !70

63:                                               ; preds = %48
  invoke fastcc void @_ZN11xercesc_2_7L20returnExternalMemoryEPNS_13MemoryManagerEPv(ptr noundef %1, ptr noundef %38) #10
          to label %64 unwind label %53

64:                                               ; preds = %63, %33
  %65 = phi ptr [ null, %33 ], [ %43, %63 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @_ZN11xercesc_2_712ArrayJanitorIhED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  br label %68

66:                                               ; preds = %51, %53, %35
  %67 = phi { ptr, i32 } [ %36, %35 ], [ %54, %53 ], [ %52, %51 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @_ZN11xercesc_2_712ArrayJanitorIhED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  resume { ptr, i32 } %67

68:                                               ; preds = %3, %8, %64
  %69 = phi ptr [ %65, %64 ], [ null, %8 ], [ null, %3 ]
  ret ptr %69
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt(i16 noundef zeroext %0) local_unnamed_addr #4 comdat align 2 !prof !71 {
  %2 = zext i16 %0 to i64
  %3 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !41
  %5 = icmp slt i8 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76Base646isDataERKh(ptr nocapture noundef nonnull readonly align 1 dereferenceable(1) %0) local_unnamed_addr #6 align 2 !prof !34 {
  %2 = load i8, ptr %0, align 1, !tbaa !41
  %3 = zext i8 %2 to i64
  %4 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76Base6413base64InverseE, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !41
  %6 = icmp ne i8 %5, -1
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZN11xercesc_2_76Base6411set1stOctetERKhS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #4 comdat align 2 !prof !34 {
  %3 = load i8, ptr %0, align 1, !tbaa !41
  %4 = shl i8 %3, 2
  %5 = load i8, ptr %1, align 1, !tbaa !41
  %6 = lshr i8 %5, 4
  %7 = or i8 %6, %4
  ret i8 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZN11xercesc_2_76Base6411set2ndOctetERKhS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #4 comdat align 2 !prof !34 {
  %3 = load i8, ptr %0, align 1, !tbaa !41
  %4 = shl i8 %3, 4
  %5 = load i8, ptr %1, align 1, !tbaa !41
  %6 = lshr i8 %5, 2
  %7 = or i8 %6, %4
  ret i8 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZN11xercesc_2_76Base6411set3rdOctetERKhS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #4 comdat align 2 !prof !34 {
  %3 = load i8, ptr %0, align 1, !tbaa !41
  %4 = shl i8 %3, 6
  %5 = load i8, ptr %1, align 1, !tbaa !41
  %6 = or i8 %4, %5
  ret i8 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_76Base645isPadERKh(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #4 comdat align 2 !prof !34 {
  %2 = load i8, ptr %0, align 1, !tbaa !41
  %3 = icmp eq i8 %2, 61
  ret i1 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ArrayJanitorIhE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !66
  store ptr null, ptr %0, align 8, !tbaa !66
  ret ptr %2
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !prof !72 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIhE5resetEPh(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !66
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !48
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #10
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #15
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !66
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !68
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { optsize }
attributes #11 = { nounwind }
attributes #12 = { optsize allocsize(0) }
attributes #13 = { nounwind optsize }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138344258}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997636}
!6 = !{!"MaxFunctionCount", i64 89343718472}
!7 = !{!"NumCounts", i64 49244}
!8 = !{!"NumFunctions", i64 27305}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 89343718472, i32 1}
!14 = !{i32 100000, i64 89343718472, i32 1}
!15 = !{i32 200000, i64 33857387535, i32 2}
!16 = !{i32 300000, i64 30137156660, i32 4}
!17 = !{i32 400000, i64 28792558684, i32 6}
!18 = !{i32 500000, i64 16886835304, i32 8}
!19 = !{i32 600000, i64 16826917200, i32 11}
!20 = !{i32 700000, i64 13167999625, i32 15}
!21 = !{i32 800000, i64 2443628737, i32 28}
!22 = !{i32 900000, i64 555646850, i32 77}
!23 = !{i32 950000, i64 134227650, i32 195}
!24 = !{i32 990000, i64 30109074, i32 515}
!25 = !{i32 999000, i64 1000482, i32 1252}
!26 = !{i32 999900, i64 150186, i32 2316}
!27 = !{i32 999990, i64 20523, i32 3051}
!28 = !{i32 999999, i64 1160, i32 3778}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"bool", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = !{i8 0, i8 2}
!40 = !{}
!41 = !{!37, !37, i64 0}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!45, !45, i64 0}
!45 = !{!"int", !37, i64 0}
!46 = distinct !{!46, !43}
!47 = !{!"Base64.cpp:_ZN11xercesc_2_7L17getExternalMemoryEPNS_13MemoryManagerEj"}
!48 = !{!49, !49, i64 0}
!49 = !{!"vtable pointer", !38, i64 0}
!50 = !{!51, !51, i64 0}
!51 = !{!"short", !37, i64 0}
!52 = distinct !{!52, !43}
!53 = !{!"Base64.cpp:_ZN11xercesc_2_7L20returnExternalMemoryEPNS_13MemoryManagerEPv"}
!54 = !{!55, !55, i64 0}
!55 = !{!"any pointer", !37, i64 0}
!56 = distinct !{!56, !43}
!57 = distinct !{!57, !43}
!58 = distinct !{!58, !43}
!59 = distinct !{!59, !43}
!60 = distinct !{!60, !43}
!61 = !{!"function_entry_count", i64 2453164456}
!62 = !{!"branch_weights", i32 1, i32 -1841802839}
!63 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!64 = !{!"branch_weights", i32 408669070, i32 -279908794}
!65 = distinct !{!65, !43}
!66 = !{!67, !55, i64 0}
!67 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIhEE", !55, i64 0, !55, i64 8}
!68 = !{!67, !55, i64 8}
!69 = distinct !{!69, !43}
!70 = distinct !{!70, !43}
!71 = !{!"function_entry_count", i64 196710}
!72 = !{!"function_entry_count", i64 5836268}
