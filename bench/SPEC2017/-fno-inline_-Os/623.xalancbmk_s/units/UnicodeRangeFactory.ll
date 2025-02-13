; ModuleID = 'UnicodeRangeFactory.cpp'
source_filename = "UnicodeRangeFactory.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::RangeFactory" = type <{ ptr, i8, i8, [6 x i8] }>
%"class.xercesc_2_7::RangeTokenMap" = type { ptr, ptr, ptr, ptr, %"class.xercesc_2_7::XMLMutex" }
%"class.xercesc_2_7::XMLMutex" = type { ptr }
%"class.xercesc_2_7::RangeToken" = type { %"class.xercesc_2_7::Token", i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::Token" = type { ptr, i16, ptr }
%"class.xercesc_2_7::TokenFactory" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

$_ZNK11xercesc_2_713RangeTokenMap15getTokenFactoryEv = comdat any

$_ZN11xercesc_2_710RangeToken9createMapEv = comdat any

$_ZNK11xercesc_2_712TokenFactory16getMemoryManagerEv = comdat any

@_ZTVN11xercesc_2_719UnicodeRangeFactoryE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_719UnicodeRangeFactoryE, ptr @_ZN11xercesc_2_719UnicodeRangeFactoryD2Ev, ptr @_ZN11xercesc_2_719UnicodeRangeFactoryD0Ev, ptr @_ZN11xercesc_2_719UnicodeRangeFactory20initializeKeywordMapEPNS_13RangeTokenMapE, ptr @_ZN11xercesc_2_719UnicodeRangeFactory11buildRangesEPNS_13RangeTokenMapE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_719UnicodeRangeFactoryE = dso_local constant [37 x i8] c"N11xercesc_2_719UnicodeRangeFactoryE\00", align 1
@_ZTIN11xercesc_2_712RangeFactoryE = external constant ptr
@_ZTIN11xercesc_2_719UnicodeRangeFactoryE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_719UnicodeRangeFactoryE, ptr @_ZTIN11xercesc_2_712RangeFactoryE }, align 8
@_ZN11xercesc_2_75Token9UTF16_MAXE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_7L8fgUniAllE = internal constant [4 x i16] [i16 65, i16 76, i16 76, i16 0], align 2
@_ZN11xercesc_2_7L12fgUniIsAlphaE = internal constant [8 x i16] [i16 73, i16 115, i16 65, i16 108, i16 112, i16 104, i16 97, i16 0], align 16
@_ZN11xercesc_2_7L12fgUniIsAlnumE = internal constant [8 x i16] [i16 73, i16 115, i16 65, i16 108, i16 110, i16 117, i16 109, i16 0], align 16
@_ZN11xercesc_2_7L11fgUniIsWordE = internal constant [7 x i16] [i16 73, i16 115, i16 87, i16 111, i16 114, i16 100, i16 0], align 2
@_ZN11xercesc_2_7L13fgUniAssignedE = internal constant [9 x i16] [i16 65, i16 83, i16 83, i16 73, i16 71, i16 78, i16 69, i16 68, i16 0], align 16
@_ZN11xercesc_2_7L12fgUniIsSpaceE = internal constant [8 x i16] [i16 73, i16 115, i16 83, i16 112, i16 97, i16 99, i16 101, i16 0], align 16
@_ZN11xercesc_2_7L13uniCategNamesE = internal constant <{ <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, i16, [35 x i16] }>, <{ i16, [36 x i16] }>, <{ i16, [36 x i16] }>, <{ i16, [36 x i16] }>, <{ i16, [36 x i16] }>, <{ i16, [36 x i16] }>, <{ i16, [36 x i16] }>, <{ i16, [36 x i16] }> }> <{ <{ i16, i16, [35 x i16] }> <{ i16 67, i16 110, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 76, i16 117, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 76, i16 108, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 76, i16 116, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 76, i16 109, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 76, i16 111, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 77, i16 110, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 77, i16 101, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 77, i16 99, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 78, i16 100, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 78, i16 108, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 78, i16 111, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 90, i16 115, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 90, i16 108, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 90, i16 112, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 67, i16 99, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 67, i16 102, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 67, i16 111, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 67, i16 115, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 80, i16 100, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 80, i16 115, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 80, i16 101, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 80, i16 99, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 80, i16 111, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 83, i16 109, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 83, i16 99, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 83, i16 107, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 83, i16 111, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 80, i16 105, [35 x i16] zeroinitializer }>, <{ i16, i16, [35 x i16] }> <{ i16 80, i16 102, [35 x i16] zeroinitializer }>, <{ i16, [36 x i16] }> <{ i16 76, [36 x i16] zeroinitializer }>, <{ i16, [36 x i16] }> <{ i16 77, [36 x i16] zeroinitializer }>, <{ i16, [36 x i16] }> <{ i16 78, [36 x i16] zeroinitializer }>, <{ i16, [36 x i16] }> <{ i16 90, [36 x i16] zeroinitializer }>, <{ i16, [36 x i16] }> <{ i16 67, [36 x i16] zeroinitializer }>, <{ i16, [36 x i16] }> <{ i16 80, [36 x i16] zeroinitializer }>, <{ i16, [36 x i16] }> <{ i16 83, [36 x i16] zeroinitializer }> }>, align 16
@_ZN11xercesc_2_7L17fgUnicodeCategoryE = internal constant [8 x i16] [i16 85, i16 78, i16 73, i16 67, i16 79, i16 68, i16 69, i16 0], align 16
@switch.table._ZN11xercesc_2_719UnicodeRangeFactory14getUniCategoryEt = private unnamed_addr constant [30 x i16] [i16 34, i16 30, i16 30, i16 30, i16 30, i16 30, i16 31, i16 31, i16 31, i16 32, i16 32, i16 32, i16 33, i16 33, i16 33, i16 34, i16 34, i16 34, i16 34, i16 35, i16 35, i16 35, i16 35, i16 35, i16 36, i16 36, i16 36, i16 36, i16 35, i16 35], align 2

@_ZN11xercesc_2_719UnicodeRangeFactoryC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_719UnicodeRangeFactoryC2Ev
@_ZN11xercesc_2_719UnicodeRangeFactoryD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_719UnicodeRangeFactoryD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_719UnicodeRangeFactoryD0Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_719UnicodeRangeFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) #6
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719UnicodeRangeFactory20initializeKeywordMapEPNS_13RangeTokenMapE(ptr nocapture noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !41 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeFactory", ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 1, !tbaa !42, !range !47, !noundef !48
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %12, !prof !49

6:                                                ; preds = %7
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L8fgUniAllE, ptr noundef nonnull @_ZN11xercesc_2_7L17fgUnicodeCategoryE) #7
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L12fgUniIsAlphaE, ptr noundef nonnull @_ZN11xercesc_2_7L17fgUnicodeCategoryE) #7
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L12fgUniIsAlnumE, ptr noundef nonnull @_ZN11xercesc_2_7L17fgUnicodeCategoryE) #7
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L11fgUniIsWordE, ptr noundef nonnull @_ZN11xercesc_2_7L17fgUnicodeCategoryE) #7
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L13fgUniAssignedE, ptr noundef nonnull @_ZN11xercesc_2_7L17fgUnicodeCategoryE) #7
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L12fgUniIsSpaceE, ptr noundef nonnull @_ZN11xercesc_2_7L17fgUnicodeCategoryE) #7
  store i8 1, ptr %3, align 1, !tbaa !42
  br label %12

7:                                                ; preds = %2, %7
  %8 = phi i64 [ %10, %7 ], [ 0, %2 ]
  %9 = getelementptr inbounds [37 x [37 x i16]], ptr @_ZN11xercesc_2_7L13uniCategNamesE, i64 0, i64 %8
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %9, ptr noundef nonnull @_ZN11xercesc_2_7L17fgUnicodeCategoryE) #7
  %10 = add nuw nsw i64 %8, 1
  %11 = icmp eq i64 %10, 37
  br i1 %11, label %6, label %7, !prof !50, !llvm.loop !51

12:                                               ; preds = %2, %6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719UnicodeRangeFactory11buildRangesEPNS_13RangeTokenMapE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !53 {
  %3 = alloca [37 x ptr], align 16
  %4 = getelementptr inbounds %"class.xercesc_2_7::RangeFactory", ptr %0, i64 0, i32 1
  %5 = load i8, ptr %4, align 8, !tbaa !54, !range !47, !noundef !48
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %118

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::RangeFactory", ptr %0, i64 0, i32 2
  %9 = load i8, ptr %8, align 1, !tbaa !42, !range !47, !noundef !48
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 8, !tbaa !55
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1) #7
  br label %15

15:                                               ; preds = %11, %7
  %16 = tail call noundef ptr @_ZNK11xercesc_2_713RangeTokenMap15getTokenFactoryEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #7
  call void @llvm.lifetime.start.p0(i64 296, ptr nonnull %3) #8
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi i64 [ 0, %15 ], [ %21, %17 ]
  %19 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %16, i1 noundef zeroext false) #7
  %20 = getelementptr inbounds [37 x ptr], ptr %3, i64 0, i64 %18
  store ptr %19, ptr %20, align 8, !tbaa !57
  %21 = add nuw nsw i64 %18, 1
  %22 = icmp eq i64 %21, 37
  br i1 %22, label %29, label %17, !llvm.loop !59

23:                                               ; preds = %29
  %24 = load ptr, ptr %3, align 16, !tbaa !57
  %25 = load i32, ptr @_ZN11xercesc_2_75Token9UTF16_MAXE, align 4, !tbaa !60
  %26 = load ptr, ptr %24, align 8, !tbaa !55
  %27 = getelementptr inbounds ptr, ptr %26, i64 12
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(72) %24, i32 noundef 65536, i32 noundef %25) #7
  br label %102

29:                                               ; preds = %17, %29
  %30 = phi i32 [ %46, %29 ], [ 0, %17 ]
  %31 = trunc i32 %30 to i16
  %32 = tail call noundef zeroext i16 @_ZN11xercesc_2_715XMLUniCharacter7getTypeEt(i16 noundef zeroext %31) #7
  %33 = zext i16 %32 to i64
  %34 = getelementptr inbounds [37 x ptr], ptr %3, i64 0, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !57
  %36 = load ptr, ptr %35, align 8, !tbaa !55
  %37 = getelementptr inbounds ptr, ptr %36, i64 12
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(72) %35, i32 noundef %30, i32 noundef %30) #7
  %39 = tail call noundef zeroext i16 @_ZN11xercesc_2_719UnicodeRangeFactory14getUniCategoryEt(ptr nonnull align 8 poison, i16 noundef zeroext %32) #7, !range !62
  %40 = zext nneg i16 %39 to i64
  %41 = getelementptr inbounds [37 x ptr], ptr %3, i64 0, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !57
  %43 = load ptr, ptr %42, align 8, !tbaa !55
  %44 = getelementptr inbounds ptr, ptr %43, i64 12
  %45 = load ptr, ptr %44, align 8
  tail call void %45(ptr noundef nonnull align 8 dereferenceable(72) %42, i32 noundef %30, i32 noundef %30) #7
  %46 = add nuw nsw i32 %30, 1
  %47 = icmp eq i32 %46, 65536
  br i1 %47, label %23, label %29, !llvm.loop !63

48:                                               ; preds = %102
  %49 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %16, i1 noundef zeroext false) #7
  %50 = load ptr, ptr %49, align 8, !tbaa !55
  %51 = getelementptr inbounds ptr, ptr %50, i64 12
  %52 = load ptr, ptr %51, align 8
  tail call void %52(ptr noundef nonnull align 8 dereferenceable(72) %49, i32 noundef 0, i32 noundef %25) #7
  tail call void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %49) #7
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L8fgUniAllE, ptr noundef nonnull %49, i1 noundef zeroext false) #7
  %53 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %16, i1 noundef zeroext false) #7
  %54 = getelementptr inbounds [37 x ptr], ptr %3, i64 0, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !57
  %56 = load ptr, ptr %53, align 8, !tbaa !55
  %57 = getelementptr inbounds ptr, ptr %56, i64 13
  %58 = load ptr, ptr %57, align 8
  tail call void %58(ptr noundef nonnull align 8 dereferenceable(72) %53, ptr noundef %55) #7
  %59 = getelementptr inbounds [37 x ptr], ptr %3, i64 0, i64 2
  %60 = load ptr, ptr %59, align 16, !tbaa !57
  %61 = load ptr, ptr %53, align 8, !tbaa !55
  %62 = getelementptr inbounds ptr, ptr %61, i64 13
  %63 = load ptr, ptr %62, align 8
  tail call void %63(ptr noundef nonnull align 8 dereferenceable(72) %53, ptr noundef %60) #7
  %64 = getelementptr inbounds [37 x ptr], ptr %3, i64 0, i64 5
  %65 = load ptr, ptr %64, align 8, !tbaa !57
  %66 = load ptr, ptr %53, align 8, !tbaa !55
  %67 = getelementptr inbounds ptr, ptr %66, i64 13
  %68 = load ptr, ptr %67, align 8
  tail call void %68(ptr noundef nonnull align 8 dereferenceable(72) %53, ptr noundef %65) #7
  tail call void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %53) #7
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L12fgUniIsAlphaE, ptr noundef nonnull %53, i1 noundef zeroext false) #7
  %69 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %16, i1 noundef zeroext false) #7
  %70 = load ptr, ptr %69, align 8, !tbaa !55
  %71 = getelementptr inbounds ptr, ptr %70, i64 13
  %72 = load ptr, ptr %71, align 8
  tail call void %72(ptr noundef nonnull align 8 dereferenceable(72) %69, ptr noundef nonnull %53) #7
  %73 = getelementptr inbounds [37 x ptr], ptr %3, i64 0, i64 9
  %74 = load ptr, ptr %73, align 8, !tbaa !57
  %75 = load ptr, ptr %69, align 8, !tbaa !55
  %76 = getelementptr inbounds ptr, ptr %75, i64 13
  %77 = load ptr, ptr %76, align 8
  tail call void %77(ptr noundef nonnull align 8 dereferenceable(72) %69, ptr noundef %74) #7
  tail call void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %69) #7
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L12fgUniIsAlnumE, ptr noundef nonnull %69, i1 noundef zeroext false) #7
  %78 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %16, i1 noundef zeroext false) #7
  %79 = load ptr, ptr %78, align 8, !tbaa !55
  %80 = getelementptr inbounds ptr, ptr %79, i64 13
  %81 = load ptr, ptr %80, align 8
  tail call void %81(ptr noundef nonnull align 8 dereferenceable(72) %78, ptr noundef nonnull %69) #7
  %82 = load ptr, ptr %78, align 8, !tbaa !55
  %83 = getelementptr inbounds ptr, ptr %82, i64 12
  %84 = load ptr, ptr %83, align 8
  tail call void %84(ptr noundef nonnull align 8 dereferenceable(72) %78, i32 noundef 95, i32 noundef 95) #7
  tail call void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %78) #7
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L11fgUniIsWordE, ptr noundef nonnull %78, i1 noundef zeroext false) #7
  %85 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !57
  %86 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef nonnull %78, ptr noundef nonnull %16, ptr noundef %85) #7
  tail call void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %86) #7
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L11fgUniIsWordE, ptr noundef nonnull %86, i1 noundef zeroext true) #7
  %87 = tail call noundef ptr @_ZNK11xercesc_2_712TokenFactory16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(128) %16) #7
  %88 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef nonnull %24, ptr noundef nonnull %16, ptr noundef %87) #7
  tail call void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %88) #7
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L13fgUniAssignedE, ptr noundef nonnull %88, i1 noundef zeroext false) #7
  %89 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %16, i1 noundef zeroext false) #7
  %90 = getelementptr inbounds [37 x ptr], ptr %3, i64 0, i64 12
  %91 = load ptr, ptr %90, align 16, !tbaa !57
  %92 = load ptr, ptr %89, align 8, !tbaa !55
  %93 = getelementptr inbounds ptr, ptr %92, i64 13
  %94 = load ptr, ptr %93, align 8
  tail call void %94(ptr noundef nonnull align 8 dereferenceable(72) %89, ptr noundef %91) #7
  %95 = getelementptr inbounds [37 x ptr], ptr %3, i64 0, i64 13
  %96 = load ptr, ptr %95, align 8, !tbaa !57
  %97 = load ptr, ptr %89, align 8, !tbaa !55
  %98 = getelementptr inbounds ptr, ptr %97, i64 13
  %99 = load ptr, ptr %98, align 8
  tail call void %99(ptr noundef nonnull align 8 dereferenceable(72) %89, ptr noundef %96) #7
  tail call void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %89) #7
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L12fgUniIsSpaceE, ptr noundef nonnull %89, i1 noundef zeroext false) #7
  %100 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !57
  %101 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef nonnull %89, ptr noundef nonnull %16, ptr noundef %100) #7
  tail call void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %101) #7
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L12fgUniIsSpaceE, ptr noundef nonnull %101, i1 noundef zeroext true) #7
  br label %112

102:                                              ; preds = %23, %102
  %103 = phi i64 [ 0, %23 ], [ %109, %102 ]
  %104 = getelementptr inbounds [37 x ptr], ptr %3, i64 0, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !57
  %106 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !57
  %107 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef %105, ptr noundef nonnull %16, ptr noundef %106) #7
  tail call void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %107) #7
  %108 = getelementptr inbounds [37 x [37 x i16]], ptr @_ZN11xercesc_2_7L13uniCategNamesE, i64 0, i64 %103
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %108, ptr noundef %105, i1 noundef zeroext false) #7
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %108, ptr noundef nonnull %107, i1 noundef zeroext true) #7
  %109 = add nuw nsw i64 %103, 1
  %110 = icmp eq i64 %109, 37
  br i1 %110, label %48, label %102, !llvm.loop !64

111:                                              ; preds = %112
  store i8 1, ptr %4, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(i64 296, ptr nonnull %3) #8
  br label %118

112:                                              ; preds = %48, %112
  %113 = phi i64 [ 0, %48 ], [ %116, %112 ]
  %114 = getelementptr inbounds [37 x ptr], ptr %3, i64 0, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !57
  tail call void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %115) #7
  %116 = add nuw nsw i64 %113, 1
  %117 = icmp eq i64 %116, 37
  br i1 %117, label %111, label %112, !llvm.loop !65

118:                                              ; preds = %2, %111
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719UnicodeRangeFactoryC2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) unnamed_addr #1 align 2 !prof !41 {
  tail call void @_ZN11xercesc_2_712RangeFactoryC2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) #7
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719UnicodeRangeFactoryE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !55
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712RangeFactoryC2Ev(ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_719UnicodeRangeFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) unnamed_addr #0 align 2 !prof !41 {
  tail call void @_ZN11xercesc_2_712RangeFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) #6
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712RangeFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713RangeTokenMap15getTokenFactoryEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RangeTokenMap", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare noundef zeroext i16 @_ZN11xercesc_2_715XMLUniCharacter7getTypeEt(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i16 @_ZN11xercesc_2_719UnicodeRangeFactory14getUniCategoryEt(ptr nocapture nonnull readnone align 8 %0, i16 noundef zeroext %1) local_unnamed_addr #5 align 2 !prof !53 {
  %3 = icmp ult i16 %1, 30
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = zext nneg i16 %1 to i64
  %6 = getelementptr inbounds [30 x i16], ptr @switch.table._ZN11xercesc_2_719UnicodeRangeFactory14getUniCategoryEt, i64 0, i64 %5
  %7 = load i16, ptr %6, align 2
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi i16 [ %7, %4 ], [ 0, %2 ]
  ret i16 %9
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #1 comdat align 2 !prof !69 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !74

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #7
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712TokenFactory16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #0 comdat align 2 !prof !75 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::TokenFactory", ptr %0, i64 0, i32 15
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!40}

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
!35 = distinct !{!36, !37, !38, !39}
!36 = !{ptr @_ZN11xercesc_2_719UnicodeRangeFactory20initializeKeywordMapEPNS_13RangeTokenMapE, ptr @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_, i64 19}
!37 = !{ptr @_ZN11xercesc_2_719UnicodeRangeFactoryC2Ev, ptr @_ZN11xercesc_2_712RangeFactoryC2Ev, i64 1}
!38 = !{ptr @_ZN11xercesc_2_719UnicodeRangeFactoryD2Ev, ptr @_ZN11xercesc_2_712RangeFactoryD2Ev, i64 1}
!39 = !{ptr @_ZN11xercesc_2_710RangeToken9createMapEv, ptr @_ZN11xercesc_2_710RangeToken11doCreateMapEv, i64 18}
!40 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!41 = !{!"function_entry_count", i64 1}
!42 = !{!43, !44, i64 9}
!43 = !{!"_ZTSN11xercesc_2_712RangeFactoryE", !44, i64 8, !44, i64 9}
!44 = !{!"bool", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C++ TBAA"}
!47 = !{i8 0, i8 2}
!48 = !{}
!49 = !{!"branch_weights", i32 2, i32 1}
!50 = !{!"branch_weights", i32 2, i32 36}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"function_entry_count", i64 0}
!54 = !{!43, !44, i64 8}
!55 = !{!56, !56, i64 0}
!56 = !{!"vtable pointer", !46, i64 0}
!57 = !{!58, !58, i64 0}
!58 = !{!"any pointer", !45, i64 0}
!59 = distinct !{!59, !52}
!60 = !{!61, !61, i64 0}
!61 = !{!"int", !45, i64 0}
!62 = !{i16 0, i16 37}
!63 = distinct !{!63, !52}
!64 = distinct !{!64, !52}
!65 = distinct !{!65, !52}
!66 = !{!67, !58, i64 24}
!67 = !{!"_ZTSN11xercesc_2_713RangeTokenMapE", !58, i64 0, !58, i64 8, !58, i64 16, !58, i64 24, !68, i64 32}
!68 = !{!"_ZTSN11xercesc_2_78XMLMutexE", !58, i64 0}
!69 = !{!"function_entry_count", i64 1301042}
!70 = !{!71, !58, i64 40}
!71 = !{!"_ZTSN11xercesc_2_710RangeTokenE", !72, i64 0, !44, i64 24, !44, i64 25, !61, i64 28, !61, i64 32, !61, i64 36, !58, i64 40, !58, i64 48, !58, i64 56, !58, i64 64}
!72 = !{!"_ZTSN11xercesc_2_75TokenE", !73, i64 8, !58, i64 16}
!73 = !{!"short", !45, i64 0}
!74 = !{!"branch_weights", i32 18, i32 1301026}
!75 = !{!"function_entry_count", i64 77}
!76 = !{!77, !58, i64 120}
!77 = !{!"_ZTSN11xercesc_2_712TokenFactoryE", !58, i64 0, !58, i64 8, !58, i64 16, !58, i64 24, !58, i64 32, !58, i64 40, !58, i64 48, !58, i64 56, !58, i64 64, !58, i64 72, !58, i64 80, !58, i64 88, !58, i64 96, !58, i64 104, !58, i64 112, !58, i64 120}
