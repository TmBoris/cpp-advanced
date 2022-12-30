#pragma once

#include "dungeon.h"

#include <stdexcept>
#include "unordered_set"

void Dfs(Room* now, std::unordered_set<Room*>& vis, std::unordered_set<std::string>& keys,
         bool& flag) {
    if (now->IsFinal()) {
        throw std::exception();
    }
    vis.insert(now);
    for (size_t i = 0; i < now->NumKeys(); ++i) {
        if (keys.contains(now->GetKey(i))) {
            break;
        } else {
            keys.insert(now->GetKey(i));
            flag = true;
        }
    }
    for (size_t i = 0; i < now->NumDoors(); ++i) {
        if (now->GetDoor(i)->IsOpen()) {
            if (!vis.contains(now->GetDoor(i)->GoThrough())) {
                Dfs(now->GetDoor(i)->GoThrough(), vis, keys, flag);
            }
        } else {
            for (auto& s : keys) {
                if (now->GetDoor(i)->TryOpen(s)) {
                    flag = true;
                    break;
                }
            }
            if (now->GetDoor(i)->IsOpen()) {
                if (!vis.contains(now->GetDoor(i)->GoThrough())) {
                    Dfs(now->GetDoor(i)->GoThrough(), vis, keys, flag);
                }
            }
        }
    }
}

Room* Go(Room* now, std::unordered_set<Room*> vis2) {
    if (now->IsFinal()) {
        return now;
    }
    vis2.insert(now);
    for (size_t i = 0; i < now->NumDoors(); ++i) {
        if (now->GetDoor(i)->IsOpen()) {
            if (!vis2.contains(now->GetDoor(i)->GoThrough())) {
                Room* tmp = Go(now->GetDoor(i)->GoThrough(), vis2);
                if (tmp != nullptr) {
                    return tmp;
                }
            }
        }
    }
    return nullptr;
}

Room* FindFinalRoom(Room* starting_room) {
    std::unordered_set<std::string> keys;
    Room* now = starting_room;
    bool flag;
    while (true) {
        std::unordered_set<Room*> vis;
        flag = false;
        try {
            Dfs(now, vis, keys, flag);
            if (!flag) {
                break;
            }
        } catch (std::exception&) {
            std::unordered_set<Room*> vis2;
            return Go(now, vis2);
        }
    }
    return nullptr;
}
