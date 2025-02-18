; ModuleID = 'blender/source/blender/bmesh/operators/bmo_primitive.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_primitive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
%struct.BMIter = type { %union.anon.0, ptr, ptr, i32, i8 }
%union.anon.0 = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMFlagLayer = type { i16 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }

@.str = private unnamed_addr constant [10 x i8] c"verts.out\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"x_segments\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"y_segments\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"matrix\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"diameter\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"u_segments\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"v_segments\00", align 1
@__const.bmo_create_uvsphere_exec.axis = private unnamed_addr constant [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"extrude_edge_only edges=%S\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"geom.out\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"extrude_edge_only edges=%fe\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"rotate cent=%v matrix=%m3 verts=%S\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"remove_doubles verts=%fv dist=%f\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"subdivisions\00", align 1
@icovert = internal unnamed_addr constant [12 x [3 x float]] [[3 x float] [float 0.000000e+00, float 0.000000e+00, float -2.000000e+02], [3 x float] [float 0x4062170A40000000, float 0xC05A493740000000, float 0xC0565C5A20000000], [3 x float] [float 0xC04BA374C0000000, float 0xC0654418A0000000, float 0xC0565C5A20000000], [3 x float] [float 0xC0665C51E0000000, float 0.000000e+00, float 0xC0565C5A20000000], [3 x float] [float 0xC04BA374C0000000, float 0x40654418A0000000, float 0xC0565C5A20000000], [3 x float] [float 0x4062170A40000000, float 0x405A493740000000, float 0xC0565C5A20000000], [3 x float] [float 0x404BA374C0000000, float 0xC0654418A0000000, float 0x40565C5A20000000], [3 x float] [float 0xC062170A40000000, float 0xC05A493740000000, float 0x40565C5A20000000], [3 x float] [float 0xC062170A40000000, float 0x405A493740000000, float 0x40565C5A20000000], [3 x float] [float 0x404BA374C0000000, float 0x40654418A0000000, float 0x40565C5A20000000], [3 x float] [float 0x40665C51E0000000, float 0.000000e+00, float 0x40565C5A20000000], [3 x float] [float 0.000000e+00, float 0.000000e+00, float 2.000000e+02]], align 16
@icoface = internal unnamed_addr constant [20 x [3 x i16]] [[3 x i16] [i16 0, i16 1, i16 2], [3 x i16] [i16 1, i16 0, i16 5], [3 x i16] [i16 0, i16 2, i16 3], [3 x i16] [i16 0, i16 3, i16 4], [3 x i16] [i16 0, i16 4, i16 5], [3 x i16] [i16 1, i16 5, i16 10], [3 x i16] [i16 2, i16 1, i16 6], [3 x i16] [i16 3, i16 2, i16 7], [3 x i16] [i16 4, i16 3, i16 8], [3 x i16] [i16 5, i16 4, i16 9], [3 x i16] [i16 1, i16 10, i16 6], [3 x i16] [i16 2, i16 6, i16 7], [3 x i16] [i16 3, i16 7, i16 8], [3 x i16] [i16 4, i16 8, i16 9], [3 x i16] [i16 5, i16 9, i16 10], [3 x i16] [i16 6, i16 10, i16 11], [3 x i16] [i16 7, i16 6, i16 11], [3 x i16] [i16 8, i16 7, i16 11], [3 x i16] [i16 9, i16 8, i16 11], [3 x i16] [i16 10, i16 9, i16 11]], align 16
@.str.14 = private unnamed_addr constant [75 x i8] c"subdivide_edges edges=%fe smooth=%f cuts=%i use_grid_fill=%b use_sphere=%b\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [3 x i8] c"tv\00", align 1
@monkeyv = internal unnamed_addr constant [271 x [3 x i8]] [[3 x i8] c"\B9\15b", [3 x i8] c"\C1\0CX", [3 x i8] c"\C7\07J", [3 x i8] c"\AE\FDO", [3 x i8] c"\AE\04\\", [3 x i8] c"\AE\11d", [3 x i8] c"\A4\15f", [3 x i8] c"\9B\0C_", [3 x i8] c"\95\07S", [3 x i8] c"\8B\1FT", [3 x i8] c"\93\1F_", [3 x i8] c"\A0\1Ff", [3 x i8] c"\A4*f", [3 x i8] c"\9B2_", [3 x i8] c"\958S", [3 x i8] c"\AEBO", [3 x i8] c"\AE:\\", [3 x i8] c"\AE.d", [3 x i8] c"\B9*b", [3 x i8] c"\C12X", [3 x i8] c"\C78J", [3 x i8] c"\D1\1FH", [3 x i8] c"\C9\1FV", [3 x i8] c"\BD\1Fa", [3 x i8] c"\BE\1Fc", [3 x i8] c"\BA+d", [3 x i8] c"\AE0g", [3 x i8] c"\A3+i", [3 x i8] c"\9E\1Fi", [3 x i8] c"\A3\14i", [3 x i8] c"\AE\1Fj", [3 x i8] c"\AE\0Fg", [3 x i8] c"\BA\14d", [3 x i8] c"\817_", [3 x i8] c"\81-i", [3 x i8] c"\81\A9^", [3 x i8] c"\81\D7d", [3 x i8] c"\81\E8f", [3 x i8] c"\81\9D\\", [3 x i8] c"\814M", [3 x i8] c"\81II", [3 x i8] c"\81s\BA", [3 x i8] c"\81H\93", [3 x i8] c"\81\09\96", [3 x i8] c"\81\CF\D3", [3 x i8] c"\9B\E8H", [3 x i8] c"\A9\C8I", [3 x i8] c"\AE\A7I", [3 x i8] c"\B0\8ED", [3 x i8] c"\AB\87C", [3 x i8] c"\98\84G", [3 x i8] c"\81\82J", [3 x i8] c"\B9\EED", [3 x i8] c"\D2\FBE", [3 x i8] c"\EB\139", [3 x i8] c"\EF7L", [3 x i8] c"\DC>P", [3 x i8] c"\C0MX", [3 x i8] c"\AAa^", [3 x i8] c"\95\\a", [3 x i8] c"\89?`", [3 x i8] c"\965c", [3 x i8] c"\91'b", [3 x i8] c"\9B\0C_", [3 x i8] c"\B1\02Z", [3 x i8] c"\C0\08V", [3 x i8] c"\D1\18S", [3 x i8] c"\D3&S", [3 x i8] c"\CE0U", [3 x i8] c"\B88\\", [3 x i8] c"\A1<a", [3 x i8] c"\81\9E^", [3 x i8] c"\8F\A4^", [3 x i8] c"\90\95[", [3 x i8] c"\89\8FY", [3 x i8] c"\81\8EX", [3 x i8] c"\81\E7`", [3 x i8] c"\81\EE_", [3 x i8] c"\8E\ED_", [3 x i8] c"\91\E3`", [3 x i8] c"\8C\DB_", [3 x i8] c"\B4\FAV", [3 x i8] c"\D0\07P", [3 x i8] c"\DE\1AM", [3 x i8] c"\E00T", [3 x i8] c"\D95]", [3 x i8] c"\B9Ff", [3 x i8] c"\A9Rk", [3 x i8] c"\9BOm", [3 x i8] c"\8E7l", [3 x i8] c"\91\F3h", [3 x i8] c"\9C\C7[", [3 x i8] c"\A1\A6X", [3 x i8] c"\A3\97U", [3 x i8] c"\9F\8BQ", [3 x i8] c"\96\89Q", [3 x i8] c"\81\87R", [3 x i8] c"\81\06]", [3 x i8] c"\81\1Bb", [3 x i8] c"\AB=_", [3 x i8] c"\96\12`", [3 x i8] c"\92\1Ba", [3 x i8] c"\90\A8^", [3 x i8] c"\8B\C7`", [3 x i8] c"\81\C7`", [3 x i8] c"\81\D6_", [3 x i8] c"\8D\DDd", [3 x i8] c"\92\E3f", [3 x i8] c"\8F\EFd", [3 x i8] c"\86\F0d", [3 x i8] c"\81\E6j", [3 x i8] c"\87\EDh", [3 x i8] c"\8D\ECh", [3 x i8] c"\8F\E3j", [3 x i8] c"\8B\E0g", [3 x i8] c"\81\DBg", [3 x i8] c"\A2\D8G", [3 x i8] c"\96\E1[", [3 x i8] c"\98\D8[", [3 x i8] c"\9F\E0G", [3 x i8] c"\81\90X", [3 x i8] c"\87\91X", [3 x i8] c"\8D\97[", [3 x i8] c"\8D\A1]", [3 x i8] c"\81\9CT", [3 x i8] c"\8D\A0U", [3 x i8] c"\8D\98R", [3 x i8] c"\87\93Q", [3 x i8] c"\81\92Q", [3 x i8] c"\97\1Cd", [3 x i8] c"\99\14c", [3 x i8] c"\AC7a", [3 x i8] c"\A46c", [3 x i8] c"\B73c", [3 x i8] c"\C9-Y", [3 x i8] c"\CC%X", [3 x i8] c"\CB\19W", [3 x i8] c"\BE\0D\\", [3 x i8] c"\B1\08_", [3 x i8] c"\9E\0Ed", [3 x i8] c"\98&d", [3 x i8] c"\9C0d", [3 x i8] c"\9F.a", [3 x i8] c"\9A&a", [3 x i8] c"\A0\10a", [3 x i8] c"\B1\0B]", [3 x i8] c"\BC\0FZ", [3 x i8] c"\C7\1BV", [3 x i8] c"\C8$V", [3 x i8] c"\C5+W", [3 x i8] c"\B62`", [3 x i8] c"\A53b", [3 x i8] c"\AC4`", [3 x i8] c"\9B\16`", [3 x i8] c"\9A\1D`", [3 x i8] c"\8F;N", [3 x i8] c"\9AUO", [3 x i8] c"\ACXL", [3 x i8] c"\BFGG", [3 x i8] c"\D8:?", [3 x i8] c"\E74;", [3 x i8] c"\E4\150", [3 x i8] c"\CE\005", [3 x i8] c"\B9\F4<", [3 x i8] c"\81s%", [3 x i8] c"\81~\F6", [3 x i8] c"\81\E7\AA", [3 x i8] c"\81\C5\18", [3 x i8] c"\81\83;", [3 x i8] c"\81\99,", [3 x i8] c"\81\B7)", [3 x i8] c"\81\C2$", [3 x i8] c"\EE\1E\07", [3 x i8] c"\EF)\FA", [3 x i8] c"\E4\22\C8", [3 x i8] c"\BC8\A6", [3 x i8] c"\DF\FA\09", [3 x i8] c"\CD\F0\EB", [3 x i8] c"\D3\FF\C9", [3 x i8] c"\AC\07\AB", [3 x i8] c"\9F\D34", [3 x i8] c"\98\CB!", [3 x i8] c"\A6\A51", [3 x i8] c"\A1\C02", [3 x i8] c"\AB\8B3", [3 x i8] c"\93\9F/", [3 x i8] c"\91\BB.", [3 x i8] c"\96\878", [3 x i8] c"\9D\DC7", [3 x i8] c"\9C\E3<", [3 x i8] c"\9B\EA@", [3 x i8] c"\9C\CE\15", [3 x i8] c"\A7\D8\DE", [3 x i8] c"\AD\ED\BB", [3 x i8] c"\BBo\CF", [3 x i8] c"\BBw\F7", [3 x i8] c"\BBm\1E", [3 x i8] c"\BCC7", [3 x i8] c"\DE4+", [3 x i8] c"\D2:$", [3 x i8] c"\D3Z\07", [3 x i8] c"\E7H\10", [3 x i8] c"\E7O\F1", [3 x i8] c"\D3`\E7", [3 x i8] c"\D3W\C7", [3 x i8] c"\E7E\D2", [3 x i8] c"\D0*\B5", [3 x i8] c"\BF\03\BA", [3 x i8] c"\EA*\E6", [3 x i8] c"\B5\EA\13", [3 x i8] c"\B8\E7\E5", [3 x i8] c"\F34\E2", [3 x i8] c"\E4\EE\F0", [3 x i8] c"\06\F3\D6", [3 x i8] c"%\07\C9", [3 x i8] c".)\CA", [3 x i8] c"\1FA\CA", [3 x i8] c"\04=\D8", [3 x i8] c"\035\DB", [3 x i8] c"\198\CE", [3 x i8] c"#%\CC", [3 x i8] c"\1C\0A\CC", [3 x i8] c"\05\FB\D9", [3 x i8] c"\EB\F7\EF", [3 x i8] c"\F7.\E4", [3 x i8] c"\FA'\DB", [3 x i8] c"\F2\FD\E5", [3 x i8] c"\06\00\D1", [3 x i8] c"\19\0C\C7", [3 x i8] c"\1F \C7", [3 x i8] c"\17.\C8", [3 x i8] c"\04,\D2", [3 x i8] c"\ED%\E5", [3 x i8] c"\EC\16\DD", [3 x i8] c"\E2\0C\DD", [3 x i8] c"\EA\0B\DD", [3 x i8] c"\ED\02\DD", [3 x i8] c"\E9\FE\DD", [3 x i8] c"\DE\00\F7", [3 x i8] c"\DD\FD\EA", [3 x i8] c"\DD\05\E8", [3 x i8] c"\E7\1A\E5", [3 x i8] c"\F3\1F\DE", [3 x i8] c"\F3\1E\D7", [3 x i8] c"\E9\FE\D7", [3 x i8] c"\EE\02\D7", [3 x i8] c"\EB\0A\D7", [3 x i8] c"\E3\0C\D7", [3 x i8] c"\ED\16\D7", [3 x i8] c"\06*\CB", [3 x i8] c"\19,\C2", [3 x i8] c"\22\1F\C1", [3 x i8] c"\1C\0B\C2", [3 x i8] c"\07\00\CA", [3 x i8] c"\F2\FE\DE", [3 x i8] c"\FB%\D4", [3 x i8] c"\F3\0E\D6", [3 x i8] c"\F9\08\D5", [3 x i8] c"\01\10\D1", [3 x i8] c"\FC\16\D3", [3 x i8] c"\03\1E\D0", [3 x i8] c"\08\18\CF", [3 x i8] c"\0F\1B\CE", [3 x i8] c"\0C#\CE", [3 x i8] c"\048\C2", [3 x i8] c"!<\BA", [3 x i8] c"0&\C0", [3 x i8] c")\07\BC", [3 x i8] c"\06\F5\C1", [3 x i8] c"\E6\F0\D6", [3 x i8] c"\EF1\CF"], align 16
@monkeyf = internal unnamed_addr constant [250 x [4 x i8]] [[4 x i8] c"\1B\04\05\1A", [4 x i8] c"\19\04\05\18", [4 x i8] c"\03\06\05\04", [4 x i8] c"\01\06\05\02", [4 x i8] c"\05\06\07\04", [4 x i8] c"\03\06\07\02", [4 x i8] c"\05\08\07\06", [4 x i8] c"\03\08\07\04", [4 x i8] c"\07\08\09\06", [4 x i8] c"\05\08\09\04", [4 x i8] c"\07\0A\09\08", [4 x i8] c"\05\0A\09\06", [4 x i8] c"\09\0A\0B\08", [4 x i8] c"\07\0A\0B\06", [4 x i8] c"\09\0C\0B\0A", [4 x i8] c"\07\0C\0B\08", [4 x i8] c"\0B\06\0D\0C", [4 x i8] c"\05\04\0D\0C", [4 x i8] c"\03\FE\0D\0C", [4 x i8] c"\FD\FC\0D\0C", [4 x i8] c"\FB\F6\0D\0C", [4 x i8] c"\F5\F4\0E\0C", [4 x i8] c"\F3\EE\0E\0D", [4 x i8] c"\ED\04\05\0D", [4 x i8] c"\0A\0C\04\04", [4 x i8] c"\0A\0B\09\09", [4 x i8] c"\08\07\09\09", [4 x i8] c"\07\05\06\06", [4 x i8] c"\06\03\04\04", [4 x i8] c"\05\01\02\02", [4 x i8] c"\04\FF\00\00", [4 x i8] c"\03\FD\FE\FE", [4 x i8] c"\16CD\17", [4 x i8] c"\14AB\15", [4 x i8] c"\12?@\13", [4 x i8] c"\10=>\11", [4 x i8] c"\0E;<\0F", [4 x i8] c"\0C\1309", [4 x i8] c"\12\130/", [4 x i8] c"\12\130/", [4 x i8] c"\12\130/", [4 x i8] c"\12\130/", [4 x i8] c"\12\130/", [4 x i8] c"\12\130/", [4 x i8] c"\12\130/", [4 x i8] c"\12\130/", [4 x i8] c"\12\F7\F8/", [4 x i8] c"\12\1B-.", [4 x i8] c"\1A7+,", [4 x i8] c"\18)*6", [4 x i8] c"\16'(\17", [4 x i8] c"\14%&\15", [4 x i8] c"\12#$\13", [4 x i8] c"\10!\22\11", [4 x i8] c"\0E\1F \0F", [4 x i8] c"\0C'\1E\0D", [4 x i8] c"\0B0-&", [4 x i8] c"\08$\ED\09", [4 x i8] c"\08\EC,/", [4 x i8] c"*-.+", [4 x i8] c"\12\13('", [4 x i8] c"\10\11&%", [4 x i8] c"\0E\0F$#", [4 x i8] c" ,+!", [4 x i8] c"\0C! *", [4 x i8] c"\13,+*", [4 x i8] c"()*\E5", [4 x i8] c"\08\09'\E4", [4 x i8] c"\0F+*\10", [4 x i8] c"\0D+*\0E", [4 x i8] c"\0B+*\0C", [4 x i8] c"\09\E2*\0A", [4 x i8] c"%\0C&\E0", [4 x i8] c"\DF%-.", [4 x i8] c"\DF()'", [4 x i8] c"&()%", [4 x i8] c"$()#", [4 x i8] c"\22()!", [4 x i8] c"$'&%", [4 x i8] c"#('&", [4 x i8] c"\01\02\0E\15", [4 x i8] c"\01\02(\0D", [4 x i8] c"\01\02('", [4 x i8] c"\01\18\0C'", [4 x i8] c"\DE$&\0B", [4 x i8] c"#&$%", [4 x i8] c"\DB\08#%", [4 x i8] c"\F5\F4\D3(", [4 x i8] c"\F5\F4'&", [4 x i8] c"\F5\F4%$", [4 x i8] c"\F5\F4#\22", [4 x i8] c"!\22()", [4 x i8] c"!\22&'", [4 x i8] c"!\22$%", [4 x i8] c"!\CC\22#", [4 x i8] c"!%$\22", [4 x i8] c"!#\22\22", [4 x i8] c"\08\07%$", [4 x i8] c"\E0\07#.", [4 x i8] c"\DE\DF-.", [4 x i8] c"\04\DF+\22", [4 x i8] c"\DE\DF)*", [4 x i8] c"\DE\DF'(", [4 x i8] c"\DE\DF%&", [4 x i8] c"\DE\DF#$", [4 x i8] c"\DE\DF!\22", [4 x i8] c"\DE\DF\1F ", [4 x i8] c"\DE\FC\1C\1E", [4 x i8] c"\FB\DE\1C\1B", [4 x i8] c"\DD\D4$\1B", [4 x i8] c"\1A#$-", [4 x i8] c"\18\19,-", [4 x i8] c"\19\17,*", [4 x i8] c"\19\18)(", [4 x i8] c"\19\18'&", [4 x i8] c"\19\18%$", [4 x i8] c"\19\18#\22", [4 x i8] c"\19\18! ", [4 x i8] c"\19\18\1F\1E", [4 x i8] c"\0F\18\1D&", [4 x i8] c"\19\18\1B\1A", [4 x i8] c"\17\0C%\1A", [4 x i8] c"\0B\0C#$", [4 x i8] c"\AA\C5$\B0", [4 x i8] c"\C4\C3$#", [4 x i8] c"\C2\C1$#", [4 x i8] c"\C0\BF$#", [4 x i8] c"\BE\BD$#", [4 x i8] c"\BC\BB$#", [4 x i8] c"\BA\B9$#", [4 x i8] c"\B8\B7$#", [4 x i8] c"\B6\B5$#", [4 x i8] c"*+5:", [4 x i8] c"()98", [4 x i8] c"&'79", [4 x i8] c"\AF\B0%8", [4 x i8] c"\AD\AE74", [4 x i8] c"\AB\AC31", [4 x i8] c"\A9\AA01", [4 x i8] c"/230", [4 x i8] c".031", [4 x i8] c"+.1,", [4 x i8] c"\A4\A5-*", [4 x i8] c"\E912\EC", [4 x i8] c"\A2(0\E8", [4 x i8] c"\A0\EA01", [4 x i8] c"\9F0\15\A6", [4 x i8] c"\9C$2\17", [4 x i8] c"\1610\9C", [4 x i8] c"\9B/.\16", [4 x i8] c"\15-#\19", [4 x i8] c"!\22,)", [4 x i8] c"\0D\0E\1C\18", [4 x i8] c"\95\1A\1E\96", [4 x i8] c"\0E.-\0F", [4 x i8] c"\0E,+\92", [4 x i8] c"\91*\17\92", [4 x i8] c"\06\07-.", [4 x i8] c"-,/.", [4 x i8] c"-./0", [4 x i8] c"/.10", [4 x i8] c"\111/0", [4 x i8] c"\11$.0", [4 x i8] c"#$,-", [4 x i8] c"#$(+", [4 x i8] c"#$&'", [4 x i8] c"\FC\FD%#", [4 x i8] c"\85\22!\01", [4 x i8] c"\F7\F8\F9\FA", [4 x i8] c"\F6\F9 \83", [4 x i8] c"\81\F5\82\82", [4 x i8] c"\F9\FA\05\1F", [4 x i8] c"\04\05!\1E", [4 x i8] c"\04'! ", [4 x i8] c"\04# &", [4 x i8] c"\14\15'&", [4 x i8] c"\04%&\05", [4 x i8] c"\F5\F6$\03", [4 x i8] c"\F5\0F\0E#", [4 x i8] c"\0D\10\22\22", [4 x i8] c"\F3\0E\0D\0D", [4 x i8] c"\FD\01\1E\1D", [4 x i8] c"\FD\1C\1D\01", [4 x i8] c"\FE\1F\1C\FF", [4 x i8] c"\0C\0D\1B\1E", [4 x i8] c"\FE\1A\0C\0C", [4 x i8] c"#\1D*$", [4 x i8] c"\22#$!", [4 x i8] c" #$\1F", [4 x i8] c"\1E#$\1D", [4 x i8] c"\1C#$\1B", [4 x i8] c"\1A#$\19", [4 x i8] c"\22'&#", [4 x i8] c" '&!", [4 x i8] c"\1E'&\1F", [4 x i8] c"\1C'&\1D", [4 x i8] c"\1A'&\1B", [4 x i8] c"\19\1F &", [4 x i8] c"\EE\EF-,", [4 x i8] c"\EE\11\1C,", [4 x i8] c"\E8\EC*\E9", [4 x i8] c"\0B#\1B\0E", [4 x i8] c"\19\1C')", [4 x i8] c"%)(&", [4 x i8] c"\22($#", [4 x i8] c" ('!", [4 x i8] c"\1E'\1F(", [4 x i8] c"\15\1D'\16", [4 x i8] c"\E1%\1C\04", [4 x i8] c"\E0!#$", [4 x i8] c" !\22\22", [4 x i8] c"\12#$0", [4 x i8] c"\22\19(#", [4 x i8] c"\18\19&'", [4 x i8] c"\18\19$%", [4 x i8] c"\18\19\22#", [4 x i8] c"\18\19 !", [4 x i8] c"\18\0D)\1F", [4 x i8] c"\11\0B)#", [4 x i8] c"\0F\10\22#", [4 x i8] c"\0D\0E\22#", [4 x i8] c"\0B\0C\22#", [4 x i8] c"\09\0A\22#", [4 x i8] c"\07\08\22#", [4 x i8] c"\1A\19%$", [4 x i8] c"#$%&", [4 x i8] c"%$'&", [4 x i8] c"%&'(", [4 x i8] c"\19\1F$'", [4 x i8] c"\12\22#\1E", [4 x i8] c"\11\16\1E!", [4 x i8] c"\13\1D\15\14", [4 x i8] c"\10\1A\1D\11", [4 x i8] c"\18\1D\1C\19", [4 x i8] c"\16\1F\1C\17", [4 x i8] c"\14\1F\1E\15", [4 x i8] c"\12\1F\1E\13", [4 x i8] c"\10\1E\11\11", [4 x i8] c"\EB\EA#\22", [4 x i8] c"\EB\EA! ", [4 x i8] c"\EB\EA\1F\1E", [4 x i8] c"\EB\EA\1D\1C", [4 x i8] c"\EB\EA\1B\1A", [4 x i8] c"\E4\EA\19\1F", [4 x i8] c"\18\1C\1D\1E", [4 x i8] c"\17\18\1A\1B", [4 x i8] c"\17\18\19\19", [4 x i8] c"\BB\DD\E0\1B", [4 x i8] c"\BA\1A\19\BE", [4 x i8] c"\BC\BD\18\DF"], align 16
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [9 x i8] c"segments\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"cap_ends\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"cap_tris\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"dissolve_faces faces=%ff\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"diameter1\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"diameter2\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"depth\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @bmo_create_grid_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x ptr], align 16
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  %8 = tail call ptr @BMO_slot_get(ptr noundef nonnull %7, ptr noundef nonnull @.str) #7
  %9 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.1) #7
  %10 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.2) #7
  %11 = tail call i32 @llvm.smax.i32(i32 %10, i32 2)
  %12 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.3) #7
  %13 = tail call i32 @llvm.smax.i32(i32 %12, i32 2)
  %14 = add nsw i32 %11, -1
  %15 = uitofp i32 %14 to float
  %16 = fdiv float 2.000000e+00, %15
  %17 = add nsw i32 %13, -1
  %18 = uitofp i32 %17 to float
  %19 = fdiv float 2.000000e+00, %18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #7
  call void @BMO_slot_mat4_get(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %4) #7
  %20 = mul i32 %13, %11
  %21 = call ptr @BMO_slot_buffer_alloc(ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull @.str, i32 noundef %20) #7
  %22 = getelementptr inbounds %struct.BMOpSlot, ptr %8, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float 0.000000e+00, ptr %24, align 4, !tbaa !37
  %25 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  br label %31

26:                                               ; preds = %49
  %27 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 1
  %28 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 2
  %29 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 3
  %30 = zext nneg i32 %11 to i64
  br label %52

31:                                               ; preds = %2, %49
  %32 = phi i32 [ 0, %2 ], [ %44, %49 ]
  %33 = phi i32 [ 0, %2 ], [ %50, %49 ]
  %34 = uitofp i32 %33 to float
  %35 = call float @llvm.fmuladd.f32(float %34, float %19, float -1.000000e+00)
  %36 = fmul float %9, %35
  store float %36, ptr %25, align 4, !tbaa !37
  br label %37

37:                                               ; preds = %31, %37
  %38 = phi i32 [ %32, %31 ], [ %44, %37 ]
  %39 = phi i32 [ 0, %31 ], [ %47, %37 ]
  %40 = uitofp i32 %39 to float
  %41 = call float @llvm.fmuladd.f32(float %40, float %16, float -1.000000e+00)
  %42 = fmul float %9, %41
  store float %42, ptr %5, align 4, !tbaa !37
  call void @mul_v3_m4v3(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #7
  %43 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %6, ptr noundef null, i32 noundef 0) #7
  %44 = add i32 %38, 1
  %45 = zext i32 %38 to i64
  %46 = getelementptr inbounds ptr, ptr %23, i64 %45
  store ptr %43, ptr %46, align 8, !tbaa !39
  %47 = add nuw nsw i32 %39, 1
  %48 = icmp eq i32 %47, %11
  br i1 %48, label %49, label %37, !llvm.loop !41

49:                                               ; preds = %37
  %50 = add nuw nsw i32 %33, 1
  %51 = icmp eq i32 %50, %13
  br i1 %51, label %26, label %31, !llvm.loop !44

52:                                               ; preds = %26, %83
  %53 = phi i32 [ 1, %26 ], [ %84, %83 ]
  %54 = add nsw i32 %53, -1
  %55 = mul i32 %54, %11
  %56 = mul i32 %53, %11
  br label %57

57:                                               ; preds = %52, %57
  %58 = phi i64 [ 1, %52 ], [ %81, %57 ]
  %59 = add nsw i64 %58, -1
  %60 = trunc i64 %59 to i32
  %61 = add i32 %55, %60
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds ptr, ptr %23, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !39
  store ptr %64, ptr %3, align 16, !tbaa !39
  %65 = trunc i64 %58 to i32
  %66 = add i32 %55, %65
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds ptr, ptr %23, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !39
  store ptr %69, ptr %27, align 8, !tbaa !39
  %70 = trunc i64 %58 to i32
  %71 = add i32 %56, %70
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds ptr, ptr %23, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !39
  store ptr %74, ptr %28, align 16, !tbaa !39
  %75 = trunc i64 %59 to i32
  %76 = add i32 %56, %75
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds ptr, ptr %23, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !39
  store ptr %79, ptr %29, align 8, !tbaa !39
  %80 = call ptr @BM_face_create_verts(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 4, ptr noundef null, i32 noundef 0, i8 noundef zeroext 1) #7
  %81 = add nuw nsw i64 %58, 1
  %82 = icmp eq i64 %81, %30
  br i1 %82, label %83, label %57, !llvm.loop !45

83:                                               ; preds = %57
  %84 = add nuw nsw i32 %53, 1
  %85 = icmp eq i32 %84, %13
  br i1 %85, label %86, label %52, !llvm.loop !46

86:                                               ; preds = %83
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BMO_slot_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @BMO_slot_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BMO_slot_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BMO_slot_mat4_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BMO_slot_buffer_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_vert_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BM_face_create_verts(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @bmo_create_uvsphere_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca %struct.BMOperator, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca [3 x float], align 4
  %11 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.5) #7
  %12 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.6) #7
  %13 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.7) #7
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) @__const.bmo_create_uvsphere_exec.axis, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #7
  call void @BMO_slot_mat4_get(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %8) #7
  %14 = sitofp i32 %13 to float
  %15 = fdiv float 0x401921FB60000000, %14
  %16 = fmul float %15, 5.000000e-01
  %17 = icmp slt i32 %13, 0
  br i1 %17, label %55, label %18

18:                                               ; preds = %2
  %19 = fneg float %11
  %20 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %21 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %22 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %23

23:                                               ; preds = %18, %51
  %24 = phi ptr [ undef, %18 ], [ %31, %51 ]
  %25 = phi i32 [ 0, %18 ], [ %53, %51 ]
  %26 = phi float [ 0.000000e+00, %18 ], [ %52, %51 ]
  %27 = call float @sinf(float noundef %26) #7
  %28 = fmul float %27, %19
  store float %28, ptr %7, align 4, !tbaa !37
  store float 0.000000e+00, ptr %20, align 4, !tbaa !37
  %29 = call float @cosf(float noundef %26) #7
  %30 = fmul float %11, %29
  store float %30, ptr %21, align 4, !tbaa !37
  %31 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null, i32 noundef 0) #7
  %32 = getelementptr inbounds %struct.BMVert, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !47
  %34 = load i32, ptr %22, align 8, !tbaa !51
  %35 = sext i32 %34 to i64
  %36 = getelementptr %struct.BMFlagLayer, ptr %33, i64 %35
  %37 = getelementptr %struct.BMFlagLayer, ptr %36, i64 -1
  %38 = load i16, ptr %37, align 2, !tbaa !56
  %39 = or i16 %38, 1
  store i16 %39, ptr %37, align 2, !tbaa !56
  %40 = icmp eq i32 %25, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %23
  %42 = call ptr @BM_edge_create(ptr noundef %0, ptr noundef %24, ptr noundef %31, ptr noundef null, i32 noundef 0) #7
  %43 = getelementptr inbounds %struct.BMEdge, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !58
  %45 = load i32, ptr %22, align 8, !tbaa !51
  %46 = sext i32 %45 to i64
  %47 = getelementptr %struct.BMFlagLayer, ptr %44, i64 %46
  %48 = getelementptr %struct.BMFlagLayer, ptr %47, i64 -1
  %49 = load i16, ptr %48, align 2, !tbaa !56
  %50 = or i16 %49, 1
  store i16 %50, ptr %48, align 2, !tbaa !56
  br label %51

51:                                               ; preds = %41, %23
  %52 = fadd float %16, %26
  %53 = add nuw i32 %25, 1
  %54 = icmp eq i32 %25, %13
  br i1 %54, label %55, label %23, !llvm.loop !61

55:                                               ; preds = %51, %2
  %56 = sitofp i32 %12 to double
  %57 = fdiv double 0xC01921FB54442D18, %56
  %58 = fptrunc double %57 to float
  call void @axis_angle_to_mat3(ptr noundef nonnull %9, ptr noundef nonnull %6, float noundef %58) #7
  %59 = icmp slt i32 %12, 1
  br i1 %59, label %81, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %62 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %63 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  %64 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  br label %65

65:                                               ; preds = %60, %74
  %66 = phi i32 [ 0, %60 ], [ %77, %74 ]
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i32, ptr %61, align 8, !tbaa !62
  %70 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %69, ptr noundef nonnull @.str.8, ptr noundef nonnull %4, ptr noundef nonnull @.str.9) #7
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %3) #7
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %4) #7
  br label %74

71:                                               ; preds = %65
  %72 = load i32, ptr %62, align 8, !tbaa !62
  %73 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %72, ptr noundef nonnull @.str.10, i32 noundef 1) #7
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %3) #7
  br label %74

74:                                               ; preds = %71, %68
  call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef nonnull %63, ptr noundef nonnull @.str.9, i8 noundef zeroext 1, i16 noundef signext 1) #7
  %75 = load i32, ptr %64, align 8, !tbaa !62
  %76 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %0, i32 noundef %75, ptr noundef nonnull @.str.11, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef nonnull @.str.9) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1312) %4, ptr noundef nonnull align 8 dereferenceable(1312) %3, i64 1312, i1 false), !tbaa.struct !64
  %77 = add nuw nsw i32 %66, 1
  %78 = icmp eq i32 %77, %12
  br i1 %78, label %79, label %65, !llvm.loop !66

79:                                               ; preds = %74
  br i1 %59, label %81, label %80

80:                                               ; preds = %79
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %3) #7
  br label %81

81:                                               ; preds = %55, %80, %79
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #7
  %82 = fmul float %11, 2.000000e+00
  %83 = fmul float %16, 5.000000e-01
  %84 = call float @sinf(float noundef %83) #7
  %85 = fmul float %82, %84
  %86 = call float @sinf(float noundef %16) #7
  %87 = fmul float %11, %86
  store float %87, ptr %7, align 4, !tbaa !37
  %88 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  store float 0.000000e+00, ptr %88, align 4, !tbaa !37
  %89 = call float @cosf(float noundef %16) #7
  %90 = fmul float %11, %89
  %91 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float %90, ptr %91, align 4, !tbaa !37
  call void @mul_v3_m3v3(ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %7) #7
  %92 = load float, ptr %10, align 4, !tbaa !37
  %93 = load float, ptr %7, align 4, !tbaa !37
  %94 = fsub float %92, %93
  %95 = getelementptr inbounds float, ptr %10, i64 1
  %96 = load float, ptr %95, align 4, !tbaa !37
  %97 = load float, ptr %88, align 4, !tbaa !37
  %98 = fsub float %96, %97
  %99 = getelementptr inbounds float, ptr %10, i64 2
  %100 = load float, ptr %99, align 4, !tbaa !37
  %101 = load float, ptr %91, align 4, !tbaa !37
  %102 = fsub float %100, %101
  %103 = fmul float %98, %98
  %104 = call float @llvm.fmuladd.f32(float %94, float %94, float %103)
  %105 = call float @llvm.fmuladd.f32(float %102, float %102, float %104)
  %106 = call float @sqrtf(float noundef %105) #7
  %107 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %108 = load i32, ptr %107, align 8, !tbaa !62
  %109 = fcmp olt float %85, %106
  %110 = select i1 %109, float %85, float %106
  %111 = fdiv float %110, 3.000000e+00
  %112 = fpext float %111 to double
  %113 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %0, i32 noundef %108, ptr noundef nonnull @.str.12, i32 noundef 1, double noundef %112) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #7
  %114 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 1, ptr %114, align 4, !tbaa !67
  %115 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %115, align 8, !tbaa !69
  %116 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %116, align 8, !tbaa !70
  %117 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %118 = load ptr, ptr %117, align 8, !tbaa !71
  store ptr %118, ptr %5, align 8, !tbaa !34
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #7
  %119 = load ptr, ptr %116, align 8, !tbaa !70
  %120 = call ptr %119(ptr noundef nonnull %5) #7
  %121 = icmp eq ptr %120, null
  br i1 %121, label %141, label %122

122:                                              ; preds = %81
  %123 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %124

124:                                              ; preds = %122, %137
  %125 = phi ptr [ %120, %122 ], [ %139, %137 ]
  %126 = getelementptr inbounds %struct.BMVert, ptr %125, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !47
  %128 = load i32, ptr %123, align 8, !tbaa !51
  %129 = sext i32 %128 to i64
  %130 = getelementptr %struct.BMFlagLayer, ptr %127, i64 %129
  %131 = getelementptr %struct.BMFlagLayer, ptr %130, i64 -1
  %132 = load i16, ptr %131, align 2, !tbaa !56
  %133 = and i16 %132, 1
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %124
  %136 = getelementptr inbounds %struct.BMVert, ptr %125, i64 0, i32 2
  call void @mul_m4_v3(ptr noundef nonnull %8, ptr noundef nonnull %136) #7
  br label %137

137:                                              ; preds = %124, %135
  %138 = load ptr, ptr %116, align 8, !tbaa !70
  %139 = call ptr %138(ptr noundef nonnull %5) #7
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %124, !llvm.loop !72

141:                                              ; preds = %137, %81
  %142 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %142, ptr noundef nonnull @.str, i8 noundef zeroext 1, i16 noundef signext 1) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #5

declare ptr @BM_edge_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @axis_angle_to_mat3(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare zeroext i8 @BMO_op_initf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BMO_op_finish(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BMO_slot_buffer_flag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

declare zeroext i8 @BMO_op_callf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @mul_v3_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bmo_create_icosphere_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [12 x ptr], align 16
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca %struct.BMOperator, align 8
  %9 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.5) #7
  %10 = fdiv float %9, 2.000000e+02
  %11 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.13) #7
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #7
  call void @BMO_slot_mat4_get(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %7) #7
  %12 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %13 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %14 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %21

15:                                               ; preds = %21
  %16 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %17 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %18 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %19 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %20 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %44

21:                                               ; preds = %2, %21
  %22 = phi i64 [ 0, %2 ], [ %42, %21 ]
  %23 = getelementptr inbounds [12 x [3 x float]], ptr @icovert, i64 0, i64 %22
  %24 = load float, ptr %23, align 4, !tbaa !37
  %25 = fmul float %10, %24
  store float %25, ptr %6, align 4, !tbaa !37
  %26 = getelementptr inbounds [12 x [3 x float]], ptr @icovert, i64 0, i64 %22, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !37
  %28 = fmul float %10, %27
  store float %28, ptr %12, align 4, !tbaa !37
  %29 = getelementptr inbounds [12 x [3 x float]], ptr @icovert, i64 0, i64 %22, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !37
  %31 = fmul float %10, %30
  store float %31, ptr %13, align 4, !tbaa !37
  %32 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %6, ptr noundef null, i32 noundef 0) #7
  %33 = getelementptr inbounds [12 x ptr], ptr %3, i64 0, i64 %22
  store ptr %32, ptr %33, align 8, !tbaa !39
  %34 = getelementptr inbounds %struct.BMVert, ptr %32, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !47
  %36 = load i32, ptr %14, align 8, !tbaa !51
  %37 = sext i32 %36 to i64
  %38 = getelementptr %struct.BMFlagLayer, ptr %35, i64 %37
  %39 = getelementptr %struct.BMFlagLayer, ptr %38, i64 -1
  %40 = load i16, ptr %39, align 2, !tbaa !56
  %41 = or i16 %40, 1
  store i16 %41, ptr %39, align 2, !tbaa !56
  %42 = add nuw nsw i64 %22, 1
  %43 = icmp eq i64 %42, 12
  br i1 %43, label %15, label %21, !llvm.loop !73

44:                                               ; preds = %15, %80
  %45 = phi i64 [ 0, %15 ], [ %89, %80 ]
  %46 = getelementptr inbounds [20 x [3 x i16]], ptr @icoface, i64 0, i64 %45
  %47 = load i16, ptr %46, align 2, !tbaa !74
  %48 = sext i16 %47 to i64
  %49 = getelementptr inbounds [12 x ptr], ptr %3, i64 0, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !39
  %51 = getelementptr inbounds [20 x [3 x i16]], ptr @icoface, i64 0, i64 %45, i64 1
  %52 = load i16, ptr %51, align 2, !tbaa !74
  %53 = sext i16 %52 to i64
  %54 = getelementptr inbounds [12 x ptr], ptr %3, i64 0, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !39
  %56 = getelementptr inbounds [20 x [3 x i16]], ptr @icoface, i64 0, i64 %45, i64 2
  %57 = load i16, ptr %56, align 2, !tbaa !74
  %58 = sext i16 %57 to i64
  %59 = getelementptr inbounds [12 x ptr], ptr %3, i64 0, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !39
  %61 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %50, ptr noundef %55, ptr noundef %60, ptr noundef null, ptr noundef null, i32 noundef 0) #7
  store i8 11, ptr %16, align 4, !tbaa !67
  store ptr @bmiter__loop_of_face_begin, ptr %17, align 8, !tbaa !69
  store ptr @bmiter__loop_of_face_step, ptr %18, align 8, !tbaa !70
  store ptr %61, ptr %4, align 8, !tbaa !34
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #7
  %62 = load ptr, ptr %18, align 8, !tbaa !70
  %63 = call ptr %62(ptr noundef nonnull %4) #7
  %64 = icmp eq ptr %63, null
  br i1 %64, label %80, label %65

65:                                               ; preds = %44, %65
  %66 = phi ptr [ %78, %65 ], [ %63, %44 ]
  %67 = getelementptr inbounds %struct.BMLoop, ptr %66, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !75
  %69 = getelementptr inbounds %struct.BMEdge, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !58
  %71 = load i32, ptr %19, align 8, !tbaa !51
  %72 = sext i32 %71 to i64
  %73 = getelementptr %struct.BMFlagLayer, ptr %70, i64 %72
  %74 = getelementptr %struct.BMFlagLayer, ptr %73, i64 -1
  %75 = load i16, ptr %74, align 2, !tbaa !56
  %76 = or i16 %75, 2
  store i16 %76, ptr %74, align 2, !tbaa !56
  %77 = load ptr, ptr %18, align 8, !tbaa !70
  %78 = call ptr %77(ptr noundef nonnull %4) #7
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %65, !llvm.loop !77

80:                                               ; preds = %65, %44
  %81 = getelementptr inbounds %struct.BMFace, ptr %61, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !78
  %83 = load i32, ptr %20, align 8, !tbaa !51
  %84 = sext i32 %83 to i64
  %85 = getelementptr %struct.BMFlagLayer, ptr %82, i64 %84
  %86 = getelementptr %struct.BMFlagLayer, ptr %85, i64 -1
  %87 = load i16, ptr %86, align 2, !tbaa !56
  %88 = or i16 %87, 1
  store i16 %88, ptr %86, align 2, !tbaa !56
  %89 = add nuw nsw i64 %45, 1
  %90 = icmp eq i64 %89, 20
  br i1 %90, label %91, label %44, !llvm.loop !80

91:                                               ; preds = %80
  %92 = icmp sgt i32 %11, 1
  br i1 %92, label %93, label %102

93:                                               ; preds = %91
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %8) #7
  %94 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %95 = load i32, ptr %94, align 8, !tbaa !62
  %96 = fpext float %9 to double
  %97 = add nsw i32 %11, -1
  %98 = shl nsw i32 -1, %97
  %99 = xor i32 %98, -1
  %100 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %95, ptr noundef nonnull @.str.14, i32 noundef 2, double noundef %96, i32 noundef %99, i32 noundef 1, i32 noundef 1) #7
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %8) #7
  %101 = getelementptr inbounds %struct.BMOperator, ptr %8, i64 0, i32 1
  call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef nonnull %101, ptr noundef nonnull @.str.9, i8 noundef zeroext 1, i16 noundef signext 1) #7
  call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef nonnull %101, ptr noundef nonnull @.str.9, i8 noundef zeroext 2, i16 noundef signext 2) #7
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %8) #7
  br label %102

102:                                              ; preds = %93, %91
  %103 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 1, ptr %103, align 4, !tbaa !67
  %104 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %104, align 8, !tbaa !69
  %105 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %105, align 8, !tbaa !70
  %106 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %107 = load ptr, ptr %106, align 8, !tbaa !71
  store ptr %107, ptr %5, align 8, !tbaa !34
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #7
  %108 = load ptr, ptr %105, align 8, !tbaa !70
  %109 = call ptr %108(ptr noundef nonnull %5) #7
  %110 = icmp eq ptr %109, null
  br i1 %110, label %130, label %111

111:                                              ; preds = %102
  %112 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %113

113:                                              ; preds = %111, %126
  %114 = phi ptr [ %109, %111 ], [ %128, %126 ]
  %115 = getelementptr inbounds %struct.BMVert, ptr %114, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !47
  %117 = load i32, ptr %112, align 8, !tbaa !51
  %118 = sext i32 %117 to i64
  %119 = getelementptr %struct.BMFlagLayer, ptr %116, i64 %118
  %120 = getelementptr %struct.BMFlagLayer, ptr %119, i64 -1
  %121 = load i16, ptr %120, align 2, !tbaa !56
  %122 = and i16 %121, 1
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %113
  %125 = getelementptr inbounds %struct.BMVert, ptr %114, i64 0, i32 2
  call void @mul_m4_v3(ptr noundef nonnull %7, ptr noundef nonnull %125) #7
  br label %126

126:                                              ; preds = %113, %124
  %127 = load ptr, ptr %105, align 8, !tbaa !70
  %128 = call ptr %127(ptr noundef nonnull %5) #7
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %113, !llvm.loop !81

130:                                              ; preds = %126, %102
  %131 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %131, ptr noundef nonnull @.str, i8 noundef zeroext 1, i16 noundef signext 1) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #7
  ret void
}

declare ptr @BM_face_create_quad_tri(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bmo_create_monkey_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [3 x float], align 4
  %5 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !39
  %6 = tail call ptr %5(i64 noundef 4336, ptr noundef nonnull @.str.15) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #7
  call void @BMO_slot_mat4_get(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %3) #7
  %7 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %8 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %19

10:                                               ; preds = %55
  %11 = getelementptr ptr, ptr %6, i64 -4
  %12 = getelementptr ptr, ptr %6, i64 -4
  %13 = getelementptr ptr, ptr %6, i64 -4
  %14 = getelementptr ptr, ptr %6, i64 -4
  %15 = getelementptr ptr, ptr %6, i64 -4
  %16 = getelementptr ptr, ptr %6, i64 -4
  %17 = getelementptr ptr, ptr %6, i64 -4
  %18 = getelementptr ptr, ptr %6, i64 -4
  br label %70

19:                                               ; preds = %2, %55
  %20 = phi i64 [ 0, %2 ], [ %68, %55 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #7
  %21 = getelementptr inbounds [271 x [3 x i8]], ptr @monkeyv, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !34
  %23 = sext i8 %22 to i32
  %24 = add nsw i32 %23, 127
  %25 = sitofp i32 %24 to double
  %26 = fmul double %25, 7.812500e-03
  %27 = fptrunc double %26 to float
  store float %27, ptr %4, align 4, !tbaa !37
  %28 = getelementptr inbounds [271 x [3 x i8]], ptr @monkeyv, i64 0, i64 %20, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !34
  %30 = sitofp i8 %29 to double
  %31 = fmul double %30, 7.812500e-03
  %32 = fptrunc double %31 to float
  store float %32, ptr %7, align 4, !tbaa !37
  %33 = getelementptr inbounds [271 x [3 x i8]], ptr @monkeyv, i64 0, i64 %20, i64 2
  %34 = load i8, ptr %33, align 1, !tbaa !34
  %35 = sitofp i8 %34 to double
  %36 = fmul double %35, -7.812500e-03
  %37 = fptrunc double %36 to float
  store float %37, ptr %8, align 4, !tbaa !37
  %38 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %4, ptr noundef null, i32 noundef 0) #7
  %39 = getelementptr inbounds ptr, ptr %6, i64 %20
  store ptr %38, ptr %39, align 8, !tbaa !39
  %40 = getelementptr inbounds %struct.BMVert, ptr %38, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !47
  %42 = load i32, ptr %9, align 8, !tbaa !51
  %43 = sext i32 %42 to i64
  %44 = getelementptr %struct.BMFlagLayer, ptr %41, i64 %43
  %45 = getelementptr %struct.BMFlagLayer, ptr %44, i64 -1
  %46 = load i16, ptr %45, align 2, !tbaa !56
  %47 = or i16 %46, 1
  store i16 %47, ptr %45, align 2, !tbaa !56
  %48 = load float, ptr %4, align 4, !tbaa !37
  %49 = fneg float %48
  store float %49, ptr %4, align 4, !tbaa !37
  %50 = call float @llvm.fabs.f32(float %49)
  %51 = fcmp olt float %50, 0x3F50624DE0000000
  br i1 %51, label %55, label %52

52:                                               ; preds = %19
  %53 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %4, ptr noundef null, i32 noundef 0) #7
  %54 = getelementptr inbounds %struct.BMVert, ptr %53, i64 0, i32 2
  call void @mul_m4_v3(ptr noundef nonnull %3, ptr noundef nonnull %54) #7
  br label %55

55:                                               ; preds = %19, %52
  %56 = phi ptr [ %53, %52 ], [ %38, %19 ]
  %57 = getelementptr ptr, ptr %39, i64 271
  store ptr %56, ptr %57, align 8, !tbaa !39
  %58 = getelementptr inbounds %struct.BMVert, ptr %56, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !47
  %60 = load i32, ptr %9, align 8, !tbaa !51
  %61 = sext i32 %60 to i64
  %62 = getelementptr %struct.BMFlagLayer, ptr %59, i64 %61
  %63 = getelementptr %struct.BMFlagLayer, ptr %62, i64 -1
  %64 = load i16, ptr %63, align 2, !tbaa !56
  %65 = or i16 %64, 1
  store i16 %65, ptr %63, align 2, !tbaa !56
  %66 = load ptr, ptr %39, align 8, !tbaa !39
  %67 = getelementptr inbounds %struct.BMVert, ptr %66, i64 0, i32 2
  call void @mul_m4_v3(ptr noundef nonnull %3, ptr noundef nonnull %67) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #7
  %68 = add nuw nsw i64 %20, 1
  %69 = icmp eq i64 %68, 271
  br i1 %69, label %10, label %19, !llvm.loop !82

70:                                               ; preds = %10, %135
  %71 = phi i64 [ 0, %10 ], [ %138, %135 ]
  %72 = getelementptr inbounds [250 x [4 x i8]], ptr @monkeyf, i64 0, i64 %71
  %73 = load i8, ptr %72, align 4, !tbaa !34
  %74 = sext i8 %73 to i32
  %75 = trunc i64 %71 to i32
  %76 = add nsw i32 %75, %74
  %77 = sext i32 %76 to i64
  %78 = getelementptr ptr, ptr %11, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !39
  %80 = getelementptr inbounds [250 x [4 x i8]], ptr @monkeyf, i64 0, i64 %71, i64 1
  %81 = load i8, ptr %80, align 1, !tbaa !34
  %82 = sext i8 %81 to i32
  %83 = trunc i64 %71 to i32
  %84 = add nsw i32 %83, %82
  %85 = sext i32 %84 to i64
  %86 = getelementptr ptr, ptr %12, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !39
  %88 = getelementptr inbounds [250 x [4 x i8]], ptr @monkeyf, i64 0, i64 %71, i64 2
  %89 = load i8, ptr %88, align 2, !tbaa !34
  %90 = sext i8 %89 to i32
  %91 = trunc i64 %71 to i32
  %92 = add nsw i32 %91, %90
  %93 = sext i32 %92 to i64
  %94 = getelementptr ptr, ptr %13, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !39
  %96 = getelementptr inbounds [250 x [4 x i8]], ptr @monkeyf, i64 0, i64 %71, i64 3
  %97 = load i8, ptr %96, align 1, !tbaa !34
  %98 = icmp eq i8 %97, %89
  br i1 %98, label %106, label %99

99:                                               ; preds = %70
  %100 = sext i8 %97 to i64
  %101 = add i64 %71, %100
  %102 = shl i64 %101, 32
  %103 = ashr exact i64 %102, 32
  %104 = getelementptr ptr, ptr %14, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !39
  br label %106

106:                                              ; preds = %70, %99
  %107 = phi ptr [ %105, %99 ], [ null, %70 ]
  %108 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %79, ptr noundef %87, ptr noundef %95, ptr noundef %107, ptr noundef null, i32 noundef 0) #7
  %109 = trunc i64 %71 to i32
  %110 = add i32 %109, 271
  %111 = add i32 %110, %90
  %112 = sext i32 %111 to i64
  %113 = getelementptr ptr, ptr %15, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !39
  %115 = trunc i64 %71 to i32
  %116 = add i32 %115, 271
  %117 = add i32 %116, %82
  %118 = sext i32 %117 to i64
  %119 = getelementptr ptr, ptr %16, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !39
  %121 = trunc i64 %71 to i32
  %122 = add i32 %121, 271
  %123 = add i32 %122, %74
  %124 = sext i32 %123 to i64
  %125 = getelementptr ptr, ptr %17, i64 %124
  %126 = load ptr, ptr %125, align 8, !tbaa !39
  br i1 %98, label %135, label %127

127:                                              ; preds = %106
  %128 = sext i8 %97 to i64
  %129 = add nuw i64 %71, 271
  %130 = add i64 %129, %128
  %131 = shl i64 %130, 32
  %132 = ashr exact i64 %131, 32
  %133 = getelementptr ptr, ptr %18, i64 %132
  %134 = load ptr, ptr %133, align 8, !tbaa !39
  br label %135

135:                                              ; preds = %106, %127
  %136 = phi ptr [ %134, %127 ], [ null, %106 ]
  %137 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %114, ptr noundef %120, ptr noundef %126, ptr noundef %136, ptr noundef null, i32 noundef 0) #7
  %138 = add nuw nsw i64 %71, 1
  %139 = icmp eq i64 %138, 250
  br i1 %139, label %140, label %70, !llvm.loop !83

140:                                              ; preds = %135
  %141 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  call void %141(ptr noundef %6) #7
  %142 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %142, ptr noundef nonnull @.str, i8 noundef zeroext 1, i16 noundef signext 1) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: nounwind uwtable
define dso_local void @bmo_create_circle_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [4 x [4 x float]], align 16
  %5 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.5) #7
  %6 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.16) #7
  %7 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.17) #7
  %8 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.18) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %101, label %10

10:                                               ; preds = %2
  call void @BMO_slot_mat4_get(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %4) #7
  %11 = sitofp i32 %6 to float
  %12 = fdiv float 0x401921FB60000000, %11
  %13 = icmp eq i8 %7, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %10
  store float 0.000000e+00, ptr %3, align 4, !tbaa !37
  %15 = getelementptr inbounds float, ptr %3, i64 1
  store float 0.000000e+00, ptr %15, align 4, !tbaa !37
  %16 = getelementptr inbounds float, ptr %3, i64 2
  store float 0.000000e+00, ptr %16, align 4, !tbaa !37
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %17 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null, i32 noundef 0) #7
  %18 = getelementptr inbounds %struct.BMVert, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !47
  %20 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %21 = load i32, ptr %20, align 8, !tbaa !51
  %22 = sext i32 %21 to i64
  %23 = getelementptr %struct.BMFlagLayer, ptr %19, i64 %22
  %24 = getelementptr %struct.BMFlagLayer, ptr %23, i64 -1
  %25 = load i16, ptr %24, align 2, !tbaa !56
  %26 = or i16 %25, 1
  store i16 %26, ptr %24, align 2, !tbaa !56
  br label %27

27:                                               ; preds = %14, %10
  %28 = phi ptr [ %17, %14 ], [ undef, %10 ]
  %29 = icmp slt i32 %6, 1
  br i1 %29, label %76, label %30

30:                                               ; preds = %27
  %31 = fneg float %5
  %32 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %33 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %34 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %35 = icmp ne i8 %7, 0
  br label %36

36:                                               ; preds = %30, %70
  %37 = phi ptr [ null, %30 ], [ %45, %70 ]
  %38 = phi i32 [ 0, %30 ], [ %73, %70 ]
  %39 = phi float [ 0.000000e+00, %30 ], [ %74, %70 ]
  %40 = phi ptr [ null, %30 ], [ %72, %70 ]
  %41 = call float @sinf(float noundef %39) #7
  %42 = fmul float %41, %31
  store float %42, ptr %3, align 4, !tbaa !37
  %43 = call float @cosf(float noundef %39) #7
  %44 = fmul float %5, %43
  store float %44, ptr %32, align 4, !tbaa !37
  store float 0.000000e+00, ptr %33, align 4, !tbaa !37
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %45 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null, i32 noundef 0) #7
  %46 = getelementptr inbounds %struct.BMVert, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !47
  %48 = load i32, ptr %34, align 8, !tbaa !51
  %49 = sext i32 %48 to i64
  %50 = getelementptr %struct.BMFlagLayer, ptr %47, i64 %49
  %51 = getelementptr %struct.BMFlagLayer, ptr %50, i64 -1
  %52 = load i16, ptr %51, align 2, !tbaa !56
  %53 = or i16 %52, 1
  store i16 %53, ptr %51, align 2, !tbaa !56
  %54 = icmp eq ptr %37, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %36
  %56 = call ptr @BM_edge_create(ptr noundef %0, ptr noundef %45, ptr noundef nonnull %37, ptr noundef null, i32 noundef 0) #7
  br label %57

57:                                               ; preds = %55, %36
  %58 = icmp ne i32 %38, 0
  %59 = select i1 %58, i1 %35, i1 false
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %28, ptr noundef %37, ptr noundef %45, ptr noundef null, ptr noundef null, i32 noundef 0) #7
  %62 = getelementptr inbounds %struct.BMFace, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !78
  %64 = load i32, ptr %34, align 8, !tbaa !51
  %65 = sext i32 %64 to i64
  %66 = getelementptr %struct.BMFlagLayer, ptr %63, i64 %65
  %67 = getelementptr %struct.BMFlagLayer, ptr %66, i64 -1
  %68 = load i16, ptr %67, align 2, !tbaa !56
  %69 = or i16 %68, 2
  store i16 %69, ptr %67, align 2, !tbaa !56
  br label %70

70:                                               ; preds = %60, %57
  %71 = icmp eq ptr %40, null
  %72 = select i1 %71, ptr %45, ptr %40
  %73 = add nuw nsw i32 %38, 1
  %74 = fadd float %12, %39
  %75 = icmp eq i32 %73, %6
  br i1 %75, label %76, label %36, !llvm.loop !84

76:                                               ; preds = %70, %27
  %77 = phi ptr [ null, %27 ], [ %72, %70 ]
  %78 = phi ptr [ null, %27 ], [ %45, %70 ]
  %79 = phi ptr [ undef, %27 ], [ %45, %70 ]
  br i1 %29, label %101, label %80

80:                                               ; preds = %76
  %81 = call ptr @BM_edge_create(ptr noundef %0, ptr noundef %77, ptr noundef %78, ptr noundef null, i32 noundef 0) #7
  br i1 %13, label %93, label %82

82:                                               ; preds = %80
  %83 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %28, ptr noundef %79, ptr noundef %77, ptr noundef null, ptr noundef null, i32 noundef 0) #7
  %84 = getelementptr inbounds %struct.BMFace, ptr %83, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !78
  %86 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %87 = load i32, ptr %86, align 8, !tbaa !51
  %88 = sext i32 %87 to i64
  %89 = getelementptr %struct.BMFlagLayer, ptr %85, i64 %88
  %90 = getelementptr %struct.BMFlagLayer, ptr %89, i64 -1
  %91 = load i16, ptr %90, align 2, !tbaa !56
  %92 = or i16 %91, 2
  store i16 %92, ptr %90, align 2, !tbaa !56
  br label %93

93:                                               ; preds = %82, %80
  %94 = icmp eq i8 %8, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %97 = load i32, ptr %96, align 8, !tbaa !62
  %98 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %0, i32 noundef %97, ptr noundef nonnull @.str.19, i32 noundef 2) #7
  br label %99

99:                                               ; preds = %95, %93
  %100 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %100, ptr noundef nonnull @.str, i8 noundef zeroext 1, i16 noundef signext 1) #7
  br label %101

101:                                              ; preds = %76, %2, %99
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #7
  ret void
}

declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bmo_create_cone_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  %5 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.20) #7
  %6 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.21) #7
  %7 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.22) #7
  %8 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.16) #7
  %9 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.17) #7
  %10 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.18) #7
  %11 = icmp eq i32 %8, 0
  br i1 %11, label %145, label %12

12:                                               ; preds = %2
  call void @BMO_slot_mat4_get(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %4) #7
  %13 = sitofp i32 %8 to float
  %14 = fdiv float 0x401921FB60000000, %13
  %15 = fmul float %7, 5.000000e-01
  %16 = icmp eq i8 %9, 0
  br i1 %16, label %38, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  store float 0.000000e+00, ptr %18, align 4, !tbaa !37
  store float 0.000000e+00, ptr %3, align 4, !tbaa !37
  %19 = fneg float %15
  %20 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float %19, ptr %20, align 4, !tbaa !37
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %21 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null, i32 noundef 0) #7
  store float 0.000000e+00, ptr %18, align 4, !tbaa !37
  store float 0.000000e+00, ptr %3, align 4, !tbaa !37
  store float %15, ptr %20, align 4, !tbaa !37
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %22 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null, i32 noundef 0) #7
  %23 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !47
  %25 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %26 = load i32, ptr %25, align 8, !tbaa !51
  %27 = sext i32 %26 to i64
  %28 = getelementptr %struct.BMFlagLayer, ptr %24, i64 %27
  %29 = getelementptr %struct.BMFlagLayer, ptr %28, i64 -1
  %30 = load i16, ptr %29, align 2, !tbaa !56
  %31 = or i16 %30, 1
  store i16 %31, ptr %29, align 2, !tbaa !56
  %32 = getelementptr inbounds %struct.BMVert, ptr %22, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !47
  %34 = getelementptr %struct.BMFlagLayer, ptr %33, i64 %27
  %35 = getelementptr %struct.BMFlagLayer, ptr %34, i64 -1
  %36 = load i16, ptr %35, align 2, !tbaa !56
  %37 = or i16 %36, 1
  store i16 %37, ptr %35, align 2, !tbaa !56
  br label %38

38:                                               ; preds = %17, %12
  %39 = phi ptr [ %22, %17 ], [ undef, %12 ]
  %40 = phi ptr [ %21, %17 ], [ undef, %12 ]
  %41 = icmp slt i32 %8, 1
  br i1 %41, label %107, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %44 = fneg float %15
  %45 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %46 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %47

47:                                               ; preds = %42, %101
  %48 = phi i32 [ 0, %42 ], [ %104, %101 ]
  %49 = phi ptr [ null, %42 ], [ %58, %101 ]
  %50 = phi ptr [ null, %42 ], [ %63, %101 ]
  %51 = phi ptr [ undef, %42 ], [ %103, %101 ]
  %52 = phi ptr [ undef, %42 ], [ %102, %101 ]
  %53 = phi float [ 0.000000e+00, %42 ], [ %105, %101 ]
  %54 = call float @sinf(float noundef %53) #7
  %55 = fmul float %5, %54
  store float %55, ptr %3, align 4, !tbaa !37
  %56 = call float @cosf(float noundef %53) #7
  %57 = fmul float %5, %56
  store float %57, ptr %43, align 4, !tbaa !37
  store float %44, ptr %45, align 4, !tbaa !37
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %58 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null, i32 noundef 0) #7
  %59 = call float @sinf(float noundef %53) #7
  %60 = fmul float %6, %59
  store float %60, ptr %3, align 4, !tbaa !37
  %61 = call float @cosf(float noundef %53) #7
  %62 = fmul float %6, %61
  store float %62, ptr %43, align 4, !tbaa !37
  store float %15, ptr %45, align 4, !tbaa !37
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %63 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null, i32 noundef 0) #7
  %64 = getelementptr inbounds %struct.BMVert, ptr %58, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !47
  %66 = load i32, ptr %46, align 8, !tbaa !51
  %67 = sext i32 %66 to i64
  %68 = getelementptr %struct.BMFlagLayer, ptr %65, i64 %67
  %69 = getelementptr %struct.BMFlagLayer, ptr %68, i64 -1
  %70 = load i16, ptr %69, align 2, !tbaa !56
  %71 = or i16 %70, 1
  store i16 %71, ptr %69, align 2, !tbaa !56
  %72 = getelementptr inbounds %struct.BMVert, ptr %63, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !47
  %74 = getelementptr %struct.BMFlagLayer, ptr %73, i64 %67
  %75 = getelementptr %struct.BMFlagLayer, ptr %74, i64 -1
  %76 = load i16, ptr %75, align 2, !tbaa !56
  %77 = or i16 %76, 1
  store i16 %77, ptr %75, align 2, !tbaa !56
  %78 = icmp eq i32 %48, 0
  br i1 %78, label %101, label %79

79:                                               ; preds = %47
  br i1 %16, label %99, label %80

80:                                               ; preds = %79
  %81 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %40, ptr noundef %49, ptr noundef %58, ptr noundef null, ptr noundef null, i32 noundef 0) #7
  %82 = getelementptr inbounds %struct.BMFace, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !78
  %84 = load i32, ptr %46, align 8, !tbaa !51
  %85 = sext i32 %84 to i64
  %86 = getelementptr %struct.BMFlagLayer, ptr %83, i64 %85
  %87 = getelementptr %struct.BMFlagLayer, ptr %86, i64 -1
  %88 = load i16, ptr %87, align 2, !tbaa !56
  %89 = or i16 %88, 2
  store i16 %89, ptr %87, align 2, !tbaa !56
  %90 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %39, ptr noundef %63, ptr noundef %50, ptr noundef null, ptr noundef null, i32 noundef 0) #7
  %91 = getelementptr inbounds %struct.BMFace, ptr %90, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !78
  %93 = load i32, ptr %46, align 8, !tbaa !51
  %94 = sext i32 %93 to i64
  %95 = getelementptr %struct.BMFlagLayer, ptr %92, i64 %94
  %96 = getelementptr %struct.BMFlagLayer, ptr %95, i64 -1
  %97 = load i16, ptr %96, align 2, !tbaa !56
  %98 = or i16 %97, 2
  store i16 %98, ptr %96, align 2, !tbaa !56
  br label %99

99:                                               ; preds = %80, %79
  %100 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %49, ptr noundef %50, ptr noundef %63, ptr noundef %58, ptr noundef null, i32 noundef 0) #7
  br label %101

101:                                              ; preds = %47, %99
  %102 = phi ptr [ %52, %99 ], [ %63, %47 ]
  %103 = phi ptr [ %51, %99 ], [ %58, %47 ]
  %104 = add nuw nsw i32 %48, 1
  %105 = fadd float %14, %53
  %106 = icmp eq i32 %104, %8
  br i1 %106, label %107, label %47, !llvm.loop !85

107:                                              ; preds = %101, %38
  %108 = phi ptr [ undef, %38 ], [ %102, %101 ]
  %109 = phi ptr [ undef, %38 ], [ %103, %101 ]
  %110 = phi ptr [ undef, %38 ], [ %63, %101 ]
  %111 = phi ptr [ undef, %38 ], [ %58, %101 ]
  br i1 %41, label %145, label %112

112:                                              ; preds = %107
  br i1 %16, label %133, label %113

113:                                              ; preds = %112
  %114 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %40, ptr noundef %111, ptr noundef %109, ptr noundef null, ptr noundef null, i32 noundef 0) #7
  %115 = getelementptr inbounds %struct.BMFace, ptr %114, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !78
  %117 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %118 = load i32, ptr %117, align 8, !tbaa !51
  %119 = sext i32 %118 to i64
  %120 = getelementptr %struct.BMFlagLayer, ptr %116, i64 %119
  %121 = getelementptr %struct.BMFlagLayer, ptr %120, i64 -1
  %122 = load i16, ptr %121, align 2, !tbaa !56
  %123 = or i16 %122, 2
  store i16 %123, ptr %121, align 2, !tbaa !56
  %124 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %39, ptr noundef %108, ptr noundef %110, ptr noundef null, ptr noundef null, i32 noundef 0) #7
  %125 = getelementptr inbounds %struct.BMFace, ptr %124, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !78
  %127 = load i32, ptr %117, align 8, !tbaa !51
  %128 = sext i32 %127 to i64
  %129 = getelementptr %struct.BMFlagLayer, ptr %126, i64 %128
  %130 = getelementptr %struct.BMFlagLayer, ptr %129, i64 -1
  %131 = load i16, ptr %130, align 2, !tbaa !56
  %132 = or i16 %131, 2
  store i16 %132, ptr %130, align 2, !tbaa !56
  br label %133

133:                                              ; preds = %113, %112
  %134 = icmp eq i8 %10, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %133
  %136 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %137 = load i32, ptr %136, align 8, !tbaa !62
  %138 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %0, i32 noundef %137, ptr noundef nonnull @.str.19, i32 noundef 2) #7
  br label %139

139:                                              ; preds = %135, %133
  %140 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %111, ptr noundef %110, ptr noundef %108, ptr noundef %109, ptr noundef null, i32 noundef 0) #7
  %141 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %142 = load i32, ptr %141, align 8, !tbaa !62
  %143 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %0, i32 noundef %142, ptr noundef nonnull @.str.12, i32 noundef 1, double noundef 0x3EB0C6F7A0B5ED8D) #7
  %144 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %144, ptr noundef nonnull @.str, i8 noundef zeroext 1, i16 noundef signext 1) #7
  br label %145

145:                                              ; preds = %107, %2, %139
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @bmo_create_cube_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  %5 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.1) #7
  %6 = fmul float %5, 5.000000e-01
  call void @BMO_slot_mat4_get(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %4) #7
  %7 = fcmp une float %6, 0.000000e+00
  %8 = select i1 %7, float %6, float 5.000000e-01
  %9 = fneg float %8
  store float %9, ptr %3, align 4, !tbaa !37
  %10 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  store float %9, ptr %10, align 4, !tbaa !37
  %11 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float %9, ptr %11, align 4, !tbaa !37
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %12 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null, i32 noundef 0) #7
  %13 = getelementptr inbounds %struct.BMVert, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %16 = load i32, ptr %15, align 8, !tbaa !51
  %17 = sext i32 %16 to i64
  %18 = getelementptr %struct.BMFlagLayer, ptr %14, i64 %17
  %19 = getelementptr %struct.BMFlagLayer, ptr %18, i64 -1
  %20 = load i16, ptr %19, align 2, !tbaa !56
  %21 = or i16 %20, 1
  store i16 %21, ptr %19, align 2, !tbaa !56
  store float %9, ptr %3, align 4, !tbaa !37
  store float %8, ptr %10, align 4, !tbaa !37
  store float %9, ptr %11, align 4, !tbaa !37
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %22 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null, i32 noundef 0) #7
  %23 = getelementptr inbounds %struct.BMVert, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !47
  %25 = load i32, ptr %15, align 8, !tbaa !51
  %26 = sext i32 %25 to i64
  %27 = getelementptr %struct.BMFlagLayer, ptr %24, i64 %26
  %28 = getelementptr %struct.BMFlagLayer, ptr %27, i64 -1
  %29 = load i16, ptr %28, align 2, !tbaa !56
  %30 = or i16 %29, 1
  store i16 %30, ptr %28, align 2, !tbaa !56
  store float %8, ptr %3, align 4, !tbaa !37
  store float %8, ptr %10, align 4, !tbaa !37
  store float %9, ptr %11, align 4, !tbaa !37
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %31 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null, i32 noundef 0) #7
  %32 = getelementptr inbounds %struct.BMVert, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !47
  %34 = load i32, ptr %15, align 8, !tbaa !51
  %35 = sext i32 %34 to i64
  %36 = getelementptr %struct.BMFlagLayer, ptr %33, i64 %35
  %37 = getelementptr %struct.BMFlagLayer, ptr %36, i64 -1
  %38 = load i16, ptr %37, align 2, !tbaa !56
  %39 = or i16 %38, 1
  store i16 %39, ptr %37, align 2, !tbaa !56
  store float %8, ptr %3, align 4, !tbaa !37
  store float %9, ptr %10, align 4, !tbaa !37
  store float %9, ptr %11, align 4, !tbaa !37
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %40 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null, i32 noundef 0) #7
  %41 = getelementptr inbounds %struct.BMVert, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !47
  %43 = load i32, ptr %15, align 8, !tbaa !51
  %44 = sext i32 %43 to i64
  %45 = getelementptr %struct.BMFlagLayer, ptr %42, i64 %44
  %46 = getelementptr %struct.BMFlagLayer, ptr %45, i64 -1
  %47 = load i16, ptr %46, align 2, !tbaa !56
  %48 = or i16 %47, 1
  store i16 %48, ptr %46, align 2, !tbaa !56
  store float %9, ptr %3, align 4, !tbaa !37
  store float %9, ptr %10, align 4, !tbaa !37
  store float %8, ptr %11, align 4, !tbaa !37
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %49 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null, i32 noundef 0) #7
  %50 = getelementptr inbounds %struct.BMVert, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !47
  %52 = load i32, ptr %15, align 8, !tbaa !51
  %53 = sext i32 %52 to i64
  %54 = getelementptr %struct.BMFlagLayer, ptr %51, i64 %53
  %55 = getelementptr %struct.BMFlagLayer, ptr %54, i64 -1
  %56 = load i16, ptr %55, align 2, !tbaa !56
  %57 = or i16 %56, 1
  store i16 %57, ptr %55, align 2, !tbaa !56
  store float %9, ptr %3, align 4, !tbaa !37
  store float %8, ptr %10, align 4, !tbaa !37
  store float %8, ptr %11, align 4, !tbaa !37
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %58 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null, i32 noundef 0) #7
  %59 = getelementptr inbounds %struct.BMVert, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !47
  %61 = load i32, ptr %15, align 8, !tbaa !51
  %62 = sext i32 %61 to i64
  %63 = getelementptr %struct.BMFlagLayer, ptr %60, i64 %62
  %64 = getelementptr %struct.BMFlagLayer, ptr %63, i64 -1
  %65 = load i16, ptr %64, align 2, !tbaa !56
  %66 = or i16 %65, 1
  store i16 %66, ptr %64, align 2, !tbaa !56
  store float %8, ptr %3, align 4, !tbaa !37
  store float %8, ptr %10, align 4, !tbaa !37
  store float %8, ptr %11, align 4, !tbaa !37
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %67 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null, i32 noundef 0) #7
  %68 = getelementptr inbounds %struct.BMVert, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !47
  %70 = load i32, ptr %15, align 8, !tbaa !51
  %71 = sext i32 %70 to i64
  %72 = getelementptr %struct.BMFlagLayer, ptr %69, i64 %71
  %73 = getelementptr %struct.BMFlagLayer, ptr %72, i64 -1
  %74 = load i16, ptr %73, align 2, !tbaa !56
  %75 = or i16 %74, 1
  store i16 %75, ptr %73, align 2, !tbaa !56
  store float %8, ptr %3, align 4, !tbaa !37
  store float %9, ptr %10, align 4, !tbaa !37
  store float %8, ptr %11, align 4, !tbaa !37
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %76 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null, i32 noundef 0) #7
  %77 = getelementptr inbounds %struct.BMVert, ptr %76, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !47
  %79 = load i32, ptr %15, align 8, !tbaa !51
  %80 = sext i32 %79 to i64
  %81 = getelementptr %struct.BMFlagLayer, ptr %78, i64 %80
  %82 = getelementptr %struct.BMFlagLayer, ptr %81, i64 -1
  %83 = load i16, ptr %82, align 2, !tbaa !56
  %84 = or i16 %83, 1
  store i16 %84, ptr %82, align 2, !tbaa !56
  %85 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %49, ptr noundef %58, ptr noundef %22, ptr noundef %12, ptr noundef null, i32 noundef 0) #7
  %86 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %58, ptr noundef %67, ptr noundef %31, ptr noundef %22, ptr noundef null, i32 noundef 0) #7
  %87 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %67, ptr noundef %76, ptr noundef %40, ptr noundef %31, ptr noundef null, i32 noundef 0) #7
  %88 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %76, ptr noundef %49, ptr noundef %12, ptr noundef %40, ptr noundef null, i32 noundef 0) #7
  %89 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %12, ptr noundef %22, ptr noundef %31, ptr noundef %40, ptr noundef null, i32 noundef 0) #7
  %90 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %76, ptr noundef %67, ptr noundef %58, ptr noundef %49, ptr noundef null, i32 noundef 0) #7
  %91 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %91, ptr noundef nonnull @.str, i8 noundef zeroext 1, i16 noundef signext 1) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare void @bmiter__loop_of_face_begin(ptr noundef) #2

declare ptr @bmiter__loop_of_face_step(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !{!38, !38, i64 0}
!38 = !{!"float", !35, i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"any pointer", !35, i64 0}
!41 = distinct !{!41, !42, !43}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = distinct !{!44, !42, !43}
!45 = distinct !{!45, !42, !43}
!46 = distinct !{!46, !42, !43}
!47 = !{!48, !40, i64 16}
!48 = !{!"BMVert", !49, i64 0, !40, i64 16, !35, i64 24, !35, i64 36, !40, i64 48}
!49 = !{!"BMHeader", !40, i64 0, !50, i64 8, !35, i64 12, !35, i64 13, !35, i64 14}
!50 = !{!"int", !35, i64 0}
!51 = !{!52, !50, i64 128}
!52 = !{!"BMesh", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !50, i64 24, !35, i64 28, !35, i64 29, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !50, i64 88, !50, i64 92, !50, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !50, i64 128, !40, i64 136, !53, i64 144, !53, i64 344, !53, i64 544, !53, i64 744, !54, i64 944, !50, i64 948, !50, i64 952, !50, i64 956, !55, i64 960, !40, i64 976, !55, i64 984, !40, i64 1000}
!53 = !{!"CustomData", !40, i64 0, !35, i64 8, !50, i64 172, !50, i64 176, !50, i64 180, !40, i64 184, !40, i64 192}
!54 = !{!"short", !35, i64 0}
!55 = !{!"ListBase", !40, i64 0, !40, i64 8}
!56 = !{!57, !54, i64 0}
!57 = !{!"BMFlagLayer", !54, i64 0}
!58 = !{!59, !40, i64 16}
!59 = !{!"BMEdge", !49, i64 0, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !60, i64 48, !60, i64 64}
!60 = !{!"BMDiskLink", !40, i64 0, !40, i64 8}
!61 = distinct !{!61, !42, !43}
!62 = !{!63, !50, i64 1304}
!63 = !{!"BMOperator", !35, i64 0, !35, i64 640, !40, i64 1280, !40, i64 1288, !50, i64 1296, !50, i64 1300, !50, i64 1304}
!64 = !{i64 0, i64 640, !34, i64 640, i64 640, !34, i64 1280, i64 8, !39, i64 1288, i64 8, !39, i64 1296, i64 4, !65, i64 1300, i64 4, !65, i64 1304, i64 4, !65}
!65 = !{!50, !50, i64 0}
!66 = distinct !{!66, !42, !43}
!67 = !{!68, !35, i64 60}
!68 = !{!"BMIter", !35, i64 0, !40, i64 40, !40, i64 48, !50, i64 56, !35, i64 60}
!69 = !{!68, !40, i64 40}
!70 = !{!68, !40, i64 48}
!71 = !{!52, !40, i64 32}
!72 = distinct !{!72, !42, !43}
!73 = distinct !{!73, !42, !43}
!74 = !{!54, !54, i64 0}
!75 = !{!76, !40, i64 24}
!76 = !{!"BMLoop", !49, i64 0, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64}
!77 = distinct !{!77, !42, !43}
!78 = !{!79, !40, i64 16}
!79 = !{!"BMFace", !49, i64 0, !40, i64 16, !40, i64 24, !50, i64 32, !35, i64 36, !54, i64 48}
!80 = distinct !{!80, !42, !43}
!81 = distinct !{!81, !42, !43}
!82 = distinct !{!82, !42, !43}
!83 = distinct !{!83, !42, !43}
!84 = distinct !{!84, !42, !43}
!85 = distinct !{!85, !42, !43}
