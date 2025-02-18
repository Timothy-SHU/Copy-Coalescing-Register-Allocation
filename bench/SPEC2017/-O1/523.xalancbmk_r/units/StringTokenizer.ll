; ModuleID = 'StringTokenizer.cpp'
source_filename = "StringTokenizer.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::StringTokenizer" = type { ptr, ptr, i8, i32, i32, i32 }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>

@_ZN11xalanc_1_1015StringTokenizer15s_defaultTokensE = dso_local local_unnamed_addr constant [5 x i16] [i16 32, i16 9, i16 10, i16 13, i16 0], align 2
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1015StringTokenizerC1ERKNS_14XalanDOMStringES3_b = dso_local unnamed_addr alias void (ptr, ptr, ptr, i1), ptr @_ZN11xalanc_1_1015StringTokenizerC2ERKNS_14XalanDOMStringES3_b
@_ZN11xalanc_1_1015StringTokenizerC1ERKNS_14XalanDOMStringEPKtb = dso_local unnamed_addr alias void (ptr, ptr, ptr, i1), ptr @_ZN11xalanc_1_1015StringTokenizerC2ERKNS_14XalanDOMStringEPKtb
@_ZN11xalanc_1_1015StringTokenizerC1EPKtS2_b = dso_local unnamed_addr alias void (ptr, ptr, ptr, i1), ptr @_ZN11xalanc_1_1015StringTokenizerC2EPKtS2_b
@_ZN11xalanc_1_1015StringTokenizerC1EPKtRKNS_14XalanDOMStringEb = dso_local unnamed_addr alias void (ptr, ptr, ptr, i1), ptr @_ZN11xalanc_1_1015StringTokenizerC2EPKtRKNS_14XalanDOMStringEb
@_ZN11xalanc_1_1015StringTokenizerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1015StringTokenizerD2Ev

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xalanc_1_1015StringTokenizerC2ERKNS_14XalanDOMStringES3_b(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(32) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 !prof !34 {
  %5 = zext i1 %3 to i8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !35
  %8 = icmp eq i64 %7, 0
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = select i1 %8, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %10
  store ptr %11, ptr %0, align 8, !tbaa !41
  %12 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !35
  %15 = icmp eq i64 %14, 0
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8
  %18 = select i1 %15, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %17
  store ptr %18, ptr %12, align 8, !tbaa !45
  %19 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 2
  store i8 %5, ptr %19, align 8, !tbaa !46
  %20 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 3
  store i32 0, ptr %20, align 4, !tbaa !47
  %21 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 4
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !48
  store i32 %23, ptr %21, align 8, !tbaa !50
  %24 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 5
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %2, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !48
  store i32 %26, ptr %24, align 4, !tbaa !51
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xalanc_1_1015StringTokenizerC2ERKNS_14XalanDOMStringEPKtb(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(32) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #1 align 2 !prof !34 {
  %5 = zext i1 %3 to i8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !35
  %8 = icmp eq i64 %7, 0
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = select i1 %8, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %10
  store ptr %11, ptr %0, align 8, !tbaa !41
  %12 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 1
  store ptr %2, ptr %12, align 8, !tbaa !45
  %13 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 2
  store i8 %5, ptr %13, align 8, !tbaa !46
  %14 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 3
  store i32 0, ptr %14, align 4, !tbaa !47
  %15 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 4
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !48
  store i32 %17, ptr %15, align 8, !tbaa !50
  br label %18

18:                                               ; preds = %18, %4
  %19 = phi ptr [ %2, %4 ], [ %22, %18 ]
  %20 = load i16, ptr %19, align 2, !tbaa !52
  %21 = icmp eq i16 %20, 0
  %22 = getelementptr inbounds i16, ptr %19, i64 1
  br i1 %21, label %23, label %18, !llvm.loop !54

23:                                               ; preds = %18
  %24 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 5
  %25 = ptrtoint ptr %19 to i64
  %26 = ptrtoint ptr %2 to i64
  %27 = sub i64 %25, %26
  %28 = lshr exact i64 %27, 1
  %29 = trunc i64 %28 to i32
  store i32 %29, ptr %24, align 4, !tbaa !51
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xalanc_1_1015StringTokenizerC2EPKtS2_b(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #1 align 2 !prof !57 {
  %5 = zext i1 %3 to i8
  store ptr %1, ptr %0, align 8, !tbaa !41
  %6 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 1
  store ptr %2, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 2
  store i8 %5, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 3
  store i32 0, ptr %8, align 4, !tbaa !47
  br label %9

9:                                                ; preds = %9, %4
  %10 = phi ptr [ %1, %4 ], [ %13, %9 ]
  %11 = load i16, ptr %10, align 2, !tbaa !52
  %12 = icmp eq i16 %11, 0
  %13 = getelementptr inbounds i16, ptr %10, i64 1
  br i1 %12, label %14, label %9, !prof !58, !llvm.loop !54

14:                                               ; preds = %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 4
  %16 = ptrtoint ptr %10 to i64
  %17 = ptrtoint ptr %1 to i64
  %18 = sub i64 %16, %17
  %19 = lshr exact i64 %18, 1
  %20 = trunc i64 %19 to i32
  store i32 %20, ptr %15, align 8, !tbaa !50
  br label %21

21:                                               ; preds = %21, %14
  %22 = phi ptr [ %2, %14 ], [ %25, %21 ]
  %23 = load i16, ptr %22, align 2, !tbaa !52
  %24 = icmp eq i16 %23, 0
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  br i1 %24, label %26, label %21, !prof !59, !llvm.loop !54

26:                                               ; preds = %21
  %27 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 5
  %28 = ptrtoint ptr %22 to i64
  %29 = ptrtoint ptr %2 to i64
  %30 = sub i64 %28, %29
  %31 = lshr exact i64 %30, 1
  %32 = trunc i64 %31 to i32
  store i32 %32, ptr %27, align 4, !tbaa !51
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xalanc_1_1015StringTokenizerC2EPKtRKNS_14XalanDOMStringEb(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(32) %0, ptr noundef %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %2, i1 noundef zeroext %3) unnamed_addr #1 align 2 !prof !34 {
  %5 = zext i1 %3 to i8
  store ptr %1, ptr %0, align 8, !tbaa !41
  %6 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !35
  %9 = icmp eq i64 %8, 0
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = select i1 %9, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %11
  store ptr %12, ptr %6, align 8, !tbaa !45
  %13 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 2
  store i8 %5, ptr %13, align 8, !tbaa !46
  %14 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 3
  store i32 0, ptr %14, align 4, !tbaa !47
  br label %15

15:                                               ; preds = %15, %4
  %16 = phi ptr [ %1, %4 ], [ %19, %15 ]
  %17 = load i16, ptr %16, align 2, !tbaa !52
  %18 = icmp eq i16 %17, 0
  %19 = getelementptr inbounds i16, ptr %16, i64 1
  br i1 %18, label %20, label %15, !llvm.loop !54

20:                                               ; preds = %15
  %21 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 4
  %22 = ptrtoint ptr %16 to i64
  %23 = ptrtoint ptr %1 to i64
  %24 = sub i64 %22, %23
  %25 = lshr exact i64 %24, 1
  %26 = trunc i64 %25 to i32
  store i32 %26, ptr %21, align 8, !tbaa !50
  %27 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 5
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %2, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !48
  store i32 %29, ptr %27, align 4, !tbaa !51
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1015StringTokenizerD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !57 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1015StringTokenizer13hasMoreTokensEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) local_unnamed_addr #3 align 2 !prof !34 {
  %2 = tail call noundef i64 @_ZNK11xalanc_1_1015StringTokenizer11countTokensEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %3 = icmp ne i64 %2, 0
  ret i1 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i64 @_ZNK11xalanc_1_1015StringTokenizer11countTokensEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) local_unnamed_addr #4 align 2 !prof !57 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !47
  %4 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !50
  %6 = icmp ult i32 %3, %5
  br i1 %6, label %7, label %55, !prof !60

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !41
  %9 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = ptrtoint ptr %10 to i64
  %12 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 5
  %13 = load i32, ptr %12, align 4, !tbaa !51
  br label %14

14:                                               ; preds = %7, %50
  %15 = phi i64 [ 0, %7 ], [ %53, %50 ]
  %16 = phi i32 [ %3, %7 ], [ %52, %50 ]
  br label %17

17:                                               ; preds = %14, %30
  %18 = phi i8 [ 0, %14 ], [ %38, %30 ]
  %19 = phi i32 [ %16, %14 ], [ %37, %30 ]
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i16, ptr %8, i64 %20
  %22 = load i16, ptr %21, align 2, !tbaa !52
  br label %23

23:                                               ; preds = %23, %17
  %24 = phi ptr [ %10, %17 ], [ %29, %23 ]
  %25 = load i16, ptr %24, align 2, !tbaa !52
  %26 = icmp eq i16 %25, %22
  %27 = icmp eq i16 %25, 0
  %28 = or i1 %26, %27
  %29 = getelementptr inbounds i16, ptr %24, i64 1
  br i1 %28, label %30, label %23, !prof !61, !llvm.loop !62

30:                                               ; preds = %23
  %31 = ptrtoint ptr %24 to i64
  %32 = sub i64 %31, %11
  %33 = lshr exact i64 %32, 1
  %34 = trunc i64 %33 to i32
  %35 = icmp ule i32 %13, %34
  %36 = zext i1 %35 to i32
  %37 = add i32 %19, %36
  %38 = select i1 %35, i8 %18, i8 1, !prof !63
  %39 = icmp ult i32 %37, %5
  %40 = and i8 %38, 1
  %41 = icmp eq i8 %40, 0
  %42 = select i1 %39, i1 %41, i1 false, !prof !64
  br i1 %42, label %17, label %43, !prof !65, !llvm.loop !66

43:                                               ; preds = %30
  %44 = icmp eq i32 %37, %16
  br i1 %44, label %45, label %50, !prof !67

45:                                               ; preds = %43
  %46 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 2
  %47 = load i8, ptr %46, align 8, !range !68
  %48 = zext nneg i8 %47 to i64
  %49 = add i32 %37, 1
  br label %50

50:                                               ; preds = %43, %45
  %51 = phi i64 [ %48, %45 ], [ 1, %43 ]
  %52 = phi i32 [ %49, %45 ], [ %37, %43 ]
  %53 = add i64 %15, %51
  %54 = icmp ult i32 %52, %5
  br i1 %54, label %14, label %55, !prof !67, !llvm.loop !69

55:                                               ; preds = %50, %1
  %56 = phi i64 [ 0, %1 ], [ %53, %50 ]
  ret i64 %56
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015StringTokenizer9nextTokenERNS_14XalanDOMStringE(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #5 align 2 !prof !34 {
  br label %3

3:                                                ; preds = %53, %2
  %4 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !47
  %6 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !50
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %9, label %42

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !41
  %11 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = ptrtoint ptr %12 to i64
  %14 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 5
  %15 = load i32, ptr %14, align 4, !tbaa !51
  br label %16

16:                                               ; preds = %9, %29
  %17 = phi i8 [ 0, %9 ], [ %37, %29 ]
  %18 = phi i32 [ %5, %9 ], [ %36, %29 ]
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i16, ptr %10, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !52
  br label %22

22:                                               ; preds = %22, %16
  %23 = phi ptr [ %12, %16 ], [ %28, %22 ]
  %24 = load i16, ptr %23, align 2, !tbaa !52
  %25 = icmp eq i16 %24, %21
  %26 = icmp eq i16 %24, 0
  %27 = or i1 %25, %26
  %28 = getelementptr inbounds i16, ptr %23, i64 1
  br i1 %27, label %29, label %22, !llvm.loop !62

29:                                               ; preds = %22
  %30 = ptrtoint ptr %23 to i64
  %31 = sub i64 %30, %13
  %32 = lshr exact i64 %31, 1
  %33 = trunc i64 %32 to i32
  %34 = icmp ule i32 %15, %33
  %35 = zext i1 %34 to i32
  %36 = add i32 %18, %35
  %37 = select i1 %34, i8 %17, i8 1
  %38 = icmp ult i32 %36, %7
  %39 = and i8 %37, 1
  %40 = icmp eq i8 %39, 0
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %16, label %42, !llvm.loop !66

42:                                               ; preds = %29, %3
  %43 = phi i32 [ %5, %3 ], [ %36, %29 ]
  %44 = icmp eq i32 %43, %5
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = add i32 %43, 1
  store i32 %46, ptr %4, align 4, !tbaa !47
  %47 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 2
  %48 = load i8, ptr %47, align 8, !tbaa !46, !range !68, !noundef !70
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load ptr, ptr %0, align 8, !tbaa !41
  %52 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_109substringEPKtRNS_14XalanDOMStringEjj(ptr noundef %51, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %43, i32 noundef %46)
  br label %58

53:                                               ; preds = %45
  %54 = icmp ult i32 %46, %7
  br i1 %54, label %3, label %58

55:                                               ; preds = %42
  %56 = load ptr, ptr %0, align 8, !tbaa !41
  %57 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_109substringEPKtRNS_14XalanDOMStringEjj(ptr noundef %56, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %5, i32 noundef %43)
  store i32 %43, ptr %4, align 4, !tbaa !47
  br label %58

58:                                               ; preds = %50, %53, %55
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1015StringTokenizer22FindNextDelimiterIndexEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !50
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %39

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !41
  %8 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = ptrtoint ptr %9 to i64
  %11 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !51
  br label %13

13:                                               ; preds = %6, %26
  %14 = phi i8 [ 0, %6 ], [ %34, %26 ]
  %15 = phi i32 [ %1, %6 ], [ %33, %26 ]
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i16, ptr %7, i64 %16
  %18 = load i16, ptr %17, align 2, !tbaa !52
  br label %19

19:                                               ; preds = %19, %13
  %20 = phi ptr [ %9, %13 ], [ %25, %19 ]
  %21 = load i16, ptr %20, align 2, !tbaa !52
  %22 = icmp eq i16 %21, %18
  %23 = icmp eq i16 %21, 0
  %24 = or i1 %22, %23
  %25 = getelementptr inbounds i16, ptr %20, i64 1
  br i1 %24, label %26, label %19, !llvm.loop !62

26:                                               ; preds = %19
  %27 = ptrtoint ptr %20 to i64
  %28 = sub i64 %27, %10
  %29 = lshr exact i64 %28, 1
  %30 = trunc i64 %29 to i32
  %31 = icmp ule i32 %12, %30
  %32 = zext i1 %31 to i32
  %33 = add i32 %15, %32
  %34 = select i1 %31, i8 %14, i8 1
  %35 = icmp ult i32 %33, %4
  %36 = and i8 %34, 1
  %37 = icmp eq i8 %36, 0
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %13, label %39, !llvm.loop !66

39:                                               ; preds = %26, %2
  %40 = phi i32 [ %1, %2 ], [ %33, %26 ]
  ret i32 %40
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_109substringEPKtRNS_14XalanDOMStringEjj(ptr noundef, ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #6

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!35 = !{!36, !40, i64 8}
!36 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !37, i64 0, !40, i64 8, !40, i64 16, !37, i64 24}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C++ TBAA"}
!40 = !{!"long", !38, i64 0}
!41 = !{!42, !37, i64 0}
!42 = !{!"_ZTSN11xalanc_1_1015StringTokenizerE", !37, i64 0, !37, i64 8, !43, i64 16, !44, i64 20, !44, i64 24, !44, i64 28}
!43 = !{!"bool", !38, i64 0}
!44 = !{!"int", !38, i64 0}
!45 = !{!42, !37, i64 8}
!46 = !{!42, !43, i64 16}
!47 = !{!42, !44, i64 20}
!48 = !{!49, !44, i64 32}
!49 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !36, i64 0, !44, i64 32}
!50 = !{!42, !44, i64 24}
!51 = !{!42, !44, i64 28}
!52 = !{!53, !53, i64 0}
!53 = !{!"short", !38, i64 0}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!"function_entry_count", i64 48}
!58 = !{!"branch_weights", i32 48, i32 245}
!59 = !{!"branch_weights", i32 48, i32 192}
!60 = !{!"branch_weights", i32 48, i32 0}
!61 = !{!"branch_weights", i32 245, i32 980}
!62 = distinct !{!62, !55, !56}
!63 = !{!"branch_weights", i32 245, i32 0}
!64 = !{!"branch_weights", i32 245, i32 48}
!65 = !{!"branch_weights", i32 197, i32 48}
!66 = distinct !{!66, !55, !56}
!67 = !{!"branch_weights", i32 0, i32 48}
!68 = !{i8 0, i8 2}
!69 = distinct !{!69, !55, !56}
!70 = !{}
