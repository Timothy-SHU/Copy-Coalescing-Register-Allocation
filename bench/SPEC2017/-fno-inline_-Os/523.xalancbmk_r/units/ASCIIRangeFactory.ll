; ModuleID = 'ASCIIRangeFactory.cpp'
source_filename = "ASCIIRangeFactory.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::RangeFactory" = type <{ ptr, i8, i8, [6 x i8] }>
%"class.xercesc_2_7::RangeTokenMap" = type { ptr, ptr, ptr, ptr, %"class.xercesc_2_7::XMLMutex" }
%"class.xercesc_2_7::XMLMutex" = type { ptr }
%"class.xercesc_2_7::RangeToken" = type { %"class.xercesc_2_7::Token", i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::Token" = type { ptr, i16, ptr }

$_ZNK11xercesc_2_713RangeTokenMap15getTokenFactoryEv = comdat any

$_ZN11xercesc_2_710RangeToken9createMapEv = comdat any

@_ZTVN11xercesc_2_717ASCIIRangeFactoryE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_717ASCIIRangeFactoryE, ptr @_ZN11xercesc_2_717ASCIIRangeFactoryD2Ev, ptr @_ZN11xercesc_2_717ASCIIRangeFactoryD0Ev, ptr @_ZN11xercesc_2_717ASCIIRangeFactory20initializeKeywordMapEPNS_13RangeTokenMapE, ptr @_ZN11xercesc_2_717ASCIIRangeFactory11buildRangesEPNS_13RangeTokenMapE] }, align 8
@_ZN11xercesc_2_7L12fgASCIISpaceE = internal constant [14 x i16] [i16 97, i16 115, i16 99, i16 105, i16 105, i16 58, i16 105, i16 115, i16 83, i16 112, i16 97, i16 99, i16 101, i16 0], align 16
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_7L12fgASCIIDigitE = internal constant [14 x i16] [i16 97, i16 115, i16 99, i16 105, i16 105, i16 58, i16 105, i16 115, i16 68, i16 105, i16 103, i16 105, i16 116, i16 0], align 16
@_ZN11xercesc_2_7L11fgASCIIWordE = internal constant [13 x i16] [i16 97, i16 115, i16 99, i16 105, i16 105, i16 58, i16 105, i16 115, i16 87, i16 111, i16 114, i16 100, i16 0], align 16
@_ZN11xercesc_2_7L13fgASCIIXDigitE = internal constant [15 x i16] [i16 97, i16 115, i16 99, i16 105, i16 105, i16 58, i16 105, i16 115, i16 88, i16 68, i16 105, i16 103, i16 105, i16 116, i16 0], align 16
@_ZN11xercesc_2_7L7fgASCIIE = internal constant [14 x i16] [i16 97, i16 115, i16 99, i16 105, i16 105, i16 58, i16 105, i16 115, i16 65, i16 115, i16 99, i16 105, i16 105, i16 0], align 16
@_ZN11xercesc_2_7L15fgASCIICategoryE = internal constant [6 x i16] [i16 65, i16 83, i16 67, i16 73, i16 73, i16 0], align 2
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_717ASCIIRangeFactoryE = dso_local constant [35 x i8] c"N11xercesc_2_717ASCIIRangeFactoryE\00", align 1
@_ZTIN11xercesc_2_712RangeFactoryE = external constant ptr
@_ZTIN11xercesc_2_717ASCIIRangeFactoryE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_717ASCIIRangeFactoryE, ptr @_ZTIN11xercesc_2_712RangeFactoryE }, align 8

@_ZN11xercesc_2_717ASCIIRangeFactoryC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717ASCIIRangeFactoryC2Ev
@_ZN11xercesc_2_717ASCIIRangeFactoryD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717ASCIIRangeFactoryD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717ASCIIRangeFactoryC2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) unnamed_addr #0 align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_712RangeFactoryC2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) #4
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_717ASCIIRangeFactoryE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !41
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712RangeFactoryC2Ev(ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712RangeFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717ASCIIRangeFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) unnamed_addr #3 align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_712RangeFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) #5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717ASCIIRangeFactoryD0Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) unnamed_addr #3 align 2 {
  tail call void @_ZN11xercesc_2_717ASCIIRangeFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) #5
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #5
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717ASCIIRangeFactory11buildRangesEPNS_13RangeTokenMapE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !44 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeFactory", ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !45, !range !49, !noundef !50
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %73

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::RangeFactory", ptr %0, i64 0, i32 2
  %8 = load i8, ptr %7, align 1, !tbaa !51, !range !49, !noundef !50
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !41
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1) #4
  br label %14

14:                                               ; preds = %10, %6
  %15 = tail call noundef ptr @_ZNK11xercesc_2_713RangeTokenMap15getTokenFactoryEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #4
  %16 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %15, i1 noundef zeroext false) #4
  %17 = load ptr, ptr %16, align 8, !tbaa !41
  %18 = getelementptr inbounds ptr, ptr %17, i64 12
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(72) %16, i32 noundef 9, i32 noundef 9) #4
  %20 = load ptr, ptr %16, align 8, !tbaa !41
  %21 = getelementptr inbounds ptr, ptr %20, i64 12
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(72) %16, i32 noundef 10, i32 noundef 10) #4
  %23 = load ptr, ptr %16, align 8, !tbaa !41
  %24 = getelementptr inbounds ptr, ptr %23, i64 12
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(72) %16, i32 noundef 12, i32 noundef 12) #4
  %26 = load ptr, ptr %16, align 8, !tbaa !41
  %27 = getelementptr inbounds ptr, ptr %26, i64 12
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(72) %16, i32 noundef 13, i32 noundef 13) #4
  %29 = load ptr, ptr %16, align 8, !tbaa !41
  %30 = getelementptr inbounds ptr, ptr %29, i64 12
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(72) %16, i32 noundef 32, i32 noundef 32) #4
  tail call void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %16) #4
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L12fgASCIISpaceE, ptr noundef nonnull %16, i1 noundef zeroext false) #4
  %32 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !52
  %33 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef nonnull %16, ptr noundef nonnull %15, ptr noundef %32) #4
  tail call void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %33) #4
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L12fgASCIISpaceE, ptr noundef nonnull %33, i1 noundef zeroext true) #4
  %34 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %15, i1 noundef zeroext false) #4
  %35 = load ptr, ptr %34, align 8, !tbaa !41
  %36 = getelementptr inbounds ptr, ptr %35, i64 12
  %37 = load ptr, ptr %36, align 8
  tail call void %37(ptr noundef nonnull align 8 dereferenceable(72) %34, i32 noundef 48, i32 noundef 57) #4
  tail call void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %34) #4
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L12fgASCIIDigitE, ptr noundef nonnull %34, i1 noundef zeroext false) #4
  %38 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !52
  %39 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef nonnull %34, ptr noundef nonnull %15, ptr noundef %38) #4
  tail call void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %39) #4
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L12fgASCIIDigitE, ptr noundef nonnull %39, i1 noundef zeroext true) #4
  %40 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %15, i1 noundef zeroext false) #4
  %41 = load ptr, ptr %40, align 8, !tbaa !41
  %42 = getelementptr inbounds ptr, ptr %41, i64 12
  %43 = load ptr, ptr %42, align 8
  tail call void %43(ptr noundef nonnull align 8 dereferenceable(72) %40, i32 noundef 48, i32 noundef 57) #4
  %44 = load ptr, ptr %40, align 8, !tbaa !41
  %45 = getelementptr inbounds ptr, ptr %44, i64 12
  %46 = load ptr, ptr %45, align 8
  tail call void %46(ptr noundef nonnull align 8 dereferenceable(72) %40, i32 noundef 65, i32 noundef 90) #4
  %47 = load ptr, ptr %40, align 8, !tbaa !41
  %48 = getelementptr inbounds ptr, ptr %47, i64 12
  %49 = load ptr, ptr %48, align 8
  tail call void %49(ptr noundef nonnull align 8 dereferenceable(72) %40, i32 noundef 95, i32 noundef 95) #4
  %50 = load ptr, ptr %40, align 8, !tbaa !41
  %51 = getelementptr inbounds ptr, ptr %50, i64 12
  %52 = load ptr, ptr %51, align 8
  tail call void %52(ptr noundef nonnull align 8 dereferenceable(72) %40, i32 noundef 97, i32 noundef 122) #4
  tail call void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %40) #4
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L11fgASCIIWordE, ptr noundef nonnull %40, i1 noundef zeroext false) #4
  %53 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !52
  %54 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef nonnull %40, ptr noundef nonnull %15, ptr noundef %53) #4
  tail call void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %54) #4
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L11fgASCIIWordE, ptr noundef nonnull %54, i1 noundef zeroext true) #4
  %55 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %15, i1 noundef zeroext false) #4
  %56 = load ptr, ptr %55, align 8, !tbaa !41
  %57 = getelementptr inbounds ptr, ptr %56, i64 12
  %58 = load ptr, ptr %57, align 8
  tail call void %58(ptr noundef nonnull align 8 dereferenceable(72) %55, i32 noundef 48, i32 noundef 57) #4
  %59 = load ptr, ptr %55, align 8, !tbaa !41
  %60 = getelementptr inbounds ptr, ptr %59, i64 12
  %61 = load ptr, ptr %60, align 8
  tail call void %61(ptr noundef nonnull align 8 dereferenceable(72) %55, i32 noundef 65, i32 noundef 70) #4
  %62 = load ptr, ptr %55, align 8, !tbaa !41
  %63 = getelementptr inbounds ptr, ptr %62, i64 12
  %64 = load ptr, ptr %63, align 8
  tail call void %64(ptr noundef nonnull align 8 dereferenceable(72) %55, i32 noundef 97, i32 noundef 97) #4
  tail call void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %55) #4
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L13fgASCIIXDigitE, ptr noundef nonnull %55, i1 noundef zeroext false) #4
  %65 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !52
  %66 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef nonnull %55, ptr noundef nonnull %15, ptr noundef %65) #4
  tail call void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %66) #4
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L13fgASCIIXDigitE, ptr noundef nonnull %66, i1 noundef zeroext true) #4
  %67 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %15, i1 noundef zeroext false) #4
  %68 = load ptr, ptr %67, align 8, !tbaa !41
  %69 = getelementptr inbounds ptr, ptr %68, i64 12
  %70 = load ptr, ptr %69, align 8
  tail call void %70(ptr noundef nonnull align 8 dereferenceable(72) %67, i32 noundef 0, i32 noundef 127) #4
  tail call void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %67) #4
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L7fgASCIIE, ptr noundef nonnull %67, i1 noundef zeroext false) #4
  %71 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !52
  %72 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef nonnull %67, ptr noundef nonnull %15, ptr noundef %71) #4
  tail call void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %72) #4
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L7fgASCIIE, ptr noundef nonnull %72, i1 noundef zeroext true) #4
  store i8 1, ptr %3, align 8, !tbaa !45
  br label %73

73:                                               ; preds = %2, %14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713RangeTokenMap15getTokenFactoryEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RangeTokenMap", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 !prof !57 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !63

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #4
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717ASCIIRangeFactory20initializeKeywordMapEPNS_13RangeTokenMapE(ptr nocapture noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeFactory", ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 1, !tbaa !51, !range !49, !noundef !50
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7, !prof !64

6:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L12fgASCIISpaceE, ptr noundef nonnull @_ZN11xercesc_2_7L15fgASCIICategoryE) #4
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L12fgASCIIDigitE, ptr noundef nonnull @_ZN11xercesc_2_7L15fgASCIICategoryE) #4
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L11fgASCIIWordE, ptr noundef nonnull @_ZN11xercesc_2_7L15fgASCIICategoryE) #4
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L13fgASCIIXDigitE, ptr noundef nonnull @_ZN11xercesc_2_7L15fgASCIICategoryE) #4
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L7fgASCIIE, ptr noundef nonnull @_ZN11xercesc_2_7L15fgASCIICategoryE) #4
  store i8 1, ptr %3, align 1, !tbaa !51
  br label %7

7:                                                ; preds = %2, %6
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize }
attributes #5 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!39}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @_ZN11xercesc_2_717ASCIIRangeFactoryC2Ev, ptr @_ZN11xercesc_2_712RangeFactoryC2Ev, i64 1}
!36 = !{ptr @_ZN11xercesc_2_717ASCIIRangeFactoryD2Ev, ptr @_ZN11xercesc_2_712RangeFactoryD2Ev, i64 1}
!37 = !{ptr @_ZN11xercesc_2_710RangeToken9createMapEv, ptr @_ZN11xercesc_2_710RangeToken11doCreateMapEv, i64 18}
!38 = !{ptr @_ZN11xercesc_2_717ASCIIRangeFactory20initializeKeywordMapEPNS_13RangeTokenMapE, ptr @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_, i64 5}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 1}
!41 = !{!42, !42, i64 0}
!42 = !{!"vtable pointer", !43, i64 0}
!43 = !{!"Simple C++ TBAA"}
!44 = !{!"function_entry_count", i64 0}
!45 = !{!46, !47, i64 8}
!46 = !{!"_ZTSN11xercesc_2_712RangeFactoryE", !47, i64 8, !47, i64 9}
!47 = !{!"bool", !48, i64 0}
!48 = !{!"omnipotent char", !43, i64 0}
!49 = !{i8 0, i8 2}
!50 = !{}
!51 = !{!46, !47, i64 9}
!52 = !{!53, !53, i64 0}
!53 = !{!"any pointer", !48, i64 0}
!54 = !{!55, !53, i64 24}
!55 = !{!"_ZTSN11xercesc_2_713RangeTokenMapE", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !56, i64 32}
!56 = !{!"_ZTSN11xercesc_2_78XMLMutexE", !53, i64 0}
!57 = !{!"function_entry_count", i64 1301042}
!58 = !{!59, !53, i64 40}
!59 = !{!"_ZTSN11xercesc_2_710RangeTokenE", !60, i64 0, !47, i64 24, !47, i64 25, !62, i64 28, !62, i64 32, !62, i64 36, !53, i64 40, !53, i64 48, !53, i64 56, !53, i64 64}
!60 = !{!"_ZTSN11xercesc_2_75TokenE", !61, i64 8, !53, i64 16}
!61 = !{!"short", !48, i64 0}
!62 = !{!"int", !48, i64 0}
!63 = !{!"branch_weights", i32 18, i32 1301026}
!64 = !{!"branch_weights", i32 2, i32 1}
