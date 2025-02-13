; ModuleID = 'StringTokenizer.cpp'
source_filename = "StringTokenizer.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::StringTokenizer" = type { ptr, ptr, i8, i32, i32, i32 }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>

$_ZNK11xalanc_1_1014XalanDOMString5c_strEv = comdat any

$_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString6lengthEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString4sizeEv = comdat any

$_ZN11xalanc_1_106lengthEPKt = comdat any

$_ZN11xalanc_1_107indexOfEPKtt = comdat any

@_ZN11xalanc_1_1015StringTokenizer15s_defaultTokensE = dso_local local_unnamed_addr constant [5 x i16] [i16 32, i16 9, i16 10, i16 13, i16 0], align 2
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1015StringTokenizerC1ERKNS_14XalanDOMStringES3_b = dso_local unnamed_addr alias void (ptr, ptr, ptr, i1), ptr @_ZN11xalanc_1_1015StringTokenizerC2ERKNS_14XalanDOMStringES3_b
@_ZN11xalanc_1_1015StringTokenizerC1ERKNS_14XalanDOMStringEPKtb = dso_local unnamed_addr alias void (ptr, ptr, ptr, i1), ptr @_ZN11xalanc_1_1015StringTokenizerC2ERKNS_14XalanDOMStringEPKtb
@_ZN11xalanc_1_1015StringTokenizerC1EPKtS2_b = dso_local unnamed_addr alias void (ptr, ptr, ptr, i1), ptr @_ZN11xalanc_1_1015StringTokenizerC2EPKtS2_b
@_ZN11xalanc_1_1015StringTokenizerC1EPKtRKNS_14XalanDOMStringEb = dso_local unnamed_addr alias void (ptr, ptr, ptr, i1), ptr @_ZN11xalanc_1_1015StringTokenizerC2EPKtRKNS_14XalanDOMStringEb
@_ZN11xalanc_1_1015StringTokenizerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1015StringTokenizerD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015StringTokenizerC2ERKNS_14XalanDOMStringES3_b(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 !prof !48 {
  %5 = zext i1 %3 to i8
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %1) #4
  store ptr %6, ptr %0, align 8, !tbaa !49
  %7 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 1
  %8 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %2) #4
  store ptr %8, ptr %7, align 8, !tbaa !56
  %9 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 2
  store i8 %5, ptr %9, align 8, !tbaa !57
  %10 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 3
  store i32 0, ptr %10, align 4, !tbaa !58
  %11 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 4
  %12 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %1) #4
  store i32 %12, ptr %11, align 8, !tbaa !59
  %13 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 5
  %14 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %2) #4
  store i32 %14, ptr %13, align 4, !tbaa !60
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !61 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #4
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #4
  br i1 %2, label %5, label %3, !prof !62

3:                                                ; preds = %1
  %4 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #4
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat !prof !63 {
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #4
  ret i32 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !64 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !65 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #4
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !66
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !69 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  %5 = getelementptr inbounds i16, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !71 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !72 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #4
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #4
  ret i32 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !73 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #4
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !74
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015StringTokenizerC2ERKNS_14XalanDOMStringEPKtb(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 !prof !48 {
  %5 = zext i1 %3 to i8
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %1) #4
  store ptr %6, ptr %0, align 8, !tbaa !49
  %7 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 1
  store ptr %2, ptr %7, align 8, !tbaa !56
  %8 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 2
  store i8 %5, ptr %8, align 8, !tbaa !57
  %9 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 3
  store i32 0, ptr %9, align 4, !tbaa !58
  %10 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 4
  %11 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %1) #4
  store i32 %11, ptr %10, align 8, !tbaa !59
  %12 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 5
  %13 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %2) #4
  store i32 %13, ptr %12, align 4, !tbaa !60
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %0) local_unnamed_addr #1 comdat !prof !76 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ]
  %4 = load i16, ptr %3, align 2, !tbaa !77
  %5 = icmp eq i16 %4, 0
  %6 = getelementptr inbounds i16, ptr %3, i64 1
  br i1 %5, label %7, label %2, !prof !79, !llvm.loop !80

7:                                                ; preds = %2
  %8 = ptrtoint ptr %3 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = lshr exact i64 %10, 1
  %12 = trunc i64 %11 to i32
  ret i32 %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1015StringTokenizerC2EPKtS2_b(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #1 align 2 !prof !82 {
  %5 = zext i1 %3 to i8
  store ptr %1, ptr %0, align 8, !tbaa !49
  %6 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 1
  store ptr %2, ptr %6, align 8, !tbaa !56
  %7 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 2
  store i8 %5, ptr %7, align 8, !tbaa !57
  %8 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 3
  store i32 0, ptr %8, align 4, !tbaa !58
  %9 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 4
  %10 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %1) #4
  store i32 %10, ptr %9, align 8, !tbaa !59
  %11 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 5
  %12 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %2) #4
  store i32 %12, ptr %11, align 4, !tbaa !60
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015StringTokenizerC2EPKtRKNS_14XalanDOMStringEb(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 !prof !48 {
  %5 = zext i1 %3 to i8
  store ptr %1, ptr %0, align 8, !tbaa !49
  %6 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 1
  %7 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %2) #4
  store ptr %7, ptr %6, align 8, !tbaa !56
  %8 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 2
  store i8 %5, ptr %8, align 8, !tbaa !57
  %9 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 3
  store i32 0, ptr %9, align 4, !tbaa !58
  %10 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 4
  %11 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %1) #4
  store i32 %11, ptr %10, align 8, !tbaa !59
  %12 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 5
  %13 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %2) #4
  store i32 %13, ptr %12, align 4, !tbaa !60
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1015StringTokenizerD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !82 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1015StringTokenizer13hasMoreTokensEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) local_unnamed_addr #1 align 2 !prof !48 {
  %2 = tail call noundef i64 @_ZNK11xalanc_1_1015StringTokenizer11countTokensEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #4
  %3 = icmp ne i64 %2, 0
  ret i1 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i64 @_ZNK11xalanc_1_1015StringTokenizer11countTokensEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) local_unnamed_addr #1 align 2 !prof !82 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !58
  %4 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8
  %6 = icmp ult i32 %3, %5
  br i1 %6, label %7, label %22, !prof !83

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 2
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %19, %9 ]
  %11 = phi i32 [ %3, %7 ], [ %17, %9 ]
  %12 = tail call noundef i32 @_ZNK11xalanc_1_1015StringTokenizer22FindNextDelimiterIndexEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %11) #4
  %13 = icmp eq i32 %12, %11
  %14 = load i8, ptr %8, align 8, !range !84
  %15 = zext nneg i8 %14 to i64
  %16 = zext i1 %13 to i32
  %17 = add nuw i32 %12, %16
  %18 = select i1 %13, i64 %15, i64 1, !prof !85
  %19 = add i64 %10, %18
  %20 = load i32, ptr %4, align 8, !tbaa !59
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %9, label %22, !prof !86, !llvm.loop !87

22:                                               ; preds = %9, %1
  %23 = phi i64 [ 0, %1 ], [ %19, %9 ]
  ret i64 %23
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015StringTokenizer9nextTokenERNS_14XalanDOMStringE(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 4
  %6 = load i32, ptr %3, align 4, !tbaa !58
  br label %7

7:                                                ; preds = %19, %2
  %8 = phi i32 [ %13, %19 ], [ %6, %2 ]
  %9 = tail call noundef i32 @_ZNK11xalanc_1_1015StringTokenizer22FindNextDelimiterIndexEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %8) #4
  %10 = load i32, ptr %3, align 4, !tbaa !58
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %7
  %13 = add i32 %9, 1
  store i32 %13, ptr %3, align 4, !tbaa !58
  %14 = load i8, ptr %4, align 8, !tbaa !57, !range !84, !noundef !88
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %0, align 8, !tbaa !49
  %18 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_109substringEPKtRNS_14XalanDOMStringEjj(ptr noundef %17, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %9, i32 noundef %13) #4
  br label %25

19:                                               ; preds = %12
  %20 = load i32, ptr %5, align 8, !tbaa !59
  %21 = icmp ult i32 %13, %20
  br i1 %21, label %7, label %25

22:                                               ; preds = %7
  %23 = load ptr, ptr %0, align 8, !tbaa !49
  %24 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_109substringEPKtRNS_14XalanDOMStringEjj(ptr noundef %23, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %10, i32 noundef %9) #4
  store i32 %9, ptr %3, align 4, !tbaa !58
  br label %25

25:                                               ; preds = %19, %16, %22
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1015StringTokenizer22FindNextDelimiterIndexEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #1 align 2 !prof !82 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !59
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %28, !prof !89

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %"class.xalanc_1_10::StringTokenizer", ptr %0, i64 0, i32 5
  br label %9

9:                                                ; preds = %6, %9
  %10 = phi i8 [ 0, %6 ], [ %22, %9 ]
  %11 = phi i32 [ %1, %6 ], [ %21, %9 ]
  %12 = load ptr, ptr %0, align 8, !tbaa !49
  %13 = zext i32 %11 to i64
  %14 = getelementptr inbounds i16, ptr %12, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !77
  %16 = load ptr, ptr %7, align 8, !tbaa !56
  %17 = tail call noundef i32 @_ZN11xalanc_1_107indexOfEPKtt(ptr noundef %16, i16 noundef zeroext %15) #4
  %18 = load i32, ptr %8, align 4, !tbaa !60
  %19 = icmp uge i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = add nuw i32 %11, %20
  %22 = select i1 %19, i8 %10, i8 1, !prof !90
  %23 = load i32, ptr %3, align 8, !tbaa !59
  %24 = icmp ult i32 %21, %23
  %25 = and i8 %22, 1
  %26 = icmp eq i8 %25, 0
  %27 = select i1 %24, i1 %26, i1 false, !prof !91
  br i1 %27, label %9, label %28, !prof !92, !llvm.loop !93

28:                                               ; preds = %9, %2
  %29 = phi i32 [ %1, %2 ], [ %21, %9 ]
  ret i32 %29
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_109substringEPKtRNS_14XalanDOMStringEjj(ptr noundef, ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_107indexOfEPKtt(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #1 comdat !prof !94 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %9, %3 ]
  %5 = load i16, ptr %4, align 2, !tbaa !77
  %6 = icmp eq i16 %5, %1
  %7 = icmp eq i16 %5, 0
  %8 = or i1 %6, %7
  %9 = getelementptr inbounds i16, ptr %4, i64 1
  br i1 %8, label %10, label %3, !prof !95, !llvm.loop !96

10:                                               ; preds = %3
  %11 = ptrtoint ptr %4 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 1
  %15 = trunc i64 %14 to i32
  ret i32 %15
}

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!47}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138346841}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997642}
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
!16 = !{i32 300000, i64 30137156670, i32 4}
!17 = !{i32 400000, i64 28792558693, i32 6}
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
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!36 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 967143541}
!37 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, i64 967143541}
!38 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 563515055}
!39 = !{ptr @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, i64 66708615}
!40 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 1083116306}
!41 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 230527000}
!42 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, i64 230527000}
!43 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 1414337976}
!44 = !{ptr @_ZN11xalanc_1_1015StringTokenizerC2EPKtS2_b, ptr @_ZN11xalanc_1_106lengthEPKt, i64 96}
!45 = !{ptr @_ZNK11xalanc_1_1015StringTokenizer11countTokensEv, ptr @_ZNK11xalanc_1_1015StringTokenizer22FindNextDelimiterIndexEj, i64 47}
!46 = !{ptr @_ZNK11xalanc_1_1015StringTokenizer22FindNextDelimiterIndexEj, ptr @_ZN11xalanc_1_107indexOfEPKtt, i64 241}
!47 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!48 = !{!"function_entry_count", i64 0}
!49 = !{!50, !51, i64 0}
!50 = !{!"_ZTSN11xalanc_1_1015StringTokenizerE", !51, i64 0, !51, i64 8, !54, i64 16, !55, i64 20, !55, i64 24, !55, i64 28}
!51 = !{!"any pointer", !52, i64 0}
!52 = !{!"omnipotent char", !53, i64 0}
!53 = !{!"Simple C++ TBAA"}
!54 = !{!"bool", !52, i64 0}
!55 = !{!"int", !52, i64 0}
!56 = !{!50, !51, i64 8}
!57 = !{!50, !54, i64 16}
!58 = !{!50, !55, i64 20}
!59 = !{!50, !55, i64 24}
!60 = !{!50, !55, i64 28}
!61 = !{!"function_entry_count", i64 967143541}
!62 = !{!"branch_weights", i32 403628487, i32 563515056}
!63 = !{!"function_entry_count", i64 66708615}
!64 = !{!"function_entry_count", i64 3070433826}
!65 = !{!"function_entry_count", i64 1083116306}
!66 = !{!67, !68, i64 8}
!67 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !51, i64 0, !68, i64 8, !68, i64 16, !51, i64 24}
!68 = !{!"long", !52, i64 0}
!69 = !{!"function_entry_count", i64 565220908}
!70 = !{!67, !51, i64 24}
!71 = !{!"function_entry_count", i64 6521798503}
!72 = !{!"function_entry_count", i64 230527000}
!73 = !{!"function_entry_count", i64 1414337976}
!74 = !{!75, !55, i64 32}
!75 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !67, i64 0, !55, i64 32}
!76 = !{!"function_entry_count", i64 21552397}
!77 = !{!78, !78, i64 0}
!78 = !{!"short", !52, i64 0}
!79 = !{!"branch_weights", i32 21552398, i32 128560690}
!80 = distinct !{!80, !81}
!81 = !{!"llvm.loop.mustprogress"}
!82 = !{!"function_entry_count", i64 48}
!83 = !{!"branch_weights", i32 9555, i32 245}
!84 = !{i8 0, i8 2}
!85 = !{!"branch_weights", i32 1, i32 49}
!86 = !{!"branch_weights", i32 1, i32 195}
!87 = distinct !{!87, !81}
!88 = !{}
!89 = !{!"branch_weights", i32 195, i32 1}
!90 = !{!"branch_weights", i32 246, i32 1}
!91 = !{!"branch_weights", i32 246, i32 49}
!92 = !{!"branch_weights", i32 789, i32 195}
!93 = distinct !{!93, !81}
!94 = !{!"function_entry_count", i64 1963805}
!95 = !{!"branch_weights", i32 575723646, i32 -2055874256}
!96 = distinct !{!96, !81}
