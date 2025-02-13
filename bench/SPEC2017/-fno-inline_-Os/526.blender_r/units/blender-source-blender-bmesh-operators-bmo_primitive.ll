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
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMFlagLayer = type { i16 }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_create_grid_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x ptr], align 16
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  %8 = tail call ptr @BMO_slot_get(ptr noundef nonnull %7, ptr noundef nonnull @.str) #12
  %9 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.1) #12
  %10 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.2) #12
  %11 = tail call fastcc i32 @max_ii(i32 noundef %10) #13
  %12 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.3) #12
  %13 = tail call fastcc i32 @max_ii(i32 noundef %12) #13
  %14 = add i32 %11, -1
  %15 = uitofp i32 %14 to float
  %16 = fdiv float 2.000000e+00, %15
  %17 = add i32 %13, -1
  %18 = uitofp i32 %17 to float
  %19 = fdiv float 2.000000e+00, %18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #14
  call void @BMO_slot_mat4_get(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %4) #12
  %20 = mul i32 %13, %11
  %21 = call ptr @BMO_slot_buffer_alloc(ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull @.str, i32 noundef %20) #12
  %22 = getelementptr inbounds %struct.BMOpSlot, ptr %8, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float 0.000000e+00, ptr %24, align 4, !tbaa !37
  %25 = icmp eq i32 %13, 0
  br i1 %25, label %92, label %26

26:                                               ; preds = %2
  %27 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %28 = icmp eq i32 %11, 0
  br label %37

29:                                               ; preds = %55
  %30 = icmp eq i32 %13, 1
  br i1 %30, label %92, label %31

31:                                               ; preds = %29
  %32 = icmp ugt i32 %11, 1
  %33 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 1
  %34 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 2
  %35 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 3
  %36 = zext i32 %11 to i64
  br label %59

37:                                               ; preds = %26, %55
  %38 = phi i32 [ 0, %26 ], [ %56, %55 ]
  %39 = phi i32 [ 0, %26 ], [ %57, %55 ]
  %40 = uitofp i32 %39 to float
  %41 = call float @llvm.fmuladd.f32(float %40, float %19, float -1.000000e+00)
  %42 = fmul float %9, %41
  store float %42, ptr %27, align 4, !tbaa !37
  br i1 %28, label %55, label %43

43:                                               ; preds = %37, %43
  %44 = phi i32 [ %50, %43 ], [ %38, %37 ]
  %45 = phi i32 [ %53, %43 ], [ 0, %37 ]
  %46 = uitofp i32 %45 to float
  %47 = call float @llvm.fmuladd.f32(float %46, float %16, float -1.000000e+00)
  %48 = fmul float %9, %47
  store float %48, ptr %5, align 4, !tbaa !37
  call void @mul_v3_m4v3(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %49 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %6, ptr noundef null, i32 noundef 0) #12
  %50 = add i32 %44, 1
  %51 = zext i32 %44 to i64
  %52 = getelementptr inbounds ptr, ptr %23, i64 %51
  store ptr %49, ptr %52, align 8, !tbaa !39
  %53 = add nuw i32 %45, 1
  %54 = icmp eq i32 %53, %11
  br i1 %54, label %55, label %43, !llvm.loop !41

55:                                               ; preds = %43, %37
  %56 = phi i32 [ %38, %37 ], [ %50, %43 ]
  %57 = add nuw i32 %39, 1
  %58 = icmp eq i32 %57, %13
  br i1 %58, label %29, label %37, !llvm.loop !43

59:                                               ; preds = %31, %89
  %60 = phi i32 [ 1, %31 ], [ %90, %89 ]
  br i1 %32, label %61, label %89

61:                                               ; preds = %59
  %62 = add i32 %60, -1
  %63 = mul i32 %62, %11
  %64 = mul i32 %60, %11
  br label %65

65:                                               ; preds = %61, %65
  %66 = phi i64 [ 1, %61 ], [ %87, %65 ]
  %67 = trunc i64 %66 to i32
  %68 = add i32 %67, -1
  %69 = add i32 %68, %63
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds ptr, ptr %23, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !39
  store ptr %72, ptr %3, align 16, !tbaa !39
  %73 = trunc i64 %66 to i32
  %74 = add i32 %63, %73
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds ptr, ptr %23, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !39
  store ptr %77, ptr %33, align 8, !tbaa !39
  %78 = add i32 %64, %73
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds ptr, ptr %23, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !39
  store ptr %81, ptr %34, align 16, !tbaa !39
  %82 = add i32 %68, %64
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds ptr, ptr %23, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !39
  store ptr %85, ptr %35, align 8, !tbaa !39
  %86 = call ptr @BM_face_create_verts(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 4, ptr noundef null, i32 noundef 0, i8 noundef zeroext 1) #12
  %87 = add nuw nsw i64 %66, 1
  %88 = icmp eq i64 %87, %36
  br i1 %88, label %89, label %65, !llvm.loop !44

89:                                               ; preds = %65, %59
  %90 = add nuw i32 %60, 1
  %91 = icmp eq i32 %90, %13
  br i1 %91, label %92, label %59, !llvm.loop !45

92:                                               ; preds = %89, %2, %29
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BMO_slot_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BMO_slot_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0) unnamed_addr #3 !PGOFuncName !46 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 2)
  ret i32 %2
}

; Function Attrs: optsize
declare i32 @BMO_slot_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_mat4_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMO_slot_buffer_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_vert_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_face_create_verts(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_create_uvsphere_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca %struct.BMOperator, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca [3 x float], align 4
  %11 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.5) #12
  %12 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.6) #12
  %13 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.7) #12
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) @__const.bmo_create_uvsphere_exec.axis, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #14
  call void @BMO_slot_mat4_get(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %8) #12
  %14 = sitofp i32 %13 to float
  %15 = fdiv float 0x401921FB60000000, %14
  %16 = fmul float %15, 5.000000e-01
  %17 = icmp slt i32 %13, 0
  br i1 %17, label %42, label %18

18:                                               ; preds = %2
  %19 = fneg float %11
  %20 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %21 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  br label %22

22:                                               ; preds = %18, %38
  %23 = phi ptr [ undef, %18 ], [ %30, %38 ]
  %24 = phi i32 [ 0, %18 ], [ %40, %38 ]
  %25 = phi float [ 0.000000e+00, %18 ], [ %39, %38 ]
  %26 = call float @sinf(float noundef %25) #12
  %27 = fmul float %26, %19
  store float %27, ptr %7, align 4, !tbaa !37
  store float 0.000000e+00, ptr %20, align 4, !tbaa !37
  %28 = call float @cosf(float noundef %25) #12
  %29 = fmul float %11, %28
  store float %29, ptr %21, align 4, !tbaa !37
  %30 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null, i32 noundef 0) #12
  %31 = getelementptr inbounds %struct.BMVert, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !47
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %32, i16 noundef signext 1) #13
  %33 = icmp eq i32 %24, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %22
  %35 = call ptr @BM_edge_create(ptr noundef %0, ptr noundef %23, ptr noundef nonnull %30, ptr noundef null, i32 noundef 0) #12
  %36 = getelementptr inbounds %struct.BMEdge, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !51
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %37, i16 noundef signext 1) #13
  br label %38

38:                                               ; preds = %34, %22
  %39 = fadd float %16, %25
  %40 = add nuw i32 %24, 1
  %41 = icmp eq i32 %24, %13
  br i1 %41, label %42, label %22, !llvm.loop !54

42:                                               ; preds = %38, %2
  %43 = sitofp i32 %12 to double
  %44 = fdiv double 0xC01921FB54442D18, %43
  %45 = fptrunc double %44 to float
  call void @axis_angle_to_mat3(ptr noundef nonnull %9, ptr noundef nonnull %6, float noundef %45) #12
  %46 = icmp slt i32 %12, 1
  br i1 %46, label %65, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %49 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  br label %50

50:                                               ; preds = %47, %58
  %51 = phi i32 [ 0, %47 ], [ %61, %58 ]
  %52 = icmp eq i32 %51, 0
  %53 = load i32, ptr %48, align 8, !tbaa !55
  br i1 %52, label %56, label %54

54:                                               ; preds = %50
  %55 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %53, ptr noundef nonnull @.str.8, ptr noundef nonnull %4, ptr noundef nonnull @.str.9) #12
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %3) #12
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %4) #12
  br label %58

56:                                               ; preds = %50
  %57 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %53, ptr noundef nonnull @.str.10, i32 noundef 1) #12
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %3) #12
  br label %58

58:                                               ; preds = %56, %54
  call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef nonnull %49, ptr noundef nonnull @.str.9, i8 noundef zeroext 1, i16 noundef signext 1) #12
  %59 = load i32, ptr %48, align 8, !tbaa !55
  %60 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %0, i32 noundef %59, ptr noundef nonnull @.str.11, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef nonnull @.str.9) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1312) %4, ptr noundef nonnull align 8 dereferenceable(1312) %3, i64 1312, i1 false), !tbaa.struct !57
  %61 = add nuw nsw i32 %51, 1
  %62 = icmp eq i32 %61, %12
  br i1 %62, label %63, label %50, !llvm.loop !59

63:                                               ; preds = %58
  br i1 %46, label %65, label %64

64:                                               ; preds = %63
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %3) #12
  br label %65

65:                                               ; preds = %42, %64, %63
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #14
  %66 = fmul float %11, 2.000000e+00
  %67 = fmul float %16, 5.000000e-01
  %68 = call float @sinf(float noundef %67) #12
  %69 = fmul float %66, %68
  %70 = call float @sinf(float noundef %16) #12
  %71 = fmul float %11, %70
  store float %71, ptr %7, align 4, !tbaa !37
  %72 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  store float 0.000000e+00, ptr %72, align 4, !tbaa !37
  %73 = call float @cosf(float noundef %16) #12
  %74 = fmul float %11, %73
  %75 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float %74, ptr %75, align 4, !tbaa !37
  call void @mul_v3_m3v3(ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %7) #12
  %76 = call fastcc float @len_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %10) #13
  %77 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %78 = load i32, ptr %77, align 8, !tbaa !55
  %79 = call fastcc float @min_ff(float noundef %69, float noundef %76) #13
  %80 = fdiv float %79, 3.000000e+00
  %81 = fpext float %80 to double
  %82 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %0, i32 noundef %78, ptr noundef nonnull @.str.12, i32 noundef 1, double noundef %81) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #14
  %83 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %0, i8 noundef zeroext 1, ptr noundef null) #13
  %84 = icmp eq ptr %83, null
  br i1 %84, label %96, label %85

85:                                               ; preds = %65, %93
  %86 = phi ptr [ %94, %93 ], [ %83, %65 ]
  %87 = getelementptr inbounds %struct.BMVert, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !47
  %89 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %88) #13
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.BMVert, ptr %86, i64 0, i32 2
  call void @mul_m4_v3(ptr noundef nonnull %8, ptr noundef nonnull %92) #12
  br label %93

93:                                               ; preds = %85, %91
  %94 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #13
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %85, !llvm.loop !60

96:                                               ; preds = %93, %65
  %97 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %97, ptr noundef nonnull @.str, i8 noundef zeroext 1, i16 noundef signext 1) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i16 noundef signext %2) unnamed_addr #7 !PGOFuncName !61 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !62
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %6
  %8 = getelementptr %struct.BMFlagLayer, ptr %7, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !67
  %10 = or i16 %9, %2
  store i16 %10, ptr %8, align 2, !tbaa !67
  ret void
}

; Function Attrs: optsize
declare ptr @BM_edge_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @axis_angle_to_mat3(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BMO_op_initf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_op_finish(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_flag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BMO_op_callf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_v3_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !69 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #13
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #3 !PGOFuncName !70 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !71 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #13
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #13
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc signext i16 @_bmo_elem_flag_test(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !72 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %4 = load i32, ptr %3, align 8, !tbaa !62
  %5 = sext i32 %4 to i64
  %6 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %5
  %7 = getelementptr %struct.BMFlagLayer, ptr %6, i64 -1
  %8 = load i16, ptr %7, align 2, !tbaa !67
  %9 = and i16 %8, 1
  ret i16 %9
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !73 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  %4 = tail call ptr %3(ptr noundef %0) #12
  ret ptr %4
}

; Function Attrs: optsize
declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_create_icosphere_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [12 x ptr], align 16
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca [3 x float], align 8
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca %struct.BMOperator, align 8
  %9 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.5) #12
  %10 = fdiv float %9, 2.000000e+02
  %11 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.13) #12
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #14
  call void @BMO_slot_mat4_get(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %7) #12
  %12 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %13 = insertelement <2 x float> poison, float %10, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  br label %15

15:                                               ; preds = %2, %15
  %16 = phi i64 [ 0, %2 ], [ %27, %15 ]
  %17 = getelementptr inbounds [12 x [3 x float]], ptr @icovert, i64 0, i64 %16
  %18 = load <2 x float>, ptr %17, align 4, !tbaa !37
  %19 = fmul <2 x float> %14, %18
  store <2 x float> %19, ptr %6, align 8, !tbaa !37
  %20 = getelementptr inbounds [12 x [3 x float]], ptr @icovert, i64 0, i64 %16, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !37
  %22 = fmul float %10, %21
  store float %22, ptr %12, align 8, !tbaa !37
  %23 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %6, ptr noundef null, i32 noundef 0) #12
  %24 = getelementptr inbounds [12 x ptr], ptr %3, i64 0, i64 %16
  store ptr %23, ptr %24, align 8, !tbaa !39
  %25 = getelementptr inbounds %struct.BMVert, ptr %23, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !47
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %26, i16 noundef signext 1) #13
  %27 = add nuw nsw i64 %16, 1
  %28 = icmp eq i64 %27, 12
  br i1 %28, label %29, label %15, !llvm.loop !76

29:                                               ; preds = %15, %57
  %30 = phi i64 [ %60, %57 ], [ 0, %15 ]
  %31 = getelementptr inbounds [20 x [3 x i16]], ptr @icoface, i64 0, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !77
  %33 = sext i16 %32 to i64
  %34 = getelementptr inbounds [12 x ptr], ptr %3, i64 0, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !39
  %36 = getelementptr inbounds [20 x [3 x i16]], ptr @icoface, i64 0, i64 %30, i64 1
  %37 = load i16, ptr %36, align 2, !tbaa !77
  %38 = sext i16 %37 to i64
  %39 = getelementptr inbounds [12 x ptr], ptr %3, i64 0, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !39
  %41 = getelementptr inbounds [20 x [3 x i16]], ptr @icoface, i64 0, i64 %30, i64 2
  %42 = load i16, ptr %41, align 2, !tbaa !77
  %43 = sext i16 %42 to i64
  %44 = getelementptr inbounds [12 x ptr], ptr %3, i64 0, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !39
  %46 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %35, ptr noundef %40, ptr noundef %45, ptr noundef null, ptr noundef null, i32 noundef 0) #12
  %47 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef %46) #13
  %48 = icmp eq ptr %47, null
  br i1 %48, label %57, label %49

49:                                               ; preds = %29, %49
  %50 = phi ptr [ %55, %49 ], [ %47, %29 ]
  %51 = getelementptr inbounds %struct.BMLoop, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !78
  %53 = getelementptr inbounds %struct.BMEdge, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !51
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %54, i16 noundef signext 2) #13
  %55 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #13
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %49, !llvm.loop !80

57:                                               ; preds = %49, %29
  %58 = getelementptr inbounds %struct.BMFace, ptr %46, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !81
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %59, i16 noundef signext 1) #13
  %60 = add nuw nsw i64 %30, 1
  %61 = icmp eq i64 %60, 20
  br i1 %61, label %62, label %29, !llvm.loop !83

62:                                               ; preds = %57
  %63 = icmp sgt i32 %11, 1
  br i1 %63, label %64, label %73

64:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %8) #14
  %65 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %66 = load i32, ptr %65, align 8, !tbaa !55
  %67 = fpext float %9 to double
  %68 = add nsw i32 %11, -1
  %69 = shl nsw i32 -1, %68
  %70 = xor i32 %69, -1
  %71 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %66, ptr noundef nonnull @.str.14, i32 noundef 2, double noundef %67, i32 noundef %70, i32 noundef 1, i32 noundef 1) #12
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %8) #12
  %72 = getelementptr inbounds %struct.BMOperator, ptr %8, i64 0, i32 1
  call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef nonnull %72, ptr noundef nonnull @.str.9, i8 noundef zeroext 1, i16 noundef signext 1) #12
  call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef nonnull %72, ptr noundef nonnull @.str.9, i8 noundef zeroext 2, i16 noundef signext 2) #12
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %8) #14
  br label %73

73:                                               ; preds = %64, %62
  %74 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %0, i8 noundef zeroext 1, ptr noundef null) #13
  %75 = icmp eq ptr %74, null
  br i1 %75, label %87, label %76

76:                                               ; preds = %73, %84
  %77 = phi ptr [ %85, %84 ], [ %74, %73 ]
  %78 = getelementptr inbounds %struct.BMVert, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !47
  %80 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %79) #13
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.BMVert, ptr %77, i64 0, i32 2
  call void @mul_m4_v3(ptr noundef nonnull %7, ptr noundef nonnull %83) #12
  br label %84

84:                                               ; preds = %76, %82
  %85 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #13
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %76, !llvm.loop !84

87:                                               ; preds = %84, %73
  %88 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %88, ptr noundef nonnull @.str, i8 noundef zeroext 1, i16 noundef signext 1) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #14
  ret void
}

; Function Attrs: optsize
declare ptr @BM_face_create_quad_tri(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_create_monkey_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [3 x float], align 8
  %5 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !39
  %6 = tail call ptr %5(i64 noundef 4336, ptr noundef nonnull @.str.15) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #14
  call void @BMO_slot_mat4_get(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %3) #12
  %7 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  br label %10

8:                                                ; preds = %42
  %9 = getelementptr ptr, ptr %6, i64 -4
  br label %51

10:                                               ; preds = %2, %42
  %11 = phi i64 [ 0, %2 ], [ %49, %42 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #14
  %12 = getelementptr inbounds [271 x [3 x i8]], ptr @monkeyv, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !34
  %14 = sext i8 %13 to i32
  %15 = add nsw i32 %14, 127
  %16 = sitofp i32 %15 to double
  %17 = getelementptr inbounds [271 x [3 x i8]], ptr @monkeyv, i64 0, i64 %11, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !34
  %19 = sitofp i8 %18 to double
  %20 = fmul double %19, 7.812500e-03
  %21 = fptrunc double %20 to float
  store float %21, ptr %7, align 8, !tbaa !37
  %22 = getelementptr inbounds [271 x [3 x i8]], ptr @monkeyv, i64 0, i64 %11, i64 2
  %23 = load i8, ptr %22, align 1, !tbaa !34
  %24 = sitofp i8 %23 to double
  %25 = insertelement <2 x double> poison, double %16, i64 0
  %26 = insertelement <2 x double> %25, double %24, i64 1
  %27 = fmul <2 x double> %26, <double 7.812500e-03, double -7.812500e-03>
  %28 = fptrunc <2 x double> %27 to <2 x float>
  store <2 x float> %28, ptr %4, align 8, !tbaa !37
  %29 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %4, ptr noundef null, i32 noundef 0) #12
  %30 = getelementptr inbounds ptr, ptr %6, i64 %11
  store ptr %29, ptr %30, align 8, !tbaa !39
  %31 = getelementptr inbounds %struct.BMVert, ptr %29, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !47
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %32, i16 noundef signext 1) #13
  %33 = load float, ptr %4, align 8, !tbaa !37
  %34 = fneg float %33
  store float %34, ptr %4, align 8, !tbaa !37
  %35 = call float @llvm.fabs.f32(float %34)
  %36 = fcmp olt float %35, 0x3F50624DE0000000
  br i1 %36, label %37, label %39

37:                                               ; preds = %10
  %38 = load ptr, ptr %30, align 8, !tbaa !39
  br label %42

39:                                               ; preds = %10
  %40 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %4, ptr noundef null, i32 noundef 0) #12
  %41 = getelementptr inbounds %struct.BMVert, ptr %40, i64 0, i32 2
  call void @mul_m4_v3(ptr noundef nonnull %3, ptr noundef nonnull %41) #12
  br label %42

42:                                               ; preds = %39, %37
  %43 = phi ptr [ %38, %37 ], [ %40, %39 ]
  %44 = getelementptr ptr, ptr %30, i64 271
  store ptr %43, ptr %44, align 8, !tbaa !39
  %45 = getelementptr inbounds %struct.BMVert, ptr %43, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !47
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %46, i16 noundef signext 1) #13
  %47 = load ptr, ptr %30, align 8, !tbaa !39
  %48 = getelementptr inbounds %struct.BMVert, ptr %47, i64 0, i32 2
  call void @mul_m4_v3(ptr noundef nonnull %3, ptr noundef nonnull %48) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #14
  %49 = add nuw nsw i64 %11, 1
  %50 = icmp eq i64 %49, 271
  br i1 %50, label %8, label %10, !llvm.loop !85

51:                                               ; preds = %8, %108
  %52 = phi i64 [ 0, %8 ], [ %111, %108 ]
  %53 = getelementptr inbounds [250 x [4 x i8]], ptr @monkeyf, i64 0, i64 %52
  %54 = load i8, ptr %53, align 4, !tbaa !34
  %55 = sext i8 %54 to i32
  %56 = trunc i64 %52 to i32
  %57 = add nsw i32 %56, %55
  %58 = sext i32 %57 to i64
  %59 = getelementptr ptr, ptr %9, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !39
  %61 = getelementptr inbounds [250 x [4 x i8]], ptr @monkeyf, i64 0, i64 %52, i64 1
  %62 = load i8, ptr %61, align 1, !tbaa !34
  %63 = sext i8 %62 to i32
  %64 = add nsw i32 %56, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr ptr, ptr %9, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !39
  %68 = getelementptr inbounds [250 x [4 x i8]], ptr @monkeyf, i64 0, i64 %52, i64 2
  %69 = load i8, ptr %68, align 2, !tbaa !34
  %70 = sext i8 %69 to i32
  %71 = add nsw i32 %56, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr ptr, ptr %9, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !39
  %75 = getelementptr inbounds [250 x [4 x i8]], ptr @monkeyf, i64 0, i64 %52, i64 3
  %76 = load i8, ptr %75, align 1, !tbaa !34
  %77 = icmp eq i8 %76, %69
  br i1 %77, label %85, label %78

78:                                               ; preds = %51
  %79 = sext i8 %76 to i64
  %80 = add i64 %52, %79
  %81 = shl i64 %80, 32
  %82 = ashr exact i64 %81, 32
  %83 = getelementptr ptr, ptr %9, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !39
  br label %85

85:                                               ; preds = %51, %78
  %86 = phi ptr [ %84, %78 ], [ null, %51 ]
  %87 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %60, ptr noundef %67, ptr noundef %74, ptr noundef %86, ptr noundef null, i32 noundef 0) #12
  %88 = trunc i64 %52 to i32
  %89 = add i32 %88, 271
  %90 = add i32 %89, %70
  %91 = zext nneg i32 %90 to i64
  %92 = getelementptr ptr, ptr %9, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !39
  %94 = add i32 %89, %63
  %95 = zext nneg i32 %94 to i64
  %96 = getelementptr ptr, ptr %9, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !39
  %98 = add i32 %89, %55
  %99 = zext nneg i32 %98 to i64
  %100 = getelementptr ptr, ptr %9, i64 %99
  %101 = load ptr, ptr %100, align 8, !tbaa !39
  br i1 %77, label %108, label %102

102:                                              ; preds = %85
  %103 = sext i8 %76 to i32
  %104 = add i32 %89, %103
  %105 = zext nneg i32 %104 to i64
  %106 = getelementptr ptr, ptr %9, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !39
  br label %108

108:                                              ; preds = %85, %102
  %109 = phi ptr [ %107, %102 ], [ null, %85 ]
  %110 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %93, ptr noundef %97, ptr noundef %101, ptr noundef %109, ptr noundef null, i32 noundef 0) #12
  %111 = add nuw nsw i64 %52, 1
  %112 = icmp eq i64 %111, 250
  br i1 %112, label %113, label %51, !llvm.loop !86

113:                                              ; preds = %108
  %114 = load ptr, ptr @MEM_freeN, align 8, !tbaa !39
  call void %114(ptr noundef nonnull %6) #12
  %115 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %115, ptr noundef nonnull @.str, i8 noundef zeroext 1, i16 noundef signext 1) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_create_circle_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [4 x [4 x float]], align 16
  %5 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.5) #12
  %6 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.16) #12
  %7 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.17) #12
  %8 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.18) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #14
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %69, label %10

10:                                               ; preds = %2
  call void @BMO_slot_mat4_get(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %4) #12
  %11 = sitofp i32 %6 to float
  %12 = fdiv float 0x401921FB60000000, %11
  %13 = icmp eq i8 %7, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  call fastcc void @zero_v3(ptr noundef nonnull %3) #13
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %3) #12
  %15 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null, i32 noundef 0) #12
  %16 = getelementptr inbounds %struct.BMVert, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %17, i16 noundef signext 1) #13
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi ptr [ %15, %14 ], [ undef, %10 ]
  %20 = icmp slt i32 %6, 1
  br i1 %20, label %69, label %21

21:                                               ; preds = %18
  %22 = fneg float %5
  %23 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %24 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %25 = icmp ne i8 %7, 0
  br label %26

26:                                               ; preds = %21, %48
  %27 = phi ptr [ null, %21 ], [ %35, %48 ]
  %28 = phi i32 [ 0, %21 ], [ %51, %48 ]
  %29 = phi float [ 0.000000e+00, %21 ], [ %52, %48 ]
  %30 = phi ptr [ null, %21 ], [ %50, %48 ]
  %31 = call float @sinf(float noundef %29) #12
  %32 = fmul float %31, %22
  store float %32, ptr %3, align 4, !tbaa !37
  %33 = call float @cosf(float noundef %29) #12
  %34 = fmul float %5, %33
  store float %34, ptr %23, align 4, !tbaa !37
  store float 0.000000e+00, ptr %24, align 4, !tbaa !37
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %3) #12
  %35 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null, i32 noundef 0) #12
  %36 = getelementptr inbounds %struct.BMVert, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !47
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %37, i16 noundef signext 1) #13
  %38 = icmp eq ptr %27, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %26
  %40 = call ptr @BM_edge_create(ptr noundef %0, ptr noundef nonnull %35, ptr noundef nonnull %27, ptr noundef null, i32 noundef 0) #12
  br label %41

41:                                               ; preds = %39, %26
  %42 = icmp ne i32 %28, 0
  %43 = select i1 %42, i1 %25, i1 false
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %19, ptr noundef %27, ptr noundef nonnull %35, ptr noundef null, ptr noundef null, i32 noundef 0) #12
  %46 = getelementptr inbounds %struct.BMFace, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !81
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %47, i16 noundef signext 2) #13
  br label %48

48:                                               ; preds = %44, %41
  %49 = icmp eq ptr %30, null
  %50 = select i1 %49, ptr %35, ptr %30
  %51 = add nuw nsw i32 %28, 1
  %52 = fadd float %12, %29
  %53 = icmp eq i32 %51, %6
  br i1 %53, label %54, label %26, !llvm.loop !87

54:                                               ; preds = %48
  br i1 %20, label %69, label %55

55:                                               ; preds = %54
  %56 = call ptr @BM_edge_create(ptr noundef %0, ptr noundef %50, ptr noundef nonnull %35, ptr noundef null, i32 noundef 0) #12
  br i1 %13, label %61, label %57

57:                                               ; preds = %55
  %58 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %19, ptr noundef nonnull %35, ptr noundef %50, ptr noundef null, ptr noundef null, i32 noundef 0) #12
  %59 = getelementptr inbounds %struct.BMFace, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !81
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %60, i16 noundef signext 2) #13
  br label %61

61:                                               ; preds = %57, %55
  %62 = icmp eq i8 %8, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %65 = load i32, ptr %64, align 8, !tbaa !55
  %66 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %0, i32 noundef %65, ptr noundef nonnull @.str.19, i32 noundef 2) #12
  br label %67

67:                                               ; preds = %63, %61
  %68 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %68, ptr noundef nonnull @.str, i8 noundef zeroext 1, i16 noundef signext 1) #12
  br label %69

69:                                               ; preds = %18, %54, %2, %67
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #10 !PGOFuncName !88 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !37
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_create_cone_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 8
  %4 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #14
  %5 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.20) #12
  %6 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.21) #12
  %7 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.22) #12
  %8 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.16) #12
  %9 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.17) #12
  %10 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.18) #12
  %11 = icmp eq i32 %8, 0
  br i1 %11, label %93, label %12

12:                                               ; preds = %2
  call void @BMO_slot_mat4_get(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %4) #12
  %13 = sitofp i32 %8 to float
  %14 = fdiv float 0x401921FB60000000, %13
  %15 = fmul float %7, 5.000000e-01
  %16 = icmp eq i8 %9, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %12
  store <2 x float> zeroinitializer, ptr %3, align 8, !tbaa !37
  %18 = fneg float %15
  %19 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float %18, ptr %19, align 8, !tbaa !37
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %3) #12
  %20 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null, i32 noundef 0) #12
  store <2 x float> zeroinitializer, ptr %3, align 8, !tbaa !37
  store float %15, ptr %19, align 8, !tbaa !37
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %3) #12
  %21 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null, i32 noundef 0) #12
  %22 = getelementptr inbounds %struct.BMVert, ptr %20, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %23, i16 noundef signext 1) #13
  %24 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !47
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %25, i16 noundef signext 1) #13
  br label %26

26:                                               ; preds = %17, %12
  %27 = phi ptr [ %21, %17 ], [ undef, %12 ]
  %28 = phi ptr [ %20, %17 ], [ undef, %12 ]
  %29 = icmp slt i32 %8, 1
  br i1 %29, label %93, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %32 = fneg float %15
  %33 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  br label %34

34:                                               ; preds = %30, %66
  %35 = phi i32 [ 0, %30 ], [ %69, %66 ]
  %36 = phi ptr [ null, %30 ], [ %45, %66 ]
  %37 = phi ptr [ null, %30 ], [ %50, %66 ]
  %38 = phi ptr [ undef, %30 ], [ %68, %66 ]
  %39 = phi ptr [ undef, %30 ], [ %67, %66 ]
  %40 = phi float [ 0.000000e+00, %30 ], [ %70, %66 ]
  %41 = call float @sinf(float noundef %40) #12
  %42 = fmul float %5, %41
  store float %42, ptr %3, align 8, !tbaa !37
  %43 = call float @cosf(float noundef %40) #12
  %44 = fmul float %5, %43
  store float %44, ptr %31, align 4, !tbaa !37
  store float %32, ptr %33, align 8, !tbaa !37
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %3) #12
  %45 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null, i32 noundef 0) #12
  %46 = call float @sinf(float noundef %40) #12
  %47 = fmul float %6, %46
  store float %47, ptr %3, align 8, !tbaa !37
  %48 = call float @cosf(float noundef %40) #12
  %49 = fmul float %6, %48
  store float %49, ptr %31, align 4, !tbaa !37
  store float %15, ptr %33, align 8, !tbaa !37
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %3) #12
  %50 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null, i32 noundef 0) #12
  %51 = getelementptr inbounds %struct.BMVert, ptr %45, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !47
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %52, i16 noundef signext 1) #13
  %53 = getelementptr inbounds %struct.BMVert, ptr %50, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !47
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %54, i16 noundef signext 1) #13
  %55 = icmp eq i32 %35, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %34
  br i1 %16, label %64, label %57

57:                                               ; preds = %56
  %58 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %28, ptr noundef %36, ptr noundef nonnull %45, ptr noundef null, ptr noundef null, i32 noundef 0) #12
  %59 = getelementptr inbounds %struct.BMFace, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !81
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %60, i16 noundef signext 2) #13
  %61 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %27, ptr noundef nonnull %50, ptr noundef %37, ptr noundef null, ptr noundef null, i32 noundef 0) #12
  %62 = getelementptr inbounds %struct.BMFace, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !81
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %63, i16 noundef signext 2) #13
  br label %64

64:                                               ; preds = %57, %56
  %65 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %36, ptr noundef %37, ptr noundef nonnull %50, ptr noundef nonnull %45, ptr noundef null, i32 noundef 0) #12
  br label %66

66:                                               ; preds = %34, %64
  %67 = phi ptr [ %39, %64 ], [ %50, %34 ]
  %68 = phi ptr [ %38, %64 ], [ %45, %34 ]
  %69 = add nuw nsw i32 %35, 1
  %70 = fadd float %14, %40
  %71 = icmp eq i32 %69, %8
  br i1 %71, label %72, label %34, !llvm.loop !89

72:                                               ; preds = %66
  br i1 %29, label %93, label %73

73:                                               ; preds = %72
  br i1 %16, label %81, label %74

74:                                               ; preds = %73
  %75 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %28, ptr noundef nonnull %45, ptr noundef %68, ptr noundef null, ptr noundef null, i32 noundef 0) #12
  %76 = getelementptr inbounds %struct.BMFace, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !81
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %77, i16 noundef signext 2) #13
  %78 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %27, ptr noundef %67, ptr noundef nonnull %50, ptr noundef null, ptr noundef null, i32 noundef 0) #12
  %79 = getelementptr inbounds %struct.BMFace, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !81
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %80, i16 noundef signext 2) #13
  br label %81

81:                                               ; preds = %74, %73
  %82 = icmp eq i8 %10, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %85 = load i32, ptr %84, align 8, !tbaa !55
  %86 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %0, i32 noundef %85, ptr noundef nonnull @.str.19, i32 noundef 2) #12
  br label %87

87:                                               ; preds = %83, %81
  %88 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef nonnull %45, ptr noundef nonnull %50, ptr noundef %67, ptr noundef %68, ptr noundef null, i32 noundef 0) #12
  %89 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %90 = load i32, ptr %89, align 8, !tbaa !55
  %91 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %0, i32 noundef %90, ptr noundef nonnull @.str.12, i32 noundef 1, double noundef 0x3EB0C6F7A0B5ED8D) #12
  %92 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %92, ptr noundef nonnull @.str, i8 noundef zeroext 1, i16 noundef signext 1) #12
  br label %93

93:                                               ; preds = %26, %72, %2, %87
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_create_cube_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #14
  %5 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.1) #12
  %6 = fmul float %5, 5.000000e-01
  call void @BMO_slot_mat4_get(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %4) #12
  %7 = fcmp une float %6, 0.000000e+00
  %8 = select i1 %7, float %6, float 5.000000e-01
  %9 = fneg float %8
  store float %9, ptr %3, align 4, !tbaa !37
  %10 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  store float %9, ptr %10, align 4, !tbaa !37
  %11 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float %9, ptr %11, align 4, !tbaa !37
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %3) #12
  %12 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null, i32 noundef 0) #12
  %13 = getelementptr inbounds %struct.BMVert, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %14, i16 noundef signext 1) #13
  store float %9, ptr %3, align 4, !tbaa !37
  store float %8, ptr %10, align 4, !tbaa !37
  store float %9, ptr %11, align 4, !tbaa !37
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %3) #12
  %15 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null, i32 noundef 0) #12
  %16 = getelementptr inbounds %struct.BMVert, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %17, i16 noundef signext 1) #13
  store float %8, ptr %3, align 4, !tbaa !37
  store float %8, ptr %10, align 4, !tbaa !37
  store float %9, ptr %11, align 4, !tbaa !37
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %3) #12
  %18 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null, i32 noundef 0) #12
  %19 = getelementptr inbounds %struct.BMVert, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %20, i16 noundef signext 1) #13
  store float %8, ptr %3, align 4, !tbaa !37
  store float %9, ptr %10, align 4, !tbaa !37
  store float %9, ptr %11, align 4, !tbaa !37
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %3) #12
  %21 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null, i32 noundef 0) #12
  %22 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %23, i16 noundef signext 1) #13
  store float %9, ptr %3, align 4, !tbaa !37
  store float %9, ptr %10, align 4, !tbaa !37
  store float %8, ptr %11, align 4, !tbaa !37
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %3) #12
  %24 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null, i32 noundef 0) #12
  %25 = getelementptr inbounds %struct.BMVert, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !47
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %26, i16 noundef signext 1) #13
  store float %9, ptr %3, align 4, !tbaa !37
  store float %8, ptr %10, align 4, !tbaa !37
  store float %8, ptr %11, align 4, !tbaa !37
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %3) #12
  %27 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null, i32 noundef 0) #12
  %28 = getelementptr inbounds %struct.BMVert, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !47
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %29, i16 noundef signext 1) #13
  store float %8, ptr %3, align 4, !tbaa !37
  store float %8, ptr %10, align 4, !tbaa !37
  store float %8, ptr %11, align 4, !tbaa !37
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %3) #12
  %30 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null, i32 noundef 0) #12
  %31 = getelementptr inbounds %struct.BMVert, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !47
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %32, i16 noundef signext 1) #13
  store float %8, ptr %3, align 4, !tbaa !37
  store float %9, ptr %10, align 4, !tbaa !37
  store float %8, ptr %11, align 4, !tbaa !37
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %3) #12
  %33 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null, i32 noundef 0) #12
  %34 = getelementptr inbounds %struct.BMVert, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !47
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %35, i16 noundef signext 1) #13
  %36 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %24, ptr noundef %27, ptr noundef %15, ptr noundef %12, ptr noundef null, i32 noundef 0) #12
  %37 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %27, ptr noundef %30, ptr noundef %18, ptr noundef %15, ptr noundef null, i32 noundef 0) #12
  %38 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %30, ptr noundef %33, ptr noundef %21, ptr noundef %18, ptr noundef null, i32 noundef 0) #12
  %39 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %33, ptr noundef %24, ptr noundef %12, ptr noundef %21, ptr noundef null, i32 noundef 0) #12
  %40 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %12, ptr noundef %15, ptr noundef %18, ptr noundef %21, ptr noundef null, i32 noundef 0) #12
  %41 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %33, ptr noundef %30, ptr noundef %27, ptr noundef %24, ptr noundef null, i32 noundef 0) #12
  %42 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %42, ptr noundef nonnull @.str, i8 noundef zeroext 1, i16 noundef signext 1) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #7 !PGOFuncName !90 {
  %4 = load float, ptr %1, align 4, !tbaa !37
  %5 = load float, ptr %2, align 4, !tbaa !37
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !37
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !37
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !37
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !37
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !37
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !37
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !37
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !91 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #13
  %3 = tail call float @sqrtf(float noundef %2) #12
  ret float %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !92 {
  %3 = load float, ptr %0, align 4, !tbaa !37
  %4 = load float, ptr %1, align 4, !tbaa !37
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !37
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !37
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !37
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !37
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !93 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !94
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  switch i8 %2, label %25 [
    i8 1, label %8
    i8 2, label %11
    i8 3, label %14
    i8 4, label %17
    i8 5, label %18
    i8 6, label %19
    i8 7, label %20
    i8 8, label %21
    i8 9, label %22
    i8 10, label %23
    i8 11, label %24
  ]

8:                                                ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !95
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !74
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !96
  br label %26

11:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !95
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !74
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !97
  br label %26

14:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !95
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !74
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !98
  br label %26

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !95
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !74
  br label %26

18:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !95
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !74
  br label %26

19:                                               ; preds = %4
  store ptr @bmiter__loop_of_vert_begin, ptr %6, align 8, !tbaa !95
  store ptr @bmiter__loop_of_vert_step, ptr %7, align 8, !tbaa !74
  br label %26

20:                                               ; preds = %4
  store ptr @bmiter__vert_of_edge_begin, ptr %6, align 8, !tbaa !95
  store ptr @bmiter__vert_of_edge_step, ptr %7, align 8, !tbaa !74
  br label %26

21:                                               ; preds = %4
  store ptr @bmiter__face_of_edge_begin, ptr %6, align 8, !tbaa !95
  store ptr @bmiter__face_of_edge_step, ptr %7, align 8, !tbaa !74
  br label %26

22:                                               ; preds = %4
  store ptr @bmiter__vert_of_face_begin, ptr %6, align 8, !tbaa !95
  store ptr @bmiter__vert_of_face_step, ptr %7, align 8, !tbaa !74
  br label %26

23:                                               ; preds = %4
  store ptr @bmiter__edge_of_face_begin, ptr %6, align 8, !tbaa !95
  store ptr @bmiter__edge_of_face_step, ptr %7, align 8, !tbaa !74
  br label %26

24:                                               ; preds = %4
  store ptr @bmiter__loop_of_face_begin, ptr %6, align 8, !tbaa !95
  store ptr @bmiter__loop_of_face_step, ptr %7, align 8, !tbaa !74
  br label %26

25:                                               ; preds = %4
  unreachable

26:                                               ; preds = %24, %23, %22, %21, %20, %19, %18, %17, %14, %11, %8
  %27 = phi ptr [ %3, %24 ], [ %3, %23 ], [ %3, %22 ], [ %3, %21 ], [ %3, %20 ], [ %3, %19 ], [ %3, %18 ], [ %3, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ]
  %28 = phi ptr [ @bmiter__loop_of_face_begin, %24 ], [ @bmiter__edge_of_face_begin, %23 ], [ @bmiter__vert_of_face_begin, %22 ], [ @bmiter__face_of_edge_begin, %21 ], [ @bmiter__vert_of_edge_begin, %20 ], [ @bmiter__loop_of_vert_begin, %19 ], [ @bmiter__face_of_vert_begin, %18 ], [ @bmiter__edge_of_vert_begin, %17 ], [ @bmiter__elem_of_mesh_begin, %14 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %27, ptr %0, align 8, !tbaa !34
  tail call void %28(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__face_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__face_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__loop_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__loop_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__vert_of_edge_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__vert_of_edge_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__face_of_edge_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__face_of_edge_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__vert_of_face_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__vert_of_face_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__edge_of_face_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__edge_of_face_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__loop_of_face_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__loop_of_face_step(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !{!38, !38, i64 0}
!38 = !{!"float", !35, i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"any pointer", !35, i64 0}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = distinct !{!43, !42}
!44 = distinct !{!44, !42}
!45 = distinct !{!45, !42}
!46 = !{!"bmo_primitive.c:max_ii"}
!47 = !{!48, !40, i64 16}
!48 = !{!"BMVert", !49, i64 0, !40, i64 16, !35, i64 24, !35, i64 36, !40, i64 48}
!49 = !{!"BMHeader", !40, i64 0, !50, i64 8, !35, i64 12, !35, i64 13, !35, i64 14}
!50 = !{!"int", !35, i64 0}
!51 = !{!52, !40, i64 16}
!52 = !{!"BMEdge", !49, i64 0, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !53, i64 48, !53, i64 64}
!53 = !{!"BMDiskLink", !40, i64 0, !40, i64 8}
!54 = distinct !{!54, !42}
!55 = !{!56, !50, i64 1304}
!56 = !{!"BMOperator", !35, i64 0, !35, i64 640, !40, i64 1280, !40, i64 1288, !50, i64 1296, !50, i64 1300, !50, i64 1304}
!57 = !{i64 0, i64 640, !34, i64 640, i64 640, !34, i64 1280, i64 8, !39, i64 1288, i64 8, !39, i64 1296, i64 4, !58, i64 1300, i64 4, !58, i64 1304, i64 4, !58}
!58 = !{!50, !50, i64 0}
!59 = distinct !{!59, !42}
!60 = distinct !{!60, !42}
!61 = !{!"bmo_primitive.c:_bmo_elem_flag_enable"}
!62 = !{!63, !50, i64 128}
!63 = !{!"BMesh", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !50, i64 24, !35, i64 28, !35, i64 29, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !50, i64 88, !50, i64 92, !50, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !50, i64 128, !40, i64 136, !64, i64 144, !64, i64 344, !64, i64 544, !64, i64 744, !65, i64 944, !50, i64 948, !50, i64 952, !50, i64 956, !66, i64 960, !40, i64 976, !66, i64 984, !40, i64 1000}
!64 = !{!"CustomData", !40, i64 0, !35, i64 8, !50, i64 172, !50, i64 176, !50, i64 180, !40, i64 184, !40, i64 192}
!65 = !{!"short", !35, i64 0}
!66 = !{!"ListBase", !40, i64 0, !40, i64 8}
!67 = !{!68, !65, i64 0}
!68 = !{!"BMFlagLayer", !65, i64 0}
!69 = !{!"bmo_primitive.c:len_v3v3"}
!70 = !{!"bmo_primitive.c:min_ff"}
!71 = !{!"bmo_primitive.c:BM_iter_new"}
!72 = !{!"bmo_primitive.c:_bmo_elem_flag_test"}
!73 = !{!"bmo_primitive.c:BM_iter_step"}
!74 = !{!75, !40, i64 48}
!75 = !{!"BMIter", !35, i64 0, !40, i64 40, !40, i64 48, !50, i64 56, !35, i64 60}
!76 = distinct !{!76, !42}
!77 = !{!65, !65, i64 0}
!78 = !{!79, !40, i64 24}
!79 = !{!"BMLoop", !49, i64 0, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64}
!80 = distinct !{!80, !42}
!81 = !{!82, !40, i64 16}
!82 = !{!"BMFace", !49, i64 0, !40, i64 16, !40, i64 24, !50, i64 32, !35, i64 36, !65, i64 48}
!83 = distinct !{!83, !42}
!84 = distinct !{!84, !42}
!85 = distinct !{!85, !42}
!86 = distinct !{!86, !42}
!87 = distinct !{!87, !42}
!88 = !{!"bmo_primitive.c:zero_v3"}
!89 = distinct !{!89, !42}
!90 = !{!"bmo_primitive.c:sub_v3_v3v3"}
!91 = !{!"bmo_primitive.c:len_v3"}
!92 = !{!"bmo_primitive.c:dot_v3v3"}
!93 = !{!"bmo_primitive.c:BM_iter_init"}
!94 = !{!75, !35, i64 60}
!95 = !{!75, !40, i64 40}
!96 = !{!63, !40, i64 32}
!97 = !{!63, !40, i64 40}
!98 = !{!63, !40, i64 56}
